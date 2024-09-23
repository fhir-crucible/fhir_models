module FHIR
  module R4
    class EpisodeOfCare < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['care-manager', 'condition', 'date', 'identifier', 'incoming-referral', 'organization', 'patient', 'status', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'EpisodeOfCare.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'EpisodeOfCare._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'EpisodeOfCare.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'EpisodeOfCare.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'EpisodeOfCare._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'EpisodeOfCare.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'EpisodeOfCare._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'EpisodeOfCare.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'EpisodeOfCare.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'EpisodeOfCare.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'EpisodeOfCare.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'EpisodeOfCare.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/episode-of-care-status'=>['planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled', 'entered-in-error']}, 'type'=>'code', 'path'=>'EpisodeOfCare.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/episode-of-care-status'}},
        '_status' => {'type'=>'Element', 'path'=>'EpisodeOfCare._status', 'min'=>0, 'max'=>1},
        'statusHistory' => {'type'=>'EpisodeOfCare::StatusHistory', 'path'=>'EpisodeOfCare.statusHistory', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/episodeofcare-type'=>['hacc', 'pac', 'diab', 'da', 'cacp']}, 'type'=>'CodeableConcept', 'path'=>'EpisodeOfCare.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/episodeofcare-type'}},
        'diagnosis' => {'type'=>'EpisodeOfCare::Diagnosis', 'path'=>'EpisodeOfCare.diagnosis', 'min'=>0, 'max'=>Float::INFINITY},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.patient', 'min'=>1, 'max'=>1},
        'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.managingOrganization', 'min'=>0, 'max'=>1},
        'period' => {'type'=>'Period', 'path'=>'EpisodeOfCare.period', 'min'=>0, 'max'=>1},
        'referralRequest' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.referralRequest', 'min'=>0, 'max'=>Float::INFINITY},
        'careManager' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.careManager', 'min'=>0, 'max'=>1},
        'team' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.team', 'min'=>0, 'max'=>Float::INFINITY},
        'account' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Account'], 'type'=>'Reference', 'path'=>'EpisodeOfCare.account', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class StatusHistory < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'StatusHistory.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'StatusHistory._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'StatusHistory.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'StatusHistory.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'status' => {'valid_codes'=>{'http://hl7.org/fhir/episode-of-care-status'=>['planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled', 'entered-in-error']}, 'type'=>'code', 'path'=>'StatusHistory.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/episode-of-care-status'}},
          '_status' => {'type'=>'Element', 'path'=>'StatusHistory._status', 'min'=>0, 'max'=>1},
          'period' => {'type'=>'Period', 'path'=>'StatusHistory.period', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :status            # 1-1 code
        attr_accessor :_status           # 0-1 Element
        attr_accessor :period            # 1-1 Period
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

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Diagnosis.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Diagnosis._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Diagnosis.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Diagnosis.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'condition' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition'], 'type'=>'Reference', 'path'=>'Diagnosis.condition', 'min'=>1, 'max'=>1},
          'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/diagnosis-role'=>['AD', 'DD', 'CC', 'CM', 'pre-op', 'post-op', 'billing']}, 'type'=>'CodeableConcept', 'path'=>'Diagnosis.role', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/diagnosis-role'}},
          'rank' => {'type'=>'positiveInt', 'path'=>'Diagnosis.rank', 'min'=>0, 'max'=>1},
          '_rank' => {'type'=>'Element', 'path'=>'Diagnosis._rank', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :condition         # 1-1 Reference(Condition)
        attr_accessor :role              # 0-1 CodeableConcept
        attr_accessor :rank              # 0-1 positiveInt
        attr_accessor :_rank             # 0-1 Element
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
      attr_accessor :statusHistory        # 0-* [ EpisodeOfCare::StatusHistory ]
      attr_accessor :type                 # 0-* [ CodeableConcept ]
      attr_accessor :diagnosis            # 0-* [ EpisodeOfCare::Diagnosis ]
      attr_accessor :patient              # 1-1 Reference(Patient)
      attr_accessor :managingOrganization # 0-1 Reference(Organization)
      attr_accessor :period               # 0-1 Period
      attr_accessor :referralRequest      # 0-* [ Reference(ServiceRequest) ]
      attr_accessor :careManager          # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :team                 # 0-* [ Reference(CareTeam) ]
      attr_accessor :account              # 0-* [ Reference(Account) ]

      def resourceType
        'EpisodeOfCare'
      end
    end
  end
  EpisodeOfCare = FHIR::R4::EpisodeOfCare
end