module FHIR
  module R4
    class CoverageEligibilityRequest < FHIR::Model
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
        'serviced' => ['date', 'Period']
      }
      SEARCH_PARAMS = ['created', 'enterer', 'facility', 'identifier', 'patient', 'provider', 'status']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'CoverageEligibilityRequest.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'CoverageEligibilityRequest._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'CoverageEligibilityRequest.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'CoverageEligibilityRequest.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'CoverageEligibilityRequest._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'CoverageEligibilityRequest.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'CoverageEligibilityRequest._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'CoverageEligibilityRequest.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'CoverageEligibilityRequest.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'CoverageEligibilityRequest.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'CoverageEligibilityRequest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'CoverageEligibilityRequest.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'CoverageEligibilityRequest.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        '_status' => {'type'=>'Element', 'path'=>'CoverageEligibilityRequest._status', 'min'=>0, 'max'=>1},
        'priority' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/processpriority'=>['stat', 'normal', 'deferred']}, 'type'=>'CodeableConcept', 'path'=>'CoverageEligibilityRequest.priority', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/process-priority'}},
        'purpose' => {'valid_codes'=>{'http://hl7.org/fhir/eligibilityrequest-purpose'=>['auth-requirements', 'benefits', 'discovery', 'validation']}, 'type'=>'code', 'path'=>'CoverageEligibilityRequest.purpose', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose'}},
        '_purpose' => {'type'=>'Element', 'path'=>'CoverageEligibilityRequest._purpose', 'min'=>0, 'max'=>Float::INFINITY},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'CoverageEligibilityRequest.patient', 'min'=>1, 'max'=>1},
        'servicedDate' => {'type'=>'date', 'path'=>'CoverageEligibilityRequest.serviced[x]', 'min'=>0, 'max'=>1},
        '_servicedDate' => {'type'=>'Element', 'path'=>'CoverageEligibilityRequest.serviced[x]', 'min'=>0, 'max'=>1},
        'servicedPeriod' => {'type'=>'Period', 'path'=>'CoverageEligibilityRequest.serviced[x]', 'min'=>0, 'max'=>1},
        'created' => {'type'=>'dateTime', 'path'=>'CoverageEligibilityRequest.created', 'min'=>1, 'max'=>1},
        '_created' => {'type'=>'Element', 'path'=>'CoverageEligibilityRequest._created', 'min'=>0, 'max'=>1},
        'enterer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'CoverageEligibilityRequest.enterer', 'min'=>0, 'max'=>1},
        'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'CoverageEligibilityRequest.provider', 'min'=>0, 'max'=>1},
        'insurer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'CoverageEligibilityRequest.insurer', 'min'=>1, 'max'=>1},
        'facility' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'CoverageEligibilityRequest.facility', 'min'=>0, 'max'=>1},
        'supportingInfo' => {'type'=>'CoverageEligibilityRequest::SupportingInfo', 'path'=>'CoverageEligibilityRequest.supportingInfo', 'min'=>0, 'max'=>Float::INFINITY},
        'insurance' => {'type'=>'CoverageEligibilityRequest::Insurance', 'path'=>'CoverageEligibilityRequest.insurance', 'min'=>0, 'max'=>Float::INFINITY},
        'item' => {'type'=>'CoverageEligibilityRequest::Item', 'path'=>'CoverageEligibilityRequest.item', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class SupportingInfo < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'SupportingInfo.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'SupportingInfo._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'SupportingInfo.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'SupportingInfo.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'type'=>'positiveInt', 'path'=>'SupportingInfo.sequence', 'min'=>1, 'max'=>1},
          '_sequence' => {'type'=>'Element', 'path'=>'SupportingInfo._sequence', 'min'=>0, 'max'=>1},
          'information' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'SupportingInfo.information', 'min'=>1, 'max'=>1},
          'appliesToAll' => {'type'=>'boolean', 'path'=>'SupportingInfo.appliesToAll', 'min'=>0, 'max'=>1},
          '_appliesToAll' => {'type'=>'Element', 'path'=>'SupportingInfo._appliesToAll', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :sequence          # 1-1 positiveInt
        attr_accessor :_sequence         # 0-1 Element
        attr_accessor :information       # 1-1 Reference(Resource)
        attr_accessor :appliesToAll      # 0-1 boolean
        attr_accessor :_appliesToAll     # 0-1 Element
      end

      class Insurance < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Insurance.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Insurance._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Insurance.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Insurance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'focal' => {'type'=>'boolean', 'path'=>'Insurance.focal', 'min'=>0, 'max'=>1},
          '_focal' => {'type'=>'Element', 'path'=>'Insurance._focal', 'min'=>0, 'max'=>1},
          'coverage' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage'], 'type'=>'Reference', 'path'=>'Insurance.coverage', 'min'=>1, 'max'=>1},
          'businessArrangement' => {'type'=>'string', 'path'=>'Insurance.businessArrangement', 'min'=>0, 'max'=>1},
          '_businessArrangement' => {'type'=>'Element', 'path'=>'Insurance._businessArrangement', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :_id                  # 0-1 Element
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :focal                # 0-1 boolean
        attr_accessor :_focal               # 0-1 Element
        attr_accessor :coverage             # 1-1 Reference(Coverage)
        attr_accessor :businessArrangement  # 0-1 string
        attr_accessor :_businessArrangement # 0-1 Element
      end

      class Item < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Item.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Item._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Item.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Item.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'supportingInfoSequence' => {'type'=>'positiveInt', 'path'=>'Item.supportingInfoSequence', 'min'=>0, 'max'=>Float::INFINITY},
          '_supportingInfoSequence' => {'type'=>'Element', 'path'=>'Item._supportingInfoSequence', 'min'=>0, 'max'=>Float::INFINITY},
          'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'type'=>'CodeableConcept', 'path'=>'Item.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
          'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'type'=>'CodeableConcept', 'path'=>'Item.productOrService', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
          'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'type'=>'CodeableConcept', 'path'=>'Item.modifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
          'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'Item.provider', 'min'=>0, 'max'=>1},
          'quantity' => {'type'=>'Quantity', 'path'=>'Item.quantity', 'min'=>0, 'max'=>1},
          'unitPrice' => {'type'=>'Money', 'path'=>'Item.unitPrice', 'min'=>0, 'max'=>1},
          'facility' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Item.facility', 'min'=>0, 'max'=>1},
          'diagnosis' => {'type'=>'CoverageEligibilityRequest::Item::Diagnosis', 'path'=>'Item.diagnosis', 'min'=>0, 'max'=>Float::INFINITY},
          'detail' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Item.detail', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Diagnosis < FHIR::Model
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
            'diagnosis' => ['CodeableConcept', 'Reference']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Diagnosis.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Diagnosis._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Diagnosis.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Diagnosis.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'diagnosisCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/sid/icd-10'=>['123456', '123457', '987654', '123987', '112233', '997755', '321789']}, 'type'=>'CodeableConcept', 'path'=>'Diagnosis.diagnosis[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/icd-10'}},
            'diagnosisReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition'], 'type'=>'Reference', 'path'=>'Diagnosis.diagnosis[x]', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                       # 0-1 string
          attr_accessor :_id                      # 0-1 Element
          attr_accessor :extension                # 0-* [ Extension ]
          attr_accessor :modifierExtension        # 0-* [ Extension ]
          attr_accessor :diagnosisCodeableConcept # 0-1 CodeableConcept
          attr_accessor :diagnosisReference       # 0-1 Reference(Condition)
        end

        attr_accessor :id                      # 0-1 string
        attr_accessor :_id                     # 0-1 Element
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :supportingInfoSequence  # 0-* [ positiveInt ]
        attr_accessor :_supportingInfoSequence # 0-* [ Element ]
        attr_accessor :category                # 0-1 CodeableConcept
        attr_accessor :productOrService        # 0-1 CodeableConcept
        attr_accessor :modifier                # 0-* [ CodeableConcept ]
        attr_accessor :provider                # 0-1 Reference(Practitioner|PractitionerRole)
        attr_accessor :quantity                # 0-1 Quantity
        attr_accessor :unitPrice               # 0-1 Money
        attr_accessor :facility                # 0-1 Reference(Location|Organization)
        attr_accessor :diagnosis               # 0-* [ CoverageEligibilityRequest::Item::Diagnosis ]
        attr_accessor :detail                  # 0-* [ Reference(Resource) ]
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
      attr_accessor :priority          # 0-1 CodeableConcept
      attr_accessor :purpose           # 1-* [ code ]
      attr_accessor :_purpose          # 0-* [ Element ]
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :servicedDate      # 0-1 date
      attr_accessor :_servicedDate     # 0-1 Element
      attr_accessor :servicedPeriod    # 0-1 Period
      attr_accessor :created           # 1-1 dateTime
      attr_accessor :_created          # 0-1 Element
      attr_accessor :enterer           # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :provider          # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :insurer           # 1-1 Reference(Organization)
      attr_accessor :facility          # 0-1 Reference(Location)
      attr_accessor :supportingInfo    # 0-* [ CoverageEligibilityRequest::SupportingInfo ]
      attr_accessor :insurance         # 0-* [ CoverageEligibilityRequest::Insurance ]
      attr_accessor :item              # 0-* [ CoverageEligibilityRequest::Item ]

      def resourceType
        'CoverageEligibilityRequest'
      end
    end
  end
  CoverageEligibilityRequest = FHIR::R4::CoverageEligibilityRequest
end