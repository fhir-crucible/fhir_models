module FHIR
  module R4
    class Element < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def version
        'R4'
      end

      def version_class
        FHIR::R4
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Element.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Element.extension', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
    end
  end
  Element = FHIR::R4::Element
end