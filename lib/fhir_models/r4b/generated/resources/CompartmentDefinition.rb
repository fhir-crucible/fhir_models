module FHIR
  module R4B
    class CompartmentDefinition < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['code', 'context', 'context-quantity', 'context-type', 'date', 'description', 'name', 'publisher', 'resource', 'status', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'CompartmentDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'CompartmentDefinition._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'CompartmentDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'CompartmentDefinition.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'CompartmentDefinition._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'CompartmentDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'CompartmentDefinition._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'CompartmentDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'CompartmentDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'CompartmentDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'CompartmentDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'CompartmentDefinition.url', 'min'=>1, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'CompartmentDefinition._url', 'min'=>0, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'CompartmentDefinition.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'CompartmentDefinition._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'CompartmentDefinition.name', 'min'=>1, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'CompartmentDefinition._name', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'CompartmentDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'CompartmentDefinition._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'CompartmentDefinition.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'CompartmentDefinition._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'CompartmentDefinition.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'CompartmentDefinition._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'CompartmentDefinition.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'CompartmentDefinition._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'CompartmentDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'CompartmentDefinition.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'CompartmentDefinition._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'CompartmentDefinition.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'purpose' => {'type'=>'markdown', 'path'=>'CompartmentDefinition.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'CompartmentDefinition._purpose', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://hl7.org/fhir/compartment-type'=>['Patient', 'Encounter', 'RelatedPerson', 'Practitioner', 'Device']}, 'type'=>'code', 'path'=>'CompartmentDefinition.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/compartment-type'}},
        '_code' => {'type'=>'Element', 'path'=>'CompartmentDefinition._code', 'min'=>0, 'max'=>1},
        'search' => {'type'=>'boolean', 'path'=>'CompartmentDefinition.search', 'min'=>1, 'max'=>1},
        '_search' => {'type'=>'Element', 'path'=>'CompartmentDefinition._search', 'min'=>0, 'max'=>1},
        'resource' => {'type'=>'CompartmentDefinition::Resource', 'path'=>'CompartmentDefinition.resource', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Resource < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Resource.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Resource._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Resource.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Resource.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Resource', 'Binary', 'Bundle', 'DomainResource', 'Account', 'ActivityDefinition', 'AdministrableProductDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'BiologicallyDerivedProduct', 'BodyStructure', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Citation', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus', 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription', 'Parameters']}, 'type'=>'code', 'path'=>'Resource.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
          '_code' => {'type'=>'Element', 'path'=>'Resource._code', 'min'=>0, 'max'=>1},
          'param' => {'type'=>'string', 'path'=>'Resource.param', 'min'=>0, 'max'=>Float::INFINITY},
          '_param' => {'type'=>'Element', 'path'=>'Resource._param', 'min'=>0, 'max'=>Float::INFINITY},
          'documentation' => {'type'=>'string', 'path'=>'Resource.documentation', 'min'=>0, 'max'=>1},
          '_documentation' => {'type'=>'Element', 'path'=>'Resource._documentation', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 code
        attr_accessor :_code             # 0-1 Element
        attr_accessor :param             # 0-* [ string ]
        attr_accessor :_param            # 0-* [ Element ]
        attr_accessor :documentation     # 0-1 string
        attr_accessor :_documentation    # 0-1 Element
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
      attr_accessor :url               # 1-1 uri
      attr_accessor :_url              # 0-1 Element
      attr_accessor :version           # 0-1 string
      attr_accessor :_version          # 0-1 Element
      attr_accessor :name              # 1-1 string
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
      attr_accessor :description       # 0-1 markdown
      attr_accessor :_description      # 0-1 Element
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :_purpose          # 0-1 Element
      attr_accessor :code              # 1-1 code
      attr_accessor :_code             # 0-1 Element
      attr_accessor :search            # 1-1 boolean
      attr_accessor :_search           # 0-1 Element
      attr_accessor :resource          # 0-* [ CompartmentDefinition::Resource ]

      def resourceType
        'CompartmentDefinition'
      end
    end
  end
end