module FHIR
  module R4
    class TriggerDefinition < FHIR::Model
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
        'timing' => ['Timing', 'Reference', 'date', 'dateTime']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'TriggerDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'TriggerDefinition._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'TriggerDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/trigger-type'=>['named-event', 'periodic', 'data-changed', 'data-added', 'data-modified', 'data-removed', 'data-accessed', 'data-access-ended']}, 'type'=>'code', 'path'=>'TriggerDefinition.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/trigger-type'}},
        '_type' => {'type'=>'Element', 'path'=>'TriggerDefinition._type', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'TriggerDefinition.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'TriggerDefinition._name', 'min'=>0, 'max'=>1},
        'timingTiming' => {'type'=>'Timing', 'path'=>'TriggerDefinition.timing[x]', 'min'=>0, 'max'=>1},
        'timingReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Schedule'], 'type'=>'Reference', 'path'=>'TriggerDefinition.timing[x]', 'min'=>0, 'max'=>1},
        'timingDate' => {'type'=>'date', 'path'=>'TriggerDefinition.timing[x]', 'min'=>0, 'max'=>1},
        '_timingDate' => {'type'=>'Element', 'path'=>'TriggerDefinition.timing[x]', 'min'=>0, 'max'=>1},
        'timingDateTime' => {'type'=>'dateTime', 'path'=>'TriggerDefinition.timing[x]', 'min'=>0, 'max'=>1},
        '_timingDateTime' => {'type'=>'Element', 'path'=>'TriggerDefinition.timing[x]', 'min'=>0, 'max'=>1},
        'data' => {'type'=>'DataRequirement', 'path'=>'TriggerDefinition.data', 'min'=>0, 'max'=>Float::INFINITY},
        'condition' => {'type'=>'Expression', 'path'=>'TriggerDefinition.condition', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id              # 0-1 string
      attr_accessor :_id             # 0-1 Element
      attr_accessor :extension       # 0-* [ Extension ]
      attr_accessor :type            # 1-1 code
      attr_accessor :_type           # 0-1 Element
      attr_accessor :name            # 0-1 string
      attr_accessor :_name           # 0-1 Element
      attr_accessor :timingTiming    # 0-1 Timing
      attr_accessor :timingReference # 0-1 Reference(Schedule)
      attr_accessor :timingDate      # 0-1 date
      attr_accessor :_timingDate     # 0-1 Element
      attr_accessor :timingDateTime  # 0-1 dateTime
      attr_accessor :_timingDateTime # 0-1 Element
      attr_accessor :data            # 0-* [ DataRequirement ]
      attr_accessor :condition       # 0-1 Expression
    end
  end
  TriggerDefinition = FHIR::R4::TriggerDefinition
end