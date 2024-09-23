module FHIR
  module R4
    class OperationDefinition < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['base', 'code', 'context', 'context-quantity', 'context-type', 'date', 'description', 'input-profile', 'instance', 'jurisdiction', 'kind', 'name', 'output-profile', 'publisher', 'status', 'system', 'title', 'type', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'OperationDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'OperationDefinition._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'OperationDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'OperationDefinition.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'OperationDefinition._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'OperationDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'OperationDefinition._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'OperationDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'OperationDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'OperationDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'OperationDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'OperationDefinition.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'OperationDefinition._url', 'min'=>0, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'OperationDefinition.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'OperationDefinition._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'OperationDefinition.name', 'min'=>1, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'OperationDefinition._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'OperationDefinition.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'OperationDefinition._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'OperationDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'OperationDefinition._status', 'min'=>0, 'max'=>1},
        'kind' => {'valid_codes'=>{'http://hl7.org/fhir/operation-kind'=>['operation', 'query']}, 'type'=>'code', 'path'=>'OperationDefinition.kind', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/operation-kind'}},
        '_kind' => {'type'=>'Element', 'path'=>'OperationDefinition._kind', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'OperationDefinition.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'OperationDefinition._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'OperationDefinition.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'OperationDefinition._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'OperationDefinition.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'OperationDefinition._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'OperationDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'OperationDefinition.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'OperationDefinition._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'OperationDefinition.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'OperationDefinition.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'OperationDefinition.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'OperationDefinition._purpose', 'min'=>0, 'max'=>1},
        'affectsState' => {'type'=>'boolean', 'path'=>'OperationDefinition.affectsState', 'min'=>0, 'max'=>1},
        '_affectsState' => {'type'=>'Element', 'path'=>'OperationDefinition._affectsState', 'min'=>0, 'max'=>1},
        'code' => {'type'=>'code', 'path'=>'OperationDefinition.code', 'min'=>1, 'max'=>1},
        '_code' => {'type'=>'Element', 'path'=>'OperationDefinition._code', 'min'=>0, 'max'=>1},
        'comment' => {'type'=>'markdown', 'path'=>'OperationDefinition.comment', 'min'=>0, 'max'=>1},
        '_comment' => {'type'=>'Element', 'path'=>'OperationDefinition._comment', 'min'=>0, 'max'=>1},
        'base' => {'type'=>'canonical', 'path'=>'OperationDefinition.base', 'min'=>0, 'max'=>1},
        '_base' => {'type'=>'Element', 'path'=>'OperationDefinition._base', 'min'=>0, 'max'=>1},
        'resource' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'type'=>'code', 'path'=>'OperationDefinition.resource', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
        '_resource' => {'type'=>'Element', 'path'=>'OperationDefinition._resource', 'min'=>0, 'max'=>Float::INFINITY},
        'system' => {'type'=>'boolean', 'path'=>'OperationDefinition.system', 'min'=>1, 'max'=>1},
        '_system' => {'type'=>'Element', 'path'=>'OperationDefinition._system', 'min'=>0, 'max'=>1},
        'type' => {'type'=>'boolean', 'path'=>'OperationDefinition.type', 'min'=>1, 'max'=>1},
        '_type' => {'type'=>'Element', 'path'=>'OperationDefinition._type', 'min'=>0, 'max'=>1},
        'instance' => {'type'=>'boolean', 'path'=>'OperationDefinition.instance', 'min'=>1, 'max'=>1},
        '_instance' => {'type'=>'Element', 'path'=>'OperationDefinition._instance', 'min'=>0, 'max'=>1},
        'inputProfile' => {'type'=>'canonical', 'path'=>'OperationDefinition.inputProfile', 'min'=>0, 'max'=>1},
        '_inputProfile' => {'type'=>'Element', 'path'=>'OperationDefinition._inputProfile', 'min'=>0, 'max'=>1},
        'outputProfile' => {'type'=>'canonical', 'path'=>'OperationDefinition.outputProfile', 'min'=>0, 'max'=>1},
        '_outputProfile' => {'type'=>'Element', 'path'=>'OperationDefinition._outputProfile', 'min'=>0, 'max'=>1},
        'parameter' => {'type'=>'OperationDefinition::Parameter', 'path'=>'OperationDefinition.parameter', 'min'=>0, 'max'=>Float::INFINITY},
        'overload' => {'type'=>'OperationDefinition::Overload', 'path'=>'OperationDefinition.overload', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Parameter < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Parameter.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Parameter._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Parameter.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Parameter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'code', 'path'=>'Parameter.name', 'min'=>1, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Parameter._name', 'min'=>0, 'max'=>1},
          'use' => {'valid_codes'=>{'http://hl7.org/fhir/operation-parameter-use'=>['in', 'out']}, 'type'=>'code', 'path'=>'Parameter.use', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/operation-parameter-use'}},
          '_use' => {'type'=>'Element', 'path'=>'Parameter._use', 'min'=>0, 'max'=>1},
          'min' => {'type'=>'integer', 'path'=>'Parameter.min', 'min'=>1, 'max'=>1},
          '_min' => {'type'=>'Element', 'path'=>'Parameter._min', 'min'=>0, 'max'=>1},
          'max' => {'type'=>'string', 'path'=>'Parameter.max', 'min'=>1, 'max'=>1},
          '_max' => {'type'=>'Element', 'path'=>'Parameter._max', 'min'=>0, 'max'=>1},
          'documentation' => {'type'=>'string', 'path'=>'Parameter.documentation', 'min'=>0, 'max'=>1},
          '_documentation' => {'type'=>'Element', 'path'=>'Parameter._documentation', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/data-types'=>['Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'SubstanceAmount', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml'], 'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'], 'http://hl7.org/fhir/abstract-types'=>['Type', 'Any']}, 'type'=>'code', 'path'=>'Parameter.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/all-types'}},
          '_type' => {'type'=>'Element', 'path'=>'Parameter._type', 'min'=>0, 'max'=>1},
          'targetProfile' => {'type'=>'canonical', 'path'=>'Parameter.targetProfile', 'min'=>0, 'max'=>Float::INFINITY},
          '_targetProfile' => {'type'=>'Element', 'path'=>'Parameter._targetProfile', 'min'=>0, 'max'=>Float::INFINITY},
          'searchType' => {'valid_codes'=>{'http://hl7.org/fhir/search-param-type'=>['number', 'date', 'string', 'token', 'reference', 'composite', 'quantity', 'uri', 'special']}, 'type'=>'code', 'path'=>'Parameter.searchType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-param-type'}},
          '_searchType' => {'type'=>'Element', 'path'=>'Parameter._searchType', 'min'=>0, 'max'=>1},
          'binding' => {'type'=>'OperationDefinition::Parameter::Binding', 'path'=>'Parameter.binding', 'min'=>0, 'max'=>1},
          'referencedFrom' => {'type'=>'OperationDefinition::Parameter::ReferencedFrom', 'path'=>'Parameter.referencedFrom', 'min'=>0, 'max'=>Float::INFINITY},
          'part' => {'type'=>'OperationDefinition::Parameter', 'path'=>'Parameter.part', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Binding < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Binding.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Binding._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Binding.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Binding.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'strength' => {'valid_codes'=>{'http://hl7.org/fhir/binding-strength'=>['required', 'extensible', 'preferred', 'example']}, 'type'=>'code', 'path'=>'Binding.strength', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/binding-strength'}},
            '_strength' => {'type'=>'Element', 'path'=>'Binding._strength', 'min'=>0, 'max'=>1},
            'valueSet' => {'type'=>'canonical', 'path'=>'Binding.valueSet', 'min'=>1, 'max'=>1},
            '_valueSet' => {'type'=>'Element', 'path'=>'Binding._valueSet', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :strength          # 1-1 code
          attr_accessor :_strength         # 0-1 Element
          attr_accessor :valueSet          # 1-1 canonical
          attr_accessor :_valueSet         # 0-1 Element
        end

        class ReferencedFrom < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'ReferencedFrom.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'ReferencedFrom._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'ReferencedFrom.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'ReferencedFrom.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'source' => {'type'=>'string', 'path'=>'ReferencedFrom.source', 'min'=>1, 'max'=>1},
            '_source' => {'type'=>'Element', 'path'=>'ReferencedFrom._source', 'min'=>0, 'max'=>1},
            'sourceId' => {'type'=>'string', 'path'=>'ReferencedFrom.sourceId', 'min'=>0, 'max'=>1},
            '_sourceId' => {'type'=>'Element', 'path'=>'ReferencedFrom._sourceId', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :source            # 1-1 string
          attr_accessor :_source           # 0-1 Element
          attr_accessor :sourceId          # 0-1 string
          attr_accessor :_sourceId         # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 code
        attr_accessor :_name             # 0-1 Element
        attr_accessor :use               # 1-1 code
        attr_accessor :_use              # 0-1 Element
        attr_accessor :min               # 1-1 integer
        attr_accessor :_min              # 0-1 Element
        attr_accessor :max               # 1-1 string
        attr_accessor :_max              # 0-1 Element
        attr_accessor :documentation     # 0-1 string
        attr_accessor :_documentation    # 0-1 Element
        attr_accessor :type              # 0-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :targetProfile     # 0-* [ canonical ]
        attr_accessor :_targetProfile    # 0-* [ Element ]
        attr_accessor :searchType        # 0-1 code
        attr_accessor :_searchType       # 0-1 Element
        attr_accessor :binding           # 0-1 OperationDefinition::Parameter::Binding
        attr_accessor :referencedFrom    # 0-* [ OperationDefinition::Parameter::ReferencedFrom ]
        attr_accessor :part              # 0-* [ OperationDefinition::Parameter ]
      end

      class Overload < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Overload.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Overload._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Overload.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Overload.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'parameterName' => {'type'=>'string', 'path'=>'Overload.parameterName', 'min'=>0, 'max'=>Float::INFINITY},
          '_parameterName' => {'type'=>'Element', 'path'=>'Overload._parameterName', 'min'=>0, 'max'=>Float::INFINITY},
          'comment' => {'type'=>'string', 'path'=>'Overload.comment', 'min'=>0, 'max'=>1},
          '_comment' => {'type'=>'Element', 'path'=>'Overload._comment', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :parameterName     # 0-* [ string ]
        attr_accessor :_parameterName    # 0-* [ Element ]
        attr_accessor :comment           # 0-1 string
        attr_accessor :_comment          # 0-1 Element
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
      attr_accessor :version           # 0-1 string
      attr_accessor :_version          # 0-1 Element
      attr_accessor :name              # 1-1 string
      attr_accessor :_name             # 0-1 Element
      attr_accessor :title             # 0-1 string
      attr_accessor :_title            # 0-1 Element
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :kind              # 1-1 code
      attr_accessor :_kind             # 0-1 Element
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
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :_purpose          # 0-1 Element
      attr_accessor :affectsState      # 0-1 boolean
      attr_accessor :_affectsState     # 0-1 Element
      attr_accessor :code              # 1-1 code
      attr_accessor :_code             # 0-1 Element
      attr_accessor :comment           # 0-1 markdown
      attr_accessor :_comment          # 0-1 Element
      attr_accessor :base              # 0-1 canonical
      attr_accessor :_base             # 0-1 Element
      attr_accessor :resource          # 0-* [ code ]
      attr_accessor :_resource         # 0-* [ Element ]
      attr_accessor :system            # 1-1 boolean
      attr_accessor :_system           # 0-1 Element
      attr_accessor :type              # 1-1 boolean
      attr_accessor :_type             # 0-1 Element
      attr_accessor :instance          # 1-1 boolean
      attr_accessor :_instance         # 0-1 Element
      attr_accessor :inputProfile      # 0-1 canonical
      attr_accessor :_inputProfile     # 0-1 Element
      attr_accessor :outputProfile     # 0-1 canonical
      attr_accessor :_outputProfile    # 0-1 Element
      attr_accessor :parameter         # 0-* [ OperationDefinition::Parameter ]
      attr_accessor :overload          # 0-* [ OperationDefinition::Overload ]

      def resourceType
        'OperationDefinition'
      end
    end
  end
  OperationDefinition = FHIR::R4::OperationDefinition
end