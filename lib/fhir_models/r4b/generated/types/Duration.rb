module FHIR
  module R4B
    class Duration < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Duration.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Duration._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Duration.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'value' => {'type'=>'decimal', 'path'=>'Duration.value', 'min'=>0, 'max'=>1},
        '_value' => {'type'=>'Element', 'path'=>'Duration._value', 'min'=>0, 'max'=>1},
        'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/quantity-comparator'=>['<', '<=', '>=', '>']}, 'type'=>'code', 'path'=>'Duration.comparator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quantity-comparator'}},
        '_comparator' => {'type'=>'Element', 'path'=>'Duration._comparator', 'min'=>0, 'max'=>1},
        'unit' => {'type'=>'string', 'path'=>'Duration.unit', 'min'=>0, 'max'=>1},
        '_unit' => {'type'=>'Element', 'path'=>'Duration._unit', 'min'=>0, 'max'=>1},
        'system' => {'type'=>'uri', 'path'=>'Duration.system', 'min'=>0, 'max'=>1},
        '_system' => {'type'=>'Element', 'path'=>'Duration._system', 'min'=>0, 'max'=>1},
        'code' => {'type'=>'code', 'path'=>'Duration.code', 'min'=>0, 'max'=>1},
        '_code' => {'type'=>'Element', 'path'=>'Duration._code', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id          # 0-1 string
      attr_accessor :_id         # 0-1 Element
      attr_accessor :extension   # 0-* [ Extension ]
      attr_accessor :value       # 0-1 decimal
      attr_accessor :_value      # 0-1 Element
      attr_accessor :comparator  # 0-1 code
      attr_accessor :_comparator # 0-1 Element
      attr_accessor :unit        # 0-1 string
      attr_accessor :_unit       # 0-1 Element
      attr_accessor :system      # 0-1 uri
      attr_accessor :_system     # 0-1 Element
      attr_accessor :code        # 0-1 code
      attr_accessor :_code       # 0-1 Element
    end
  end
end