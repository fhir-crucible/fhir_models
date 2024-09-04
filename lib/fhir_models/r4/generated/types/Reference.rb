module FHIR
  module R4
    class Reference < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def fhir_version_string
        'R4'
      end

      def versioned_fhir_module
        FHIR::R4
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Reference.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Reference.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'reference' => {'type'=>'string', 'path'=>'Reference.reference', 'min'=>0, 'max'=>1},
        'type' => {'type'=>'uri', 'path'=>'Reference.type', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'Reference.identifier', 'min'=>0, 'max'=>1},
        'display' => {'type'=>'string', 'path'=>'Reference.display', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id         # 0-1 string
      attr_accessor :extension  # 0-* [ Extension ]
      attr_accessor :reference  # 0-1 string
      attr_accessor :type       # 0-1 uri
      attr_accessor :identifier # 0-1 Identifier
      attr_accessor :display    # 0-1 string
    end
  end
  Reference = FHIR::R4::Reference
end