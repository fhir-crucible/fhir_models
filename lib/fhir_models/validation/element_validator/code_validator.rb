module FHIR
  module Validation
    # Validates a coded element
    class CodeValidator
      attr_accessor :results
      attr_reader :element_definition, :element, :path, :validator

      def initialize(element, element_definition, path, validator)
        @element = element
        @element_definition = element_definition
        @path = path
        @validator = validator
      end

      # Validate a coded element
      #
      # @return result [Array<FHIR::ValidationResult>] the result of the data type validation
      def validate
        results = []
        if %w[CodeableConcept Coding Quantity].include? type_code
          if type_code == 'CodeableConcept'
            element.coding.each do |coding|
              results.concat(check_code(coding, valueset_uri))
            end
          else
            # avoid checking Codings twice if they are already checked as part of a CodeableConcept
            # The CodeableConcept should contain the binding for the children Codings
            results.concat(check_code(element, valueset_uri)) unless element_definition.path.include? 'CodeableConcept.coding'
          end
        end
        results
      end

      # Returns the type of the element based off the element definition and path
      #
      # This is useful for determining the type when a choice of types are present.
      #
      # @return type_code [String] the type of the element
      private def type_code
        element_definition.type_code(path)
      end

      # If the binding is set to 'required'
      #
      # @return required_binding? [Boolean] if the binding is set to 'required'
      private def required_binding?
        element_definition&.binding&.strength == 'required'
      end

      # The URI of the bound ValueSet
      #
      # @return valueset_uri [String]
      private def valueset_uri
        element_definition&.binding&.valueSet
      end

      # if failures return a warn of fail result
      #
      # @return fail_level [:fail, :warn]
      private def fail_level
        required_binding? ? :fail : :warn
      end

      # Check that both a code and system are present in the coded element
      # @param coding [#code & #system]
      # @return [Array<FHIR::ValidationResult>]
      private def check_for_code_and_system(coding)
        check_results = []
        check_results.push(new_result(:warn, "#{path}: missing code")) if coding.code.nil?
        check_results.push(new_result(:warn, "#{path}: missing system")) if coding.system.nil?
        check_results
      end

      # Check the code for an individually element
      #
      # @param coding [#code & #system] the coded element containing a code and system
      # @param valueset_uri [String] the valueset uri
      private def check_code(coding, valueset_uri)
        # Can't validate if both code and system are not given
        check_results = check_for_code_and_system(coding)
        return check_results unless check_results.empty?

        # ValueSet Validation
        check_results.push(validate_code(coding, valueset_uri, fail_level))
        # Code System Validation
        check_results.push(validate_code(coding, coding.system, :fail))
        check_results
      end

      # Validate against a registered ValueSet Validator
      #
      # @param coding [#code & #system] the coded element containing a code and system
      # @param uri [String] the uri for the ValueSet Validator
      private def validate_code(coding, uri, fail_level)
        check_fn = validator.vs_validators[uri]
        return new_result(:warn, "Missing Validator for #{uri}") unless check_fn

        return new_result(fail_level, "#{path} has no codings from #{uri}.") unless check_fn.call(coding)

        new_result(:pass, "#{path} has codings from #{uri}.")
      end

      # Validation result for the code validation
      # @return result [FHIR::ValidationResult]
      private def new_result(result_status, message)
        FHIR::ValidationResult.new(element_definition: element_definition,
                                   validation_type: :terminology,
                                   element_path: path,
                                   element: element,
                                   text: message,
                                   result: result_status)
      end
    end
  end
end
