module FHIR
  module Validation
    # Validator which allows cardinality validation of an element against an ElementDefinition
    module CardinalityValidator
      # Verify that the element meets the cardinality requirements
      #
      # @param resource [FHIR::Model] The resource under test
      # @param element_definition [FHIR::ElementDefinition] The Element Definition from which the cardinality is taken
      # @return result [Array<FHIR::ValidationResult>] The result of the cardinality check
      def self.validate(resource, element_definition)
        # Cardinality has no meaning on the first element.
        # It is listed as optional(irrelevant)
        # Specification Reference: http://www.hl7.org/fhir/elementdefinition.html#interpretation
        # Zulip Chat: https://chat.fhir.org/#narrow/stream/179166-implementers/topic/cardinality.20of.20root.20elements/near/154024550
        return unless element_definition.path.include? '.'

        elements = resource.retrieve_elements_by_definition(element_definition, normalized: true)
        elements.flat_map do |path, el|
          el = [el].flatten.compact
          validate_element(el, element_definition, path)
        end
      end

      # Validates a single element against the ElementDefinition
      #
      # @param elements [Array] the collection of elements
      # @param element_definition [FHIR::ElementDefinition] the ElementDefinition which defines the elements
      # @param path [String] where the elements are located in the parent resource
      # @return result [FHIR::ValidationResult] the result of the cardinality check on the elements
      def self.validate_element(elements, element_definition, path)
        FHIR::ValidationResult.new(element_definition: element_definition,
                                   validation_type: :cardinality,
                                   element_path: path,
                                   element: elements,
                                   result: valid_cardinality?(elements, element_definition.min, element_definition.max) ? :pass : :fail)
      end

      # Determines if the elements meet the cardinality requirements in the ElementDefinition
      #
      # @param elements [Array] the collection of elements
      # @param min [#to_i] the minimum cardinality
      # @param max [#to_i] the maximum cardinality
      # @return result [Boolean] if the elements meet the cardinality requirements
      def self.valid_cardinality?(elements, min, max)
        min = min.to_i
        max = max == '*' ? Float::INFINITY : max.to_i
        !((elements.length < min) || (elements.length > max))
      end
      private_class_method :valid_cardinality?
    end
  end
end
