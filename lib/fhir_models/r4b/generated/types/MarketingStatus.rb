module FHIR
  module R4B
    class MarketingStatus < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'MarketingStatus.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MarketingStatus._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'MarketingStatus.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MarketingStatus.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'country' => {'type'=>'CodeableConcept', 'path'=>'MarketingStatus.country', 'min'=>0, 'max'=>1},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'MarketingStatus.jurisdiction', 'min'=>0, 'max'=>1},
        'status' => {'type'=>'CodeableConcept', 'path'=>'MarketingStatus.status', 'min'=>1, 'max'=>1},
        'dateRange' => {'type'=>'Period', 'path'=>'MarketingStatus.dateRange', 'min'=>0, 'max'=>1},
        'restoreDate' => {'type'=>'dateTime', 'path'=>'MarketingStatus.restoreDate', 'min'=>0, 'max'=>1},
        '_restoreDate' => {'type'=>'Element', 'path'=>'MarketingStatus._restoreDate', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :_id               # 0-1 Element
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :country           # 0-1 CodeableConcept
      attr_accessor :jurisdiction      # 0-1 CodeableConcept
      attr_accessor :status            # 1-1 CodeableConcept
      attr_accessor :dateRange         # 0-1 Period
      attr_accessor :restoreDate       # 0-1 dateTime
      attr_accessor :_restoreDate      # 0-1 Element
    end
  end
end