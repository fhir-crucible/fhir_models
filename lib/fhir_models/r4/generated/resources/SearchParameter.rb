module FHIR
  module R4
    class SearchParameter < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['base', 'code', 'component', 'context', 'context-quantity', 'context-type', 'date', 'derived-from', 'description', 'jurisdiction', 'name', 'publisher', 'status', 'target', 'type', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'SearchParameter.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'SearchParameter._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SearchParameter.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SearchParameter.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'SearchParameter._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SearchParameter.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'SearchParameter._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'SearchParameter.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SearchParameter.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SearchParameter.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SearchParameter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'SearchParameter.url', 'min'=>1, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'SearchParameter._url', 'min'=>0, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'SearchParameter.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'SearchParameter._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'SearchParameter.name', 'min'=>1, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'SearchParameter._name', 'min'=>0, 'max'=>1},
        'derivedFrom' => {'type'=>'canonical', 'path'=>'SearchParameter.derivedFrom', 'min'=>0, 'max'=>1},
        '_derivedFrom' => {'type'=>'Element', 'path'=>'SearchParameter._derivedFrom', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'SearchParameter.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'SearchParameter._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'SearchParameter.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'SearchParameter._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'SearchParameter.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'SearchParameter._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'SearchParameter.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'SearchParameter._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'SearchParameter.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'SearchParameter.description', 'min'=>1, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'SearchParameter._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'SearchParameter.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'SearchParameter.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'SearchParameter.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'SearchParameter._purpose', 'min'=>0, 'max'=>1},
        'code' => {'type'=>'code', 'path'=>'SearchParameter.code', 'min'=>1, 'max'=>1},
        '_code' => {'type'=>'Element', 'path'=>'SearchParameter._code', 'min'=>0, 'max'=>1},
        'base' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'type'=>'code', 'path'=>'SearchParameter.base', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
        '_base' => {'type'=>'Element', 'path'=>'SearchParameter._base', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/search-param-type'=>['number', 'date', 'string', 'token', 'reference', 'composite', 'quantity', 'uri', 'special']}, 'type'=>'code', 'path'=>'SearchParameter.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-param-type'}},
        '_type' => {'type'=>'Element', 'path'=>'SearchParameter._type', 'min'=>0, 'max'=>1},
        'expression' => {'type'=>'string', 'path'=>'SearchParameter.expression', 'min'=>0, 'max'=>1},
        '_expression' => {'type'=>'Element', 'path'=>'SearchParameter._expression', 'min'=>0, 'max'=>1},
        'xpath' => {'type'=>'string', 'path'=>'SearchParameter.xpath', 'min'=>0, 'max'=>1},
        '_xpath' => {'type'=>'Element', 'path'=>'SearchParameter._xpath', 'min'=>0, 'max'=>1},
        'xpathUsage' => {'valid_codes'=>{'http://hl7.org/fhir/search-xpath-usage'=>['normal', 'phonetic', 'nearby', 'distance', 'other']}, 'type'=>'code', 'path'=>'SearchParameter.xpathUsage', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-xpath-usage'}},
        '_xpathUsage' => {'type'=>'Element', 'path'=>'SearchParameter._xpathUsage', 'min'=>0, 'max'=>1},
        'target' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'type'=>'code', 'path'=>'SearchParameter.target', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
        '_target' => {'type'=>'Element', 'path'=>'SearchParameter._target', 'min'=>0, 'max'=>Float::INFINITY},
        'multipleOr' => {'type'=>'boolean', 'path'=>'SearchParameter.multipleOr', 'min'=>0, 'max'=>1},
        '_multipleOr' => {'type'=>'Element', 'path'=>'SearchParameter._multipleOr', 'min'=>0, 'max'=>1},
        'multipleAnd' => {'type'=>'boolean', 'path'=>'SearchParameter.multipleAnd', 'min'=>0, 'max'=>1},
        '_multipleAnd' => {'type'=>'Element', 'path'=>'SearchParameter._multipleAnd', 'min'=>0, 'max'=>1},
        'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/search-comparator'=>['eq', 'ne', 'gt', 'lt', 'ge', 'le', 'sa', 'eb', 'ap']}, 'type'=>'code', 'path'=>'SearchParameter.comparator', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-comparator'}},
        '_comparator' => {'type'=>'Element', 'path'=>'SearchParameter._comparator', 'min'=>0, 'max'=>Float::INFINITY},
        'modifier' => {'valid_codes'=>{'http://hl7.org/fhir/search-modifier-code'=>['missing', 'exact', 'contains', 'not', 'text', 'in', 'not-in', 'below', 'above', 'type', 'identifier', 'ofType']}, 'type'=>'code', 'path'=>'SearchParameter.modifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-modifier-code'}},
        '_modifier' => {'type'=>'Element', 'path'=>'SearchParameter._modifier', 'min'=>0, 'max'=>Float::INFINITY},
        'chain' => {'type'=>'string', 'path'=>'SearchParameter.chain', 'min'=>0, 'max'=>Float::INFINITY},
        '_chain' => {'type'=>'Element', 'path'=>'SearchParameter._chain', 'min'=>0, 'max'=>Float::INFINITY},
        'component' => {'type'=>'SearchParameter::Component', 'path'=>'SearchParameter.component', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Component < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Component.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Component._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Component.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Component.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'definition' => {'type'=>'canonical', 'path'=>'Component.definition', 'min'=>1, 'max'=>1},
          '_definition' => {'type'=>'Element', 'path'=>'Component._definition', 'min'=>0, 'max'=>1},
          'expression' => {'type'=>'string', 'path'=>'Component.expression', 'min'=>1, 'max'=>1},
          '_expression' => {'type'=>'Element', 'path'=>'Component._expression', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :definition        # 1-1 canonical
        attr_accessor :_definition       # 0-1 Element
        attr_accessor :expression        # 1-1 string
        attr_accessor :_expression       # 0-1 Element
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
      attr_accessor :derivedFrom       # 0-1 canonical
      attr_accessor :_derivedFrom      # 0-1 Element
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :_experimental     # 0-1 Element
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :_date             # 0-1 Element
      attr_accessor :publisher         # 0-1 string
      attr_accessor :_publisher        # 0-1 Element
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 1-1 markdown
      attr_accessor :_description      # 0-1 Element
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :_purpose          # 0-1 Element
      attr_accessor :code              # 1-1 code
      attr_accessor :_code             # 0-1 Element
      attr_accessor :base              # 1-* [ code ]
      attr_accessor :_base             # 0-* [ Element ]
      attr_accessor :type              # 1-1 code
      attr_accessor :_type             # 0-1 Element
      attr_accessor :expression        # 0-1 string
      attr_accessor :_expression       # 0-1 Element
      attr_accessor :xpath             # 0-1 string
      attr_accessor :_xpath            # 0-1 Element
      attr_accessor :xpathUsage        # 0-1 code
      attr_accessor :_xpathUsage       # 0-1 Element
      attr_accessor :target            # 0-* [ code ]
      attr_accessor :_target           # 0-* [ Element ]
      attr_accessor :multipleOr        # 0-1 boolean
      attr_accessor :_multipleOr       # 0-1 Element
      attr_accessor :multipleAnd       # 0-1 boolean
      attr_accessor :_multipleAnd      # 0-1 Element
      attr_accessor :comparator        # 0-* [ code ]
      attr_accessor :_comparator       # 0-* [ Element ]
      attr_accessor :modifier          # 0-* [ code ]
      attr_accessor :_modifier         # 0-* [ Element ]
      attr_accessor :chain             # 0-* [ string ]
      attr_accessor :_chain            # 0-* [ Element ]
      attr_accessor :component         # 0-* [ SearchParameter::Component ]

      def resourceType
        'SearchParameter'
      end
    end
  end
  SearchParameter = FHIR::R4::SearchParameter
end