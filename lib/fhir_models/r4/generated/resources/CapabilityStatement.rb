module FHIR
  module R4
    class CapabilityStatement < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'description', 'fhirversion', 'format', 'guide', 'jurisdiction', 'mode', 'name', 'publisher', 'resource', 'resource-profile', 'security-service', 'software', 'status', 'supported-profile', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'CapabilityStatement.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'CapabilityStatement._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'CapabilityStatement.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'CapabilityStatement.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'CapabilityStatement._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'CapabilityStatement.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'CapabilityStatement._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'CapabilityStatement.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'CapabilityStatement.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'CapabilityStatement.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'CapabilityStatement.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'CapabilityStatement.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'CapabilityStatement._url', 'min'=>0, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'CapabilityStatement.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'CapabilityStatement._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'CapabilityStatement.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'CapabilityStatement._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'CapabilityStatement.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'CapabilityStatement._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'CapabilityStatement.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'CapabilityStatement._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'CapabilityStatement.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'CapabilityStatement._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'CapabilityStatement.date', 'min'=>1, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'CapabilityStatement._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'CapabilityStatement.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'CapabilityStatement._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'CapabilityStatement.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'CapabilityStatement.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'CapabilityStatement._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'CapabilityStatement.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'CapabilityStatement.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'CapabilityStatement.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'CapabilityStatement._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'CapabilityStatement.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'CapabilityStatement._copyright', 'min'=>0, 'max'=>1},
        'kind' => {'valid_codes'=>{'http://hl7.org/fhir/capability-statement-kind'=>['instance', 'capability', 'requirements']}, 'type'=>'code', 'path'=>'CapabilityStatement.kind', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/capability-statement-kind'}},
        '_kind' => {'type'=>'Element', 'path'=>'CapabilityStatement._kind', 'min'=>0, 'max'=>1},
        'instantiates' => {'type'=>'canonical', 'path'=>'CapabilityStatement.instantiates', 'min'=>0, 'max'=>Float::INFINITY},
        '_instantiates' => {'type'=>'Element', 'path'=>'CapabilityStatement._instantiates', 'min'=>0, 'max'=>Float::INFINITY},
        'imports' => {'type'=>'canonical', 'path'=>'CapabilityStatement.imports', 'min'=>0, 'max'=>Float::INFINITY},
        '_imports' => {'type'=>'Element', 'path'=>'CapabilityStatement._imports', 'min'=>0, 'max'=>Float::INFINITY},
        'software' => {'type'=>'CapabilityStatement::Software', 'path'=>'CapabilityStatement.software', 'min'=>0, 'max'=>1},
        'implementation' => {'type'=>'CapabilityStatement::Implementation', 'path'=>'CapabilityStatement.implementation', 'min'=>0, 'max'=>1},
        'fhirVersion' => {'valid_codes'=>{'http://hl7.org/fhir/FHIR-version'=>['0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1']}, 'type'=>'code', 'path'=>'CapabilityStatement.fhirVersion', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/FHIR-version'}},
        '_fhirVersion' => {'type'=>'Element', 'path'=>'CapabilityStatement._fhirVersion', 'min'=>0, 'max'=>1},
        'format' => {'type'=>'code', 'path'=>'CapabilityStatement.format', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        '_format' => {'type'=>'Element', 'path'=>'CapabilityStatement._format', 'min'=>0, 'max'=>Float::INFINITY},
        'patchFormat' => {'type'=>'code', 'path'=>'CapabilityStatement.patchFormat', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        '_patchFormat' => {'type'=>'Element', 'path'=>'CapabilityStatement._patchFormat', 'min'=>0, 'max'=>Float::INFINITY},
        'implementationGuide' => {'type'=>'canonical', 'path'=>'CapabilityStatement.implementationGuide', 'min'=>0, 'max'=>Float::INFINITY},
        '_implementationGuide' => {'type'=>'Element', 'path'=>'CapabilityStatement._implementationGuide', 'min'=>0, 'max'=>Float::INFINITY},
        'rest' => {'type'=>'CapabilityStatement::Rest', 'path'=>'CapabilityStatement.rest', 'min'=>0, 'max'=>Float::INFINITY},
        'messaging' => {'type'=>'CapabilityStatement::Messaging', 'path'=>'CapabilityStatement.messaging', 'min'=>0, 'max'=>Float::INFINITY},
        'document' => {'type'=>'CapabilityStatement::Document', 'path'=>'CapabilityStatement.document', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Software < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Software.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Software._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Software.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Software.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'Software.name', 'min'=>1, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Software._name', 'min'=>0, 'max'=>1},
          'version' => {'type'=>'string', 'path'=>'Software.version', 'min'=>0, 'max'=>1},
          '_version' => {'type'=>'Element', 'path'=>'Software._version', 'min'=>0, 'max'=>1},
          'releaseDate' => {'type'=>'dateTime', 'path'=>'Software.releaseDate', 'min'=>0, 'max'=>1},
          '_releaseDate' => {'type'=>'Element', 'path'=>'Software._releaseDate', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :_name             # 0-1 Element
        attr_accessor :version           # 0-1 string
        attr_accessor :_version          # 0-1 Element
        attr_accessor :releaseDate       # 0-1 dateTime
        attr_accessor :_releaseDate      # 0-1 Element
      end

      class Implementation < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Implementation.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Implementation._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Implementation.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Implementation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Implementation.description', 'min'=>1, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Implementation._description', 'min'=>0, 'max'=>1},
          'url' => {'type'=>'url', 'path'=>'Implementation.url', 'min'=>0, 'max'=>1},
          '_url' => {'type'=>'Element', 'path'=>'Implementation._url', 'min'=>0, 'max'=>1},
          'custodian' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Implementation.custodian', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 1-1 string
        attr_accessor :_description      # 0-1 Element
        attr_accessor :url               # 0-1 url
        attr_accessor :_url              # 0-1 Element
        attr_accessor :custodian         # 0-1 Reference(Organization)
      end

      class Rest < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Rest.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Rest._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Rest.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Rest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/restful-capability-mode'=>['client', 'server']}, 'type'=>'code', 'path'=>'Rest.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/restful-capability-mode'}},
          '_mode' => {'type'=>'Element', 'path'=>'Rest._mode', 'min'=>0, 'max'=>1},
          'documentation' => {'type'=>'markdown', 'path'=>'Rest.documentation', 'min'=>0, 'max'=>1},
          '_documentation' => {'type'=>'Element', 'path'=>'Rest._documentation', 'min'=>0, 'max'=>1},
          'security' => {'type'=>'CapabilityStatement::Rest::Security', 'path'=>'Rest.security', 'min'=>0, 'max'=>1},
          'resource' => {'type'=>'CapabilityStatement::Rest::Resource', 'path'=>'Rest.resource', 'min'=>0, 'max'=>Float::INFINITY},
          'interaction' => {'type'=>'CapabilityStatement::Rest::Interaction', 'path'=>'Rest.interaction', 'min'=>0, 'max'=>Float::INFINITY},
          'searchParam' => {'type'=>'CapabilityStatement::Rest::Resource::SearchParam', 'path'=>'Rest.searchParam', 'min'=>0, 'max'=>Float::INFINITY},
          'operation' => {'type'=>'CapabilityStatement::Rest::Resource::Operation', 'path'=>'Rest.operation', 'min'=>0, 'max'=>Float::INFINITY},
          'compartment' => {'type'=>'canonical', 'path'=>'Rest.compartment', 'min'=>0, 'max'=>Float::INFINITY},
          '_compartment' => {'type'=>'Element', 'path'=>'Rest._compartment', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Security < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Security.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Security._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Security.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Security.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'cors' => {'type'=>'boolean', 'path'=>'Security.cors', 'min'=>0, 'max'=>1},
            '_cors' => {'type'=>'Element', 'path'=>'Security._cors', 'min'=>0, 'max'=>1},
            'service' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/restful-security-service'=>['OAuth', 'SMART-on-FHIR', 'NTLM', 'Basic', 'Kerberos', 'Certificates']}, 'type'=>'CodeableConcept', 'path'=>'Security.service', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/restful-security-service'}},
            'description' => {'type'=>'markdown', 'path'=>'Security.description', 'min'=>0, 'max'=>1},
            '_description' => {'type'=>'Element', 'path'=>'Security._description', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :cors              # 0-1 boolean
          attr_accessor :_cors             # 0-1 Element
          attr_accessor :service           # 0-* [ CodeableConcept ]
          attr_accessor :description       # 0-1 markdown
          attr_accessor :_description      # 0-1 Element
        end

        class Resource < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Resource.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Resource._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Resource.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Resource.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'type'=>'code', 'path'=>'Resource.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
            '_type' => {'type'=>'Element', 'path'=>'Resource._type', 'min'=>0, 'max'=>1},
            'profile' => {'type'=>'canonical', 'path'=>'Resource.profile', 'min'=>0, 'max'=>1},
            '_profile' => {'type'=>'Element', 'path'=>'Resource._profile', 'min'=>0, 'max'=>1},
            'supportedProfile' => {'type'=>'canonical', 'path'=>'Resource.supportedProfile', 'min'=>0, 'max'=>Float::INFINITY},
            '_supportedProfile' => {'type'=>'Element', 'path'=>'Resource._supportedProfile', 'min'=>0, 'max'=>Float::INFINITY},
            'documentation' => {'type'=>'markdown', 'path'=>'Resource.documentation', 'min'=>0, 'max'=>1},
            '_documentation' => {'type'=>'Element', 'path'=>'Resource._documentation', 'min'=>0, 'max'=>1},
            'interaction' => {'type'=>'CapabilityStatement::Rest::Resource::Interaction', 'path'=>'Resource.interaction', 'min'=>0, 'max'=>Float::INFINITY},
            'versioning' => {'valid_codes'=>{'http://hl7.org/fhir/versioning-policy'=>['no-version', 'versioned', 'versioned-update']}, 'type'=>'code', 'path'=>'Resource.versioning', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/versioning-policy'}},
            '_versioning' => {'type'=>'Element', 'path'=>'Resource._versioning', 'min'=>0, 'max'=>1},
            'readHistory' => {'type'=>'boolean', 'path'=>'Resource.readHistory', 'min'=>0, 'max'=>1},
            '_readHistory' => {'type'=>'Element', 'path'=>'Resource._readHistory', 'min'=>0, 'max'=>1},
            'updateCreate' => {'type'=>'boolean', 'path'=>'Resource.updateCreate', 'min'=>0, 'max'=>1},
            '_updateCreate' => {'type'=>'Element', 'path'=>'Resource._updateCreate', 'min'=>0, 'max'=>1},
            'conditionalCreate' => {'type'=>'boolean', 'path'=>'Resource.conditionalCreate', 'min'=>0, 'max'=>1},
            '_conditionalCreate' => {'type'=>'Element', 'path'=>'Resource._conditionalCreate', 'min'=>0, 'max'=>1},
            'conditionalRead' => {'valid_codes'=>{'http://hl7.org/fhir/conditional-read-status'=>['not-supported', 'modified-since', 'not-match', 'full-support']}, 'type'=>'code', 'path'=>'Resource.conditionalRead', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/conditional-read-status'}},
            '_conditionalRead' => {'type'=>'Element', 'path'=>'Resource._conditionalRead', 'min'=>0, 'max'=>1},
            'conditionalUpdate' => {'type'=>'boolean', 'path'=>'Resource.conditionalUpdate', 'min'=>0, 'max'=>1},
            '_conditionalUpdate' => {'type'=>'Element', 'path'=>'Resource._conditionalUpdate', 'min'=>0, 'max'=>1},
            'conditionalDelete' => {'valid_codes'=>{'http://hl7.org/fhir/conditional-delete-status'=>['not-supported', 'single', 'multiple']}, 'type'=>'code', 'path'=>'Resource.conditionalDelete', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/conditional-delete-status'}},
            '_conditionalDelete' => {'type'=>'Element', 'path'=>'Resource._conditionalDelete', 'min'=>0, 'max'=>1},
            'referencePolicy' => {'valid_codes'=>{'http://hl7.org/fhir/reference-handling-policy'=>['literal', 'logical', 'resolves', 'enforced', 'local']}, 'type'=>'code', 'path'=>'Resource.referencePolicy', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/reference-handling-policy'}},
            '_referencePolicy' => {'type'=>'Element', 'path'=>'Resource._referencePolicy', 'min'=>0, 'max'=>Float::INFINITY},
            'searchInclude' => {'type'=>'string', 'path'=>'Resource.searchInclude', 'min'=>0, 'max'=>Float::INFINITY},
            '_searchInclude' => {'type'=>'Element', 'path'=>'Resource._searchInclude', 'min'=>0, 'max'=>Float::INFINITY},
            'searchRevInclude' => {'type'=>'string', 'path'=>'Resource.searchRevInclude', 'min'=>0, 'max'=>Float::INFINITY},
            '_searchRevInclude' => {'type'=>'Element', 'path'=>'Resource._searchRevInclude', 'min'=>0, 'max'=>Float::INFINITY},
            'searchParam' => {'type'=>'CapabilityStatement::Rest::Resource::SearchParam', 'path'=>'Resource.searchParam', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'type'=>'CapabilityStatement::Rest::Resource::Operation', 'path'=>'Resource.operation', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Interaction < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Interaction.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Interaction._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Interaction.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Interaction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'code' => {'valid_codes'=>{'http://hl7.org/fhir/restful-interaction'=>['read', 'vread', 'update', 'patch', 'delete', 'history-instance', 'history-type', 'create', 'search-type']}, 'type'=>'code', 'path'=>'Interaction.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/type-restful-interaction'}},
              '_code' => {'type'=>'Element', 'path'=>'Interaction._code', 'min'=>0, 'max'=>1},
              'documentation' => {'type'=>'markdown', 'path'=>'Interaction.documentation', 'min'=>0, 'max'=>1},
              '_documentation' => {'type'=>'Element', 'path'=>'Interaction._documentation', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :code              # 1-1 code
            attr_accessor :_code             # 0-1 Element
            attr_accessor :documentation     # 0-1 markdown
            attr_accessor :_documentation    # 0-1 Element
          end

          class SearchParam < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'SearchParam.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'SearchParam._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'SearchParam.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'SearchParam.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'name' => {'type'=>'string', 'path'=>'SearchParam.name', 'min'=>1, 'max'=>1},
              '_name' => {'type'=>'Element', 'path'=>'SearchParam._name', 'min'=>0, 'max'=>1},
              'definition' => {'type'=>'canonical', 'path'=>'SearchParam.definition', 'min'=>0, 'max'=>1},
              '_definition' => {'type'=>'Element', 'path'=>'SearchParam._definition', 'min'=>0, 'max'=>1},
              'type' => {'valid_codes'=>{'http://hl7.org/fhir/search-param-type'=>['number', 'date', 'string', 'token', 'reference', 'composite', 'quantity', 'uri', 'special']}, 'type'=>'code', 'path'=>'SearchParam.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-param-type'}},
              '_type' => {'type'=>'Element', 'path'=>'SearchParam._type', 'min'=>0, 'max'=>1},
              'documentation' => {'type'=>'markdown', 'path'=>'SearchParam.documentation', 'min'=>0, 'max'=>1},
              '_documentation' => {'type'=>'Element', 'path'=>'SearchParam._documentation', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :name              # 1-1 string
            attr_accessor :_name             # 0-1 Element
            attr_accessor :definition        # 0-1 canonical
            attr_accessor :_definition       # 0-1 Element
            attr_accessor :type              # 1-1 code
            attr_accessor :_type             # 0-1 Element
            attr_accessor :documentation     # 0-1 markdown
            attr_accessor :_documentation    # 0-1 Element
          end

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
              'name' => {'type'=>'string', 'path'=>'Operation.name', 'min'=>1, 'max'=>1},
              '_name' => {'type'=>'Element', 'path'=>'Operation._name', 'min'=>0, 'max'=>1},
              'definition' => {'type'=>'canonical', 'path'=>'Operation.definition', 'min'=>1, 'max'=>1},
              '_definition' => {'type'=>'Element', 'path'=>'Operation._definition', 'min'=>0, 'max'=>1},
              'documentation' => {'type'=>'markdown', 'path'=>'Operation.documentation', 'min'=>0, 'max'=>1},
              '_documentation' => {'type'=>'Element', 'path'=>'Operation._documentation', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :name              # 1-1 string
            attr_accessor :_name             # 0-1 Element
            attr_accessor :definition        # 1-1 canonical
            attr_accessor :_definition       # 0-1 Element
            attr_accessor :documentation     # 0-1 markdown
            attr_accessor :_documentation    # 0-1 Element
          end

          attr_accessor :id                 # 0-1 string
          attr_accessor :_id                # 0-1 Element
          attr_accessor :extension          # 0-* [ Extension ]
          attr_accessor :modifierExtension  # 0-* [ Extension ]
          attr_accessor :type               # 1-1 code
          attr_accessor :_type              # 0-1 Element
          attr_accessor :profile            # 0-1 canonical
          attr_accessor :_profile           # 0-1 Element
          attr_accessor :supportedProfile   # 0-* [ canonical ]
          attr_accessor :_supportedProfile  # 0-* [ Element ]
          attr_accessor :documentation      # 0-1 markdown
          attr_accessor :_documentation     # 0-1 Element
          attr_accessor :interaction        # 0-* [ CapabilityStatement::Rest::Resource::Interaction ]
          attr_accessor :versioning         # 0-1 code
          attr_accessor :_versioning        # 0-1 Element
          attr_accessor :readHistory        # 0-1 boolean
          attr_accessor :_readHistory       # 0-1 Element
          attr_accessor :updateCreate       # 0-1 boolean
          attr_accessor :_updateCreate      # 0-1 Element
          attr_accessor :conditionalCreate  # 0-1 boolean
          attr_accessor :_conditionalCreate # 0-1 Element
          attr_accessor :conditionalRead    # 0-1 code
          attr_accessor :_conditionalRead   # 0-1 Element
          attr_accessor :conditionalUpdate  # 0-1 boolean
          attr_accessor :_conditionalUpdate # 0-1 Element
          attr_accessor :conditionalDelete  # 0-1 code
          attr_accessor :_conditionalDelete # 0-1 Element
          attr_accessor :referencePolicy    # 0-* [ code ]
          attr_accessor :_referencePolicy   # 0-* [ Element ]
          attr_accessor :searchInclude      # 0-* [ string ]
          attr_accessor :_searchInclude     # 0-* [ Element ]
          attr_accessor :searchRevInclude   # 0-* [ string ]
          attr_accessor :_searchRevInclude  # 0-* [ Element ]
          attr_accessor :searchParam        # 0-* [ CapabilityStatement::Rest::Resource::SearchParam ]
          attr_accessor :operation          # 0-* [ CapabilityStatement::Rest::Resource::Operation ]
        end

        class Interaction < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Interaction.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Interaction._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Interaction.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Interaction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://hl7.org/fhir/restful-interaction'=>['transaction', 'batch', 'search-system', 'history-system']}, 'type'=>'code', 'path'=>'Interaction.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/system-restful-interaction'}},
            '_code' => {'type'=>'Element', 'path'=>'Interaction._code', 'min'=>0, 'max'=>1},
            'documentation' => {'type'=>'markdown', 'path'=>'Interaction.documentation', 'min'=>0, 'max'=>1},
            '_documentation' => {'type'=>'Element', 'path'=>'Interaction._documentation', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :_code             # 0-1 Element
          attr_accessor :documentation     # 0-1 markdown
          attr_accessor :_documentation    # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :mode              # 1-1 code
        attr_accessor :_mode             # 0-1 Element
        attr_accessor :documentation     # 0-1 markdown
        attr_accessor :_documentation    # 0-1 Element
        attr_accessor :security          # 0-1 CapabilityStatement::Rest::Security
        attr_accessor :resource          # 0-* [ CapabilityStatement::Rest::Resource ]
        attr_accessor :interaction       # 0-* [ CapabilityStatement::Rest::Interaction ]
        attr_accessor :searchParam       # 0-* [ CapabilityStatement::Rest::Resource::SearchParam ]
        attr_accessor :operation         # 0-* [ CapabilityStatement::Rest::Resource::Operation ]
        attr_accessor :compartment       # 0-* [ canonical ]
        attr_accessor :_compartment      # 0-* [ Element ]
      end

      class Messaging < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Messaging.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Messaging._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Messaging.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Messaging.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'endpoint' => {'type'=>'CapabilityStatement::Messaging::Endpoint', 'path'=>'Messaging.endpoint', 'min'=>0, 'max'=>Float::INFINITY},
          'reliableCache' => {'type'=>'unsignedInt', 'path'=>'Messaging.reliableCache', 'min'=>0, 'max'=>1},
          '_reliableCache' => {'type'=>'Element', 'path'=>'Messaging._reliableCache', 'min'=>0, 'max'=>1},
          'documentation' => {'type'=>'markdown', 'path'=>'Messaging.documentation', 'min'=>0, 'max'=>1},
          '_documentation' => {'type'=>'Element', 'path'=>'Messaging._documentation', 'min'=>0, 'max'=>1},
          'supportedMessage' => {'type'=>'CapabilityStatement::Messaging::SupportedMessage', 'path'=>'Messaging.supportedMessage', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Endpoint < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Endpoint.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Endpoint._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Endpoint.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Endpoint.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'protocol' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/message-transport'=>['http', 'ftp', 'mllp']}, 'type'=>'Coding', 'path'=>'Endpoint.protocol', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/message-transport'}},
            'address' => {'type'=>'url', 'path'=>'Endpoint.address', 'min'=>1, 'max'=>1},
            '_address' => {'type'=>'Element', 'path'=>'Endpoint._address', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :protocol          # 1-1 Coding
          attr_accessor :address           # 1-1 url
          attr_accessor :_address          # 0-1 Element
        end

        class SupportedMessage < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'SupportedMessage.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'SupportedMessage._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'SupportedMessage.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'SupportedMessage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'mode' => {'valid_codes'=>{'http://hl7.org/fhir/event-capability-mode'=>['sender', 'receiver']}, 'type'=>'code', 'path'=>'SupportedMessage.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/event-capability-mode'}},
            '_mode' => {'type'=>'Element', 'path'=>'SupportedMessage._mode', 'min'=>0, 'max'=>1},
            'definition' => {'type'=>'canonical', 'path'=>'SupportedMessage.definition', 'min'=>1, 'max'=>1},
            '_definition' => {'type'=>'Element', 'path'=>'SupportedMessage._definition', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :mode              # 1-1 code
          attr_accessor :_mode             # 0-1 Element
          attr_accessor :definition        # 1-1 canonical
          attr_accessor :_definition       # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :endpoint          # 0-* [ CapabilityStatement::Messaging::Endpoint ]
        attr_accessor :reliableCache     # 0-1 unsignedInt
        attr_accessor :_reliableCache    # 0-1 Element
        attr_accessor :documentation     # 0-1 markdown
        attr_accessor :_documentation    # 0-1 Element
        attr_accessor :supportedMessage  # 0-* [ CapabilityStatement::Messaging::SupportedMessage ]
      end

      class Document < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Document.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Document._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Document.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Document.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/document-mode'=>['producer', 'consumer']}, 'type'=>'code', 'path'=>'Document.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/document-mode'}},
          '_mode' => {'type'=>'Element', 'path'=>'Document._mode', 'min'=>0, 'max'=>1},
          'documentation' => {'type'=>'markdown', 'path'=>'Document.documentation', 'min'=>0, 'max'=>1},
          '_documentation' => {'type'=>'Element', 'path'=>'Document._documentation', 'min'=>0, 'max'=>1},
          'profile' => {'type'=>'canonical', 'path'=>'Document.profile', 'min'=>1, 'max'=>1},
          '_profile' => {'type'=>'Element', 'path'=>'Document._profile', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :mode              # 1-1 code
        attr_accessor :_mode             # 0-1 Element
        attr_accessor :documentation     # 0-1 markdown
        attr_accessor :_documentation    # 0-1 Element
        attr_accessor :profile           # 1-1 canonical
        attr_accessor :_profile          # 0-1 Element
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
      attr_accessor :url                  # 0-1 uri
      attr_accessor :_url                 # 0-1 Element
      attr_accessor :version              # 0-1 string
      attr_accessor :_version             # 0-1 Element
      attr_accessor :name                 # 0-1 string
      attr_accessor :_name                # 0-1 Element
      attr_accessor :title                # 0-1 string
      attr_accessor :_title               # 0-1 Element
      attr_accessor :status               # 1-1 code
      attr_accessor :_status              # 0-1 Element
      attr_accessor :experimental         # 0-1 boolean
      attr_accessor :_experimental        # 0-1 Element
      attr_accessor :date                 # 1-1 dateTime
      attr_accessor :_date                # 0-1 Element
      attr_accessor :publisher            # 0-1 string
      attr_accessor :_publisher           # 0-1 Element
      attr_accessor :contact              # 0-* [ ContactDetail ]
      attr_accessor :description          # 0-1 markdown
      attr_accessor :_description         # 0-1 Element
      attr_accessor :useContext           # 0-* [ UsageContext ]
      attr_accessor :jurisdiction         # 0-* [ CodeableConcept ]
      attr_accessor :purpose              # 0-1 markdown
      attr_accessor :_purpose             # 0-1 Element
      attr_accessor :copyright            # 0-1 markdown
      attr_accessor :_copyright           # 0-1 Element
      attr_accessor :kind                 # 1-1 code
      attr_accessor :_kind                # 0-1 Element
      attr_accessor :instantiates         # 0-* [ canonical ]
      attr_accessor :_instantiates        # 0-* [ Element ]
      attr_accessor :imports              # 0-* [ canonical ]
      attr_accessor :_imports             # 0-* [ Element ]
      attr_accessor :software             # 0-1 CapabilityStatement::Software
      attr_accessor :implementation       # 0-1 CapabilityStatement::Implementation
      attr_accessor :fhirVersion          # 1-1 code
      attr_accessor :_fhirVersion         # 0-1 Element
      attr_accessor :format               # 1-* [ code ]
      attr_accessor :_format              # 0-* [ Element ]
      attr_accessor :patchFormat          # 0-* [ code ]
      attr_accessor :_patchFormat         # 0-* [ Element ]
      attr_accessor :implementationGuide  # 0-* [ canonical ]
      attr_accessor :_implementationGuide # 0-* [ Element ]
      attr_accessor :rest                 # 0-* [ CapabilityStatement::Rest ]
      attr_accessor :messaging            # 0-* [ CapabilityStatement::Messaging ]
      attr_accessor :document             # 0-* [ CapabilityStatement::Document ]

      def resourceType
        'CapabilityStatement'
      end
    end
  end
  CapabilityStatement = FHIR::R4::CapabilityStatement
end