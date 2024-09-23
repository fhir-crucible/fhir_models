module FHIR
  module R4
    class DeviceMetric < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['category', 'identifier', 'parent', 'source', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'DeviceMetric.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'DeviceMetric._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'DeviceMetric.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'DeviceMetric.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'DeviceMetric._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'DeviceMetric.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'DeviceMetric._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'DeviceMetric.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'DeviceMetric.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'DeviceMetric.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'DeviceMetric.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'DeviceMetric.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'type'=>'CodeableConcept', 'path'=>'DeviceMetric.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/devicemetric-type'}},
        'unit' => {'type'=>'CodeableConcept', 'path'=>'DeviceMetric.unit', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/devicemetric-type'}},
        'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DeviceMetric.source', 'min'=>0, 'max'=>1},
        'parent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DeviceMetric.parent', 'min'=>0, 'max'=>1},
        'operationalStatus' => {'valid_codes'=>{'http://hl7.org/fhir/metric-operational-status'=>['on', 'off', 'standby', 'entered-in-error']}, 'type'=>'code', 'path'=>'DeviceMetric.operationalStatus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-operational-status'}},
        '_operationalStatus' => {'type'=>'Element', 'path'=>'DeviceMetric._operationalStatus', 'min'=>0, 'max'=>1},
        'color' => {'valid_codes'=>{'http://hl7.org/fhir/metric-color'=>['black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white']}, 'type'=>'code', 'path'=>'DeviceMetric.color', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-color'}},
        '_color' => {'type'=>'Element', 'path'=>'DeviceMetric._color', 'min'=>0, 'max'=>1},
        'category' => {'valid_codes'=>{'http://hl7.org/fhir/metric-category'=>['measurement', 'setting', 'calculation', 'unspecified']}, 'type'=>'code', 'path'=>'DeviceMetric.category', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-category'}},
        '_category' => {'type'=>'Element', 'path'=>'DeviceMetric._category', 'min'=>0, 'max'=>1},
        'measurementPeriod' => {'type'=>'Timing', 'path'=>'DeviceMetric.measurementPeriod', 'min'=>0, 'max'=>1},
        'calibration' => {'type'=>'DeviceMetric::Calibration', 'path'=>'DeviceMetric.calibration', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Calibration < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Calibration.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Calibration._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Calibration.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Calibration.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/metric-calibration-type'=>['unspecified', 'offset', 'gain', 'two-point']}, 'type'=>'code', 'path'=>'Calibration.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-calibration-type'}},
          '_type' => {'type'=>'Element', 'path'=>'Calibration._type', 'min'=>0, 'max'=>1},
          'state' => {'valid_codes'=>{'http://hl7.org/fhir/metric-calibration-state'=>['not-calibrated', 'calibration-required', 'calibrated', 'unspecified']}, 'type'=>'code', 'path'=>'Calibration.state', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-calibration-state'}},
          '_state' => {'type'=>'Element', 'path'=>'Calibration._state', 'min'=>0, 'max'=>1},
          'time' => {'type'=>'instant', 'path'=>'Calibration.time', 'min'=>0, 'max'=>1},
          '_time' => {'type'=>'Element', 'path'=>'Calibration._time', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :state             # 0-1 code
        attr_accessor :_state            # 0-1 Element
        attr_accessor :time              # 0-1 instant
        attr_accessor :_time             # 0-1 Element
      end

      attr_accessor :id                 # 0-1 id
      attr_accessor :_id                # 0-1 Element
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :_implicitRules     # 0-1 Element
      attr_accessor :language           # 0-1 code
      attr_accessor :_language          # 0-1 Element
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :identifier         # 0-* [ Identifier ]
      attr_accessor :type               # 1-1 CodeableConcept
      attr_accessor :unit               # 0-1 CodeableConcept
      attr_accessor :source             # 0-1 Reference(Device)
      attr_accessor :parent             # 0-1 Reference(Device)
      attr_accessor :operationalStatus  # 0-1 code
      attr_accessor :_operationalStatus # 0-1 Element
      attr_accessor :color              # 0-1 code
      attr_accessor :_color             # 0-1 Element
      attr_accessor :category           # 1-1 code
      attr_accessor :_category          # 0-1 Element
      attr_accessor :measurementPeriod  # 0-1 Timing
      attr_accessor :calibration        # 0-* [ DeviceMetric::Calibration ]

      def resourceType
        'DeviceMetric'
      end
    end
  end
  DeviceMetric = FHIR::R4::DeviceMetric
end