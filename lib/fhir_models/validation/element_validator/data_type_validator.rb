module FHIR
  module Validation
    # Validator which allows Data Type validation of an element against an ElementDefinition
    module DataTypeValidator
      # FHIR Resources, Profiles and the StructureDefinitions are made up of FHIR Data Types.
      # There are two kinds of structures that fall under the FHIR Data Types: complex-type and primitive-type.
      # The snapshot of a resource does not contain the element definitions associated with primitive-type or complex-type
      # structures it is composed of.
      #
      # https://www.hl7.org/fhir/datatypes.html
      # @param resource [FHIR::Model] The resource under test
      # @param element_definition [FHIR::ElementDefinition] The Element Definition from which the cardinality is taken
      # @return result [FHIR::ValidationResult] The result of the cardinality check
      def self.validate(resource, element_definition)
        return unless element_definition.path.include? '.' # Root Elements do not have a type

        return if element_definition.type.empty?

        elements = resource.retrieve_elements_by_definition(element_definition, indexed: true)

        elements.flat_map do |path, el|
          validate_element(el, element_definition, path)
        end
      end

      # Validates a single element against the ElementDefinition
      #
      # @param element [FHIR::Model] the element to be validated
      # @param element_definition [FHIR::ElementDefinition] the ElementDefinition which defines the element
      # @param path [String] where the element is located in the parent resource
      # @return result [Array<FHIR::ValidationResult>] the result of the data type validation
      def self.validate_element(element, element_definition, path)
        # Get the type
        begin
          type_code = element_definition.type_code(path)
          type_def = FHIR::Definitions.definition(type_code)
        rescue FHIR::UnknownType => e
          return FHIR::ValidationResult.new(element_definition: element_definition,
                                            validation_type: :datatype,
                                            result: :warn,
                                            text: e.message,
                                            element_path: path || element_definition.path)
        end

        # If we are missing the Structure Definition needed to do the validation.
        if type_def.nil?
          return FHIR::ValidationResult.new(element_definition: element_definition,
                                            validation_type: :datatype,
                                            result: :warn,
                                            text: "Unknown type: #{type_code}",
                                            element_path: path || element_definition.path)
        elsif type_def.kind == 'primitive-type'
          # We do not support primitive extensions or check their structure
          return
        end
        type_validator = FHIR::Validation::StructureValidator.new(type_def)
        type_validator.register_element_validators(FHIR::Validation::CardinalityValidator)
        results = type_validator.validate(element)

        # Update the path to reflect the object it is nested within
        results.each do |res|
          res.element_path = res.element_path.gsub(/^([^.]+)/, path)
        end
      end
    end
  end
end
