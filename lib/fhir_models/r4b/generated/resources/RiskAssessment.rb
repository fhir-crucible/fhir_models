module FHIR
  module R4B
    class RiskAssessment < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      MULTIPLE_TYPES = {
        'occurrence' => ['dateTime', 'Period']
      }
      SEARCH_PARAMS = ['condition', 'date', 'encounter', 'identifier', 'method', 'patient', 'performer', 'probability', 'risk', 'subject']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'RiskAssessment.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'RiskAssessment._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'RiskAssessment.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'RiskAssessment.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'RiskAssessment._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'RiskAssessment.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'RiskAssessment._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'RiskAssessment.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'RiskAssessment.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'RiskAssessment.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'RiskAssessment.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'RiskAssessment.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'RiskAssessment.basedOn', 'min'=>0, 'max'=>1},
        'parent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'RiskAssessment.parent', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/observation-status'=>['registered', 'preliminary', 'final', 'amended', 'corrected', 'cancelled', 'entered-in-error', 'unknown']}, 'type'=>'code', 'path'=>'RiskAssessment.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/observation-status'}},
        '_status' => {'type'=>'Element', 'path'=>'RiskAssessment._status', 'min'=>0, 'max'=>1},
        'method' => {'local_name'=>'local_method', 'type'=>'CodeableConcept', 'path'=>'RiskAssessment.method', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'code' => {'type'=>'CodeableConcept', 'path'=>'RiskAssessment.code', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'RiskAssessment.subject', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'RiskAssessment.encounter', 'min'=>0, 'max'=>1},
        'occurrenceDateTime' => {'type'=>'dateTime', 'path'=>'RiskAssessment.occurrence[x]', 'min'=>0, 'max'=>1},
        '_occurrenceDateTime' => {'type'=>'Element', 'path'=>'RiskAssessment.occurrence[x]', 'min'=>0, 'max'=>1},
        'occurrencePeriod' => {'type'=>'Period', 'path'=>'RiskAssessment.occurrence[x]', 'min'=>0, 'max'=>1},
        'condition' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition'], 'type'=>'Reference', 'path'=>'RiskAssessment.condition', 'min'=>0, 'max'=>1},
        'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'RiskAssessment.performer', 'min'=>0, 'max'=>1},
        'reasonCode' => {'type'=>'CodeableConcept', 'path'=>'RiskAssessment.reasonCode', 'min'=>0, 'max'=>Float::INFINITY},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'RiskAssessment.reasonReference', 'min'=>0, 'max'=>Float::INFINITY},
        'basis' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'RiskAssessment.basis', 'min'=>0, 'max'=>Float::INFINITY},
        'prediction' => {'type'=>'RiskAssessment::Prediction', 'path'=>'RiskAssessment.prediction', 'min'=>0, 'max'=>Float::INFINITY},
        'mitigation' => {'type'=>'string', 'path'=>'RiskAssessment.mitigation', 'min'=>0, 'max'=>1},
        '_mitigation' => {'type'=>'Element', 'path'=>'RiskAssessment._mitigation', 'min'=>0, 'max'=>1},
        'note' => {'type'=>'Annotation', 'path'=>'RiskAssessment.note', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Prediction < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        MULTIPLE_TYPES = {
          'probability' => ['decimal', 'Range'],
          'when' => ['Period', 'Range']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Prediction.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Prediction._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Prediction.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Prediction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'outcome' => {'type'=>'CodeableConcept', 'path'=>'Prediction.outcome', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'probabilityDecimal' => {'type'=>'decimal', 'path'=>'Prediction.probability[x]', 'min'=>0, 'max'=>1},
          '_probabilityDecimal' => {'type'=>'Element', 'path'=>'Prediction.probability[x]', 'min'=>0, 'max'=>1},
          'probabilityRange' => {'type'=>'Range', 'path'=>'Prediction.probability[x]', 'min'=>0, 'max'=>1},
          'qualitativeRisk' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/risk-probability'=>['negligible', 'low', 'moderate', 'high', 'certain']}, 'type'=>'CodeableConcept', 'path'=>'Prediction.qualitativeRisk', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/risk-probability'}},
          'relativeRisk' => {'type'=>'decimal', 'path'=>'Prediction.relativeRisk', 'min'=>0, 'max'=>1},
          '_relativeRisk' => {'type'=>'Element', 'path'=>'Prediction._relativeRisk', 'min'=>0, 'max'=>1},
          'whenPeriod' => {'type'=>'Period', 'path'=>'Prediction.when[x]', 'min'=>0, 'max'=>1},
          'whenRange' => {'type'=>'Range', 'path'=>'Prediction.when[x]', 'min'=>0, 'max'=>1},
          'rationale' => {'type'=>'string', 'path'=>'Prediction.rationale', 'min'=>0, 'max'=>1},
          '_rationale' => {'type'=>'Element', 'path'=>'Prediction._rationale', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :_id                 # 0-1 Element
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :outcome             # 0-1 CodeableConcept
        attr_accessor :probabilityDecimal  # 0-1 decimal
        attr_accessor :_probabilityDecimal # 0-1 Element
        attr_accessor :probabilityRange    # 0-1 Range
        attr_accessor :qualitativeRisk     # 0-1 CodeableConcept
        attr_accessor :relativeRisk        # 0-1 decimal
        attr_accessor :_relativeRisk       # 0-1 Element
        attr_accessor :whenPeriod          # 0-1 Period
        attr_accessor :whenRange           # 0-1 Range
        attr_accessor :rationale           # 0-1 string
        attr_accessor :_rationale          # 0-1 Element
      end

      attr_accessor :id                  # 0-1 id
      attr_accessor :_id                 # 0-1 Element
      attr_accessor :meta                # 0-1 Meta
      attr_accessor :implicitRules       # 0-1 uri
      attr_accessor :_implicitRules      # 0-1 Element
      attr_accessor :language            # 0-1 code
      attr_accessor :_language           # 0-1 Element
      attr_accessor :text                # 0-1 Narrative
      attr_accessor :contained           # 0-* [ Resource ]
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :identifier          # 0-* [ Identifier ]
      attr_accessor :basedOn             # 0-1 Reference(Resource)
      attr_accessor :parent              # 0-1 Reference(Resource)
      attr_accessor :status              # 1-1 code
      attr_accessor :_status             # 0-1 Element
      attr_accessor :local_method        # 0-1 CodeableConcept
      attr_accessor :code                # 0-1 CodeableConcept
      attr_accessor :subject             # 1-1 Reference(Patient|Group)
      attr_accessor :encounter           # 0-1 Reference(Encounter)
      attr_accessor :occurrenceDateTime  # 0-1 dateTime
      attr_accessor :_occurrenceDateTime # 0-1 Element
      attr_accessor :occurrencePeriod    # 0-1 Period
      attr_accessor :condition           # 0-1 Reference(Condition)
      attr_accessor :performer           # 0-1 Reference(Practitioner|PractitionerRole|Device)
      attr_accessor :reasonCode          # 0-* [ CodeableConcept ]
      attr_accessor :reasonReference     # 0-* [ Reference(Condition|Observation|DiagnosticReport|DocumentReference) ]
      attr_accessor :basis               # 0-* [ Reference(Resource) ]
      attr_accessor :prediction          # 0-* [ RiskAssessment::Prediction ]
      attr_accessor :mitigation          # 0-1 string
      attr_accessor :_mitigation         # 0-1 Element
      attr_accessor :note                # 0-* [ Annotation ]

      def resourceType
        'RiskAssessment'
      end
    end
  end
end