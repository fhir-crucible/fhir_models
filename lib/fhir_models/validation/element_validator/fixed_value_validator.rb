module FHIR
  module Validation
    # Validate that an element equals the fixed value defined in the ElementDefinition
    module FixedValueValidator
      # Validate the element matches the fixed value if a fixed value is provided
      #
      # @param resource [FHIR::Model] The resource under test
      # @param element_definition [FHIR::ElementDefinition] The Element Definition from which the cardinality is taken
      # @return result [FHIR::ValidationResult] The result of the cardinality check
      def self.validate(resource, element_definition)
        fixed = element_definition.fixed
        return if fixed.respond_to?(:empty?) ? fixed.empty? : fixed.nil?

        elements = resource.retrieve_elements_by_definition(element_definition, indexed: true)

        elements.flat_map do |path, el|
          validate_element(el, element_definition, path)
        end
      end

      # Validates a single element against the ElementDefinition
      #
      # @param element [] the element to be validated
      # @param element_definition [FHIR::ElementDefinition] the ElementDefinition which defines the element
      # @param path [String] where the element is located in the parent resource
      # @return result [FHIR::ValidationResult] the result of the validation
      def self.validate_element(element, element_definition, path)
        FHIR::ValidationResult.new(element_definition: element_definition,
                                   validation_type: :fixed_value,
                                   element: element,
                                   element_path: path,
                                   result: element == element_definition.fixed ? :pass : :fail)
      end
    end
  end
end
