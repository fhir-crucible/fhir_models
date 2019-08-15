# Extend StructureDefinition for profile validation code
require 'nokogiri'
require 'yaml'
require 'bcp47'

module FHIR
  class StructureDefinition
    extend FHIR::Deprecate
    attr_accessor :finding
    attr_accessor :errors
    attr_accessor :warnings
    attr_accessor :hierarchy

    # -------------------------------------------------------------------------
    #                            Profile Validation
    # -------------------------------------------------------------------------

    def validates_resource?(resource)
      validate_resource(resource).select { |res| res.result == :fail }.empty?
    end

    def validate_resource(resource)
      FHIR::Validation::StructureValidator.new(self).validate(resource)
    end
  end
end
