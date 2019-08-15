module FHIR
  module Validation
    # Validate Terminology in coded elements
    class TerminologyValidator
      attr_reader :vs_validators
      def initialize(validators = {})
        @vs_validators = validators
      end

      # Method for registering ValueSet and CodeSystem Validators
      #
      # @param valueset_uri [String] The ValueSet URI the validator is related to
      # @param validator [#validate] The validator
      def register_vs_validator(valueset_uri, validator)
        @vs_validators[valueset_uri] = validator
      end

      # Clear the registered ValueSet and CodeSystem Validators
      def clear_vs_validators
        @vs_validators = {}
      end

      # Verify that the element meets terminology requirements
      #
      # @param resource [FHIR::Model] The resource under test
      # @param element_definition [FHIR::ElementDefinition] The Element Definition for the elements
      # @return result [Array<FHIR::ValidationResult>] The result of the terminology check
      def validate(resource, element_definition)
        elements = resource.retrieve_elements_by_definition(element_definition, indexed: true)
        elements.flat_map do |path, element|
          validate_element(element, element_definition, path)
        end
      end

      # Validates a single element against the ElementDefinition
      #
      # @param element [] the element to be validated
      # @param element_definition [FHIR::ElementDefinition] the ElementDefinition which defines the element
      # @param path [String] where the element is located in the parent resource
      # @return result [Array<FHIR::ValidationResult>] the result of the terminology type validation
      def validate_element(element, element_definition, path)
        CodeValidator.new(element, element_definition, path, self).validate
      end
    end
  end
end
