require 'nokogiri'
require 'mime/types'
require 'yaml'
require 'bcp47'

module FHIR
  class Model
    extend FHIR::Deprecate
    def initialize(hash = {})
      from_hash(hash)
      self.class::METADATA.each do |key, value|
        if value['max'] > 1 && instance_variable_get("@#{key}").nil?
          instance_variable_set("@#{key}".to_sym, [])
        end
      end
    end

    def method_missing(method, *args, &block)
      if defined?(self.class::MULTIPLE_TYPES) && self.class::MULTIPLE_TYPES[method.to_s]
        self.class::MULTIPLE_TYPES[method.to_s].each do |type|
          type[0] = type[0].upcase
          value = send("#{method}#{type}".to_sym)
          return value unless value.nil?
        end
        return nil
      elsif !@extension.nil? && !@extension.empty?
        ext = @extension.select do |x|
          name = x.url.tr('-', '_').split('/').last
          anchor = name.split('#').last
          (method.to_s == name || method.to_s == anchor)
        end
        unless ext.first.nil?
          return ext.first.value.nil? ? ext.first : ext.first.value
        end
      elsif !@modifierExtension.nil? && !@modifierExtension.empty?
        ext = @modifierExtension.select do |x|
          name = x.url.tr('-', '_').split('/').last
          anchor = name.split('#').last
          (method.to_s == name || method.to_s == anchor)
        end
        unless ext.first.nil?
          return ext.first.value.nil? ? ext.first : ext.first.value
        end
      end
      raise NoMethodError.new("undefined method `#{method}' for #{inspect}", method)
    end

    def to_reference
      FHIR::Reference.new(reference: "#{self.class.name.split('::').last}/#{id}")
    end

    def equals?(other, exclude = [])
      (self.class::METADATA.keys - exclude).each do |attribute|
        return false unless compare_attribute(instance_variable_get("@#{attribute}".to_sym), other.instance_variable_get("@#{attribute}".to_sym), exclude)
      end
      true
    end

    def mismatch(other, exclude = [])
      misses = []
      (self.class::METADATA.keys - exclude).each do |key|
        these = attribute_mismatch(instance_variable_get("@#{key}".to_sym), other.instance_variable_get("@#{key}".to_sym), exclude)
        if !these || (these.is_a?(Array) && !these.empty?)
          misses << "#{self.class}::#{key}"
          misses.concat these if these.is_a?(Array)
        end
      end
      misses
    end

    def attribute_mismatch(left, right, exclude = [])
      if left.respond_to?(:mismatch) && right.respond_to?(:mismatch)
        left.mismatch right, exclude
      else
        compare_attribute(left, right, exclude)
      end
    end

    def compare_attribute(left, right, exclude = [])
      if left.respond_to?(:equals?) && right.respond_to?(:equals?)
        left.equals? right, exclude
      elsif left.is_a?(Array) && right.is_a?(Array) && (left.length == right.length)
        result = true
        (0...(left.length)).each { |i| result &&= compare_attribute(left[i], right[i], exclude) }
        result
      else
        left == right
      end
    end

    def valid?
      validate.empty?
    end
    deprecate :is_valid?, :valid?

    def validate(contained = nil)
      validate_profile(self.class::METADATA, contained)
    end

    def validate_profile(metadata, contained = nil)
      contained_here = [instance_variable_get('@contained'.to_sym)].flatten
      contained_here << contained
      contained_here = contained_here.flatten.compact
      errors = {}
      metadata.each do |field, meta|
        if meta.is_a?(Array)
          # this field has been 'sliced'
          meta.each do |slice|
            local_name = slice['local_name'] || field
            value = [instance_variable_get("@#{local_name}".to_sym)].flatten.compact
            subset = [] # subset is the values associated with just this slice
            if slice['type'] == 'Extension'
              subset = if slice['type_profiles']
                         value.select { |x| slice['type_profiles'].include?(x.url) }
                       else
                         value
                       end
            else
              FHIR.logger.warn 'Validation not supported on slices (except for Extensions)'
            end
            validate_field(field, subset, contained_here, slice, errors)
          end
        else
          local_name = meta['local_name'] || field
          value = [instance_variable_get("@#{local_name}".to_sym)].flatten.compact
          validate_field(field, value, contained_here, meta, errors)
        end
      end # metadata.each
      # check multiple types
      multiple_types = begin
                         self.class::MULTIPLE_TYPES
                       rescue
                         {}
                       end
      multiple_types.each do |prefix, suffixes|
        present = []
        suffixes.each do |suffix|
          typename = "#{prefix}#{suffix[0].upcase}#{suffix[1..-1]}"
          # check which multiple data types are actually present, not just errors
          # actually, this might be allowed depending on cardinality
          value = instance_variable_get("@#{typename}")
          present << typename if !value.nil? || (value.is_a?(Array) && !value.empty?)
        end
        errors[prefix] = ["#{prefix}[x]: more than one type present."] if present.length > 1
        # remove errors for suffixes that are not present
        next unless present.length == 1
        suffixes.each do |suffix|
          typename = "#{prefix}#{suffix[0].upcase}#{suffix[1..-1]}"
          errors.delete(typename) unless present.include?(typename)
        end
      end
      errors.keep_if { |_k, v| (v && !v.empty?) }
    end

    # ----- validate a field -----
    # field: the field name
    # value: an array of values for this field
    # contained_here: all contained resources to be considered
    # meta: the metadata definition for this field (or slice)
    # errors: the ongoing list of errors
    def validate_field(field, value, contained_here, meta, errors)
      errors[field] = []
      # check cardinality
      count = value.length
      unless count >= meta['min'] && count <= meta['max']
        errors[field] << "#{meta['path']}: invalid cardinality. Found #{count} expected #{meta['min']}..#{meta['max']}"
      end
      # check datatype
      datatype = meta['type']
      value.each do |v|
        klassname = v.class.name.gsub('FHIR::', '')
        # if the data type is a generic Resource, validate it
        if datatype == 'Resource'
          if FHIR::RESOURCES.include?(klassname)
            validation = v.validate(contained_here)
            errors[field] << validation unless validation.empty?
          else
            errors[field] << "#{meta['path']}: expected Resource, found #{klassname}"
          end
        # if the data type is a Reference, validate it, but also check the
        # type_profiles metadata. For example, if it should be a Reference(Patient)
        elsif datatype == 'Reference'
          if klassname == 'Reference'
            validation = v.validate(contained_here)
            errors[field] << validation unless validation.empty?
            validate_reference_type(v, meta, contained_here, errors[field])
          else
            errors[field] << "#{meta['path']}: expected Reference, found #{klassname}"
          end
        # if the data type is a particular resource or complex type
        elsif FHIR::RESOURCES.include?(datatype) || FHIR::TYPES.include?(datatype)
          if datatype == klassname
            validation = v.validate(contained_here)
            errors[field] << validation unless validation.empty?
          else
            errors[field] << "#{meta['path']}: incorrect type. Found #{klassname} expected #{datatype}"
          end
        # if the data type is a primitive, test the regular expression (if any)
        elsif FHIR::PRIMITIVES.include?(datatype)
          primitive_meta = FHIR::PRIMITIVES[datatype]
          if primitive_meta['regex'] && primitive_meta['type'] != 'number'
            match = (v =~ Regexp.new(primitive_meta['regex']))
            errors[field] << "#{meta['path']}: #{v} does not match #{datatype} regex" if match.nil?
          else
            errors[field] << "#{meta['path']}: #{v} is not a valid #{datatype}" unless primitive?(datatype, v)
          end
        end
        # check binding
        next unless meta['binding']
        next unless meta['binding']['strength'] == 'required'
        the_codes = [v]
        if meta['type'] == 'Coding'
          the_codes = [v.code]
        elsif meta['type'] == 'CodeableConcept'
          the_codes = v.coding.map(&:code).compact
        end
        has_valid_code = false
        if meta['valid_codes']
          meta['valid_codes'].each do |_key, codes|
            has_valid_code = true unless (codes & the_codes).empty?
            break if has_valid_code
          end
        else
          the_codes.each do |code|
            has_valid_code = true if check_binding(meta['binding']['uri'], code)
            break if has_valid_code
          end
        end
        errors[field] << "#{meta['path']}: invalid codes #{the_codes}" unless has_valid_code
      end # value.each
      errors.delete(field) if errors[field].empty?
    end

    def validate_reference_type(ref, meta, contained_here, errors)
      return unless ref.reference && meta['type_profiles']
      matches_one_profile = false
      meta['type_profiles'].each do |p|
        basetype = p.split('/').last
        matches_one_profile = true if ref.reference.include?(basetype)
        # check profiled resources
        profile_basetype = FHIR::Definitions.basetype(p)
        matches_one_profile = true if profile_basetype && ref.reference.include?(profile_basetype)
      end
      matches_one_profile = true if meta['type_profiles'].include?('http://hl7.org/fhir/StructureDefinition/Resource')
      if !matches_one_profile && ref.reference.start_with?('#')
        # we need to look at the local contained resources
        r = contained_here.find { |x| x.id == ref.reference[1..-1] }
        if !r.nil?
          meta['type_profiles'].each do |p|
            p = p.split('/').last
            matches_one_profile = true if r.resourceType == p
          end
        else
          FHIR.logger.warn "Unable to resolve reference #{ref.reference}"
        end
      end
      errors << "#{meta['path']}: incorrect Reference type, expected #{meta['type_profiles'].map { |x| x.split('/').last }.join('|')}" unless matches_one_profile
    end

    # TODO: this should be a class method
    # TODO: this should be named `primitive?`
    # TODO: perhaps this should validate against regexes if they are present
    def primitive?(datatype, value)
      # Remaining data types: handle special cases before checking type StructureDefinitions
      case datatype.downcase
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
      when 'uri'
        begin
          !URI.parse(value).nil?
        rescue
          false
        end
      when 'instant'
        regex = /\A[0-9]{4}(-(0[1-9]|1[0-2])(-(0[0-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))))\Z/
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
      else
        FHIR.logger.warn "Unable to check #{value} for datatype #{datatype}"
        false
      end
    end
    deprecate :is_primitive?, :primitive?

    def check_binding(uri, value)
      valid = false
      if uri == 'http://hl7.org/fhir/ValueSet/content-type' || uri == 'http://www.rfc-editor.org/bcp/bcp13.txt'
        matches = MIME::Types[value]
        json_or_xml = value.downcase.include?('xml') || value.downcase.include?('json')
        known_weird = ['text/cql', 'application/cql+text'].include?(value)
        valid = json_or_xml || known_weird || (!matches.nil? && !matches.empty?)
      elsif uri == 'http://hl7.org/fhir/ValueSet/languages' || uri == 'http://tools.ietf.org/html/bcp47'
        has_region = !(value =~ /-/).nil?
        valid = !BCP47::Language.identify(value.downcase).nil? && (!has_region || !BCP47::Region.identify(value.upcase).nil?)
      else
        FHIR.logger.warn "Unable to check_binding on unknown ValueSet: #{uri}"
      end
      valid
    end

    private :validate_reference_type, :check_binding, :validate_field
  end
end
