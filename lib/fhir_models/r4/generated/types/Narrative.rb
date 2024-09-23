module FHIR
  module R4
    class Narrative < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'Narrative.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Narrative._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Narrative.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/narrative-status'=>['generated', 'extensions', 'additional', 'empty']}, 'type'=>'code', 'path'=>'Narrative.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/narrative-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Narrative._status', 'min'=>0, 'max'=>1},
        'div' => {'type'=>'xhtml', 'path'=>'Narrative.div', 'min'=>1, 'max'=>1},
        '_div' => {'type'=>'Element', 'path'=>'Narrative._div', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :_id       # 0-1 Element
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :status    # 1-1 code
      attr_accessor :_status   # 0-1 Element
      attr_accessor :div       # 1-1 xhtml
      attr_accessor :_div      # 0-1 Element
    end
  end
  Narrative = FHIR::R4::Narrative
end