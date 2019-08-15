module FHIR
  module Validation
    # Represents the results of validating a structure.
    class StructureValidationResult
      attr_accessor :validation_hash

      def initialize(validation_hash)
        @validation_hash = validation_hash
      end

      def all_results
        all_validation_results(@validation_hash)
      end

      private def slice_results(element_node)
        element_node[:slices].empty? ? [] : all_validation_results(element_node[:slices])
      end

      private def sub_element_results(element_node)
        element_node[:path].empty? ? [] : all_validation_results(element_node[:path])
      end

      private def all_validation_results(hierarchy)
        hierarchy.flat_map do |_, element_node|
          element_node[:results].concat(slice_results(element_node), sub_element_results(element_node))
        end
      end
    end
  end
end
