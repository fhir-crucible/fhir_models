module FHIR
  module R4B
    class Ratio < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'Ratio.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Ratio._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Ratio.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'numerator' => {'type'=>'Quantity', 'path'=>'Ratio.numerator', 'min'=>0, 'max'=>1},
        'denominator' => {'type'=>'Quantity', 'path'=>'Ratio.denominator', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id          # 0-1 string
      attr_accessor :_id         # 0-1 Element
      attr_accessor :extension   # 0-* [ Extension ]
      attr_accessor :numerator   # 0-1 Quantity
      attr_accessor :denominator # 0-1 Quantity
    end
  end
end