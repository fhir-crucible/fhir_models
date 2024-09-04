module FHIR
  module R4B
    class DataType < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def fhir_version_string
        'R4B'
      end

      def versioned_fhir_module
        FHIR::R4B
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'DataType.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'DataType.extension', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
    end
  end
end