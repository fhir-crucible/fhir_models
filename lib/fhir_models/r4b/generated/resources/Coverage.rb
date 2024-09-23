module FHIR
  module R4B
    class Coverage < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['beneficiary', 'class-type', 'class-value', 'dependent', 'identifier', 'patient', 'payor', 'policy-holder', 'status', 'subscriber', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Coverage.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Coverage._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Coverage.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Coverage.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Coverage._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Coverage.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Coverage._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Coverage.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Coverage.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Coverage.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Coverage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Coverage.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'Coverage.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Coverage._status', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/coverage-selfpay'=>['pay'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_ActCoverageTypeCode', '_ActInsurancePolicyCode', 'EHCPOL', 'HSAPOL', 'AUTOPOL', 'COL', 'UNINSMOT', 'PUBLICPOL', 'DENTPRG', 'DISEASEPRG', 'CANPRG', 'ENDRENAL', 'HIVAIDS', 'MANDPOL', 'MENTPRG', 'SAFNET', 'SUBPRG', 'SUBSIDIZ', 'SUBSIDMC', 'SUBSUPP', 'WCBPOL', '_ActInsuranceTypeCode', '_ActHealthInsuranceTypeCode', 'DENTAL', 'DISEASE', 'DRUGPOL', 'HIP', 'LTC', 'MCPOL', 'POS', 'HMO', 'PPO', 'MENTPOL', 'SUBPOL', 'VISPOL', 'DIS', 'EWB', 'FLEXP', 'LIFE', 'ANNU', 'TLIFE', 'ULIFE', 'PNC', 'REI', 'SURPL', 'UMBRL', '_ActProgramTypeCode', 'CHAR', 'CRIME', 'EAP', 'GOVEMP', 'HIRISK', 'IND', 'MILITARY', 'RETIRE', 'SOCIAL', 'VET']}, 'type'=>'CodeableConcept', 'path'=>'Coverage.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/coverage-type'}},
        'policyHolder' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Coverage.policyHolder', 'min'=>0, 'max'=>1},
        'subscriber' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Coverage.subscriber', 'min'=>0, 'max'=>1},
        'subscriberId' => {'type'=>'string', 'path'=>'Coverage.subscriberId', 'min'=>0, 'max'=>1},
        '_subscriberId' => {'type'=>'Element', 'path'=>'Coverage._subscriberId', 'min'=>0, 'max'=>1},
        'beneficiary' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'Coverage.beneficiary', 'min'=>1, 'max'=>1},
        'dependent' => {'type'=>'string', 'path'=>'Coverage.dependent', 'min'=>0, 'max'=>1},
        '_dependent' => {'type'=>'Element', 'path'=>'Coverage._dependent', 'min'=>0, 'max'=>1},
        'relationship' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/subscriber-relationship'=>['child', 'parent', 'spouse', 'common', 'other', 'self', 'injured']}, 'type'=>'CodeableConcept', 'path'=>'Coverage.relationship', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subscriber-relationship'}},
        'period' => {'type'=>'Period', 'path'=>'Coverage.period', 'min'=>0, 'max'=>1},
        'payor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Coverage.payor', 'min'=>1, 'max'=>Float::INFINITY},
        'class' => {'local_name'=>'local_class', 'type'=>'Coverage::Class', 'path'=>'Coverage.class', 'min'=>0, 'max'=>Float::INFINITY},
        'order' => {'type'=>'positiveInt', 'path'=>'Coverage.order', 'min'=>0, 'max'=>1},
        '_order' => {'type'=>'Element', 'path'=>'Coverage._order', 'min'=>0, 'max'=>1},
        'network' => {'type'=>'string', 'path'=>'Coverage.network', 'min'=>0, 'max'=>1},
        '_network' => {'type'=>'Element', 'path'=>'Coverage._network', 'min'=>0, 'max'=>1},
        'costToBeneficiary' => {'type'=>'Coverage::CostToBeneficiary', 'path'=>'Coverage.costToBeneficiary', 'min'=>0, 'max'=>Float::INFINITY},
        'subrogation' => {'type'=>'boolean', 'path'=>'Coverage.subrogation', 'min'=>0, 'max'=>1},
        '_subrogation' => {'type'=>'Element', 'path'=>'Coverage._subrogation', 'min'=>0, 'max'=>1},
        'contract' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Contract'], 'type'=>'Reference', 'path'=>'Coverage.contract', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Class < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Class.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Class._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Class.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Class.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/coverage-class'=>['group', 'subgroup', 'plan', 'subplan', 'class', 'subclass', 'sequence', 'rxbin', 'rxpcn', 'rxid', 'rxgroup']}, 'type'=>'CodeableConcept', 'path'=>'Class.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/coverage-class'}},
          'value' => {'type'=>'string', 'path'=>'Class.value', 'min'=>1, 'max'=>1},
          '_value' => {'type'=>'Element', 'path'=>'Class._value', 'min'=>0, 'max'=>1},
          'name' => {'type'=>'string', 'path'=>'Class.name', 'min'=>0, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Class._name', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :value             # 1-1 string
        attr_accessor :_value            # 0-1 Element
        attr_accessor :name              # 0-1 string
        attr_accessor :_name             # 0-1 Element
      end

      class CostToBeneficiary < FHIR::Model
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
          'value' => ['Quantity', 'Money']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'CostToBeneficiary.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'CostToBeneficiary._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'CostToBeneficiary.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'CostToBeneficiary.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/coverage-copay-type'=>['gpvisit', 'spvisit', 'emergency', 'inpthosp', 'televisit', 'urgentcare', 'copaypct', 'copay', 'deductible', 'maxoutofpocket']}, 'type'=>'CodeableConcept', 'path'=>'CostToBeneficiary.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/coverage-copay-type'}},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'CostToBeneficiary.value[x]', 'min'=>1, 'max'=>1},
          'valueMoney' => {'type'=>'Money', 'path'=>'CostToBeneficiary.value[x]', 'min'=>1, 'max'=>1},
          'exception' => {'type'=>'Coverage::CostToBeneficiary::Exception', 'path'=>'CostToBeneficiary.exception', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Exception < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          def module_version_name
            'R4B'
          end

          def module_version
            FHIR::R4B
          end

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Exception.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Exception._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Exception.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Exception.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-coverage-financial-exception'=>['retired', 'foster']}, 'type'=>'CodeableConcept', 'path'=>'Exception.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/coverage-financial-exception'}},
            'period' => {'type'=>'Period', 'path'=>'Exception.period', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 1-1 CodeableConcept
          attr_accessor :period            # 0-1 Period
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :valueQuantity     # 1-1 Quantity
        attr_accessor :valueMoney        # 1-1 Money
        attr_accessor :exception         # 0-* [ Coverage::CostToBeneficiary::Exception ]
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
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :type              # 0-1 CodeableConcept
      attr_accessor :policyHolder      # 0-1 Reference(Patient|RelatedPerson|Organization)
      attr_accessor :subscriber        # 0-1 Reference(Patient|RelatedPerson)
      attr_accessor :subscriberId      # 0-1 string
      attr_accessor :_subscriberId     # 0-1 Element
      attr_accessor :beneficiary       # 1-1 Reference(Patient)
      attr_accessor :dependent         # 0-1 string
      attr_accessor :_dependent        # 0-1 Element
      attr_accessor :relationship      # 0-1 CodeableConcept
      attr_accessor :period            # 0-1 Period
      attr_accessor :payor             # 1-* [ Reference(Organization|Patient|RelatedPerson) ]
      attr_accessor :local_class       # 0-* [ Coverage::Class ]
      attr_accessor :order             # 0-1 positiveInt
      attr_accessor :_order            # 0-1 Element
      attr_accessor :network           # 0-1 string
      attr_accessor :_network          # 0-1 Element
      attr_accessor :costToBeneficiary # 0-* [ Coverage::CostToBeneficiary ]
      attr_accessor :subrogation       # 0-1 boolean
      attr_accessor :_subrogation      # 0-1 Element
      attr_accessor :contract          # 0-* [ Reference(Contract) ]

      def resourceType
        'Coverage'
      end
    end
  end
end