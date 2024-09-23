module FHIR
  module R4B
    class CodeableConcept < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'CodeableConcept.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'CodeableConcept._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'CodeableConcept.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'coding' => {'type'=>'Coding', 'path'=>'CodeableConcept.coding', 'min'=>0, 'max'=>Float::INFINITY},
        'text' => {'type'=>'string', 'path'=>'CodeableConcept.text', 'min'=>0, 'max'=>1},
        '_text' => {'type'=>'Element', 'path'=>'CodeableConcept._text', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :_id       # 0-1 Element
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :coding    # 0-* [ Coding ]
      attr_accessor :text      # 0-1 string
      attr_accessor :_text     # 0-1 Element
    end
  end
end