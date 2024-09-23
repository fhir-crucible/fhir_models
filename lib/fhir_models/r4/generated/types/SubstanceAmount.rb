module FHIR
  module R4
    class SubstanceAmount < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      MULTIPLE_TYPES = {
        'amount' => ['Quantity', 'Range', 'string']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'SubstanceAmount.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'SubstanceAmount._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'SubstanceAmount.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SubstanceAmount.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'amountQuantity' => {'type'=>'Quantity', 'path'=>'SubstanceAmount.amount[x]', 'min'=>0, 'max'=>1},
        'amountRange' => {'type'=>'Range', 'path'=>'SubstanceAmount.amount[x]', 'min'=>0, 'max'=>1},
        'amountString' => {'type'=>'string', 'path'=>'SubstanceAmount.amount[x]', 'min'=>0, 'max'=>1},
        '_amountString' => {'type'=>'Element', 'path'=>'SubstanceAmount.amount[x]', 'min'=>0, 'max'=>1},
        'amountType' => {'type'=>'CodeableConcept', 'path'=>'SubstanceAmount.amountType', 'min'=>0, 'max'=>1},
        'amountText' => {'type'=>'string', 'path'=>'SubstanceAmount.amountText', 'min'=>0, 'max'=>1},
        '_amountText' => {'type'=>'Element', 'path'=>'SubstanceAmount._amountText', 'min'=>0, 'max'=>1},
        'referenceRange' => {'type'=>'SubstanceAmount::ReferenceRange', 'path'=>'SubstanceAmount.referenceRange', 'min'=>0, 'max'=>1}
      }

      class ReferenceRange < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4'
        end

        def module_version
          FHIR::R4
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'ReferenceRange.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'ReferenceRange._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ReferenceRange.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'lowLimit' => {'type'=>'Quantity', 'path'=>'ReferenceRange.lowLimit', 'min'=>0, 'max'=>1},
          'highLimit' => {'type'=>'Quantity', 'path'=>'ReferenceRange.highLimit', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id        # 0-1 string
        attr_accessor :_id       # 0-1 Element
        attr_accessor :extension # 0-* [ Extension ]
        attr_accessor :lowLimit  # 0-1 Quantity
        attr_accessor :highLimit # 0-1 Quantity
      end

      attr_accessor :id                # 0-1 string
      attr_accessor :_id               # 0-1 Element
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :amountQuantity    # 0-1 Quantity
      attr_accessor :amountRange       # 0-1 Range
      attr_accessor :amountString      # 0-1 string
      attr_accessor :_amountString     # 0-1 Element
      attr_accessor :amountType        # 0-1 CodeableConcept
      attr_accessor :amountText        # 0-1 string
      attr_accessor :_amountText       # 0-1 Element
      attr_accessor :referenceRange    # 0-1 SubstanceAmount::ReferenceRange
    end
  end
  SubstanceAmount = FHIR::R4::SubstanceAmount
end