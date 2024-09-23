module FHIR
  module R4B
    class RatioRange < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'RatioRange.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'RatioRange._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'RatioRange.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'lowNumerator' => {'type'=>'Quantity', 'path'=>'RatioRange.lowNumerator', 'min'=>0, 'max'=>1},
        'highNumerator' => {'type'=>'Quantity', 'path'=>'RatioRange.highNumerator', 'min'=>0, 'max'=>1},
        'denominator' => {'type'=>'Quantity', 'path'=>'RatioRange.denominator', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id            # 0-1 string
      attr_accessor :_id           # 0-1 Element
      attr_accessor :extension     # 0-* [ Extension ]
      attr_accessor :lowNumerator  # 0-1 Quantity
      attr_accessor :highNumerator # 0-1 Quantity
      attr_accessor :denominator   # 0-1 Quantity
    end
  end
end