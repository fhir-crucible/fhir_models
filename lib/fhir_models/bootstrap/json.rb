require 'json'

module FHIR
  module Json
    #
    #  This module includes methods to serialize or deserialize FHIR resources to and from JSON.
    #

    def to_json(opts = nil)
      JSON.pretty_generate(to_hash, opts)
    end

    def self.from_json(json)
      hash = JSON.parse(json)
      resource = nil
      begin
        resource_type = hash['resourceType']
        klass = module_version.const_get(resource_type)
        resource = klass.new(hash)
      rescue StandardError => e
        FHIR.logger.error("Failed to deserialize JSON:\n#{e.backtrace}")
        FHIR.logger.debug("JSON:\n#{json}")
        resource = nil
      end
      resource
    end

    def self.module_version_name
      FHIR.module_version_name
    end

    def self.module_version
      FHIR.module_version
    end
  end
end