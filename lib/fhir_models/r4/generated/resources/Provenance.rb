module FHIR
  module R4
    class Provenance < FHIR::Model
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
        'occurred' => ['Period', 'dateTime']
      }
      SEARCH_PARAMS = ['agent', 'agent-role', 'agent-type', 'entity', 'location', 'patient', 'recorded', 'signature-type', 'target', 'when']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Provenance.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Provenance._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Provenance.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Provenance.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Provenance._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Provenance.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Provenance._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Provenance.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Provenance.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Provenance.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Provenance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'target' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Provenance.target', 'min'=>1, 'max'=>Float::INFINITY},
        'occurredPeriod' => {'type'=>'Period', 'path'=>'Provenance.occurred[x]', 'min'=>0, 'max'=>1},
        'occurredDateTime' => {'type'=>'dateTime', 'path'=>'Provenance.occurred[x]', 'min'=>0, 'max'=>1},
        '_occurredDateTime' => {'type'=>'Element', 'path'=>'Provenance.occurred[x]', 'min'=>0, 'max'=>1},
        'recorded' => {'type'=>'instant', 'path'=>'Provenance.recorded', 'min'=>1, 'max'=>1},
        '_recorded' => {'type'=>'Element', 'path'=>'Provenance._recorded', 'min'=>0, 'max'=>1},
        'policy' => {'type'=>'uri', 'path'=>'Provenance.policy', 'min'=>0, 'max'=>Float::INFINITY},
        '_policy' => {'type'=>'Element', 'path'=>'Provenance._policy', 'min'=>0, 'max'=>Float::INFINITY},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Provenance.location', 'min'=>0, 'max'=>1},
        'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['PurposeOfUse', 'HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'type'=>'CodeableConcept', 'path'=>'Provenance.reason', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}},
        'activity' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion'=>['LA'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['ANONY', 'DEID', 'MASK', 'LABEL', 'PSEUD'], 'http://terminology.hl7.org/CodeSystem/v3-DataOperation'=>['CREATE', 'DELETE', 'UPDATE', 'APPEND', 'NULLIFY'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['PART', 'ADM', 'ATND', 'CALLBCK', 'CON', 'DIS', 'ESC', 'REF', 'AUT', 'INF', 'TRANS', 'ENT', 'WIT', 'CST', 'DIR', 'ALY', 'BBY', 'CAT', 'CSM', 'TPA', 'DEV', 'NRD', 'RDV', 'DON', 'EXPAGNT', 'EXPART', 'EXPTRGT', 'EXSRC', 'PRD', 'SBJ', 'SPC', 'IND', 'BEN', 'CAGNT', 'COV', 'GUAR', 'HLD', 'RCT', 'RCV', 'IRCP', 'NOT', 'PRCP', 'REFB', 'REFT', 'TRC', 'LOC', 'DST', 'ELOC', 'ORG', 'RML', 'VIA', 'PRF', 'DIST', 'PPRF', 'SPRF', 'RESP', 'VRF', 'AUTHEN', 'LA']}, 'type'=>'CodeableConcept', 'path'=>'Provenance.activity', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-activity-type'}},
        'agent' => {'type'=>'Provenance::Agent', 'path'=>'Provenance.agent', 'min'=>1, 'max'=>Float::INFINITY},
        'entity' => {'type'=>'Provenance::Entity', 'path'=>'Provenance.entity', 'min'=>0, 'max'=>Float::INFINITY},
        'signature' => {'type'=>'Signature', 'path'=>'Provenance.signature', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Agent < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Agent.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Agent._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Agent.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Agent.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/provenance-participant-type'=>['enterer', 'performer', 'author', 'verifier', 'legal', 'attester', 'informant', 'custodian', 'assembler', 'composer']}, 'type'=>'CodeableConcept', 'path'=>'Agent.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-agent-type'}},
          'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsignertypecodes'=>['AMENDER', 'COAUTH', 'CONT', 'EVTWIT', 'PRIMAUTH', 'REVIEWER', 'SOURCE', 'TRANS', 'VALID', 'VERF'], 'http://terminology.hl7.org/CodeSystem/v3-RoleClass'=>['AFFL', 'AGNT', 'ASSIGNED', 'CLAIM', 'COVPTY', 'DEPEN', 'ECON', 'EMP', 'GUARD', 'INVSBJ', 'NAMED', 'NOK', 'PAT', 'PROV', 'NOT'], 'http://terminology.hl7.org/CodeSystem/v3-RoleCode'=>['CLASSIFIER', 'CONSENTER', 'CONSWIT', 'COPART', 'DECLASSIFIER', 'DELEGATEE', 'DELEGATOR', 'DOWNGRDER', 'DPOWATT', 'EXCEST', 'GRANTEE', 'GRANTOR', 'GT', 'GUADLTM', 'HPOWATT', 'INTPRTER', 'POWATT', 'RESPRSN', 'SPOWATT', '_CitizenRoleType', 'CAS', 'CASM', 'CN', 'CNRP', 'CNRPM', 'CPCA', 'CRP', 'CRPM'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction'=>['AUCG', 'AULR', 'AUTM', 'AUWA', 'PROMSK'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['AUT', 'CST', 'INF', 'IRCP', 'LA', 'TRC', 'WIT'], 'http://terminology.hl7.org/CodeSystem/extra-security-role-type'=>['authserver', 'datacollector', 'dataprocessor', 'datasubject', 'humanuser'], 'http://dicom.nema.org/resources/ontology/DCM'=>['110150', '110151', '110152', '110153', '110154', '110155']}, 'type'=>'CodeableConcept', 'path'=>'Agent.role', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/security-role-type'}},
          'who' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Agent.who', 'min'=>1, 'max'=>1},
          'onBehalfOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Agent.onBehalfOf', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :role              # 0-* [ CodeableConcept ]
        attr_accessor :who               # 1-1 Reference(Practitioner|PractitionerRole|RelatedPerson|Patient|Device|Organization)
        attr_accessor :onBehalfOf        # 0-1 Reference(Practitioner|PractitionerRole|RelatedPerson|Patient|Device|Organization)
      end

      class Entity < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Entity.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Entity._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Entity.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Entity.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'role' => {'valid_codes'=>{'http://hl7.org/fhir/provenance-entity-role'=>['derivation', 'revision', 'quotation', 'source', 'removal']}, 'type'=>'code', 'path'=>'Entity.role', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-entity-role'}},
          '_role' => {'type'=>'Element', 'path'=>'Entity._role', 'min'=>0, 'max'=>1},
          'what' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Entity.what', 'min'=>1, 'max'=>1},
          'agent' => {'type'=>'Provenance::Agent', 'path'=>'Entity.agent', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :role              # 1-1 code
        attr_accessor :_role             # 0-1 Element
        attr_accessor :what              # 1-1 Reference(Resource)
        attr_accessor :agent             # 0-* [ Provenance::Agent ]
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
      attr_accessor :target            # 1-* [ Reference(Resource) ]
      attr_accessor :occurredPeriod    # 0-1 Period
      attr_accessor :occurredDateTime  # 0-1 dateTime
      attr_accessor :_occurredDateTime # 0-1 Element
      attr_accessor :recorded          # 1-1 instant
      attr_accessor :_recorded         # 0-1 Element
      attr_accessor :policy            # 0-* [ uri ]
      attr_accessor :_policy           # 0-* [ Element ]
      attr_accessor :location          # 0-1 Reference(Location)
      attr_accessor :reason            # 0-* [ CodeableConcept ]
      attr_accessor :activity          # 0-1 CodeableConcept
      attr_accessor :agent             # 1-* [ Provenance::Agent ]
      attr_accessor :entity            # 0-* [ Provenance::Entity ]
      attr_accessor :signature         # 0-* [ Signature ]

      def resourceType
        'Provenance'
      end
    end
  end
  Provenance = FHIR::R4::Provenance
end