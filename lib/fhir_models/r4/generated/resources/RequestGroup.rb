module FHIR
  module R4
    class RequestGroup < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['author', 'authored', 'code', 'encounter', 'group-identifier', 'identifier', 'instantiates-canonical', 'instantiates-uri', 'intent', 'participant', 'patient', 'priority', 'status', 'subject']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'RequestGroup.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'RequestGroup._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'RequestGroup.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'RequestGroup.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'RequestGroup._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'RequestGroup.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'RequestGroup._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'RequestGroup.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'RequestGroup.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'RequestGroup.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'RequestGroup.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'RequestGroup.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesCanonical' => {'type'=>'canonical', 'path'=>'RequestGroup.instantiatesCanonical', 'min'=>0, 'max'=>Float::INFINITY},
        '_instantiatesCanonical' => {'type'=>'Element', 'path'=>'RequestGroup._instantiatesCanonical', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesUri' => {'type'=>'uri', 'path'=>'RequestGroup.instantiatesUri', 'min'=>0, 'max'=>Float::INFINITY},
        '_instantiatesUri' => {'type'=>'Element', 'path'=>'RequestGroup._instantiatesUri', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'RequestGroup.basedOn', 'min'=>0, 'max'=>Float::INFINITY},
        'replaces' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'RequestGroup.replaces', 'min'=>0, 'max'=>Float::INFINITY},
        'groupIdentifier' => {'type'=>'Identifier', 'path'=>'RequestGroup.groupIdentifier', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/request-status'=>['draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown']}, 'type'=>'code', 'path'=>'RequestGroup.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-status'}},
        '_status' => {'type'=>'Element', 'path'=>'RequestGroup._status', 'min'=>0, 'max'=>1},
        'intent' => {'valid_codes'=>{'http://hl7.org/fhir/request-intent'=>['proposal', 'plan', 'directive', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option']}, 'type'=>'code', 'path'=>'RequestGroup.intent', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-intent'}},
        '_intent' => {'type'=>'Element', 'path'=>'RequestGroup._intent', 'min'=>0, 'max'=>1},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'type'=>'code', 'path'=>'RequestGroup.priority', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        '_priority' => {'type'=>'Element', 'path'=>'RequestGroup._priority', 'min'=>0, 'max'=>1},
        'code' => {'type'=>'CodeableConcept', 'path'=>'RequestGroup.code', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'RequestGroup.subject', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'RequestGroup.encounter', 'min'=>0, 'max'=>1},
        'authoredOn' => {'type'=>'dateTime', 'path'=>'RequestGroup.authoredOn', 'min'=>0, 'max'=>1},
        '_authoredOn' => {'type'=>'Element', 'path'=>'RequestGroup._authoredOn', 'min'=>0, 'max'=>1},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'RequestGroup.author', 'min'=>0, 'max'=>1},
        'reasonCode' => {'type'=>'CodeableConcept', 'path'=>'RequestGroup.reasonCode', 'min'=>0, 'max'=>Float::INFINITY},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'RequestGroup.reasonReference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'type'=>'Annotation', 'path'=>'RequestGroup.note', 'min'=>0, 'max'=>Float::INFINITY},
        'action' => {'type'=>'RequestGroup::Action', 'path'=>'RequestGroup.action', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Action < FHIR::Model
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
          'timing' => ['dateTime', 'Age', 'Period', 'Duration', 'Range', 'Timing']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Action._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'prefix' => {'type'=>'string', 'path'=>'Action.prefix', 'min'=>0, 'max'=>1},
          '_prefix' => {'type'=>'Element', 'path'=>'Action._prefix', 'min'=>0, 'max'=>1},
          'title' => {'type'=>'string', 'path'=>'Action.title', 'min'=>0, 'max'=>1},
          '_title' => {'type'=>'Element', 'path'=>'Action._title', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'string', 'path'=>'Action.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Action._description', 'min'=>0, 'max'=>1},
          'textEquivalent' => {'type'=>'string', 'path'=>'Action.textEquivalent', 'min'=>0, 'max'=>1},
          '_textEquivalent' => {'type'=>'Element', 'path'=>'Action._textEquivalent', 'min'=>0, 'max'=>1},
          'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'type'=>'code', 'path'=>'Action.priority', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
          '_priority' => {'type'=>'Element', 'path'=>'Action._priority', 'min'=>0, 'max'=>1},
          'code' => {'type'=>'CodeableConcept', 'path'=>'Action.code', 'min'=>0, 'max'=>Float::INFINITY},
          'documentation' => {'type'=>'RelatedArtifact', 'path'=>'Action.documentation', 'min'=>0, 'max'=>Float::INFINITY},
          'condition' => {'type'=>'RequestGroup::Action::Condition', 'path'=>'Action.condition', 'min'=>0, 'max'=>Float::INFINITY},
          'relatedAction' => {'type'=>'RequestGroup::Action::RelatedAction', 'path'=>'Action.relatedAction', 'min'=>0, 'max'=>Float::INFINITY},
          'timingDateTime' => {'type'=>'dateTime', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
          '_timingDateTime' => {'type'=>'Element', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
          'timingAge' => {'type'=>'Age', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
          'timingPeriod' => {'type'=>'Period', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
          'timingDuration' => {'type'=>'Duration', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
          'timingRange' => {'type'=>'Range', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
          'timingTiming' => {'type'=>'Timing', 'path'=>'Action.timing[x]', 'min'=>0, 'max'=>1},
          'participant' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'Action.participant', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/action-type'=>['create', 'update', 'remove', 'fire-event']}, 'type'=>'CodeableConcept', 'path'=>'Action.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/action-type'}},
          'groupingBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-grouping-behavior'=>['visual-group', 'logical-group', 'sentence-group']}, 'type'=>'code', 'path'=>'Action.groupingBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-grouping-behavior'}},
          '_groupingBehavior' => {'type'=>'Element', 'path'=>'Action._groupingBehavior', 'min'=>0, 'max'=>1},
          'selectionBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-selection-behavior'=>['any', 'all', 'all-or-none', 'exactly-one', 'at-most-one', 'one-or-more']}, 'type'=>'code', 'path'=>'Action.selectionBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-selection-behavior'}},
          '_selectionBehavior' => {'type'=>'Element', 'path'=>'Action._selectionBehavior', 'min'=>0, 'max'=>1},
          'requiredBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-required-behavior'=>['must', 'could', 'must-unless-documented']}, 'type'=>'code', 'path'=>'Action.requiredBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-required-behavior'}},
          '_requiredBehavior' => {'type'=>'Element', 'path'=>'Action._requiredBehavior', 'min'=>0, 'max'=>1},
          'precheckBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-precheck-behavior'=>['yes', 'no']}, 'type'=>'code', 'path'=>'Action.precheckBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-precheck-behavior'}},
          '_precheckBehavior' => {'type'=>'Element', 'path'=>'Action._precheckBehavior', 'min'=>0, 'max'=>1},
          'cardinalityBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-cardinality-behavior'=>['single', 'multiple']}, 'type'=>'code', 'path'=>'Action.cardinalityBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-cardinality-behavior'}},
          '_cardinalityBehavior' => {'type'=>'Element', 'path'=>'Action._cardinalityBehavior', 'min'=>0, 'max'=>1},
          'resource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Action.resource', 'min'=>0, 'max'=>1},
          'action' => {'type'=>'RequestGroup::Action', 'path'=>'Action.action', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Condition < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Condition.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Condition._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Condition.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Condition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'kind' => {'valid_codes'=>{'http://hl7.org/fhir/action-condition-kind'=>['applicability', 'start', 'stop']}, 'type'=>'code', 'path'=>'Condition.kind', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-condition-kind'}},
            '_kind' => {'type'=>'Element', 'path'=>'Condition._kind', 'min'=>0, 'max'=>1},
            'expression' => {'type'=>'Expression', 'path'=>'Condition.expression', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :kind              # 1-1 code
          attr_accessor :_kind             # 0-1 Element
          attr_accessor :expression        # 0-1 Expression
        end

        class RelatedAction < FHIR::Model
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
            'offset' => ['Duration', 'Range']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'RelatedAction.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'RelatedAction._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'RelatedAction.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'RelatedAction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'actionId' => {'type'=>'id', 'path'=>'RelatedAction.actionId', 'min'=>1, 'max'=>1},
            '_actionId' => {'type'=>'Element', 'path'=>'RelatedAction._actionId', 'min'=>0, 'max'=>1},
            'relationship' => {'valid_codes'=>{'http://hl7.org/fhir/action-relationship-type'=>['before-start', 'before', 'before-end', 'concurrent-with-start', 'concurrent', 'concurrent-with-end', 'after-start', 'after', 'after-end']}, 'type'=>'code', 'path'=>'RelatedAction.relationship', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-relationship-type'}},
            '_relationship' => {'type'=>'Element', 'path'=>'RelatedAction._relationship', 'min'=>0, 'max'=>1},
            'offsetDuration' => {'type'=>'Duration', 'path'=>'RelatedAction.offset[x]', 'min'=>0, 'max'=>1},
            'offsetRange' => {'type'=>'Range', 'path'=>'RelatedAction.offset[x]', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :actionId          # 1-1 id
          attr_accessor :_actionId         # 0-1 Element
          attr_accessor :relationship      # 1-1 code
          attr_accessor :_relationship     # 0-1 Element
          attr_accessor :offsetDuration    # 0-1 Duration
          attr_accessor :offsetRange       # 0-1 Range
        end

        attr_accessor :id                   # 0-1 string
        attr_accessor :_id                  # 0-1 Element
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :prefix               # 0-1 string
        attr_accessor :_prefix              # 0-1 Element
        attr_accessor :title                # 0-1 string
        attr_accessor :_title               # 0-1 Element
        attr_accessor :description          # 0-1 string
        attr_accessor :_description         # 0-1 Element
        attr_accessor :textEquivalent       # 0-1 string
        attr_accessor :_textEquivalent      # 0-1 Element
        attr_accessor :priority             # 0-1 code
        attr_accessor :_priority            # 0-1 Element
        attr_accessor :code                 # 0-* [ CodeableConcept ]
        attr_accessor :documentation        # 0-* [ RelatedArtifact ]
        attr_accessor :condition            # 0-* [ RequestGroup::Action::Condition ]
        attr_accessor :relatedAction        # 0-* [ RequestGroup::Action::RelatedAction ]
        attr_accessor :timingDateTime       # 0-1 dateTime
        attr_accessor :_timingDateTime      # 0-1 Element
        attr_accessor :timingAge            # 0-1 Age
        attr_accessor :timingPeriod         # 0-1 Period
        attr_accessor :timingDuration       # 0-1 Duration
        attr_accessor :timingRange          # 0-1 Range
        attr_accessor :timingTiming         # 0-1 Timing
        attr_accessor :participant          # 0-* [ Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Device) ]
        attr_accessor :type                 # 0-1 CodeableConcept
        attr_accessor :groupingBehavior     # 0-1 code
        attr_accessor :_groupingBehavior    # 0-1 Element
        attr_accessor :selectionBehavior    # 0-1 code
        attr_accessor :_selectionBehavior   # 0-1 Element
        attr_accessor :requiredBehavior     # 0-1 code
        attr_accessor :_requiredBehavior    # 0-1 Element
        attr_accessor :precheckBehavior     # 0-1 code
        attr_accessor :_precheckBehavior    # 0-1 Element
        attr_accessor :cardinalityBehavior  # 0-1 code
        attr_accessor :_cardinalityBehavior # 0-1 Element
        attr_accessor :resource             # 0-1 Reference(Resource)
        attr_accessor :action               # 0-* [ RequestGroup::Action ]
      end

      attr_accessor :id                     # 0-1 id
      attr_accessor :_id                    # 0-1 Element
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :_implicitRules         # 0-1 Element
      attr_accessor :language               # 0-1 code
      attr_accessor :_language              # 0-1 Element
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :instantiatesCanonical  # 0-* [ canonical ]
      attr_accessor :_instantiatesCanonical # 0-* [ Element ]
      attr_accessor :instantiatesUri        # 0-* [ uri ]
      attr_accessor :_instantiatesUri       # 0-* [ Element ]
      attr_accessor :basedOn                # 0-* [ Reference(Resource) ]
      attr_accessor :replaces               # 0-* [ Reference(Resource) ]
      attr_accessor :groupIdentifier        # 0-1 Identifier
      attr_accessor :status                 # 1-1 code
      attr_accessor :_status                # 0-1 Element
      attr_accessor :intent                 # 1-1 code
      attr_accessor :_intent                # 0-1 Element
      attr_accessor :priority               # 0-1 code
      attr_accessor :_priority              # 0-1 Element
      attr_accessor :code                   # 0-1 CodeableConcept
      attr_accessor :subject                # 0-1 Reference(Patient|Group)
      attr_accessor :encounter              # 0-1 Reference(Encounter)
      attr_accessor :authoredOn             # 0-1 dateTime
      attr_accessor :_authoredOn            # 0-1 Element
      attr_accessor :author                 # 0-1 Reference(Device|Practitioner|PractitionerRole)
      attr_accessor :reasonCode             # 0-* [ CodeableConcept ]
      attr_accessor :reasonReference        # 0-* [ Reference(Condition|Observation|DiagnosticReport|DocumentReference) ]
      attr_accessor :note                   # 0-* [ Annotation ]
      attr_accessor :action                 # 0-* [ RequestGroup::Action ]

      def resourceType
        'RequestGroup'
      end
    end
  end
  RequestGroup = FHIR::R4::RequestGroup
end