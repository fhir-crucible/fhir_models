module FHIR
  module Boot
    class Generator

      attr_accessor :types
      attr_accessor :resources
      attr_accessor :extensions
      attr_accessor :profiles
      attr_accessor :search_params
      attr_accessor :lib
      attr_accessor :expansions
      # templates keeps track of all the templates in context within a given StructureDefinition
      attr_accessor :templates

      def self.lib
        File.expand_path '..', File.dirname(File.absolute_path(__FILE__))
      end

      def self.generated?
        # Just want to do a basic check to see if models have been generated
        File.exists?(File.join(lib, 'fhir', 'metadata.rb')) &&
          Dir.exists?(File.join(lib, 'fhir', 'types')) &&
          Dir.exists?(File.join(lib, 'fhir', 'resources'))
      end

      def self.generate!
        generator = self.new
        generator.generate_metadata
        generator.generate_types
        generator.generate_resources
      end

      def initialize    
        defns = File.expand_path '../../definitions',File.dirname(File.absolute_path(__FILE__))

        # load the valueset expansions
        @expansions = FHIR::Expansions.new

        # load the types
        filename = File.join(defns,'structures','profiles-types.json')
        raw = File.open(filename,'r:UTF-8',&:read)
        @types = JSON.parse(raw)['entry'].map{|e|e['resource']}

        # load the resources
        filename = File.join(defns,'structures','profiles-resources.json')
        raw = File.open(filename,'r:UTF-8',&:read)
        @resources = JSON.parse(raw)['entry'].map{|e|e['resource']}

        # load the extensions
        filename = File.join(defns,'structures','extension-definitions.json')
        raw = File.open(filename,'r:UTF-8',&:read)
        @extensions = JSON.parse(raw)['entry'].map{|e|e['resource']}

        # load the profiles
        filename = File.join(defns,'structures','profiles-others.json')
        raw = File.open(filename,'r:UTF-8',&:read)
        @profiles = JSON.parse(raw)['entry'].map{|e|e['resource']}        

        # load the search parameters
        filename = File.join(defns,'structures','search-parameters.json')
        raw = File.open(filename,'r:UTF-8',&:read)
        @search_params = JSON.parse(raw)['entry'].map{|e|e['resource']}        

        # templates is an array
        @templates = []

        # make folders for generated content if they do not exist
        @lib = self.class.lib
        Dir.mkdir(File.join(@lib,'fhir')) if !Dir.exists?(File.join(@lib,'fhir'))
        Dir.mkdir(File.join(@lib,'fhir','types')) if !Dir.exists?(File.join(@lib,'fhir','types'))
        Dir.mkdir(File.join(@lib,'fhir','resources')) if !Dir.exists?(File.join(@lib,'fhir','resources'))

        # delete previously generated folder contents
        Dir.glob(File.join(@lib,'fhir','*')).each{|f|File.delete(f) if !File.directory?(f)}
        Dir.glob(File.join(@lib,'fhir','**','*')).each{|f|File.delete(f) if !File.directory?(f)}
      end

      def generate_metadata
        template = FHIR::Boot::Template.new([],true)
        
        # primitive data types start with a lowercase letter
        primitives = @types.select{|t|t['id'][0]==t['id'][0].downcase}
        hash = {}
        primitives.each do |p|
          field = FHIR::Field.new
          field.name = nil

          # try to find the element that describes the value
          type = p['snapshot']['element'].select{|e| e['path'].end_with?('.value')}.first['type'].first

          # try to find the JSON data type
          begin
            ext = type['_code']['extension'].select{|e| e['url']=='http://hl7.org/fhir/StructureDefinition/structuredefinition-json-type'}.first
            field.type = ext['valueString']
          rescue 
            field.type = 'string'
          end

          # try to find a regex
          begin
            ext = type['extension'].select{|e| e['url']=='http://hl7.org/fhir/StructureDefinition/structuredefinition-regex'}.first
            field.regex = ext['valueString']
          rescue 
          end

          hash[ p['id' ] ] = field.serialize
        end
        template.constants['PRIMITIVES'] = hash

        # complex data types start with an uppercase letter
        # and we'll filter out profiles on types (for example, Age is a profile on Quantity)
        complexTypes = @types.select{|t| (t['id'][0]==t['id'][0].upcase) && (t['id']==t['snapshot']['element'].first['path'])}.map{|t|t['id']}
        template.constants['TYPES'] = complexTypes

        # resources
        template.constants['RESOURCES'] = @resources.map{|r|r['id']}

        filename = File.join(@lib,'fhir','metadata.rb')
        file = File.open(filename,'w:UTF-8')
        file.write(template.to_s)
        file.close
      end

      def generate_types
        folder = File.join @lib,'fhir','types'
        # complex data types start with an uppercase letter
        # and we'll filter out profiles on types (for example, Age is a profile on Quantity)
        complexTypes = @types.select{|t| (t['id'][0]==t['id'][0].upcase) && (t['id']==t['snapshot']['element'].first['path'])}
        generate_class_files(folder,complexTypes)
      end

      def generate_resources
        folder = File.join @lib,'fhir','resources'
        generate_class_files(folder,@resources)
      end

      def generate_class_files(folder=@lib,structureDefs)
        structureDefs.each do |structureDef|
          @templates.clear
          typeName = structureDef['id']
          template = generate_class([ typeName ],structureDef,true)
          params = generate_search_parameters(typeName)
          template.constants['SEARCH_PARAMS'] = params if !params.nil?
          filename = File.join(folder,"#{typeName}.rb")
          file = File.open(filename,'w:UTF-8')
          file.write(template.to_s)
          file.close
        end
      end

      def generate_search_parameters(typeName)
        @search_params.select{|p|p['base']==typeName && p['xpath'] && !p['xpath'].include?('extension')}.map{|p|p['code']}
      end

      def generate_class(hierarchy,structureDef,top_level=false)
        typeName = structureDef['id']
        constrainedType = structureDef['constrainedType']
        pathType = typeName
        pathType = constrainedType if constrainedType

        template = FHIR::Boot::Template.new([ typeName ],top_level)
        template.hierarchy = hierarchy
        template.kind = structureDef['kind']
        multipleDataTypes = {}

        # examine the snapshot.elements... move the Element and BackboneElements, 
        # and their children, into separate StructureDefiniton hashes and process as
        # child templates.
        child_templates = []
        structureDef['snapshot']['element'].each do |element|
          # skip the first element
          next if element['path']==pathType
          if element['type']
            unique_types = element['type'].map{|t|t['code']}.uniq 
            if unique_types.include?('Element') || unique_types.include?('BackboneElement')
              child_templates << element['path']
            end
          end
        end
        child_templates.each do |child_name|
          child_fixed_name = child_name.gsub("#{typeName}.",'').capitalize
          next if child_fixed_name.include?('.')
          child_def = { 'id'=> child_fixed_name, 'snapshot'=>{'element'=>[]} }
          # Copy the element definitions for the child structure
          structureDef['snapshot']['element'].each do |element|
            child_def['snapshot']['element'] << element.clone if element['path'].start_with?("#{child_name}.")
          end
          # Remove the child elements
          child_paths = child_def['snapshot']['element'].map{|e|e['path']}
          # child_paths = child_paths.drop(1)
          structureDef['snapshot']['element'].keep_if do |element|
            !child_paths.include?(element['path'])
          end
          # Rename the child paths
          child_def['snapshot']['element'].each do |element|
            element['path'] = element['path'].gsub(child_name,child_fixed_name)
          end
          # add the child
          child_hierarchy = hierarchy + [ child_fixed_name ]
          child_klass = generate_class(child_hierarchy,child_def)
          template.templates << child_klass
          @templates << child_klass
        end

        # Process the remaining attributes (none of which are Elements or BackboneElements)
        structureDef['snapshot']['element'].each do |element|
          # skip the first element
          next if element['path']==pathType

          field_base_name = element['path'].gsub("#{pathType}.",'')
          # If the element has a type, treat it as a datatype or resource
          # If not, treat it as a reference to an already declared internal class
          if !element['type'].nil?
            # profiles contains a list of profiles if the datatype is Reference
            profiles = []
            element['type'].select{|t|t['code']=='Reference'}.each do |dataType|
              profiles << dataType['profile']
            end
            profiles.select!{|p|!p.nil?}
            profiles.flatten!

            # Calculate fields that have multiple data types
            if element['type'].length > 1
              fieldname = field_base_name.gsub('[x]','')
              unique_types = element['type'].map{|t|t['code']}.uniq
              multipleDataTypes[fieldname] = unique_types if(unique_types.length>1)
            end

            # generate a field for each valid datatype... this is for things like Resource.attribute[x]
            element['type'].map{|t|t['code']}.uniq.each do |dataType|
              capitalized = String.new(dataType)
              # capitalize first letter, cannot use capitalize method because of camel-cased names
              capitalized[0] = capitalized[0].upcase
              fieldname = field_base_name.gsub('[x]',capitalized)
              field = FHIR::Field.new(fieldname)
              field.path = element['path'].gsub(pathType,typeName)
              field.type = dataType
              field.type_profiles = profiles if dataType=='Reference'
              field.min = element['min']
              field.max = element['max']
              field.max = field.max.to_i
              field.max = '*' if element['max']=='*'

              if ['code','Coding','CodeableConcept'].include?(dataType) && element['binding']
                field.binding = element['binding']
                field.binding['uri'] = field.binding['valueSetUri']
                field.binding['uri'] = field.binding['valueSetReference'] if field.binding['uri'].nil?
                field.binding['uri'] = field.binding['uri']['reference'] if field.binding['uri'].is_a?(Hash)
                field.binding.delete('valueSetUri')
                field.binding.delete('valueSetReference')
                field.binding.delete('description')
                # set the actual code list
                codes = @expansions.get_codes( field.binding['uri'] )
                field.valid_codes = codes if !codes.nil?
                puts "  MISSING EXPANSION -- #{field.path} #{field.min}..#{field.max}: #{field.binding['uri']} (#{field.binding['strength']})" if field.valid_codes.empty? && field.binding['uri'] && !field.binding['uri'].end_with?('bcp47') && !field.binding['uri'].end_with?('bcp13.txt')
              elsif ['Element','BackboneElement'].include?(dataType)
                # This is a nested structure or class
                field.type = "#{hierarchy.join('::')}::#{field.name.capitalize}"
              end

              template.fields << field
            end
          else # If there is not data type, treat the type as a reference to an already declared internal class
            field = FHIR::Field.new(field_base_name)
            field.path = element['path'].gsub(pathType,typeName)
            field.type = element['contentReference']
            field.type = field.type[1..-1] if field.type[0]=='#'
            if (hierarchy.last.capitalize==field.type.capitalize)
              # reference to self
              field.type = "#{hierarchy.join('::')}" #::#{field.type.capitalize}" #field.type.capitalize
            else
              # reference to contained template
              klass = @templates.select{|x|x.hierarchy.last.capitalize==field.type.capitalize}.first
              if !klass.nil?
                # the template/child class was declared somewhere else in this class hierarchy
                field.type = klass.hierarchy.join('::') if !klass.nil?
              else
                # the template/child is a direct ancester (it isn't in @templates yet because it is being defined now)
                field.type = hierarchy[0..hierarchy.index(field.type.capitalize)].join('::')
              end
            end
            field.min = element['min']
            field.max = element['max']
            field.max = field.max.to_i
            field.max = '*' if element['max']=='*'
            template.fields << field
          end
        end

        template.constants['MULTIPLE_TYPES'] = multipleDataTypes if !multipleDataTypes.empty?
        template
      end

    end
  end
end
