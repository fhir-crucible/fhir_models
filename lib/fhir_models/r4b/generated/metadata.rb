module FHIR
  module R4B

    def module_version_name
      'R4B'
    end

    def module_version
      FHIR::R4B
    end

    PRIMITIVES = {
      'unsignedInt' => {'type'=>'string', 'regex'=>'[0]|([1-9][0-9]*)'},
      'xhtml' => {'type'=>'string'},
      'boolean' => {'type'=>'boolean', 'regex'=>'true|false'},
      'uri' => {'type'=>'string', 'regex'=>'\\S*'},
      'url' => {'type'=>'string', 'regex'=>'\\S*'},
      'string' => {'type'=>'string', 'regex'=>'[ \\r\\n\\t\\S]+'},
      'base64Binary' => {'type'=>'string', 'regex'=>'(\\s*([0-9a-zA-Z\\+/=]){4}\\s*)+'},
      'date' => {'type'=>'date', 'regex'=>'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?'},
      'uuid' => {'type'=>'string', 'regex'=>'urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'},
      'decimal' => {'type'=>'decimal', 'regex'=>'-?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?'},
      'dateTime' => {'type'=>'datetime', 'regex'=>'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\.[0-9]+)?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?'},
      'positiveInt' => {'type'=>'string', 'regex'=>'[1-9][0-9]*'},
      'time' => {'type'=>'time', 'regex'=>'([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\.[0-9]+)?'},
      'code' => {'type'=>'string', 'regex'=>'[^\\s]+(\\s[^\\s]+)*'},
      'oid' => {'type'=>'string', 'regex'=>'urn:oid:[0-2](\\.(0|[1-9][0-9]*))+'},
      'instant' => {'type'=>'datetime', 'regex'=>'([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\.[0-9]+)?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))'},
      'integer' => {'type'=>'integer', 'regex'=>'-?([0]|([1-9][0-9]*))'},
      'markdown' => {'type'=>'string', 'regex'=>'[ \\r\\n\\t\\S]+'},
      'canonical' => {'type'=>'string', 'regex'=>'\\S*'},
      'id' => {'type'=>'string', 'regex'=>'[A-Za-z0-9\\-\\.]{1,64}'}
    }
    TYPES = ['Timing', 'Population', 'DataType', 'Period', 'ProductShelfLife', 'ContactPoint', 'Element', 'BackboneElement', 'CodeableConcept', 'Meta', 'DataRequirement', 'Distance', 'Range', 'Ratio', 'Money', 'ProdCharacteristic', 'Quantity', 'Count', 'Annotation', 'Reference', 'ContactDetail', 'Expression', 'Coding', 'Narrative', 'MarketingStatus', 'Attachment', 'Dosage', 'UsageContext', 'CodeableReference', 'Address', 'RatioRange', 'Signature', 'Age', 'ElementDefinition', 'TriggerDefinition', 'Identifier', 'RelatedArtifact', 'Contributor', 'Duration', 'HumanName', 'ParameterDefinition', 'SampledData', 'Extension']
    RESOURCES = ['Appointment', 'Task', 'Specimen', 'RequestGroup', 'Composition', 'Measure', 'Ingredient', 'Basic', 'SupplyDelivery', 'Library', 'Substance', 'ValueSet', 'DeviceDefinition', 'PlanDefinition', 'AdverseEvent', 'CodeSystem', 'DeviceUseStatement', 'AuditEvent', 'ServiceRequest', 'Resource', 'Provenance', 'List', 'MedicinalProductDefinition', 'OperationOutcome', 'TerminologyCapabilities', 'PaymentNotice', 'CarePlan', 'TestScript', 'RegulatedAuthorization', 'EnrollmentRequest', 'BiologicallyDerivedProduct', 'Immunization', 'DocumentManifest', 'CompartmentDefinition', 'Bundle', 'Subscription', 'TestReport', 'OperationDefinition', 'MedicationRequest', 'ResearchElementDefinition', 'StructureDefinition', 'CatalogEntry', 'Location', 'ManufacturedItemDefinition', 'Procedure', 'ResearchStudy', 'ConceptMap', 'NutritionOrder', 'AppointmentResponse', 'ChargeItemDefinition', 'SubstanceDefinition', 'Account', 'DetectedIssue', 'Flag', 'BodyStructure', 'SubscriptionTopic', 'Questionnaire', 'Slot', 'ExplanationOfBenefit', 'NamingSystem', 'ImmunizationRecommendation', 'ResearchDefinition', 'Linkage', 'Observation', 'EventDefinition', 'CoverageEligibilityRequest', 'EpisodeOfCare', 'Binary', 'Media', 'Goal', 'RiskAssessment', 'ImagingStudy', 'Claim', 'VerificationResult', 'CapabilityStatement', 'OrganizationAffiliation', 'ObservationDefinition', 'Communication', 'Schedule', 'PractitionerRole', 'InsurancePlan', 'ResearchSubject', 'EnrollmentResponse', 'MeasureReport', 'EvidenceVariable', 'Device', 'MedicationKnowledge', 'MolecularSequence', 'ImplementationGuide', 'RelatedPerson', 'ClaimResponse', 'Coverage', 'HealthcareService', 'SpecimenDefinition', 'Evidence', 'DomainResource', 'Practitioner', 'DeviceMetric', 'DocumentReference', 'ImmunizationEvaluation', 'MedicationStatement', 'ChargeItem', 'Medication', 'ClinicalUseDefinition', 'Parameters', 'SupplyRequest', 'CareTeam', 'Contract', 'PaymentReconciliation', 'FamilyMemberHistory', 'Citation', 'VisionPrescription', 'GuidanceResponse', 'AdministrableProductDefinition', 'PackagedProductDefinition', 'Consent', 'StructureMap', 'SearchParameter', 'AllergyIntolerance', 'ClinicalImpression', 'ActivityDefinition', 'Patient', 'NutritionProduct', 'MessageHeader', 'QuestionnaireResponse', 'CommunicationRequest', 'MessageDefinition', 'DeviceRequest', 'Invoice', 'Endpoint', 'Person', 'MedicationDispense', 'CoverageEligibilityResponse', 'Organization', 'EvidenceReport', 'GraphDefinition', 'SubscriptionStatus', 'Group', 'ExampleScenario', 'Condition', 'DiagnosticReport', 'MedicationAdministration', 'Encounter']

  end
end