module FHIR
  module R4B
    class AuditEvent < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['action', 'address', 'agent', 'agent-name', 'agent-role', 'altid', 'date', 'entity', 'entity-name', 'entity-role', 'entity-type', 'outcome', 'patient', 'policy', 'site', 'source', 'subtype', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'AuditEvent.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'AuditEvent.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'AuditEvent.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'AuditEvent.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'AuditEvent.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'AuditEvent.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'AuditEvent.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'AuditEvent.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://dicom.nema.org/resources/ontology/DCM'=>['110100', '110101', '110102', '110103', '110104', '110105', '110106', '110107', '110108', '110109', '110110', '110111', '110112', '110113', '110114'], 'http://terminology.hl7.org/CodeSystem/audit-event-type'=>['rest'], 'http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle'=>['access', 'hold', 'amend', 'archive', 'attest', 'decrypt', 'deidentify', 'deprecate', 'destroy', 'disclose', 'encrypt', 'extract', 'link', 'merge', 'originate', 'pseudonymize', 'reactivate', 'receive', 'reidentify', 'unhold', 'report', 'restore', 'transform', 'transmit', 'unlink', 'unmerge', 'verify']}, 'type'=>'Coding', 'path'=>'AuditEvent.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-type'}},
        'subtype' => {'valid_codes'=>{'http://dicom.nema.org/resources/ontology/DCM'=>['110120', '110121', '110122', '110123', '110124', '110125', '110126', '110127', '110128', '110129', '110130', '110131', '110132', '110133', '110134', '110135', '110136', '110137', '110138', '110139', '110140', '110141', '110142'], 'http://hl7.org/fhir/restful-interaction'=>['read', 'vread', 'update', 'patch', 'delete', 'history', 'history-instance', 'history-type', 'history-system', 'create', 'search', 'search-type', 'search-system', 'capabilities', 'transaction', 'batch', 'operation']}, 'type'=>'Coding', 'path'=>'AuditEvent.subtype', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-sub-type'}},
        'action' => {'valid_codes'=>{'http://hl7.org/fhir/audit-event-action'=>['C', 'R', 'U', 'D', 'E']}, 'type'=>'code', 'path'=>'AuditEvent.action', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-action'}},
        'period' => {'type'=>'Period', 'path'=>'AuditEvent.period', 'min'=>0, 'max'=>1},
        'recorded' => {'type'=>'instant', 'path'=>'AuditEvent.recorded', 'min'=>1, 'max'=>1},
        'outcome' => {'valid_codes'=>{'http://hl7.org/fhir/audit-event-outcome'=>['0', '4', '8', '12']}, 'type'=>'code', 'path'=>'AuditEvent.outcome', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-outcome'}},
        'outcomeDesc' => {'type'=>'string', 'path'=>'AuditEvent.outcomeDesc', 'min'=>0, 'max'=>1},
        'purposeOfEvent' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'type'=>'CodeableConcept', 'path'=>'AuditEvent.purposeOfEvent', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}},
        'agent' => {'type'=>'AuditEvent::Agent', 'path'=>'AuditEvent.agent', 'min'=>1, 'max'=>Float::INFINITY},
        'source' => {'type'=>'AuditEvent::Source', 'path'=>'AuditEvent.source', 'min'=>1, 'max'=>1},
        'entity' => {'type'=>'AuditEvent::Entity', 'path'=>'AuditEvent.entity', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Agent < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Agent.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Agent.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Agent.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsignertypecodes'=>['AMENDER', 'COAUTH', 'CONT', 'EVTWIT', 'PRIMAUTH', 'REVIEWER', 'SOURCE', 'TRANS', 'VALID', 'VERF'], 'http://terminology.hl7.org/CodeSystem/v3-RoleClass'=>['AFFL', 'AGNT', 'ASSIGNED', 'CLAIM', 'COVPTY', 'DEPEN', 'ECON', 'EMP', 'GUARD', 'INVSBJ', 'NAMED', 'NOK', 'PAT', 'PROV', 'NOT'], 'http://terminology.hl7.org/CodeSystem/v3-RoleCode'=>['CLASSIFIER', 'CONSENTER', 'CONSWIT', 'COPART', 'DECLASSIFIER', 'DELEGATEE', 'DELEGATOR', 'DOWNGRDER', 'DPOWATT', 'EXCEST', 'GRANTEE', 'GRANTOR', 'GT', 'GUADLTM', 'HPOWATT', 'INTPRTER', 'POWATT', 'RESPRSN', 'SPOWATT', '_CitizenRoleType', 'CAS', 'CASM', 'CN', 'CNRP', 'CNRPM', 'CPCA', 'CRP', 'CRPM'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction'=>['AUCG', 'AULR', 'AUTM', 'AUWA', 'PROMSK'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['AUT', 'CST', 'INF', 'IRCP', 'LA', 'TRC', 'WIT'], 'http://terminology.hl7.org/CodeSystem/extra-security-role-type'=>['authserver', 'datacollector', 'dataprocessor', 'datasubject', 'humanuser'], 'http://dicom.nema.org/resources/ontology/DCM'=>['110150', '110151', '110152', '110153', '110154', '110155']}, 'type'=>'CodeableConcept', 'path'=>'Agent.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/participation-role-type'}},
          'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsignertypecodes'=>['AMENDER', 'COAUTH', 'CONT', 'EVTWIT', 'PRIMAUTH', 'REVIEWER', 'SOURCE', 'TRANS', 'VALID', 'VERF'], 'http://terminology.hl7.org/CodeSystem/v3-RoleClass'=>['AFFL', 'AGNT', 'ASSIGNED', 'CLAIM', 'COVPTY', 'DEPEN', 'ECON', 'EMP', 'GUARD', 'INVSBJ', 'NAMED', 'NOK', 'PAT', 'PROV', 'NOT'], 'http://terminology.hl7.org/CodeSystem/v3-RoleCode'=>['CLASSIFIER', 'CONSENTER', 'CONSWIT', 'COPART', 'DECLASSIFIER', 'DELEGATEE', 'DELEGATOR', 'DOWNGRDER', 'DPOWATT', 'EXCEST', 'GRANTEE', 'GRANTOR', 'GT', 'GUADLTM', 'HPOWATT', 'INTPRTER', 'POWATT', 'RESPRSN', 'SPOWATT', '_CitizenRoleType', 'CAS', 'CASM', 'CN', 'CNRP', 'CNRPM', 'CPCA', 'CRP', 'CRPM'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction'=>['AUCG', 'AULR', 'AUTM', 'AUWA', 'PROMSK'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['AUT', 'CST', 'INF', 'IRCP', 'LA', 'TRC', 'WIT'], 'http://terminology.hl7.org/CodeSystem/extra-security-role-type'=>['authserver', 'datacollector', 'dataprocessor', 'datasubject', 'humanuser'], 'http://dicom.nema.org/resources/ontology/DCM'=>['110150', '110151', '110152', '110153', '110154', '110155']}, 'type'=>'CodeableConcept', 'path'=>'Agent.role', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/security-role-type'}},
          'who' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Agent.who', 'min'=>0, 'max'=>1},
          'altId' => {'type'=>'string', 'path'=>'Agent.altId', 'min'=>0, 'max'=>1},
          'name' => {'type'=>'string', 'path'=>'Agent.name', 'min'=>0, 'max'=>1},
          'requestor' => {'type'=>'boolean', 'path'=>'Agent.requestor', 'min'=>1, 'max'=>1},
          'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Agent.location', 'min'=>0, 'max'=>1},
          'policy' => {'type'=>'uri', 'path'=>'Agent.policy', 'min'=>0, 'max'=>Float::INFINITY},
          'media' => {'valid_codes'=>{'http://dicom.nema.org/resources/ontology/DCM'=>['110030', '110031', '110032', '110033', '110034', '110035', '110036', '110037', '110010', '110038']}, 'type'=>'Coding', 'path'=>'Agent.media', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/dicm-405-mediatype'}},
          'network' => {'type'=>'AuditEvent::Agent::Network', 'path'=>'Agent.network', 'min'=>0, 'max'=>1},
          'purposeOfUse' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'type'=>'CodeableConcept', 'path'=>'Agent.purposeOfUse', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}}
        }

        class Network < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Network.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Network.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Network.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'address' => {'type'=>'string', 'path'=>'Network.address', 'min'=>0, 'max'=>1},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/network-type'=>['1', '2', '3', '4', '5']}, 'type'=>'code', 'path'=>'Network.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/network-type'}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :address           # 0-1 string
          attr_accessor :type              # 0-1 code
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :role              # 0-* [ CodeableConcept ]
        attr_accessor :who               # 0-1 Reference(PractitionerRole|Practitioner|Organization|Device|Patient|RelatedPerson)
        attr_accessor :altId             # 0-1 string
        attr_accessor :name              # 0-1 string
        attr_accessor :requestor         # 1-1 boolean
        attr_accessor :location          # 0-1 Reference(Location)
        attr_accessor :policy            # 0-* [ uri ]
        attr_accessor :media             # 0-1 Coding
        attr_accessor :network           # 0-1 AuditEvent::Agent::Network
        attr_accessor :purposeOfUse      # 0-* [ CodeableConcept ]
      end

      class Source < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Source.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Source.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Source.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'site' => {'type'=>'string', 'path'=>'Source.site', 'min'=>0, 'max'=>1},
          'observer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Source.observer', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/security-source-type'=>['1', '2', '3', '4', '5', '6', '7', '8', '9']}, 'type'=>'Coding', 'path'=>'Source.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-source-type'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :site              # 0-1 string
        attr_accessor :observer          # 1-1 Reference(PractitionerRole|Practitioner|Organization|Device|Patient|RelatedPerson)
        attr_accessor :type              # 0-* [ Coding ]
      end

      class Entity < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Entity.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Entity.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Entity.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'what' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Entity.what', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/audit-entity-type'=>['1', '2', '3', '4'], 'http://hl7.org/fhir/resource-types'=>['Resource', 'Binary', 'Bundle', 'DomainResource', 'Account', 'ActivityDefinition', 'AdministrableProductDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'BiologicallyDerivedProduct', 'BodyStructure', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Citation', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus', 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription', 'Parameters']}, 'type'=>'Coding', 'path'=>'Entity.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-entity-type'}},
          'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/object-role'=>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24']}, 'type'=>'Coding', 'path'=>'Entity.role', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/object-role'}},
          'lifecycle' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/dicom-audit-lifecycle'=>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'], 'http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle'=>['access', 'hold', 'amend', 'archive', 'attest', 'decrypt', 'deidentify', 'deprecate', 'destroy', 'disclose', 'encrypt', 'extract', 'link', 'merge', 'originate', 'pseudonymize', 'reactivate', 'receive', 'reidentify', 'unhold', 'report', 'restore', 'transform', 'transmit', 'unlink', 'unmerge', 'verify']}, 'type'=>'Coding', 'path'=>'Entity.lifecycle', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/object-lifecycle-events'}},
          'securityLabel' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-Confidentiality'=>['U', 'L', 'M', 'N', 'R', 'V'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_InformationSensitivityPolicy', '_ActInformationSensitivityPolicy', 'ETH', 'GDIS', 'HIV', 'MST', 'PREGNANT', 'SCA', 'SDV', 'SEX', 'SPI', 'BH', 'COGN', 'DVD', 'EMOTDIS', 'MH', 'PSY', 'PSYTHPN', 'SUD', 'ETHUD', 'OPIOIDUD', 'STD', 'TBOO', 'VIO', 'IDS', 'SICKLE', '_EntitySensitivityPolicyType', 'DEMO', 'DOB', 'GENDER', 'LIVARG', 'MARST', 'PATLOC', 'RACE', 'REL', '_RoleInformationSensitivityPolicy', 'B', 'EMPL', 'LOCIS', 'SSP', 'ADOL', 'CEL', 'VIP', 'DIA', 'DRGIS', 'EMP', 'PDS', 'PHY', 'PRS', 'COMPT', 'ACOCOMPT', 'CDSSCOMPT', 'CTCOMPT', 'FMCOMPT', 'HRCOMPT', 'LRCOMPT', 'PACOMPT', 'RESCOMPT', 'RMGTCOMPT', 'SecurityPolicy', 'AUTHPOL', 'ACCESSCONSCHEME', 'DELEPOL', 'ObligationPolicy', 'ANONY', 'AOD', 'AUDIT', 'AUDTR', 'CPLYPOL', 'CPLYCC', 'CPLYCD', 'CPLYCUI', 'CPLYJPP', 'CPLYJSP', 'CPLYOPP', 'CPLYOSP', 'DECLASSIFYLABEL', 'DEID', 'DELAU', 'DOWNGRDLABEL', 'DRIVLABEL', 'ENCRYPT', 'ENCRYPTR', 'ENCRYPTT', 'ENCRYPTU', 'HUAPRV', 'LABEL', 'MASK', 'MINEC', 'PERSISTLABEL', 'PRIVMARK', 'CUIMark', 'PSEUD', 'REDACT', 'UPGRDLABEL', 'PrivacyMark', 'ControlledUnclassifiedInformation', 'CONTROLLED', 'CUI', 'CUIHLTH', 'CUIHLTHP', 'CUIP', 'CUIPRVCY', 'CUIPRVCYP', 'CUISP-HLTH', 'CUISP-HLTHP', 'CUISP-PRVCY', 'CUISP-PRVCYP', 'UUI', 'SecurityLabelMark', 'ConfidentialMark', 'COPYMark', 'DeliverToAddresseeOnlyMark', 'RedisclosureProhibitionMark', 'RestrictedConfidentialityMark', 'DRAFTMark', 'RefrainPolicy', 'NOAUTH', 'NOCOLLECT', 'NODSCLCD', 'NODSCLCDS', 'NOINTEGRATE', 'NOLIST', 'NOMOU', 'NOORGPOL', 'NOPAT', 'NOPERSISTP', 'NORDSCLCD', 'NORDSLCD', 'NORDSCLCDS', 'NORDSCLW', 'NORELINK', 'NOREUSE', 'NOVIP', 'ORCON'], 'http://terminology.hl7.org/CodeSystem/v3-ObservationValue'=>['_SECALTINTOBV', 'ABSTRED', 'AGGRED', 'ANONYED', 'MAPPED', 'MASKED', 'PSEUDED', 'REDACTED', 'SUBSETTED', 'SYNTAC', 'TRSLT', 'VERSIONED', '_SECDATINTOBV', 'CRYTOHASH', 'DIGSIG', '_SECINTCONOBV', 'HRELIABLE', 'RELIABLE', 'UNCERTREL', 'UNRELIABLE', '_SECINTPRVOBV', '_SECINTPRVABOBV', 'CLINAST', 'DEVAST', 'HCPAST', 'PACQAST', 'PATAST', 'PAYAST', 'PROAST', 'SDMAST', '_SECINTPRVRBOBV', 'CLINRPT', 'DEVRPT', 'HCPRPT', 'PACQRPT', 'PATRPT', 'PAYRPT', 'PRORPT', 'SDMRPT', '_SECINTSTOBV', '_ActCoverageAssessmentObservationValue', '_ActFinancialStatusObservationValue', 'ASSET', 'ANNUITY', 'PROP', 'RETACCT', 'TRUST', 'INCOME', 'CHILD', 'DISABL', 'INVEST', 'PAY', 'RETIRE', 'SPOUSAL', 'SUPPLE', 'TAX', 'LIVEXP', 'CLOTH', 'FOOD', 'HEALTH', 'HOUSE', 'LEGAL', 'MORTG', 'RENT', 'SUNDRY', 'TRANS', 'UTIL', 'ELSTAT', 'ADOPT', 'BTHCERT', 'CCOC', 'DRLIC', 'FOSTER', 'MEMBER', 'MIL', 'MRGCERT', 'PASSPORT', 'STUDENRL', 'HLSTAT', 'DISABLE', 'DRUG', 'IVDRG', 'PGNT', 'LIVDEP', 'RELDEP', 'SPSDEP', 'URELDEP', 'LIVSIT', 'ALONE', 'DEPCHD', 'DEPSPS', 'DEPYGCHD', 'FAM', 'RELAT', 'SPS', 'UNREL', 'SOECSTAT', 'ABUSE', 'HMLESS', 'ILGIM', 'INCAR', 'PROB', 'REFUG', 'UNEMPL', '_AllergyTestValue', 'A0', 'A1', 'A2', 'A3', 'A4', '_CompositeMeasureScoring', 'ALLORNONESCR', 'LINEARSCR', 'OPPORSCR', 'WEIGHTSCR', '_CoverageLimitObservationValue', '_CoverageLevelObservationValue', 'ADC', 'CHD', 'DEP', 'DP', 'ECH', 'FLY', 'IND', 'SSP', '_CoverageItemLimitObservationValue', '_CoverageLocationLimitObservationValue', '_CriticalityObservationValue', 'CRITH', 'CRITL', 'CRITU', '_EmploymentStatus', 'Employed', 'NotInLaborForce', 'Unemployed', '_GeneticObservationValue', 'Homozygote', '_MeasurementImprovementNotation', 'DecrIsImp', 'IncrIsImp', '_ObservationMeasureScoring', 'COHORT', 'CONTVAR', 'PROPOR', 'RATIO', '_ObservationMeasureType', 'COMPOSITE', 'EFFICIENCY', 'EXPERIENCE', 'OUTCOME', 'INTERM-OM', 'PRO-PM', 'PROCESS', 'APPROPRIATE', 'RESOURCE', 'STRUCTURE', '_ObservationPopulationInclusion', 'DENEX', 'DENEXCEP', 'DENOM', 'IP', 'IPP', 'MSRPOPL', 'NUMER', 'NUMEX', '_PartialCompletionScale', 'G', 'LE', 'ME', 'MI', 'N', 'S', '_SecurityObservationValue', '_SECCATOBV', '_SECCLASSOBV', '_SECCONOBV', '_SECINTOBV', 'SECTRSTOBV', 'TRSTACCRDOBV', 'TRSTAGREOBV', 'TRSTCERTOBV', 'TRSTFWKOBV', 'TRSTLOAOBV', 'LOAAN', 'LOAAN1', 'LOAAN2', 'LOAAN3', 'LOAAN4', 'LOAAP', 'LOAAP1', 'LOAAP2', 'LOAAP3', 'LOAAP4', 'LOAAS', 'LOAAS1', 'LOAAS2', 'LOAAS3', 'LOAAS4', 'LOACM', 'LOACM1', 'LOACM2', 'LOACM3', 'LOACM4', 'LOAID', 'LOAID1', 'LOAID2', 'LOAID3', 'LOAID4', 'LOANR', 'LOANR1', 'LOANR2', 'LOANR3', 'LOANR4', 'LOARA', 'LOARA1', 'LOARA2', 'LOARA3', 'LOARA4', 'LOATK', 'LOATK1', 'LOATK2', 'LOATK3', 'LOATK4', 'TRSTMECOBV', '_SeverityObservation', 'H', 'L', 'M', '_SubjectBodyPosition', 'LLD', 'PRN', 'RLD', 'SFWL', 'SIT', 'STN', 'SUP', 'RTRD', 'TRD', '_VerificationOutcomeValue', 'ACT', 'ACTPEND', 'ELG', 'INACT', 'INPNDINV', 'INPNDUPD', 'NELG', '_WorkSchedule', 'DS', 'EMS', 'ES', 'NS', 'RSWN', 'RSWON', 'SS', 'VLS', 'VS', '_AnnotationValue', '_ECGAnnotationValue', '_CommonClinicalObservationValue', '_CommonClinicalObservationAssertionValue', '_CommonClinicalObservationResultValue', '_CoverageChemicalDependencyValue', '_IndividualCaseSafetyReportValueDomains', '_CaseSeriousnessCriteria', '_DeviceManufacturerEvaluationInterpretation', '_DeviceManufacturerEvaluationMethod', '_DeviceManufacturerEvaluationResult', '_PertinentReactionRelatedness', '_ProductCharacterization', '_ReactionActionTaken', '_SubjectReaction', '_SubjectReactionEmphasis', '_SubjectReactionOutcome', '_InjuryObservationValue', '_IntoleranceValue', '_IssueTriggerObservationValue', '_OtherIndicationValue', '_IndicationValue', '_DiagnosisValue', '_SymptomValue'], 'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH'], 'http://terminology.hl7.org/CodeSystem/v3-ActUSPrivacyLaw'=>['_ActUSPrivacyLaw', '42CFRPart2', 'CommonRule', 'HIPAANOPP', 'HIPAAPsyNotes', 'HIPAASelfPay', 'Title38Section7332', 'Title38Part1']}, 'type'=>'Coding', 'path'=>'Entity.securityLabel', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/security-labels'}},
          'name' => {'type'=>'string', 'path'=>'Entity.name', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'string', 'path'=>'Entity.description', 'min'=>0, 'max'=>1},
          'query' => {'type'=>'base64Binary', 'path'=>'Entity.query', 'min'=>0, 'max'=>1},
          'detail' => {'type'=>'AuditEvent::Entity::Detail', 'path'=>'Entity.detail', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Detail < FHIR::Model
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
            'value' => ['string', 'base64Binary']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Detail.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Detail.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Detail.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'type'=>'string', 'path'=>'Detail.type', 'min'=>1, 'max'=>1},
            'valueString' => {'type'=>'string', 'path'=>'Detail.value[x]', 'min'=>1, 'max'=>1},
            'valueBase64Binary' => {'type'=>'base64Binary', 'path'=>'Detail.value[x]', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 1-1 string
          attr_accessor :valueString       # 1-1 string
          attr_accessor :valueBase64Binary # 1-1 base64Binary
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :what              # 0-1 Reference(Resource)
        attr_accessor :type              # 0-1 Coding
        attr_accessor :role              # 0-1 Coding
        attr_accessor :lifecycle         # 0-1 Coding
        attr_accessor :securityLabel     # 0-* [ Coding ]
        attr_accessor :name              # 0-1 string
        attr_accessor :description       # 0-1 string
        attr_accessor :query             # 0-1 base64Binary
        attr_accessor :detail            # 0-* [ AuditEvent::Entity::Detail ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :type              # 1-1 Coding
      attr_accessor :subtype           # 0-* [ Coding ]
      attr_accessor :action            # 0-1 code
      attr_accessor :period            # 0-1 Period
      attr_accessor :recorded          # 1-1 instant
      attr_accessor :outcome           # 0-1 code
      attr_accessor :outcomeDesc       # 0-1 string
      attr_accessor :purposeOfEvent    # 0-* [ CodeableConcept ]
      attr_accessor :agent             # 1-* [ AuditEvent::Agent ]
      attr_accessor :source            # 1-1 AuditEvent::Source
      attr_accessor :entity            # 0-* [ AuditEvent::Entity ]

      def resourceType
        'AuditEvent'
      end
    end
  end
end