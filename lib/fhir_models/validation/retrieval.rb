module FHIR
  module Validation
    # Methods for retrieving elements from resources
    module Retrieval
      # Retrieves all the elements associated with the given path with the FHIRPath of the element
      #
      # @param path [String] the path
      # @param resource [FHIR::Model] the resource from which the elements will be retrieved
      # @return [Hash] The desired elements
      def self.retrieve_by_fhirpath(path, resource, indexed = true)
        path_parts = path_parts(path)
        last = path_parts.pop if path_parts.length != 1 && !indexed

        desired_elements = indexed_elements_by_fhirpath(path_parts.join('.'), resource)

        return desired_elements unless last

        # If we don't want to index the last element (useful for testing cardinality)
        not_indexed = {}
        desired_elements.each do |current_path, element|
          not_indexed["#{current_path}.#{last}"] = retrieve_from_structure(last, element)
        end
        not_indexed
      end

      # Returns an array of the path parts
      # @param path [String] the path
      # @return [Array<String>]
      def self.path_parts(path)
        path.split('.')
      end

      # Retrieve the specified element from the structure
      #
      # @param element [String] the element to be retrieved
      # @param structure [FHIR::Model] the structure from which the element will be retrieved
      def self.retrieve_from_structure(element, structure)
        fixed_name = %w[class method resourceType].include?(element) ? "local_#{element}" : element
        structure.send(fixed_name) if structure.is_a? FHIR::Model # FHIR Primitives are not modeled and will throw NoMethod Error
      end

      # Returns the indexed elements given by the path
      #
      # @param fhirpath ['String'] the element path
      # @resource [FHIR::Model] the resource from which the elements will be retrieved
      # @return [Hash]
      def self.indexed_elements_by_fhirpath(fhirpath, resource)
        path_parts = path_parts(fhirpath)
        base_path = path_parts.shift
        fhir_path_elements = { base_path => resource }
        path_parts.reduce(fhir_path_elements) do |path_resource_map, sub_path|
          children = {}
          path_resource_map.each do |path, element|
            elements = retrieve_from_structure(sub_path, element)
            children["#{path}.#{sub_path}"] = elements unless blank?(elements)
          end
          index_elements(children)
        end
      end

      # Indexes the elements in the element map
      # @param element_map [Hash] the map of paths to element
      # @return [Hash]
      def self.index_elements(element_map)
        indexed_elements = {}
        element_map.each do |path, elements|
          indexed_elements.merge!(index_elements_for_path(elements, path))
        end
        indexed_elements
      end

      # Index enumerable element collections
      #
      # @param elements [Array]
      # @param path [String] the path to the element collection
      # @return [Hash]
      def self.index_element_collection(elements, path)
        indexed_elements = {}
        elements.each_with_index do |indexed_element_value, indexed_element_path|
          indexed_elements["#{path}[#{indexed_element_path}]"] = indexed_element_value unless blank?(indexed_element_value)
        end
        indexed_elements
      end

      # Index elements on a specific path
      # @param elements
      # @param path [String] the path to the element collection
      # @return [Hash]
      def self.index_elements_for_path(elements, path)
        indexed_elements = {}
        if elements.respond_to? :each_with_index
          indexed_elements = index_element_collection(elements, path)
        else
          indexed_elements[path.to_s] = elements unless blank?(elements)
        end
        indexed_elements
      end

      # Normalize type choice elements to [x]
      #
      # @param element_map [Hash]
      # @param element_definition [FHIR::ElementDefinition]
      # @return [Hash]
      def self.normalize_elements(element_map, element_definition)
        choice_type_elements = {}
        element_map.each do |element_path, element|
          base_path = element_path.rpartition('.').first
          normalized_path = "#{base_path}.#{element_definition.path.split('.').last}"
          choice_type_elements[normalized_path] ||= []
          choice_type_elements[normalized_path].push(element).compact!
        end
        choice_type_elements
      end

      # Retrieve elements which have a choice of type
      # @param resource [FHIR::Model]
      # @param element_definition [FHIR::ElementDefinition]
      # @param indexed [Boolean] If the elements should be returned individually or as a collection
      # @param normalized [Boolean] If the elements with a choice of type should be normalized
      # @return [Hash]
      def self.retrieve_choice_type_elements(resource, element_definition, indexed: false, normalized: false)
        elements = {}
        element_definition.type_paths.each do |type_path|
          type_element = retrieve_by_fhirpath(type_path, resource, indexed)
          elements.merge!(type_element) unless blank?(type_element)
        end

        elements = normalize_elements(elements, element_definition) if normalized
        elements
      end

      # Retrieve only the matching slices from the elements
      # @param element_definition [FHIR::ElementDefinition]
      # @param indexed [Boolean] If the elements should be returned individually or as a collection
      # @return [Hash]
      def self.handle_slices(element_map, element_definition, indexed: false)
        # Grab Extension slices
        return {} unless element_definition.type.first.code == 'Extension'

        # Only select the elements which match the slice profile.
        if indexed
          element_map.select! do |_k, element|
            element.url == element_definition.type.first.profile.first
          end
        else
          sliced_elements = {}
          element_map.each do |element_path, element|
            sliced_elements[element_path] = element.select do |extension|
              extension.url == element_definition.type.first.profile.first
            end
          end
          sliced_elements
        end
      end

      # Retrieve the elements in the resource which are defined by the provided ElementDefinition
      #
      # @param resource [FHIR::Model] The resource from which the elements will be retrieved
      # @param element_definition [FHIR::ElementDefinition] The ElementDefinition which defines the desired resources
      # @param indexed [Boolean] If the elements should be returned individually or as a collection
      # @param normalized [Boolean] If the elements with a choice of type should be normalized
      def self.retrieve_by_element_definition(resource, element_definition, indexed: false, normalized: false)
        path = element_definition.path

        elements = if element_definition.choice_type?
                     retrieve_choice_type_elements(resource, element_definition, indexed: indexed, normalized: normalized)
                   else
                     retrieve_by_fhirpath(path, resource, indexed)
                   end

        elements = handle_slices(elements, element_definition, indexed: indexed) if element_definition.sliceName
        elements
      end

      def self.blank?(obj)
        obj.respond_to?(:empty?) ? obj.empty? : obj.nil?
      end

      private_class_method :blank?, :path_parts, :retrieve_from_structure, :indexed_elements_by_fhirpath,
                           :index_elements, :normalize_elements, :retrieve_choice_type_elements, :handle_slices
    end
  end
end
