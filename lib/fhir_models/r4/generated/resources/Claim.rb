module FHIR
  module R4
    class Claim < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['care-team', 'created', 'detail-udi', 'encounter', 'enterer', 'facility', 'identifier', 'insurer', 'item-udi', 'patient', 'payee', 'priority', 'procedure-udi', 'provider', 'status', 'subdetail-udi', 'use']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Claim.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Claim._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Claim.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Claim.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Claim._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Claim.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Claim._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Claim.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Claim.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Claim.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Claim.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Claim.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'Claim.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Claim._status', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/claim-type'=>['institutional', 'oral', 'pharmacy', 'professional', 'vision']}, 'type'=>'CodeableConcept', 'path'=>'Claim.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-type'}},
        'subType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-claimsubtype'=>['ortho', 'emergency']}, 'type'=>'CodeableConcept', 'path'=>'Claim.subType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-subtype'}},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/claim-use'=>['claim', 'preauthorization', 'predetermination']}, 'type'=>'code', 'path'=>'Claim.use', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-use'}},
        '_use' => {'type'=>'Element', 'path'=>'Claim._use', 'min'=>0, 'max'=>1},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'Claim.patient', 'min'=>1, 'max'=>1},
        'billablePeriod' => {'type'=>'Period', 'path'=>'Claim.billablePeriod', 'min'=>0, 'max'=>1},
        'created' => {'type'=>'dateTime', 'path'=>'Claim.created', 'min'=>1, 'max'=>1},
        '_created' => {'type'=>'Element', 'path'=>'Claim._created', 'min'=>0, 'max'=>1},
        'enterer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'Claim.enterer', 'min'=>0, 'max'=>1},
        'insurer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Claim.insurer', 'min'=>0, 'max'=>1},
        'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Claim.provider', 'min'=>1, 'max'=>1},
        'priority' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/processpriority'=>['stat', 'normal', 'deferred']}, 'type'=>'CodeableConcept', 'path'=>'Claim.priority', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/process-priority'}},
        'fundsReserve' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/fundsreserve'=>['patient', 'provider', 'none']}, 'type'=>'CodeableConcept', 'path'=>'Claim.fundsReserve', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/fundsreserve'}},
        'related' => {'type'=>'Claim::Related', 'path'=>'Claim.related', 'min'=>0, 'max'=>Float::INFINITY},
        'prescription' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceRequest', 'http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/VisionPrescription'], 'type'=>'Reference', 'path'=>'Claim.prescription', 'min'=>0, 'max'=>1},
        'originalPrescription' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceRequest', 'http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/VisionPrescription'], 'type'=>'Reference', 'path'=>'Claim.originalPrescription', 'min'=>0, 'max'=>1},
        'payee' => {'type'=>'Claim::Payee', 'path'=>'Claim.payee', 'min'=>0, 'max'=>1},
        'referral' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'type'=>'Reference', 'path'=>'Claim.referral', 'min'=>0, 'max'=>1},
        'facility' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Claim.facility', 'min'=>0, 'max'=>1},
        'careTeam' => {'type'=>'Claim::CareTeam', 'path'=>'Claim.careTeam', 'min'=>0, 'max'=>Float::INFINITY},
        'supportingInfo' => {'type'=>'Claim::SupportingInfo', 'path'=>'Claim.supportingInfo', 'min'=>0, 'max'=>Float::INFINITY},
        'diagnosis' => {'type'=>'Claim::Diagnosis', 'path'=>'Claim.diagnosis', 'min'=>0, 'max'=>Float::INFINITY},
        'procedure' => {'type'=>'Claim::Procedure', 'path'=>'Claim.procedure', 'min'=>0, 'max'=>Float::INFINITY},
        'insurance' => {'type'=>'Claim::Insurance', 'path'=>'Claim.insurance', 'min'=>1, 'max'=>Float::INFINITY},
        'accident' => {'type'=>'Claim::Accident', 'path'=>'Claim.accident', 'min'=>0, 'max'=>1},
        'item' => {'type'=>'Claim::Item', 'path'=>'Claim.item', 'min'=>0, 'max'=>Float::INFINITY},
        'total' => {'type'=>'Money', 'path'=>'Claim.total', 'min'=>0, 'max'=>1}
      }

      class Related < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Related.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Related._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Related.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Related.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'claim' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Claim'], 'type'=>'Reference', 'path'=>'Related.claim', 'min'=>0, 'max'=>1},
          'relationship' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship'=>['prior', 'associated']}, 'type'=>'CodeableConcept', 'path'=>'Related.relationship', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/related-claim-relationship'}},
          'reference' => {'type'=>'Identifier', 'path'=>'Related.reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :claim             # 0-1 Reference(Claim)
        attr_accessor :relationship      # 0-1 CodeableConcept
        attr_accessor :reference         # 0-1 Identifier
      end

      class Payee < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Payee.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Payee._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Payee.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Payee.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/payeetype'=>['subscriber', 'provider', 'other']}, 'type'=>'CodeableConcept', 'path'=>'Payee.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/payeetype'}},
          'party' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Payee.party', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :party             # 0-1 Reference(Practitioner|PractitionerRole|Organization|Patient|RelatedPerson)
      end

      class CareTeam < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'CareTeam.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'CareTeam._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'CareTeam.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'CareTeam.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'type'=>'positiveInt', 'path'=>'CareTeam.sequence', 'min'=>1, 'max'=>1},
          '_sequence' => {'type'=>'Element', 'path'=>'CareTeam._sequence', 'min'=>0, 'max'=>1},
          'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'CareTeam.provider', 'min'=>1, 'max'=>1},
          'responsible' => {'type'=>'boolean', 'path'=>'CareTeam.responsible', 'min'=>0, 'max'=>1},
          '_responsible' => {'type'=>'Element', 'path'=>'CareTeam._responsible', 'min'=>0, 'max'=>1},
          'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/claimcareteamrole'=>['primary', 'assist', 'supervisor', 'other']}, 'type'=>'CodeableConcept', 'path'=>'CareTeam.role', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-careteamrole'}},
          'qualification' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-providerqualification'=>['311405', '604215', '604210']}, 'type'=>'CodeableConcept', 'path'=>'CareTeam.qualification', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/provider-qualification'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :sequence          # 1-1 positiveInt
        attr_accessor :_sequence         # 0-1 Element
        attr_accessor :provider          # 1-1 Reference(Practitioner|PractitionerRole|Organization)
        attr_accessor :responsible       # 0-1 boolean
        attr_accessor :_responsible      # 0-1 Element
        attr_accessor :role              # 0-1 CodeableConcept
        attr_accessor :qualification     # 0-1 CodeableConcept
      end

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

        MULTIPLE_TYPES = {
          'timing' => ['date', 'Period'],
          'value' => ['boolean', 'string', 'Quantity', 'Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'SupportingInfo.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'SupportingInfo._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'SupportingInfo.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'SupportingInfo.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'type'=>'positiveInt', 'path'=>'SupportingInfo.sequence', 'min'=>1, 'max'=>1},
          '_sequence' => {'type'=>'Element', 'path'=>'SupportingInfo._sequence', 'min'=>0, 'max'=>1},
          'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/claiminformationcategory'=>['info', 'discharge', 'onset', 'related', 'exception', 'material', 'attachment', 'missingtooth', 'prosthesis', 'other', 'hospitalized', 'employmentimpacted', 'externalcause', 'patientreasonforvisit']}, 'type'=>'CodeableConcept', 'path'=>'SupportingInfo.category', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-informationcategory'}},
          'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/claim-exception'=>['student', 'disabled']}, 'type'=>'CodeableConcept', 'path'=>'SupportingInfo.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-exception'}},
          'timingDate' => {'type'=>'date', 'path'=>'SupportingInfo.timing[x]', 'min'=>0, 'max'=>1},
          '_timingDate' => {'type'=>'Element', 'path'=>'SupportingInfo.timing[x]', 'min'=>0, 'max'=>1},
          'timingPeriod' => {'type'=>'Period', 'path'=>'SupportingInfo.timing[x]', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'SupportingInfo.value[x]', 'min'=>0, 'max'=>1},
          '_valueBoolean' => {'type'=>'Element', 'path'=>'SupportingInfo.value[x]', 'min'=>0, 'max'=>1},
          'valueString' => {'type'=>'string', 'path'=>'SupportingInfo.value[x]', 'min'=>0, 'max'=>1},
          '_valueString' => {'type'=>'Element', 'path'=>'SupportingInfo.value[x]', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'SupportingInfo.value[x]', 'min'=>0, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'SupportingInfo.value[x]', 'min'=>0, 'max'=>1},
          'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'SupportingInfo.value[x]', 'min'=>0, 'max'=>1},
          'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/missingtoothreason'=>['e', 'c', 'u', 'o']}, 'type'=>'CodeableConcept', 'path'=>'SupportingInfo.reason', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/missing-tooth-reason'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :sequence          # 1-1 positiveInt
        attr_accessor :_sequence         # 0-1 Element
        attr_accessor :category          # 1-1 CodeableConcept
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :timingDate        # 0-1 date
        attr_accessor :_timingDate       # 0-1 Element
        attr_accessor :timingPeriod      # 0-1 Period
        attr_accessor :valueBoolean      # 0-1 boolean
        attr_accessor :_valueBoolean     # 0-1 Element
        attr_accessor :valueString       # 0-1 string
        attr_accessor :_valueString      # 0-1 Element
        attr_accessor :valueQuantity     # 0-1 Quantity
        attr_accessor :valueAttachment   # 0-1 Attachment
        attr_accessor :valueReference    # 0-1 Reference(Resource)
        attr_accessor :reason            # 0-1 CodeableConcept
      end

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
          'sequence' => {'type'=>'positiveInt', 'path'=>'Diagnosis.sequence', 'min'=>1, 'max'=>1},
          '_sequence' => {'type'=>'Element', 'path'=>'Diagnosis._sequence', 'min'=>0, 'max'=>1},
          'diagnosisCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/sid/icd-10'=>['123456', '123457', '987654', '123987', '112233', '997755', '321789']}, 'type'=>'CodeableConcept', 'path'=>'Diagnosis.diagnosis[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/icd-10'}},
          'diagnosisReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition'], 'type'=>'Reference', 'path'=>'Diagnosis.diagnosis[x]', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-diagnosistype'=>['admitting', 'clinical', 'differential', 'discharge', 'laboratory', 'nursing', 'prenatal', 'principal', 'radiology', 'remote', 'retrospective', 'self']}, 'type'=>'CodeableConcept', 'path'=>'Diagnosis.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-diagnosistype'}},
          'onAdmission' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission'=>['y', 'n', 'u', 'w']}, 'type'=>'CodeableConcept', 'path'=>'Diagnosis.onAdmission', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-diagnosis-on-admission'}},
          'packageCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-diagnosisrelatedgroup'=>['100', '101', '300', '400']}, 'type'=>'CodeableConcept', 'path'=>'Diagnosis.packageCode', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-diagnosisrelatedgroup'}}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :_id                      # 0-1 Element
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :sequence                 # 1-1 positiveInt
        attr_accessor :_sequence                # 0-1 Element
        attr_accessor :diagnosisCodeableConcept # 1-1 CodeableConcept
        attr_accessor :diagnosisReference       # 1-1 Reference(Condition)
        attr_accessor :type                     # 0-* [ CodeableConcept ]
        attr_accessor :onAdmission              # 0-1 CodeableConcept
        attr_accessor :packageCode              # 0-1 CodeableConcept
      end

      class Procedure < FHIR::Model
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
          'procedure' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Procedure.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Procedure._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Procedure.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Procedure.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'type'=>'positiveInt', 'path'=>'Procedure.sequence', 'min'=>1, 'max'=>1},
          '_sequence' => {'type'=>'Element', 'path'=>'Procedure._sequence', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-procedure-type'=>['primary', 'secondary']}, 'type'=>'CodeableConcept', 'path'=>'Procedure.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-procedure-type'}},
          'date' => {'type'=>'dateTime', 'path'=>'Procedure.date', 'min'=>0, 'max'=>1},
          '_date' => {'type'=>'Element', 'path'=>'Procedure._date', 'min'=>0, 'max'=>1},
          'procedureCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/sid/ex-icd-10-procedures'=>['123001', '123002', '123003']}, 'type'=>'CodeableConcept', 'path'=>'Procedure.procedure[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/icd-10-procedures'}},
          'procedureReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Procedure'], 'type'=>'Reference', 'path'=>'Procedure.procedure[x]', 'min'=>1, 'max'=>1},
          'udi' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'Procedure.udi', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :_id                      # 0-1 Element
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :sequence                 # 1-1 positiveInt
        attr_accessor :_sequence                # 0-1 Element
        attr_accessor :type                     # 0-* [ CodeableConcept ]
        attr_accessor :date                     # 0-1 dateTime
        attr_accessor :_date                    # 0-1 Element
        attr_accessor :procedureCodeableConcept # 1-1 CodeableConcept
        attr_accessor :procedureReference       # 1-1 Reference(Procedure)
        attr_accessor :udi                      # 0-* [ Reference(Device) ]
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
          'sequence' => {'type'=>'positiveInt', 'path'=>'Insurance.sequence', 'min'=>1, 'max'=>1},
          '_sequence' => {'type'=>'Element', 'path'=>'Insurance._sequence', 'min'=>0, 'max'=>1},
          'focal' => {'type'=>'boolean', 'path'=>'Insurance.focal', 'min'=>1, 'max'=>1},
          '_focal' => {'type'=>'Element', 'path'=>'Insurance._focal', 'min'=>0, 'max'=>1},
          'identifier' => {'type'=>'Identifier', 'path'=>'Insurance.identifier', 'min'=>0, 'max'=>1},
          'coverage' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage'], 'type'=>'Reference', 'path'=>'Insurance.coverage', 'min'=>1, 'max'=>1},
          'businessArrangement' => {'type'=>'string', 'path'=>'Insurance.businessArrangement', 'min'=>0, 'max'=>1},
          '_businessArrangement' => {'type'=>'Element', 'path'=>'Insurance._businessArrangement', 'min'=>0, 'max'=>1},
          'preAuthRef' => {'type'=>'string', 'path'=>'Insurance.preAuthRef', 'min'=>0, 'max'=>Float::INFINITY},
          '_preAuthRef' => {'type'=>'Element', 'path'=>'Insurance._preAuthRef', 'min'=>0, 'max'=>Float::INFINITY},
          'claimResponse' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ClaimResponse'], 'type'=>'Reference', 'path'=>'Insurance.claimResponse', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :_id                  # 0-1 Element
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :sequence             # 1-1 positiveInt
        attr_accessor :_sequence            # 0-1 Element
        attr_accessor :focal                # 1-1 boolean
        attr_accessor :_focal               # 0-1 Element
        attr_accessor :identifier           # 0-1 Identifier
        attr_accessor :coverage             # 1-1 Reference(Coverage)
        attr_accessor :businessArrangement  # 0-1 string
        attr_accessor :_businessArrangement # 0-1 Element
        attr_accessor :preAuthRef           # 0-* [ string ]
        attr_accessor :_preAuthRef          # 0-* [ Element ]
        attr_accessor :claimResponse        # 0-1 Reference(ClaimResponse)
      end

      class Accident < FHIR::Model
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
          'location' => ['Address', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Accident.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Acc_ident._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Accident.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Accident.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'date' => {'type'=>'date', 'path'=>'Accident.date', 'min'=>1, 'max'=>1},
          '_date' => {'type'=>'Element', 'path'=>'Accident._date', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['MVA', 'SCHOOL', 'SPT', 'WPA']}, 'type'=>'CodeableConcept', 'path'=>'Accident.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActIncidentCode'}},
          'locationAddress' => {'type'=>'Address', 'path'=>'Accident.location[x]', 'min'=>0, 'max'=>1},
          'locationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Accident.location[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :date              # 1-1 date
        attr_accessor :_date             # 0-1 Element
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :locationAddress   # 0-1 Address
        attr_accessor :locationReference # 0-1 Reference(Location)
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

        MULTIPLE_TYPES = {
          'serviced' => ['date', 'Period'],
          'location' => ['CodeableConcept', 'Address', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Item.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Item._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Item.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Item.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'type'=>'positiveInt', 'path'=>'Item.sequence', 'min'=>1, 'max'=>1},
          '_sequence' => {'type'=>'Element', 'path'=>'Item._sequence', 'min'=>0, 'max'=>1},
          'careTeamSequence' => {'type'=>'positiveInt', 'path'=>'Item.careTeamSequence', 'min'=>0, 'max'=>Float::INFINITY},
          '_careTeamSequence' => {'type'=>'Element', 'path'=>'Item._careTeamSequence', 'min'=>0, 'max'=>Float::INFINITY},
          'diagnosisSequence' => {'type'=>'positiveInt', 'path'=>'Item.diagnosisSequence', 'min'=>0, 'max'=>Float::INFINITY},
          '_diagnosisSequence' => {'type'=>'Element', 'path'=>'Item._diagnosisSequence', 'min'=>0, 'max'=>Float::INFINITY},
          'procedureSequence' => {'type'=>'positiveInt', 'path'=>'Item.procedureSequence', 'min'=>0, 'max'=>Float::INFINITY},
          '_procedureSequence' => {'type'=>'Element', 'path'=>'Item._procedureSequence', 'min'=>0, 'max'=>Float::INFINITY},
          'informationSequence' => {'type'=>'positiveInt', 'path'=>'Item.informationSequence', 'min'=>0, 'max'=>Float::INFINITY},
          '_informationSequence' => {'type'=>'Element', 'path'=>'Item._informationSequence', 'min'=>0, 'max'=>Float::INFINITY},
          'revenue' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-revenue-center'=>['0370', '0420', '0421', '0440', '0441', '0450', '0451', '0452', '0010']}, 'type'=>'CodeableConcept', 'path'=>'Item.revenue', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-revenue-center'}},
          'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'type'=>'CodeableConcept', 'path'=>'Item.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
          'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'type'=>'CodeableConcept', 'path'=>'Item.productOrService', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
          'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'type'=>'CodeableConcept', 'path'=>'Item.modifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
          'programCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-programcode'=>['as', 'hd', 'auscr', 'none']}, 'type'=>'CodeableConcept', 'path'=>'Item.programCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-program-code'}},
          'servicedDate' => {'type'=>'date', 'path'=>'Item.serviced[x]', 'min'=>0, 'max'=>1},
          '_servicedDate' => {'type'=>'Element', 'path'=>'Item.serviced[x]', 'min'=>0, 'max'=>1},
          'servicedPeriod' => {'type'=>'Period', 'path'=>'Item.serviced[x]', 'min'=>0, 'max'=>1},
          'locationCodeableConcept' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-serviceplace'=>['01', '03', '04', '05', '06', '07', '08', '09', '11', '12', '13', '14', '15', '19', '20', '21', '41']}, 'type'=>'CodeableConcept', 'path'=>'Item.location[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-place'}},
          'locationAddress' => {'type'=>'Address', 'path'=>'Item.location[x]', 'min'=>0, 'max'=>1},
          'locationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Item.location[x]', 'min'=>0, 'max'=>1},
          'quantity' => {'type'=>'Quantity', 'path'=>'Item.quantity', 'min'=>0, 'max'=>1},
          'unitPrice' => {'type'=>'Money', 'path'=>'Item.unitPrice', 'min'=>0, 'max'=>1},
          'factor' => {'type'=>'decimal', 'path'=>'Item.factor', 'min'=>0, 'max'=>1},
          '_factor' => {'type'=>'Element', 'path'=>'Item._factor', 'min'=>0, 'max'=>1},
          'net' => {'type'=>'Money', 'path'=>'Item.net', 'min'=>0, 'max'=>1},
          'udi' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'Item.udi', 'min'=>0, 'max'=>Float::INFINITY},
          'bodySite' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-tooth'=>['0', '1', '2', '3', '4', '5', '6', '7', '8', '11', '12', '13', '14', '15', '16', '17', '18', '21', '22', '23', '24', '25', '26', '27', '28', '31', '32', '33', '34', '35', '36', '37', '38', '41', '42', '43', '44', '45', '46', '47', '48']}, 'type'=>'CodeableConcept', 'path'=>'Item.bodySite', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/tooth'}},
          'subSite' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/FDI-surface'=>['M', 'O', 'I', 'D', 'B', 'V', 'L', 'MO', 'DO', 'DI', 'MOD']}, 'type'=>'CodeableConcept', 'path'=>'Item.subSite', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/surface'}},
          'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'Item.encounter', 'min'=>0, 'max'=>Float::INFINITY},
          'detail' => {'type'=>'Claim::Item::Detail', 'path'=>'Item.detail', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Detail < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Detail.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Detail._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Detail.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Detail.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'sequence' => {'type'=>'positiveInt', 'path'=>'Detail.sequence', 'min'=>1, 'max'=>1},
            '_sequence' => {'type'=>'Element', 'path'=>'Detail._sequence', 'min'=>0, 'max'=>1},
            'revenue' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-revenue-center'=>['0370', '0420', '0421', '0440', '0441', '0450', '0451', '0452', '0010']}, 'type'=>'CodeableConcept', 'path'=>'Detail.revenue', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-revenue-center'}},
            'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'type'=>'CodeableConcept', 'path'=>'Detail.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
            'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'type'=>'CodeableConcept', 'path'=>'Detail.productOrService', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
            'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'type'=>'CodeableConcept', 'path'=>'Detail.modifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
            'programCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-programcode'=>['as', 'hd', 'auscr', 'none']}, 'type'=>'CodeableConcept', 'path'=>'Detail.programCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-program-code'}},
            'quantity' => {'type'=>'Quantity', 'path'=>'Detail.quantity', 'min'=>0, 'max'=>1},
            'unitPrice' => {'type'=>'Money', 'path'=>'Detail.unitPrice', 'min'=>0, 'max'=>1},
            'factor' => {'type'=>'decimal', 'path'=>'Detail.factor', 'min'=>0, 'max'=>1},
            '_factor' => {'type'=>'Element', 'path'=>'Detail._factor', 'min'=>0, 'max'=>1},
            'net' => {'type'=>'Money', 'path'=>'Detail.net', 'min'=>0, 'max'=>1},
            'udi' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'Detail.udi', 'min'=>0, 'max'=>Float::INFINITY},
            'subDetail' => {'type'=>'Claim::Item::Detail::SubDetail', 'path'=>'Detail.subDetail', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class SubDetail < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'SubDetail.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'SubDetail._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'SubDetail.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'SubDetail.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'sequence' => {'type'=>'positiveInt', 'path'=>'SubDetail.sequence', 'min'=>1, 'max'=>1},
              '_sequence' => {'type'=>'Element', 'path'=>'SubDetail._sequence', 'min'=>0, 'max'=>1},
              'revenue' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-revenue-center'=>['0370', '0420', '0421', '0440', '0441', '0450', '0451', '0452', '0010']}, 'type'=>'CodeableConcept', 'path'=>'SubDetail.revenue', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-revenue-center'}},
              'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'type'=>'CodeableConcept', 'path'=>'SubDetail.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
              'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'type'=>'CodeableConcept', 'path'=>'SubDetail.productOrService', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
              'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'type'=>'CodeableConcept', 'path'=>'SubDetail.modifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
              'programCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-programcode'=>['as', 'hd', 'auscr', 'none']}, 'type'=>'CodeableConcept', 'path'=>'SubDetail.programCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-program-code'}},
              'quantity' => {'type'=>'Quantity', 'path'=>'SubDetail.quantity', 'min'=>0, 'max'=>1},
              'unitPrice' => {'type'=>'Money', 'path'=>'SubDetail.unitPrice', 'min'=>0, 'max'=>1},
              'factor' => {'type'=>'decimal', 'path'=>'SubDetail.factor', 'min'=>0, 'max'=>1},
              '_factor' => {'type'=>'Element', 'path'=>'SubDetail._factor', 'min'=>0, 'max'=>1},
              'net' => {'type'=>'Money', 'path'=>'SubDetail.net', 'min'=>0, 'max'=>1},
              'udi' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'SubDetail.udi', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :sequence          # 1-1 positiveInt
            attr_accessor :_sequence         # 0-1 Element
            attr_accessor :revenue           # 0-1 CodeableConcept
            attr_accessor :category          # 0-1 CodeableConcept
            attr_accessor :productOrService  # 1-1 CodeableConcept
            attr_accessor :modifier          # 0-* [ CodeableConcept ]
            attr_accessor :programCode       # 0-* [ CodeableConcept ]
            attr_accessor :quantity          # 0-1 Quantity
            attr_accessor :unitPrice         # 0-1 Money
            attr_accessor :factor            # 0-1 decimal
            attr_accessor :_factor           # 0-1 Element
            attr_accessor :net               # 0-1 Money
            attr_accessor :udi               # 0-* [ Reference(Device) ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :sequence          # 1-1 positiveInt
          attr_accessor :_sequence         # 0-1 Element
          attr_accessor :revenue           # 0-1 CodeableConcept
          attr_accessor :category          # 0-1 CodeableConcept
          attr_accessor :productOrService  # 1-1 CodeableConcept
          attr_accessor :modifier          # 0-* [ CodeableConcept ]
          attr_accessor :programCode       # 0-* [ CodeableConcept ]
          attr_accessor :quantity          # 0-1 Quantity
          attr_accessor :unitPrice         # 0-1 Money
          attr_accessor :factor            # 0-1 decimal
          attr_accessor :_factor           # 0-1 Element
          attr_accessor :net               # 0-1 Money
          attr_accessor :udi               # 0-* [ Reference(Device) ]
          attr_accessor :subDetail         # 0-* [ Claim::Item::Detail::SubDetail ]
        end

        attr_accessor :id                      # 0-1 string
        attr_accessor :_id                     # 0-1 Element
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :sequence                # 1-1 positiveInt
        attr_accessor :_sequence               # 0-1 Element
        attr_accessor :careTeamSequence        # 0-* [ positiveInt ]
        attr_accessor :_careTeamSequence       # 0-* [ Element ]
        attr_accessor :diagnosisSequence       # 0-* [ positiveInt ]
        attr_accessor :_diagnosisSequence      # 0-* [ Element ]
        attr_accessor :procedureSequence       # 0-* [ positiveInt ]
        attr_accessor :_procedureSequence      # 0-* [ Element ]
        attr_accessor :informationSequence     # 0-* [ positiveInt ]
        attr_accessor :_informationSequence    # 0-* [ Element ]
        attr_accessor :revenue                 # 0-1 CodeableConcept
        attr_accessor :category                # 0-1 CodeableConcept
        attr_accessor :productOrService        # 1-1 CodeableConcept
        attr_accessor :modifier                # 0-* [ CodeableConcept ]
        attr_accessor :programCode             # 0-* [ CodeableConcept ]
        attr_accessor :servicedDate            # 0-1 date
        attr_accessor :_servicedDate           # 0-1 Element
        attr_accessor :servicedPeriod          # 0-1 Period
        attr_accessor :locationCodeableConcept # 0-1 CodeableConcept
        attr_accessor :locationAddress         # 0-1 Address
        attr_accessor :locationReference       # 0-1 Reference(Location)
        attr_accessor :quantity                # 0-1 Quantity
        attr_accessor :unitPrice               # 0-1 Money
        attr_accessor :factor                  # 0-1 decimal
        attr_accessor :_factor                 # 0-1 Element
        attr_accessor :net                     # 0-1 Money
        attr_accessor :udi                     # 0-* [ Reference(Device) ]
        attr_accessor :bodySite                # 0-1 CodeableConcept
        attr_accessor :subSite                 # 0-* [ CodeableConcept ]
        attr_accessor :encounter               # 0-* [ Reference(Encounter) ]
        attr_accessor :detail                  # 0-* [ Claim::Item::Detail ]
      end

      attr_accessor :id                   # 0-1 id
      attr_accessor :_id                  # 0-1 Element
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :_implicitRules       # 0-1 Element
      attr_accessor :language             # 0-1 code
      attr_accessor :_language            # 0-1 Element
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-* [ Identifier ]
      attr_accessor :status               # 1-1 code
      attr_accessor :_status              # 0-1 Element
      attr_accessor :type                 # 1-1 CodeableConcept
      attr_accessor :subType              # 0-1 CodeableConcept
      attr_accessor :use                  # 1-1 code
      attr_accessor :_use                 # 0-1 Element
      attr_accessor :patient              # 1-1 Reference(Patient)
      attr_accessor :billablePeriod       # 0-1 Period
      attr_accessor :created              # 1-1 dateTime
      attr_accessor :_created             # 0-1 Element
      attr_accessor :enterer              # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :insurer              # 0-1 Reference(Organization)
      attr_accessor :provider             # 1-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :priority             # 1-1 CodeableConcept
      attr_accessor :fundsReserve         # 0-1 CodeableConcept
      attr_accessor :related              # 0-* [ Claim::Related ]
      attr_accessor :prescription         # 0-1 Reference(DeviceRequest|MedicationRequest|VisionPrescription)
      attr_accessor :originalPrescription # 0-1 Reference(DeviceRequest|MedicationRequest|VisionPrescription)
      attr_accessor :payee                # 0-1 Claim::Payee
      attr_accessor :referral             # 0-1 Reference(ServiceRequest)
      attr_accessor :facility             # 0-1 Reference(Location)
      attr_accessor :careTeam             # 0-* [ Claim::CareTeam ]
      attr_accessor :supportingInfo       # 0-* [ Claim::SupportingInfo ]
      attr_accessor :diagnosis            # 0-* [ Claim::Diagnosis ]
      attr_accessor :procedure            # 0-* [ Claim::Procedure ]
      attr_accessor :insurance            # 1-* [ Claim::Insurance ]
      attr_accessor :accident             # 0-1 Claim::Accident
      attr_accessor :item                 # 0-* [ Claim::Item ]
      attr_accessor :total                # 0-1 Money

      def resourceType
        'Claim'
      end
    end
  end
  Claim = FHIR::R4::Claim
end