module FHIR
  module R4
    class ExampleScenario < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ExampleScenario.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ExampleScenario._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ExampleScenario.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ExampleScenario.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'ExampleScenario._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'ExampleScenario.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'ExampleScenario._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'ExampleScenario.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ExampleScenario.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ExampleScenario.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ExampleScenario.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'ExampleScenario.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'ExampleScenario._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'ExampleScenario.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'ExampleScenario.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'ExampleScenario._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'ExampleScenario.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'ExampleScenario._name', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'ExampleScenario.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'ExampleScenario._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'ExampleScenario.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'ExampleScenario._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'ExampleScenario.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'ExampleScenario._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'ExampleScenario.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'ExampleScenario._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'ExampleScenario.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'type'=>'UsageContext', 'path'=>'ExampleScenario.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'ExampleScenario.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'type'=>'markdown', 'path'=>'ExampleScenario.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'ExampleScenario._copyright', 'min'=>0, 'max'=>1},
        'purpose' => {'type'=>'markdown', 'path'=>'ExampleScenario.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'ExampleScenario._purpose', 'min'=>0, 'max'=>1},
        'actor' => {'type'=>'ExampleScenario::Actor', 'path'=>'ExampleScenario.actor', 'min'=>0, 'max'=>Float::INFINITY},
        'instance' => {'type'=>'ExampleScenario::Instance', 'path'=>'ExampleScenario.instance', 'min'=>0, 'max'=>Float::INFINITY},
        'process' => {'type'=>'ExampleScenario::Process', 'path'=>'ExampleScenario.process', 'min'=>0, 'max'=>Float::INFINITY},
        'workflow' => {'type'=>'canonical', 'path'=>'ExampleScenario.workflow', 'min'=>0, 'max'=>Float::INFINITY},
        '_workflow' => {'type'=>'Element', 'path'=>'ExampleScenario._workflow', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Actor < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Actor.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Actor._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Actor.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Actor.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'actorId' => {'type'=>'string', 'path'=>'Actor.actorId', 'min'=>1, 'max'=>1},
          '_actorId' => {'type'=>'Element', 'path'=>'Actor._actorId', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/examplescenario-actor-type'=>['person', 'entity']}, 'type'=>'code', 'path'=>'Actor.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/examplescenario-actor-type'}},
          '_type' => {'type'=>'Element', 'path'=>'Actor._type', 'min'=>0, 'max'=>1},
          'name' => {'type'=>'string', 'path'=>'Actor.name', 'min'=>0, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Actor._name', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'markdown', 'path'=>'Actor.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Actor._description', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :actorId           # 1-1 string
        attr_accessor :_actorId          # 0-1 Element
        attr_accessor :type              # 1-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :name              # 0-1 string
        attr_accessor :_name             # 0-1 Element
        attr_accessor :description       # 0-1 markdown
        attr_accessor :_description      # 0-1 Element
      end

      class Instance < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Instance.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Instance._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Instance.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Instance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'resourceId' => {'type'=>'string', 'path'=>'Instance.resourceId', 'min'=>1, 'max'=>1},
          '_resourceId' => {'type'=>'Element', 'path'=>'Instance._resourceId', 'min'=>0, 'max'=>1},
          'resourceType' => {'local_name'=>'local_resourceType', 'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'type'=>'code', 'path'=>'Instance.resourceType', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
          '_resourceType' => {'type'=>'Element', 'path'=>'Instance._resourceType', 'min'=>0, 'max'=>1},
          'name' => {'type'=>'string', 'path'=>'Instance.name', 'min'=>0, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Instance._name', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'markdown', 'path'=>'Instance.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Instance._description', 'min'=>0, 'max'=>1},
          'version' => {'type'=>'ExampleScenario::Instance::Version', 'path'=>'Instance.version', 'min'=>0, 'max'=>Float::INFINITY},
          'containedInstance' => {'type'=>'ExampleScenario::Instance::ContainedInstance', 'path'=>'Instance.containedInstance', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Version < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Version.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Version._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Version.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Version.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'versionId' => {'type'=>'string', 'path'=>'Version.versionId', 'min'=>1, 'max'=>1},
            '_versionId' => {'type'=>'Element', 'path'=>'Version._versionId', 'min'=>0, 'max'=>1},
            'description' => {'type'=>'markdown', 'path'=>'Version.description', 'min'=>1, 'max'=>1},
            '_description' => {'type'=>'Element', 'path'=>'Version._description', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :versionId         # 1-1 string
          attr_accessor :_versionId        # 0-1 Element
          attr_accessor :description       # 1-1 markdown
          attr_accessor :_description      # 0-1 Element
        end

        class ContainedInstance < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'ContainedInstance.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'ContainedInstance._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'ContainedInstance.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'ContainedInstance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'resourceId' => {'type'=>'string', 'path'=>'ContainedInstance.resourceId', 'min'=>1, 'max'=>1},
            '_resourceId' => {'type'=>'Element', 'path'=>'ContainedInstance._resourceId', 'min'=>0, 'max'=>1},
            'versionId' => {'type'=>'string', 'path'=>'ContainedInstance.versionId', 'min'=>0, 'max'=>1},
            '_versionId' => {'type'=>'Element', 'path'=>'ContainedInstance._versionId', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :resourceId        # 1-1 string
          attr_accessor :_resourceId       # 0-1 Element
          attr_accessor :versionId         # 0-1 string
          attr_accessor :_versionId        # 0-1 Element
        end

        attr_accessor :id                 # 0-1 string
        attr_accessor :_id                # 0-1 Element
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :resourceId         # 1-1 string
        attr_accessor :_resourceId        # 0-1 Element
        attr_accessor :local_resourceType # 1-1 code
        attr_accessor :_resourceType      # 0-1 Element
        attr_accessor :name               # 0-1 string
        attr_accessor :_name              # 0-1 Element
        attr_accessor :description        # 0-1 markdown
        attr_accessor :_description       # 0-1 Element
        attr_accessor :version            # 0-* [ ExampleScenario::Instance::Version ]
        attr_accessor :containedInstance  # 0-* [ ExampleScenario::Instance::ContainedInstance ]
      end

      class Process < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Process.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Process._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Process.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Process.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'title' => {'type'=>'string', 'path'=>'Process.title', 'min'=>1, 'max'=>1},
          '_title' => {'type'=>'Element', 'path'=>'Process._title', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'markdown', 'path'=>'Process.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Process._description', 'min'=>0, 'max'=>1},
          'preConditions' => {'type'=>'markdown', 'path'=>'Process.preConditions', 'min'=>0, 'max'=>1},
          '_preConditions' => {'type'=>'Element', 'path'=>'Process._preConditions', 'min'=>0, 'max'=>1},
          'postConditions' => {'type'=>'markdown', 'path'=>'Process.postConditions', 'min'=>0, 'max'=>1},
          '_postConditions' => {'type'=>'Element', 'path'=>'Process._postConditions', 'min'=>0, 'max'=>1},
          'step' => {'type'=>'ExampleScenario::Process::Step', 'path'=>'Process.step', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Step < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Step.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Step._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Step.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Step.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'process' => {'type'=>'ExampleScenario::Process', 'path'=>'Step.process', 'min'=>0, 'max'=>Float::INFINITY},
            'pause' => {'type'=>'boolean', 'path'=>'Step.pause', 'min'=>0, 'max'=>1},
            '_pause' => {'type'=>'Element', 'path'=>'Step._pause', 'min'=>0, 'max'=>1},
            'operation' => {'type'=>'ExampleScenario::Process::Step::Operation', 'path'=>'Step.operation', 'min'=>0, 'max'=>1},
            'alternative' => {'type'=>'ExampleScenario::Process::Step::Alternative', 'path'=>'Step.alternative', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Operation < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Operation.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Operation._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Operation.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Operation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'number' => {'type'=>'string', 'path'=>'Operation.number', 'min'=>1, 'max'=>1},
              '_number' => {'type'=>'Element', 'path'=>'Operation._number', 'min'=>0, 'max'=>1},
              'type' => {'type'=>'string', 'path'=>'Operation.type', 'min'=>0, 'max'=>1},
              '_type' => {'type'=>'Element', 'path'=>'Operation._type', 'min'=>0, 'max'=>1},
              'name' => {'type'=>'string', 'path'=>'Operation.name', 'min'=>0, 'max'=>1},
              '_name' => {'type'=>'Element', 'path'=>'Operation._name', 'min'=>0, 'max'=>1},
              'initiator' => {'type'=>'string', 'path'=>'Operation.initiator', 'min'=>0, 'max'=>1},
              '_initiator' => {'type'=>'Element', 'path'=>'Operation._initiator', 'min'=>0, 'max'=>1},
              'receiver' => {'type'=>'string', 'path'=>'Operation.receiver', 'min'=>0, 'max'=>1},
              '_receiver' => {'type'=>'Element', 'path'=>'Operation._receiver', 'min'=>0, 'max'=>1},
              'description' => {'type'=>'markdown', 'path'=>'Operation.description', 'min'=>0, 'max'=>1},
              '_description' => {'type'=>'Element', 'path'=>'Operation._description', 'min'=>0, 'max'=>1},
              'initiatorActive' => {'type'=>'boolean', 'path'=>'Operation.initiatorActive', 'min'=>0, 'max'=>1},
              '_initiatorActive' => {'type'=>'Element', 'path'=>'Operation._initiatorActive', 'min'=>0, 'max'=>1},
              'receiverActive' => {'type'=>'boolean', 'path'=>'Operation.receiverActive', 'min'=>0, 'max'=>1},
              '_receiverActive' => {'type'=>'Element', 'path'=>'Operation._receiverActive', 'min'=>0, 'max'=>1},
              'request' => {'type'=>'ExampleScenario::Instance::ContainedInstance', 'path'=>'Operation.request', 'min'=>0, 'max'=>1},
              'response' => {'type'=>'ExampleScenario::Instance::ContainedInstance', 'path'=>'Operation.response', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :number            # 1-1 string
            attr_accessor :_number           # 0-1 Element
            attr_accessor :type              # 0-1 string
            attr_accessor :_type             # 0-1 Element
            attr_accessor :name              # 0-1 string
            attr_accessor :_name             # 0-1 Element
            attr_accessor :initiator         # 0-1 string
            attr_accessor :_initiator        # 0-1 Element
            attr_accessor :receiver          # 0-1 string
            attr_accessor :_receiver         # 0-1 Element
            attr_accessor :description       # 0-1 markdown
            attr_accessor :_description      # 0-1 Element
            attr_accessor :initiatorActive   # 0-1 boolean
            attr_accessor :_initiatorActive  # 0-1 Element
            attr_accessor :receiverActive    # 0-1 boolean
            attr_accessor :_receiverActive   # 0-1 Element
            attr_accessor :request           # 0-1 ExampleScenario::Instance::ContainedInstance
            attr_accessor :response          # 0-1 ExampleScenario::Instance::ContainedInstance
          end

          class Alternative < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Alternative.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Alternative._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Alternative.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Alternative.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'title' => {'type'=>'string', 'path'=>'Alternative.title', 'min'=>1, 'max'=>1},
              '_title' => {'type'=>'Element', 'path'=>'Alternative._title', 'min'=>0, 'max'=>1},
              'description' => {'type'=>'markdown', 'path'=>'Alternative.description', 'min'=>0, 'max'=>1},
              '_description' => {'type'=>'Element', 'path'=>'Alternative._description', 'min'=>0, 'max'=>1},
              'step' => {'type'=>'ExampleScenario::Process::Step', 'path'=>'Alternative.step', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :title             # 1-1 string
            attr_accessor :_title            # 0-1 Element
            attr_accessor :description       # 0-1 markdown
            attr_accessor :_description      # 0-1 Element
            attr_accessor :step              # 0-* [ ExampleScenario::Process::Step ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :process           # 0-* [ ExampleScenario::Process ]
          attr_accessor :pause             # 0-1 boolean
          attr_accessor :_pause            # 0-1 Element
          attr_accessor :operation         # 0-1 ExampleScenario::Process::Step::Operation
          attr_accessor :alternative       # 0-* [ ExampleScenario::Process::Step::Alternative ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :title             # 1-1 string
        attr_accessor :_title            # 0-1 Element
        attr_accessor :description       # 0-1 markdown
        attr_accessor :_description      # 0-1 Element
        attr_accessor :preConditions     # 0-1 markdown
        attr_accessor :_preConditions    # 0-1 Element
        attr_accessor :postConditions    # 0-1 markdown
        attr_accessor :_postConditions   # 0-1 Element
        attr_accessor :step              # 0-* [ ExampleScenario::Process::Step ]
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
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :_experimental     # 0-1 Element
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :_date             # 0-1 Element
      attr_accessor :publisher         # 0-1 string
      attr_accessor :_publisher        # 0-1 Element
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :_purpose          # 0-1 Element
      attr_accessor :actor             # 0-* [ ExampleScenario::Actor ]
      attr_accessor :instance          # 0-* [ ExampleScenario::Instance ]
      attr_accessor :process           # 0-* [ ExampleScenario::Process ]
      attr_accessor :workflow          # 0-* [ canonical ]
      attr_accessor :_workflow         # 0-* [ Element ]

      def resourceType
        'ExampleScenario'
      end
    end
  end
  ExampleScenario = FHIR::R4::ExampleScenario
end