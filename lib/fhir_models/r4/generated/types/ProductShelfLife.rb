module FHIR
  module R4
    class ProductShelfLife < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'ProductShelfLife.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ProductShelfLife._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'ProductShelfLife.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ProductShelfLife.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'ProductShelfLife.identifier', 'min'=>0, 'max'=>1},
        'type' => {'type'=>'CodeableConcept', 'path'=>'ProductShelfLife.type', 'min'=>1, 'max'=>1},
        'period' => {'type'=>'Quantity', 'path'=>'ProductShelfLife.period', 'min'=>1, 'max'=>1},
        'specialPrecautionsForStorage' => {'type'=>'CodeableConcept', 'path'=>'ProductShelfLife.specialPrecautionsForStorage', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                           # 0-1 string
      attr_accessor :_id                          # 0-1 Element
      attr_accessor :extension                    # 0-* [ Extension ]
      attr_accessor :modifierExtension            # 0-* [ Extension ]
      attr_accessor :identifier                   # 0-1 Identifier
      attr_accessor :type                         # 1-1 CodeableConcept
      attr_accessor :period                       # 1-1 Quantity
      attr_accessor :specialPrecautionsForStorage # 0-* [ CodeableConcept ]
    end
  end
  ProductShelfLife = FHIR::R4::ProductShelfLife
end