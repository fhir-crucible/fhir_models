require 'bigdecimal'
module FHIR
  module Hashable
    def to_hash
      hash = {}
      self.class::METADATA.each do |key, value|
        local_name = key
        local_name = value['local_name'] if value['local_name']
        hash[key] = instance_variable_get("@#{local_name}")
        if hash[key].respond_to?(:to_hash)
          hash[key] = hash[key].to_hash
        elsif hash[key].is_a? Array
          hash[key] = Array.new(hash[key]) # copy the array
          hash[key].each_with_index do |item, index|
            hash[key][index] = item.to_hash if item.respond_to?(:to_hash)
          end
        end
      end
      hash = prune(hash)
      hash['resourceType'] = resourceType if respond_to?(:resourceType)
      hash
    end

    def prune(thing)
      # Inspired by active-support `blank` but in our case false isn't blank ...
      # https://github.com/rails/rails/blob/v5.2.3/activesupport/lib/active_support/core_ext/object/blank.rb
      blank = ->(obj) { obj.respond_to?(:empty?) ? obj.empty? : obj.nil? }
      if thing.is_a?(Array)
        return nil if thing.empty?

        thing
          .map { |i| prune(i) }
          .reject(&blank)
      elsif thing.is_a?(Hash)
        return {} if thing.empty?

        new_thing = {}
        thing.each do |key, value|
          new_thing[key] = prune(value) unless blank.call(value)
        end
        new_thing
      else
        thing
      end
    end

    def from_hash(original_hash)
      # eliminate empty stuff
      pruned_hash = prune(original_hash) unless original_hash.empty?
      # clear the existing variables
      self.class::METADATA.each do |key, value|
        local_name = key
        local_name = value['local_name'] if value['local_name']
        instance_variable_set("@#{local_name}", nil)
      end
      # set the variables to the hash values
      pruned_hash&.each_key do |key|
        value = original_hash[key]
        key = key.to_s
        meta = self.class::METADATA[key]
        next if meta.nil?
        local_name = key
        local_name = meta['local_name'] if meta['local_name']
        begin
          instance_variable_set("@#{local_name}", value)
        rescue
          # TODO: this appears to be a dead code branch
          nil
        end
        # inflate the value if it isn't a primitive
        klass = FHIR::PRIMITIVES.key?(meta['type']) ? nil : FHIR.const_get(meta['type'])
        if !klass.nil? && !value.nil?
          # handle array of objects
          if value.is_a?(Array)
            value = value.map { |child| make_child(child, klass) }
          else # handle single object
            value = make_child(value, klass)
            # if there is only one of these, but cardinality allows more, we need to wrap it in an array.
            value = [value] if value && (meta['max'] > 1)
          end
          instance_variable_set("@#{local_name}", value)
        elsif !FHIR::PRIMITIVES.include?(meta['type']) && meta['type'] != 'xhtml'
          FHIR.logger.error("Unhandled and unrecognized class/type: #{meta['type']}")
        elsif value.is_a?(Array)
          # array of primitives
          value = value.map { |child| convert_primitive(child, meta) }
          instance_variable_set("@#{local_name}", value)
        else
          # single primitive
          value = convert_primitive(value, meta)
          # if there is only one of these, but cardinality allows more, we need to wrap it in an array.
          value = [value] if value && (meta['max'] > 1)
          instance_variable_set("@#{local_name}", value)
        end # !klass && !nil?
      end # hash loop
      self
    end

    def make_child(child, klass)
      return child if child.is_a?(FHIR::Model)

      if child['resourceType'] && !klass::METADATA['resourceType']
        klass = begin
          FHIR.const_get(child['resourceType'])
        rescue => _exception
          # TODO: this appears to be a dead code branch
          # TODO: should this log / re-raise the exception if encountered instead of silently swallowing it?
          FHIR.logger.error("Unable to identify embedded class #{child['resourceType']}\n#{exception.backtrace}")
          nil
        end
      end
      begin
        obj = klass.new(child)
      rescue => exception
        # TODO: should this re-raise the exception if encountered instead of silently swallowing it?
        FHIR.logger.error("Unable to inflate embedded class #{klass}\n#{exception.backtrace}")
      end
      obj
    end

    def convert_primitive(value, meta)
      return value unless value.is_a?(String)

      rval = value
      if meta['type'] == 'boolean'
        rval = value.strip == 'true'
      elsif FHIR::PRIMITIVES.include?(meta['type'])
        if %w[decimal integer positiveInt unsignedInt].include?(meta['type'])
          rval = BigDecimal(value.to_s)
          rval = rval.frac.zero? ? rval.to_i : rval.to_f
        end # primitive is number
      end # boolean else
      rval
    end

    private :prune, :make_child, :convert_primitive
  end
end
