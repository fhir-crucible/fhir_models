module FHIR
  module R4
    class ProdCharacteristic < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'ProdCharacteristic.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ProdCharacteristic._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'ProdCharacteristic.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ProdCharacteristic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'height' => {'type'=>'Quantity', 'path'=>'ProdCharacteristic.height', 'min'=>0, 'max'=>1},
        'width' => {'type'=>'Quantity', 'path'=>'ProdCharacteristic.width', 'min'=>0, 'max'=>1},
        'depth' => {'type'=>'Quantity', 'path'=>'ProdCharacteristic.depth', 'min'=>0, 'max'=>1},
        'weight' => {'type'=>'Quantity', 'path'=>'ProdCharacteristic.weight', 'min'=>0, 'max'=>1},
        'nominalVolume' => {'type'=>'Quantity', 'path'=>'ProdCharacteristic.nominalVolume', 'min'=>0, 'max'=>1},
        'externalDiameter' => {'type'=>'Quantity', 'path'=>'ProdCharacteristic.externalDiameter', 'min'=>0, 'max'=>1},
        'shape' => {'type'=>'string', 'path'=>'ProdCharacteristic.shape', 'min'=>0, 'max'=>1},
        '_shape' => {'type'=>'Element', 'path'=>'ProdCharacteristic._shape', 'min'=>0, 'max'=>1},
        'color' => {'type'=>'string', 'path'=>'ProdCharacteristic.color', 'min'=>0, 'max'=>Float::INFINITY},
        '_color' => {'type'=>'Element', 'path'=>'ProdCharacteristic._color', 'min'=>0, 'max'=>Float::INFINITY},
        'imprint' => {'type'=>'string', 'path'=>'ProdCharacteristic.imprint', 'min'=>0, 'max'=>Float::INFINITY},
        '_imprint' => {'type'=>'Element', 'path'=>'ProdCharacteristic._imprint', 'min'=>0, 'max'=>Float::INFINITY},
        'image' => {'type'=>'Attachment', 'path'=>'ProdCharacteristic.image', 'min'=>0, 'max'=>Float::INFINITY},
        'scoring' => {'type'=>'CodeableConcept', 'path'=>'ProdCharacteristic.scoring', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :_id               # 0-1 Element
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :height            # 0-1 Quantity
      attr_accessor :width             # 0-1 Quantity
      attr_accessor :depth             # 0-1 Quantity
      attr_accessor :weight            # 0-1 Quantity
      attr_accessor :nominalVolume     # 0-1 Quantity
      attr_accessor :externalDiameter  # 0-1 Quantity
      attr_accessor :shape             # 0-1 string
      attr_accessor :_shape            # 0-1 Element
      attr_accessor :color             # 0-* [ string ]
      attr_accessor :_color            # 0-* [ Element ]
      attr_accessor :imprint           # 0-* [ string ]
      attr_accessor :_imprint          # 0-* [ Element ]
      attr_accessor :image             # 0-* [ Attachment ]
      attr_accessor :scoring           # 0-1 CodeableConcept
    end
  end
  ProdCharacteristic = FHIR::R4::ProdCharacteristic
end