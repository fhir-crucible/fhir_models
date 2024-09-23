module FHIR
  module R4B
    class ParameterDefinition < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'ParameterDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ParameterDefinition._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'ParameterDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'code', 'path'=>'ParameterDefinition.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'ParameterDefinition._name', 'min'=>0, 'max'=>1},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/operation-parameter-use'=>['in', 'out']}, 'type'=>'code', 'path'=>'ParameterDefinition.use', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/operation-parameter-use'}},
        '_use' => {'type'=>'Element', 'path'=>'ParameterDefinition._use', 'min'=>0, 'max'=>1},
        'min' => {'type'=>'integer', 'path'=>'ParameterDefinition.min', 'min'=>0, 'max'=>1},
        '_min' => {'type'=>'Element', 'path'=>'ParameterDefinition._min', 'min'=>0, 'max'=>1},
        'max' => {'type'=>'string', 'path'=>'ParameterDefinition.max', 'min'=>0, 'max'=>1},
        '_max' => {'type'=>'Element', 'path'=>'ParameterDefinition._max', 'min'=>0, 'max'=>1},
        'documentation' => {'type'=>'string', 'path'=>'ParameterDefinition.documentation', 'min'=>0, 'max'=>1},
        '_documentation' => {'type'=>'Element', 'path'=>'ParameterDefinition._documentation', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/data-types'=>['Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml'], 'http://hl7.org/fhir/resource-types'=>['Resource', 'Binary', 'Bundle', 'DomainResource', 'Account', 'ActivityDefinition', 'AdministrableProductDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'BiologicallyDerivedProduct', 'BodyStructure', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Citation', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus', 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription', 'Parameters'], 'http://hl7.org/fhir/abstract-types'=>['Type', 'Any']}, 'type'=>'code', 'path'=>'ParameterDefinition.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/all-types'}},
        '_type' => {'type'=>'Element', 'path'=>'ParameterDefinition._type', 'min'=>0, 'max'=>1},
        'profile' => {'type'=>'canonical', 'path'=>'ParameterDefinition.profile', 'min'=>0, 'max'=>1},
        '_profile' => {'type'=>'Element', 'path'=>'ParameterDefinition._profile', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id             # 0-1 string
      attr_accessor :_id            # 0-1 Element
      attr_accessor :extension      # 0-* [ Extension ]
      attr_accessor :name           # 0-1 code
      attr_accessor :_name          # 0-1 Element
      attr_accessor :use            # 1-1 code
      attr_accessor :_use           # 0-1 Element
      attr_accessor :min            # 0-1 integer
      attr_accessor :_min           # 0-1 Element
      attr_accessor :max            # 0-1 string
      attr_accessor :_max           # 0-1 Element
      attr_accessor :documentation  # 0-1 string
      attr_accessor :_documentation # 0-1 Element
      attr_accessor :type           # 1-1 code
      attr_accessor :_type          # 0-1 Element
      attr_accessor :profile        # 0-1 canonical
      attr_accessor :_profile       # 0-1 Element
    end
  end
end