module FHIR
  module R4
    class Age < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Age.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Age._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Age.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'value' => {'type'=>'decimal', 'path'=>'Age.value', 'min'=>0, 'max'=>1},
        '_value' => {'type'=>'Element', 'path'=>'Age._value', 'min'=>0, 'max'=>1},
        'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/quantity-comparator'=>['<', '<=', '>=', '>']}, 'type'=>'code', 'path'=>'Age.comparator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quantity-comparator'}},
        '_comparator' => {'type'=>'Element', 'path'=>'Age._comparator', 'min'=>0, 'max'=>1},
        'unit' => {'type'=>'string', 'path'=>'Age.unit', 'min'=>0, 'max'=>1},
        '_unit' => {'type'=>'Element', 'path'=>'Age._unit', 'min'=>0, 'max'=>1},
        'system' => {'type'=>'uri', 'path'=>'Age.system', 'min'=>0, 'max'=>1},
        '_system' => {'type'=>'Element', 'path'=>'Age._system', 'min'=>0, 'max'=>1},
        'code' => {'type'=>'code', 'path'=>'Age.code', 'min'=>0, 'max'=>1},
        '_code' => {'type'=>'Element', 'path'=>'Age._code', 'min'=>0, 'max'=>1}
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
  Age = FHIR::R4::Age
end