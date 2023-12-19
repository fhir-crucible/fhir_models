module FHIR
  class StructureDefinitionFinding
    # This is not an official FHIR Resource type. It is a data structure used for reporting.
    attr_accessor :resourceType
    attr_accessor :profileIdA
    attr_accessor :profileIdB
    attr_accessor :status
    attr_accessor :path
    attr_accessor :attribute
    attr_accessor :message
    attr_accessor :valueA
    attr_accessor :valueB

    def to_s
      "#{resourceType},#{profileIdA},#{profileIdB},#{path},#{attribute},#{status},#{message},#{valueA},#{valueB}"
    end

    def to_json(*_args)
      JSON.pretty_unparse(as_json)
    end

    def from_json(json)
      obj = FHIR::StructureDefinitionFinding.new
      if json.is_a? String
        begin
          if json.encoding.names.include? 'UTF-8'
            json.gsub!("\xEF\xBB\xBF".force_encoding('UTF-8'), '') # remove UTF-8 BOM
          end
          hash = JSON.parse(json)
          hash.each do |key, value|
            obj.send("#{key}=".to_sym, value) if value
          end
        rescue StandardError => e
          FHIR.logger.error "Failed to parse JSON: #{e.message}"
          return nil
        end
      end
      obj
    end

    def clone
      from_json(to_json)
    end

    def warning(path, attribute, message, value_a, value_b)
      obj = clone
      obj.status = 'WARNING'
      obj.path = path
      obj.attribute = attribute
      obj.message = message
      obj.valueA = value_a
      obj.valueB = value_b
      obj
    end

    def error(path, attribute, message, value_a, value_b)
      obj = clone
      obj.status = 'ERROR'
      obj.path = path
      obj.attribute = attribute
      obj.message = message
      obj.valueA = value_a
      obj.valueB = value_b
      obj
    end
  end
end
