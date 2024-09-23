module FHIR
  module R4
    class EvidenceVariable < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['composed-of', 'context', 'context-quantity', 'context-type', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'EvidenceVariable.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Ev_idenceVariable._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'EvidenceVariable.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'EvidenceVariable.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'EvidenceVariable._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'EvidenceVariable.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'EvidenceVariable._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'EvidenceVariable.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'EvidenceVariable.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'EvidenceVariable.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'EvidenceVariable.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'EvidenceVariable.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'EvidenceVariable._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'EvidenceVariable.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'EvidenceVariable.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'EvidenceVariable._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'EvidenceVariable.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'EvidenceVariable._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'EvidenceVariable.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'EvidenceVariable._title', 'min'=>0, 'max'=>1},
        'shortTitle' => {'type'=>'string', 'path'=>'EvidenceVariable.shortTitle', 'min'=>0, 'max'=>1},
        '_shortTitle' => {'type'=>'Element', 'path'=>'EvidenceVariable._shortTitle', 'min'=>0, 'max'=>1},
        'subtitle' => {'type'=>'string', 'path'=>'EvidenceVariable.subtitle', 'min'=>0, 'max'=>1},
        '_subtitle' => {'type'=>'Element', 'path'=>'EvidenceVariable._subtitle', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'EvidenceVariable.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'EvidenceVariable._status', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'EvidenceVariable.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'EvidenceVariable._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'EvidenceVariable.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'EvidenceVariable._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'EvidenceVariable.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'EvidenceVariable._description', 'min'=>0, 'max'=>1},
        'note' => {'type'=>'Annotation', 'path'=>'EvidenceVariable.note', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'type'=>'UsageContext', 'path'=>'EvidenceVariable.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'EvidenceVariable.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'type'=>'markdown', 'path'=>'EvidenceVariable.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'EvidenceVariable._copyright', 'min'=>0, 'max'=>1},
        'approvalDate' => {'type'=>'date', 'path'=>'EvidenceVariable.approvalDate', 'min'=>0, 'max'=>1},
        '_approvalDate' => {'type'=>'Element', 'path'=>'EvidenceVariable._approvalDate', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'type'=>'date', 'path'=>'EvidenceVariable.lastReviewDate', 'min'=>0, 'max'=>1},
        '_lastReviewDate' => {'type'=>'Element', 'path'=>'EvidenceVariable._lastReviewDate', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'EvidenceVariable.effectivePeriod', 'min'=>0, 'max'=>1},
        'topic' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-topic'=>['treatment', 'education', 'assessment']}, 'type'=>'CodeableConcept', 'path'=>'EvidenceVariable.topic', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-topic'}},
        'author' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.author', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.editor', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.reviewer', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.endorser', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'EvidenceVariable.relatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/variable-type'=>['dichotomous', 'continuous', 'descriptive']}, 'type'=>'code', 'path'=>'EvidenceVariable.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/variable-type'}},
        '_type' => {'type'=>'Element', 'path'=>'EvidenceVariable._type', 'min'=>0, 'max'=>1},
        'characteristic' => {'type'=>'EvidenceVariable::Characteristic', 'path'=>'EvidenceVariable.characteristic', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Characteristic < FHIR::Model
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
          'definition' => ['Reference', 'canonical', 'CodeableConcept', 'Expression', 'DataRequirement', 'TriggerDefinition'],
          'participantEffective' => ['dateTime', 'Period', 'Duration', 'Timing']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Characteristic.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Characteristic._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Characteristic.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Characteristic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Characteristic.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Characteristic._description', 'min'=>0, 'max'=>1},
          'definitionReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'definitionCanonical' => {'type'=>'canonical', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          '_definitionCanonical' => {'type'=>'Element', 'path'=>'Characteristic.definition[x]', 'min'=>0, 'max'=>1},
          'definitionCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'definitionExpression' => {'type'=>'Expression', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'definitionDataRequirement' => {'type'=>'DataRequirement', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'definitionTriggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'usageContext' => {'type'=>'UsageContext', 'path'=>'Characteristic.usageContext', 'min'=>0, 'max'=>Float::INFINITY},
          'exclude' => {'type'=>'boolean', 'path'=>'Characteristic.exclude', 'min'=>0, 'max'=>1},
          '_exclude' => {'type'=>'Element', 'path'=>'Characteristic._exclude', 'min'=>0, 'max'=>1},
          'participantEffectiveDateTime' => {'type'=>'dateTime', 'path'=>'Characteristic.participantEffective[x]', 'min'=>0, 'max'=>1},
          '_participantEffectiveDateTime' => {'type'=>'Element', 'path'=>'Characteristic.participantEffective[x]', 'min'=>0, 'max'=>1},
          'participantEffectivePeriod' => {'type'=>'Period', 'path'=>'Characteristic.participantEffective[x]', 'min'=>0, 'max'=>1},
          'participantEffectiveDuration' => {'type'=>'Duration', 'path'=>'Characteristic.participantEffective[x]', 'min'=>0, 'max'=>1},
          'participantEffectiveTiming' => {'type'=>'Timing', 'path'=>'Characteristic.participantEffective[x]', 'min'=>0, 'max'=>1},
          'timeFromStart' => {'type'=>'Duration', 'path'=>'Characteristic.timeFromStart', 'min'=>0, 'max'=>1},
          'groupMeasure' => {'valid_codes'=>{'http://hl7.org/fhir/group-measure'=>['mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median']}, 'type'=>'code', 'path'=>'Characteristic.groupMeasure', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/group-measure'}},
          '_groupMeasure' => {'type'=>'Element', 'path'=>'Characteristic._groupMeasure', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                            # 0-1 string
        attr_accessor :_id                           # 0-1 Element
        attr_accessor :extension                     # 0-* [ Extension ]
        attr_accessor :modifierExtension             # 0-* [ Extension ]
        attr_accessor :description                   # 0-1 string
        attr_accessor :_description                  # 0-1 Element
        attr_accessor :definitionReference           # 1-1 Reference(Group)
        attr_accessor :definitionCanonical           # 1-1 canonical
        attr_accessor :_definitionCanonical          # 0-1 Element
        attr_accessor :definitionCodeableConcept     # 1-1 CodeableConcept
        attr_accessor :definitionExpression          # 1-1 Expression
        attr_accessor :definitionDataRequirement     # 1-1 DataRequirement
        attr_accessor :definitionTriggerDefinition   # 1-1 TriggerDefinition
        attr_accessor :usageContext                  # 0-* [ UsageContext ]
        attr_accessor :exclude                       # 0-1 boolean
        attr_accessor :_exclude                      # 0-1 Element
        attr_accessor :participantEffectiveDateTime  # 0-1 dateTime
        attr_accessor :_participantEffectiveDateTime # 0-1 Element
        attr_accessor :participantEffectivePeriod    # 0-1 Period
        attr_accessor :participantEffectiveDuration  # 0-1 Duration
        attr_accessor :participantEffectiveTiming    # 0-1 Timing
        attr_accessor :timeFromStart                 # 0-1 Duration
        attr_accessor :groupMeasure                  # 0-1 code
        attr_accessor :_groupMeasure                 # 0-1 Element
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :_id               # 0-1 Element
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :_implicitRules    # 0-1 Element
      attr_accessor :language          # 0-1 code
      attr_accessor :_language         # 0-1 Element
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 0-1 uri
      attr_accessor :_url              # 0-1 Element
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :version           # 0-1 string
      attr_accessor :_version          # 0-1 Element
      attr_accessor :name              # 0-1 string
      attr_accessor :_name             # 0-1 Element
      attr_accessor :title             # 0-1 string
      attr_accessor :_title            # 0-1 Element
      attr_accessor :shortTitle        # 0-1 string
      attr_accessor :_shortTitle       # 0-1 Element
      attr_accessor :subtitle          # 0-1 string
      attr_accessor :_subtitle         # 0-1 Element
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :_date             # 0-1 Element
      attr_accessor :publisher         # 0-1 string
      attr_accessor :_publisher        # 0-1 Element
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :_description      # 0-1 Element
      attr_accessor :note              # 0-* [ Annotation ]
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :approvalDate      # 0-1 date
      attr_accessor :_approvalDate     # 0-1 Element
      attr_accessor :lastReviewDate    # 0-1 date
      attr_accessor :_lastReviewDate   # 0-1 Element
      attr_accessor :effectivePeriod   # 0-1 Period
      attr_accessor :topic             # 0-* [ CodeableConcept ]
      attr_accessor :author            # 0-* [ ContactDetail ]
      attr_accessor :editor            # 0-* [ ContactDetail ]
      attr_accessor :reviewer          # 0-* [ ContactDetail ]
      attr_accessor :endorser          # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact   # 0-* [ RelatedArtifact ]
      attr_accessor :type              # 0-1 code
      attr_accessor :_type             # 0-1 Element
      attr_accessor :characteristic    # 1-* [ EvidenceVariable::Characteristic ]

      def resourceType
        'EvidenceVariable'
      end
    end
  end
  EvidenceVariable = FHIR::R4::EvidenceVariable
end