module FHIR
  # A result return by a validator
  class ValidationResult
    attr_accessor :element
    attr_accessor :element_definition
    attr_accessor :result
    attr_accessor :validation_type
    attr_accessor :element_definition_id
    attr_accessor :element_path
    attr_accessor :profile
    attr_accessor :text

    def initialize(**options)
      options.each do |k, v|
        instance_variable_set("@#{k}", v)
      end
    end

    # Returns the validation result as an OperationOutcome
    #
    # @return [FHIR::OperationOutcome] The OperationOutcome
    def to_operation_outcome; end

    # Returns the result of the validation as a Hash
    #
    # @param [Hash] The results of the validation
    def to_hash; end
  end
end
