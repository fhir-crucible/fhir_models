require 'nokogiri'
require 'yaml'
require 'bcp47'

module FHIR
  class StructureDefinition
    extend FHIR::Deprecate
    attr_accessor :finding
    attr_accessor :errors
    attr_accessor :warnings

    # -------------------------------------------------------------------------
    #                            Profile Comparison
    # -------------------------------------------------------------------------

    # Checks whether or not "another_definition" is compatible with this definition.
    # If they have conflicting elements, restrictions, bindings, modifying extensions, etc.
    def compatible?(another_definition)
      @errors = []
      @warnings = []

      @finding = FHIR::StructureDefinitionFinding.new
      @finding.resourceType = snapshot.element[0].path
      @finding.profileIdA = id
      @finding.profileIdB = another_definition.id if another_definition.respond_to?(:id)

      if !(another_definition.is_a? FHIR::StructureDefinition)
        @errors << @finding.error('', '', 'Not a StructureDefinition', 'StructureDefinition', another_definition.class.name.to_s)
        return false
      elsif another_definition.snapshot.element[0].path != snapshot.element[0].path
        @errors << @finding.error('', '', 'Incompatible resourceType', @finding.resourceType, another_definition.snapshot.element[0].path.to_s)
        return false
      end

      left_elements = Array.new(snapshot.element)
      right_elements = Array.new(another_definition.snapshot.element)

      left_paths = left_elements.map(&:path)
      right_paths = right_elements.map(&:path)

      # StructureDefinitions don't always include all base attributes (for example, of a ContactPoint)
      # if nothing is modified from the base definition, so we have to add them in if they are missing.
      base_definition = FHIR::Definitions.get_resource_definition(snapshot.element[0].path)
      base_elements = base_definition.snapshot.element

      left_missing = right_paths - left_paths
      # left_missing_roots = left_missing.map{|e| e.split('.')[0..-2].join('.') }.uniq
      add_missing_elements(id, left_missing, left_elements, base_elements)

      right_missing = left_paths - right_paths
      # right_missing_roots = right_missing.map{|e| e.split('.')[0..-2].join('.') }.uniq
      add_missing_elements(another_definition.id, right_missing, right_elements, base_elements)

      # update paths
      left_paths = left_elements.map(&:path)
      right_paths = right_elements.map(&:path)

      # recalculate the missing attributes
      left_missing = right_paths - left_paths
      right_missing = left_paths - right_paths

      # generate warnings for missing fields (ignoring extensions)
      left_missing.each do |e|
        next if e.include? 'extension'
        elem = get_element_by_path(e, right_elements)
        if !elem.min.nil? && elem.min > 0
          @errors << @finding.error(e, 'min', 'Missing REQUIRED element', 'Missing', elem.min.to_s)
        elsif elem.isModifier == true
          @errors << @finding.error(e, 'isModifier', 'Missing MODIFIER element', 'Missing', elem.isModifier.to_s)
        else
          @warnings << @finding.warning(e, '', 'Missing element', 'Missing', 'Defined')
        end
      end
      right_missing.each do |e|
        next if e.include? 'extension'
        elem = get_element_by_path(e, left_elements)
        if !elem.min.nil? && elem.min > 0
          @errors << @finding.error(e, 'min', 'Missing REQUIRED element', elem.min.to_s, 'Missing')
        elsif elem.isModifier == true
          @errors << @finding.error(e, 'isModifier', 'Missing MODIFIER element', elem.isModifier.to_s, 'Missing')
        else
          @warnings << @finding.warning(e, '', 'Missing element', 'Defined', 'Missing')
        end
      end

      left_extensions = []
      right_extensions = []

      # compare elements, starting with the elements in this definition
      left_elements.each do |x|
        if x.path.include? 'extension'
          # handle extensions separately
          left_extensions << x
        else
          y = get_element_by_path(x.path, right_elements)
          compare_element_definitions(x, y, another_definition)
        end
      end

      # now compare elements defined in the other definition, if we haven't already looked at them
      right_elements.each do |y|
        if y.path.include? 'extension'
          # handle extensions separately
          right_extensions << y
        elsif left_missing.include? y.path
          x = get_element_by_path(y.path, left_elements)
          compare_element_definitions(x, y, another_definition)
        end
      end

      # finally, compare the extensions.
      checked_extensions = []
      left_extensions.each do |x|
        y = get_extension(x.name, right_extensions)
        unless y.nil?
          # both profiles share an extension with the same name
          checked_extensions << x.name
          compare_extension_definition(x, y, another_definition)
        end
        y = get_extension(x.type[0].profile, right_extensions)
        next unless !y.nil? && x.name != y.name
        # both profiles share the same extension definition but with a different name
        checked_extensions << x.name
        checked_extensions << y.name
        compare_element_definitions(x, y, another_definition)
      end
      right_extensions.each do |y|
        next if checked_extensions.include?(y.name)
        x = get_extension(y.name, left_extensions)
        unless x.nil?
          # both profiles share an extension with the same name
          checked_extensions << y.name
          compare_extension_definition(x, y, another_definition)
        end
        x = get_extension(y.type[0].profile, left_extensions)
        next unless !x.nil? && x.name != y.name && !checked_extensions.include?(x.name)
        # both profiles share the same extension definition but with a different name
        checked_extensions << x.name
        checked_extensions << y.name
        compare_element_definitions(x, y, another_definition)
      end
      @errors.flatten!
      @warnings.flatten!
      @errors.size.zero?
    end
    deprecate :is_compatible?, :compatible?

    def get_element_by_path(path, elements = snapshot.element)
      elements.detect { |element| element.path == path }
    end

    def get_extension(extension, elements = snapshot.element)
      elements.each do |element|
        if element.path.include?('extension') || element.type.map(&:code).include?('Extension')
          return element if element.name == extension || element.type.map(&:profile).include?(extension)
        end
      end
      nil
    end

    # private
    # name -- name of the profile we're fixing
    # missing_paths -- list of paths that we're adding
    # elements -- list of elements currently defined in the profile
    # base_elements -- list of elements defined in the base resource the profile extends
    def add_missing_elements(_name, missing_paths, elements, base_elements)
      variable_paths = elements.map(&:path).grep(/\[x\]/).map { |e| e[0..-4] }
      variable_paths << base_elements.map(&:path).grep(/\[x\]/).map { |e| e[0..-4] }
      variable_paths.flatten!.uniq!

      missing_paths.each do |path|
        # Skip extensions
        next if path.include? 'extension'

        # Skip the variable paths that end with "[x]"
        next if variable_paths.any? { |variable| path.starts_with?(variable) }

        elem = get_element_by_path(path, base_elements)
        unless elem.nil?
          # _DEEP_ copy
          elements << FHIR::ElementDefinition.from_fhir_json(elem.to_fhir_json)
          next
        end

        x = path.split('.')
        root = x.first(x.size - 1).join('.')
        next unless root.include? '.'
        # get the root element to fill in the details
        elem = get_element_by_path(root, elements)
        # get the data type definition to fill in the details
        # assume missing elements are from first data type (gross)
        next if elem.type.nil? || elem.type.empty?
        type_def = FHIR::Definitions.type_definition(elem.type[0].code)
        next if type_def.nil?
        type_elements = Array.new(type_def.snapshot.element)
        # _DEEP_ copy
        type_elements.map! do |e| # {|e| FHIR::ElementDefinition.from_fhir_json(e.to_fhir_json) }
          FHIR::ElementDefinition.from_fhir_json(e.to_fhir_json)
        end
        # Fix path names
        type_root = String.new(type_elements[0].path)
        type_elements.each { |e| e.path.gsub!(type_root, root) }
        # finally, add the missing element definitions
        # one by one -- only if they are not already present (i.e. do not override)
        type_elements.each do |z|
          y = get_element_by_path(z.path, elements)
          next unless y.nil?
          elements << z
          # else
          #   @warnings << "StructureDefinition #{name} already contains #{z.path}"
        end
        elements.uniq!
        # else
        #   @warnings << "StructureDefinition #{name} missing -- #{path}"
      end
    end

    # private
    def compare_extension_definition(x, y, another_definition)
      x_profiles = x.type.map(&:profile)
      y_profiles = y.type.map(&:profile)
      x_only = x_profiles - y_profiles
      shared = x_profiles - x_only

      if !shared.nil? && shared.size.zero?
        # same name, but different profiles
        # maybe the profiles are the same, just with different URLs...
        # ... so we have to compare them, if we can.
        @warnings << @finding.warning("#{x.path} (#{x.name})", 'type.profile', 'Different Profiles', x_profiles.to_s, y_profiles.to_s)
        x_extension = FHIR::Definitions.get_extension_definition(x.type[0].profile)
        y_extension = FHIR::Definitions.get_extension_definition(y.type[0].profile)
        if !x_extension.nil? && !y_extension.nil?
          x_extension.compatible?(y_extension)
          @errors << x_extension.errors
          @warnings << x_extension.warnings
        else
          @warnings << @finding.warning("#{x.path} (#{x.name})", '', 'Could not find extension definitions to compare.', '', '')
        end
      else
        compare_element_definitions(x, y, another_definition)
      end
    end

    # private
    def compare_element_definitions(x, y, another_definition)
      return if x.nil? || y.nil? || another_definition.nil?

      # check cardinality
      x_min = x.min || 0
      x_max = x.max == '*' ? Float::INFINITY : x.max.to_i
      y_min = y.min || 0
      y_max = y.max == '*' ? Float::INFINITY : y.max.to_i

      if x_min.nil? || x.max.nil? || y_min.nil? || y.max.nil?
        @errors << @finding.error(x.path.to_s, 'min/max', 'Unknown cardinality', "#{x_min}..#{x.max}", "#{y_min}..#{y.max}")
      elsif (x_min > y_max) || (x_max < y_min)
        @errors << @finding.error(x.path.to_s, 'min/max', 'Incompatible cardinality', "#{x_min}..#{x.max}", "#{y_min}..#{y.max}")
      elsif (x_min != y_min) || (x_max != y_max)
        @warnings << @finding.warning(x.path.to_s, 'min/max', 'Inconsistent cardinality', "#{x_min}..#{x.max}", "#{y_min}..#{y.max}")
      end

      # check data types
      x_types = x.type.map(&:code)
      y_types = y.type.map(&:code)
      x_only = x_types - y_types
      y_only = y_types - x_types
      shared = x_types - x_only

      if !shared.nil? && shared.size.zero? && !x_types.empty? && !y_types.empty? && !x.constraint.empty? && !y.constraint.empty?
        @errors << @finding.error(x.path.to_s, 'type.code', 'Incompatible data types', x_types.to_s, y_types.to_s)
      end
      if !x_only.nil? && !x_only.empty?
        @warnings << @finding.warning(x.path.to_s, 'type.code', 'Allows additional data types', x_only.to_s, 'not allowed')
      end
      if !y_only.nil? && !y_only.empty?
        @warnings << @finding.warning(x.path.to_s, 'type.code', 'Allows additional data types', 'not allowed', y_only.to_s)
      end

      # check bindings
      if x.binding.nil? && !y.binding.nil?
        val = y.binding.valueSetUri || y.binding.valueSetReference.try(:reference) || y.binding.description
        @warnings << @finding.warning(x.path.to_s, 'binding', 'Inconsistent binding', '', val)
      elsif !x.binding.nil? && y.binding.nil?
        val = x.binding.valueSetUri || x.binding.valueSetReference.try(:reference) || x.binding.description
        @warnings << @finding.warning(x.path.to_s, 'binding', 'Inconsistent binding', val, '')
      elsif !x.binding.nil? && !y.binding.nil?
        x_vs = x.binding.valueSetUri || x.binding.valueSetReference.try(:reference)
        y_vs = y.binding.valueSetUri || y.binding.valueSetReference.try(:reference)
        if x_vs != y_vs
          if x.binding.strength == 'required' || y.binding.strength == 'required'
            @errors << @finding.error(x.path.to_s, 'binding.strength', 'Incompatible bindings', "#{x.binding.strength} #{x_vs}", "#{y.binding.strength} #{y_vs}")
          else
            @warnings << @finding.warning(x.path.to_s, 'binding.strength', 'Inconsistent bindings', "#{x.binding.strength} #{x_vs}", "#{y.binding.strength} #{y_vs}")
          end
        end
      end

      # check default values
      if x.defaultValue.try(:type) != y.defaultValue.try(:type)
        @errors << @finding.error(x.path.to_s, 'defaultValue', 'Incompatible default type', x.defaultValue.try(:type).to_s, y.defaultValue.try(:type).to_s)
      end
      if x.defaultValue.try(:value) != y.defaultValue.try(:value)
        @errors << @finding.error(x.path.to_s, 'defaultValue', 'Incompatible default value', x.defaultValue.try(:value).to_s, y.defaultValue.try(:value).to_s)
      end

      # check meaning when missing
      if x.meaningWhenMissing != y.meaningWhenMissing
        @errors << @finding.error(x.path.to_s, 'meaningWhenMissing', 'Inconsistent missing meaning', x.meaningWhenMissing.tr(',', ';').to_s, y.meaningWhenMissing.tr(',', ';').to_s)
      end

      # check fixed values
      if x.fixed.try(:type) != y.fixed.try(:type)
        @errors << @finding.error(x.path.to_s, 'fixed', 'Incompatible fixed type', x.fixed.try(:type).to_s, y.fixed.try(:type).to_s)
      end
      if x.fixed != y.fixed
        xfv = x.fixed.try(:value)
        xfv = xfv.to_xml.delete(/\n/) if x.fixed.try(:value).methods.include?(:to_xml)
        yfv = y.fixed.try(:value)
        yfv = yfv.to_xml.delete(/\n/) if y.fixed.try(:value).methods.include?(:to_xml)
        @errors << @finding.error(x.path.to_s, 'fixed', 'Incompatible fixed value', xfv.to_s, yfv.to_s)
      end

      # check min values
      if x.min.try(:type) != y.min.try(:type)
        @errors << @finding.error(x.path.to_s, 'min', 'Incompatible min type', x.min.try(:type).to_s, y.min.try(:type).to_s)
      end
      if x.min.try(:value) != y.min.try(:value)
        @errors << @finding.error(x.path.to_s, 'min', 'Incompatible min value', x.min.try(:value).to_s, y.min.try(:value).to_s)
      end

      # check max values
      if x.max.try(:type) != y.max.try(:type)
        @errors << @finding.error(x.path.to_s, 'max', 'Incompatible max type', x.max.try(:type).to_s, y.max.try(:type).to_s)
      end
      if x.max.try(:value) != y.max.try(:value)
        @errors << @finding.error(x.path.to_s, 'max', 'Incompatible max value', x.max.try(:value).to_s, y.max.try(:value).to_s)
      end

      # check pattern values
      if x.pattern.try(:type) != y.pattern.try(:type)
        @errors << @finding.error(x.path.to_s, 'pattern', 'Incompatible pattern type', x.pattern.try(:type).to_s, y.pattern.try(:type).to_s)
      end
      if x.pattern.try(:value) != y.pattern.try(:value)
        @errors << @finding.error(x.path.to_s, 'pattern', 'Incompatible pattern value', x.pattern.try(:value).to_s, y.pattern.try(:value).to_s)
      end

      # maxLength (for Strings)
      if x.maxLength != y.maxLength
        @warnings << @finding.warning(x.path.to_s, 'maxLength', 'Inconsistent maximum length', x.maxLength.to_s, y.maxLength.to_s)
      end

      # constraints
      x_constraints = x.constraint.map(&:xpath)
      y_constraints = y.constraint.map(&:xpath)
      x_only = x_constraints - y_constraints
      y_only = y_constraints - x_constraints
      shared = x_constraints - x_only

      if !shared.nil? && shared.size.zero? && !x.constraint.empty? && !y.constraint.empty?
        @errors << @finding.error(x.path.to_s, 'constraint.xpath', 'Incompatible constraints', x_constraints.map { |z| z.tr(',', ';') }.join(' && ').to_s, y_constraints.map { |z| z.tr(',', ';') }.join(' && ').to_s)
      end
      if !x_only.nil? && !x_only.empty?
        @errors << @finding.error(x.path.to_s, 'constraint.xpath', 'Additional constraints', x_constraints.map { |z| z.tr(',', ';') }.join(' && ').to_s, '')
      end
      if !y_only.nil? && !y_only.empty?
        @errors << @finding.error(x.path.to_s, 'constraint.xpath', 'Additional constraints', '', y_constraints.map { |z| z.tr(',', ';') }.join(' && ').to_s)
      end

      # mustSupports
      if x.mustSupport != y.mustSupport
        @warnings << @finding.warning(x.path.to_s, 'mustSupport', 'Inconsistent mustSupport', (x.mustSupport || false).to_s, (y.mustSupport || false).to_s)
      end

      # isModifier
      return unless x.isModifier != y.isModifier
      @errors << @finding.error(x.path.to_s, 'isModifier', 'Incompatible isModifier', (x.isModifier || false).to_s, (y.isModifier || false).to_s)
    end

    # -------------------------------------------------------------------------
    #                            Profile Validation
    # -------------------------------------------------------------------------

    def validates_resource?(resource)
      validate_resource(resource).empty?
    end

    def validate_resource(resource)
      @errors = []
      @warnings = []
      @errors << "#{resource.class} is not a resource." unless resource.is_a?(FHIR::Model)
      valid_json?(resource.to_json) if resource
      @errors
    end

    # Checks whether or not the "json" is valid according to this definition.
    # json == the raw json for a FHIR resource
    def valid_json?(json)
      if json.is_a? String
        begin
          json = JSON.parse(json)
        rescue => e
          @errors << "Failed to parse JSON: #{e.message} %n #{h} %n #{e.backtrace.join("\n")}"
          return false
        end
      end

      resource_type = json['resourceType']
      base_type = snapshot.element[0].path
      snapshot.element.each do |element|
        path = element.path
        path = path[(base_type.size + 1)..-1] if path.start_with? base_type

        nodes = get_json_nodes(json, path)

        # special filtering on extension urls
        extension_profile = element.type.find { |t| t.code == 'Extension' && !t.profile.nil? && !t.profile.empty? }
        if extension_profile
          nodes.keep_if { |x| extension_profile.profile.include?(x['url']) }
        end

        # Check the cardinality
        min = element.min
        max =
          if element.max == '*'
            Float::INFINITY
          else
            element.max.to_i
          end
        if (nodes.size < min) || (nodes.size > max)
          @errors << "#{element.path} failed cardinality test (#{min}..#{max}) -- found #{nodes.size}"
        end

        # Check the datatype for each node, only if the element has one declared, and it isn't the root element
        if !element.type.empty? && element.path != id
          nodes.each do |value|
            matching_type = 0

            # the element is valid, if it matches at least one of the datatypes
            temp_messages = []
            element.type.each do |type|
              data_type_code = type.code
              verified_extension = false
              if data_type_code == 'Extension' && !type.profile.empty?
                extension_def = FHIR::Definitions.get_extension_definition(value['url'])
                if extension_def
                  verified_extension = extension_def.validates_resource?(FHIR::Extension.new(deep_copy(value)))
                end
              end
              if verified_extension || data_type?(data_type_code, value)
                matching_type += 1
                if data_type_code == 'code' # then check the binding
                  unless element.binding.nil?
                    matching_type += check_binding(element, value)
                  end
                elsif data_type_code == 'CodeableConcept' && !element.pattern.nil? && element.pattern.is_a?(FHIR::CodeableConcept)
                  # TODO: check that the CodeableConcept matches the defined pattern
                  @warnings << "Ignoring defined patterns on CodeableConcept #{element.path}"
                elsif data_type_code == 'String' && !element.maxLength.nil? && (value.size > element.maxLength)
                  @errors << "#{element.path} exceed maximum length of #{element.maxLength}: #{value}"
                end
              else
                temp_messages << "#{element.path} is not a valid #{data_type_code}: '#{value}'"
              end
            end
            if matching_type <= 0
              @errors += temp_messages
              @errors << "#{element.path} did not match one of the valid data types: #{element.type.map(&:code)}"
            else
              @warnings += temp_messages
            end
            if !element.fixed.nil? && element.fixed != value
              @errors << "#{element.path} value of '#{value}' did not match fixed value: #{element.fixed}"
            end
          end
        end

        # Check FluentPath invariants 'constraint.xpath' constraints...
        # This code is not very robust, and is likely to be throwing *many* exceptions.
        # This is partially because the FluentPath evaluator is not complete, and partially
        # because the context of an expression (element.constraint.expression) is not always
        # consistent with the current context (element.path). For example, sometimes expressions appear to be
        # written to be evaluated within the element, other times at the resource level, or perhaps
        # elsewhere. There is no good way to determine "where" you should evaluate the expression.
        element.constraint.each do |constraint|
          next unless constraint.expression && !nodes.empty?
          begin
            result = FluentPath.evaluate(constraint.expression, json)
            if !result && constraint.severity == 'error'
              @errors << "#{element.path}: FluentPath expression evaluates to false for #{name} invariant rule #{constraint.key}: #{constraint.human}"
            end
          rescue
            @warnings << "#{element.path}: unable to evaluate FluentPath expression against JSON for #{name} invariant rule #{constraint.key}: #{constraint.human}"
          end
        end
      end

      @errors.size.zero?
    end
    deprecate :is_valid_json?, :valid_json?

    def get_json_nodes(json, path)
      results = []
      return [json] if path.nil?
      steps = path.split('.')
      steps.each.with_index do |step, index|
        if json.is_a? Hash
          json = json[step]
        elsif json.is_a? Array
          json.each do |e|
            results << get_json_nodes(e, steps[index..-1].join('.'))
            return results.flatten!
          end
        else
          # this thing doesn't exist
          return results
        end
        return results if json.nil?
      end

      if !json.is_a? Array
        results << json
      else
        results = json
      end
      results
    end

    def deep_copy(thing)
      JSON.parse(JSON.unparse(thing))
    end

    # data_type_code == a FHIR DataType code (see http://hl7.org/fhir/2015May/datatypes.html)
    # value == the representation of the value
    def data_type?(data_type_code, value)
      # FHIR models covers any base Resources
      if FHIR::RESOURCES.include?(data_type_code)
        definition = FHIR::Definitions.get_resource_definition(data_type_code)
        unless definition.nil?
          ret_val = false
          begin
            klass = Module.const_get("FHIR::#{data_type_code}")
            ret_val = definition.validates_resource?(klass.new(deep_copy(value)))
            unless ret_val
              @errors += definition.errors
              @warnings += definition.warnings
            end
          rescue
            @errors << "Unable to verify #{data_type_code} as a FHIR Resource."
          end
          return ret_val
        end
      end

      # Remaining data types: handle special cases before checking type StructureDefinitions
      case data_type_code.downcase
      when 'domainresource'
        true # we don't have to verify domain resource, because it will be included in the snapshot
      when 'boolean'
        value == true || value == false || value.casecmp('true').zero? || value.casecmp('false').zero?
      when 'code'
        value.is_a?(String) && value.size >= 1 && value.size == value.rstrip.size
      when 'string', 'markdown'
        value.is_a?(String)
      when 'xhtml'
        fragment = Nokogiri::HTML::DocumentFragment.parse(value)
        value.is_a?(String) && fragment.errors.size.zero?
      when 'base64binary'
        regex = /[^0-9\+\/\=A-Za-z\r\n ]/
        value.is_a?(String) && (regex =~ value).nil?
      when 'id'
        regex = /[^\d\w\-\.]/
        # the FHIR spec says IDs have a length limit of 36 characters. But it also says that OIDs
        # are valid IDs, and ISO OIDs have no length limitations.
        value.is_a?(String) && (regex =~ value).nil? # && value.size<=36
      when 'oid'
        regex = /[^(urn:oid:)[\d\.]]/
        value.is_a?(String) && (regex =~ value).nil?
      when 'uri'
        is_valid_uri = false
        begin
          is_valid_uri = !URI.parse(value).nil?
        rescue
          is_valid_uri = false
        end
        is_valid_uri
      when 'instant'
        regex = /\A[0-9]{4}(-(0[1-9]|1[0-2])(-(0[0-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))))\Z/
        value.is_a?(String) && !(regex =~ value).nil?
      when 'date'
        regex = /\A[0-9]{4}(-(0[1-9]|1[0-2])(-(0[0-9]|[1-2][0-9]|3[0-1]))?)?\Z/
        value.is_a?(String) && !(regex =~ value).nil?
      when 'datetime'
        regex = /\A[0-9]{4}(-(0[1-9]|1[0-2])(-(0[0-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))?)?)?)?\Z/
        value.is_a?(String) && !(regex =~ value).nil?
      when 'time'
        regex = /\A([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\.[0-9]+)?\Z/
        value.is_a?(String) && !(regex =~ value).nil?
      when 'integer'
        if value.is_a?(Integer)
          true
        elsif value.is_a?(String)
          begin
            Integer(value).is_a?(Integer)
          rescue StandardError
            false
          end
        else
          false
        end
      when 'unsignedint'
        if value.is_a?(Integer) && value >= 0
          true
        elsif value.is_a?(String)
          begin
            Integer(value) >= 0
          rescue StandardError
            false
          end
        else
          false
        end
      when 'positiveint'
        if value.is_a?(Integer) && value > 0
          true
        elsif value.is_a?(String)
          begin
            Integer(value) > 0
          rescue StandardError
            false
          end
        else
          false
        end
      when 'decimal'
        begin
          Float(value).is_a?(Float)
        rescue StandardError
          false
        end
      when 'resource'
        resource_type = value['resourceType']
        definition = FHIR::Definitions.get_resource_definition(resource_type)
        if !definition.nil?
          ret_val = false
          begin
            klass = Module.const_get("FHIR::#{resource_type}")
            ret_val = definition.validates_resource?(klass.new(deep_copy(value)))
            unless ret_val
              @errors += definition.errors
              @warnings += definition.warnings
            end
          rescue
            @errors << "Unable to verify #{resource_type} as a FHIR Resource."
          end
          ret_val
        else
          @errors << "Unable to find base Resource definition: #{resource_type}"
          false
        end
      else
        # Eliminate endless loop on Element is an Element
        return true if data_type_code == 'Element' && id == 'Element'

        definition = FHIR::Definitions.type_definition(data_type_code)
        definition = FHIR::Definitions.get_resource_definition(data_type_code) if definition.nil?
        if !definition.nil?
          ret_val = false
          begin
            klass = Module.const_get("FHIR::#{data_type_code}")
            ret_val = definition.validates_resource?(klass.new(deep_copy(value)))
            unless ret_val
              @errors += definition.errors
              @warnings += definition.warnings
            end
          rescue
            @errors << "Unable to verify #{data_type_code} as a FHIR type."
          end
          ret_val
        else
          @errors << "Unable to find base type definition: #{data_type_code}"
          false
        end
      end
    end
    deprecate :is_data_type?, :data_type?

    def check_binding(element, value)
      vs_uri = element.binding.valueSetUri || element.binding.valueSetReference.reference
      valueset = FHIR::Definitions.get_codes(vs_uri)

      matching_type = 0

      if vs_uri == 'http://hl7.org/fhir/ValueSet/content-type' || vs_uri == 'http://www.rfc-editor.org/bcp/bcp13.txt'
        matches = MIME::Types[value]
        if (matches.nil? || matches.size.zero?) && !some_type_of_xml_or_json?(value)
          @errors << "#{element.path} has invalid mime-type: '#{value}'"
          matching_type -= 1 if element.binding.strength == 'required'
        end
      elsif vs_uri == 'http://hl7.org/fhir/ValueSet/languages' || vs_uri == 'http://tools.ietf.org/html/bcp47'
        has_region = !(value =~ /-/).nil?
        valid = !BCP47::Language.identify(value.downcase).nil? && (!has_region || !BCP47::Region.identify(value.upcase).nil?)
        unless valid
          @errors << "#{element.path} has unrecognized language: '#{value}'"
          matching_type -= 1 if element.binding.strength == 'required'
        end
      elsif valueset.nil?
        @warnings << "#{element.path} has unknown ValueSet: '#{vs_uri}'"
        matching_type -= 1 if element.binding.strength == 'required'
      elsif !valueset.values.flatten.include?(value)
        message = "#{element.path} has invalid code '#{value}' from #{valueset}"
        if element.binding.strength == 'required'
          @errors << message
          matching_type -= 1
        else
          @warnings << message
        end
      end

      matching_type
    end

    def some_type_of_xml_or_json?(code)
      m = code.downcase
      return true if m == 'xml' || m == 'json'
      return true if (m.starts_with?('application/') || m.starts_with?('text/')) && (m.ends_with?('json') || m.ends_with?('xml'))
      return true if m.starts_with?('application/xml') || m.starts_with?('text/xml')
      return true if m.starts_with?('application/json') || m.starts_with?('text/json')
      false
    end
    deprecate :is_some_type_of_xml_or_json, :some_type_of_xml_or_json?

    private :valid_json?, :get_json_nodes, :check_binding, :add_missing_elements, :compare_element_definitions
  end
end
