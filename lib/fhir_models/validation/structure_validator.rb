module FHIR
  module Validation
    # Validator which allows validation of a resource against a profile
    class StructureValidator
      @vs_validators = {}

      attr_accessor :all_results
      attr_reader :element_validators

      # Create a StructureValidator from a FHIR::StructureDefinition
      #
      # @param profile [FHIR::StructureDefinition]
      #
      def initialize(profile, use_default_element_validators: true)
        @profile = profile
        @element_validators = Set.new
        add_default_element_validators if use_default_element_validators
      end

      # Validate the provided resource
      #
      # @param resource [FHIR::Model] The Resource to be validated
      # @return [Hash] the validation results
      def validate(resource)
        return [FHIR::ValidationResult.new(validation_type: :structure, result: :fail)] unless resource.is_a? FHIR::Model

        validate_against_snapshot(resource)

        FHIR::Validation::StructureValidationResult.new(@snapshot_hierarchy).all_results
      end

      # Removes the currently registered element validators
      def clear_element_validators
        @element_validators = Set.new
      end

      # Add additional element validators
      # @param element_validator [Enumerable<#validate>]
      def register_element_validators(element_validator)
        @element_validators.add(*element_validator)
      end

      # Add the default Element Validators to the StructureValidator
      def add_default_element_validators
        @element_validators.merge(Set[Validation::CardinalityValidator,
                                      Validation::DataTypeValidator,
                                      Validation::FixedValueValidator,
                                      Validation::MaxLengthValidator])
      end

      private def parse_element_id(element_id)
        element_id_parts = {}
        element_id_parts[:slices] = element_id.split(':')
        element_id_parts[:path] = element_id_parts[:slices].shift.split('.')
        element_id_parts[:slices] = element_id_parts[:slices].pop&.split('/')
        element_id_parts[:last_path] = element_id_parts[:slices].nil? ? element_id_parts[:path].pop : element_id_parts[:slices].pop
        element_id_parts
      end

      private def add_element_path_to_hierarchy(hierarchy, path)
        path.reduce(hierarchy) do |hierarchy_memo, path_part|
          hierarchy_memo[path_part] ||= hierarchy_node
          hierarchy_memo[path_part][:path]
        end
      end

      private def hierarchy_node(element_definition = nil)
        { elementDefinition: element_definition, path: {}, slices: {}, results: [] }
      end

      private def add_element_slices_to_hierarchy(hierarchy, path, slices)
        path_down = path.zip(Array.new(path.length - 1, :path)).push(:slices).flatten.compact
        slices.inject(hierarchy.dig(*path_down)) do |memo, k|
          memo[k] ||= hierarchy_node
          memo[k][:slices]
        end
      end

      # Build a hierarchy from a list of ElementDefinitions
      #
      # @param [Array] List of Element Definitions
      # @return [Hash] The ElementDefinition hierarchy
      private def build_hierarchy(element_definitions)
        hierarchy = {}
        element_definitions.each do |element|
          element_id_parts = parse_element_id(element.id)
          current_node = add_element_path_to_hierarchy(hierarchy, element_id_parts[:path])
          current_node = add_element_slices_to_hierarchy(hierarchy, element_id_parts[:path], element_id_parts[:slices]) unless element_id_parts[:slices].nil?
          current_node[element_id_parts[:last_path]] = hierarchy_node(element)
        end
        hierarchy
      end

      private def validate_against_snapshot(resource)
        @snapshot_hierarchy ||= build_hierarchy(@profile.snapshot.element)
        # Slicing is prohibited on first element so we only check the paths
        # http://www.hl7.org/fhir/elementdefinition.html#interpretation
        @snapshot_hierarchy.values.each do |value|
          validate_hierarchy(resource, value)
        end
        @snapshot_hierarchy
      end

      private def elements_exist_in_resource(resource, element_definition)
        elements = resource.retrieve_elements_by_definition(element_definition)
        !blank?(elements.values.flatten.compact)
      end

      private def validate_against_element_validators(resource, element_definition)
        @element_validators.flat_map { |validator| validator.validate(resource, element_definition) }
                           .compact!
                           .each { |res| res.profile ||= @profile.url }
      end

      private def validate_hierarchy(resource, hierarchy)
        hierarchy[:results] ||= []
        element_definition = hierarchy[:elementDefinition]

        hierarchy[:results].concat(validate_against_element_validators(resource, element_definition))

        return unless elements_exist_in_resource(resource, element_definition)

        hierarchy[:path].values.each { |sub_hierarchy| validate_hierarchy(resource, sub_hierarchy) }
        hierarchy[:slices].values.each { |sub_hierarchy| validate_hierarchy(resource, sub_hierarchy) }
      end

      private def blank?(obj)
        obj.respond_to?(:empty?) ? obj.empty? : obj.nil?
      end

      # Splits a path into an array
      private def element_path_array(element_definition)
        element_definition.path.split('.')
      end
    end
  end
end
