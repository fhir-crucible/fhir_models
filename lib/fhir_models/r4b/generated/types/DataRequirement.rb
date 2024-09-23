module FHIR
  module R4B
    class DataRequirement < FHIR::Model
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
        'subject' => ['CodeableConcept', 'Reference']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'DataRequirement.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'DataRequirement._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'DataRequirement.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/data-types'=>['Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml'], 'http://hl7.org/fhir/resource-types'=>['Resource', 'Binary', 'Bundle', 'DomainResource', 'Account', 'ActivityDefinition', 'AdministrableProductDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'BiologicallyDerivedProduct', 'BodyStructure', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Citation', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus', 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription', 'Parameters'], 'http://hl7.org/fhir/abstract-types'=>['Type', 'Any']}, 'type'=>'code', 'path'=>'DataRequirement.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/all-types'}},
        '_type' => {'type'=>'Element', 'path'=>'DataRequirement._type', 'min'=>0, 'max'=>1},
        'profile' => {'type'=>'canonical', 'path'=>'DataRequirement.profile', 'min'=>0, 'max'=>Float::INFINITY},
        '_profile' => {'type'=>'Element', 'path'=>'DataRequirement._profile', 'min'=>0, 'max'=>Float::INFINITY},
        'subjectCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Patient', 'Practitioner', 'Organization', 'Location', 'Device']}, 'type'=>'CodeableConcept', 'path'=>'DataRequirement.subject[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subject-type'}},
        'subjectReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'DataRequirement.subject[x]', 'min'=>0, 'max'=>1},
        'mustSupport' => {'type'=>'string', 'path'=>'DataRequirement.mustSupport', 'min'=>0, 'max'=>Float::INFINITY},
        '_mustSupport' => {'type'=>'Element', 'path'=>'DataRequirement._mustSupport', 'min'=>0, 'max'=>Float::INFINITY},
        'codeFilter' => {'type'=>'DataRequirement::CodeFilter', 'path'=>'DataRequirement.codeFilter', 'min'=>0, 'max'=>Float::INFINITY},
        'dateFilter' => {'type'=>'DataRequirement::DateFilter', 'path'=>'DataRequirement.dateFilter', 'min'=>0, 'max'=>Float::INFINITY},
        'limit' => {'type'=>'positiveInt', 'path'=>'DataRequirement.limit', 'min'=>0, 'max'=>1},
        '_limit' => {'type'=>'Element', 'path'=>'DataRequirement._limit', 'min'=>0, 'max'=>1},
        'sort' => {'type'=>'DataRequirement::Sort', 'path'=>'DataRequirement.sort', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class CodeFilter < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'CodeFilter.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'CodeFilter._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'CodeFilter.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'path' => {'type'=>'string', 'path'=>'CodeFilter.path', 'min'=>0, 'max'=>1},
          '_path' => {'type'=>'Element', 'path'=>'CodeFilter._path', 'min'=>0, 'max'=>1},
          'searchParam' => {'type'=>'string', 'path'=>'CodeFilter.searchParam', 'min'=>0, 'max'=>1},
          '_searchParam' => {'type'=>'Element', 'path'=>'CodeFilter._searchParam', 'min'=>0, 'max'=>1},
          'valueSet' => {'type'=>'canonical', 'path'=>'CodeFilter.valueSet', 'min'=>0, 'max'=>1},
          '_valueSet' => {'type'=>'Element', 'path'=>'CodeFilter._valueSet', 'min'=>0, 'max'=>1},
          'code' => {'type'=>'Coding', 'path'=>'CodeFilter.code', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id           # 0-1 string
        attr_accessor :_id          # 0-1 Element
        attr_accessor :extension    # 0-* [ Extension ]
        attr_accessor :path         # 0-1 string
        attr_accessor :_path        # 0-1 Element
        attr_accessor :searchParam  # 0-1 string
        attr_accessor :_searchParam # 0-1 Element
        attr_accessor :valueSet     # 0-1 canonical
        attr_accessor :_valueSet    # 0-1 Element
        attr_accessor :code         # 0-* [ Coding ]
      end

      class DateFilter < FHIR::Model
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
          'value' => ['dateTime', 'Period', 'Duration']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'DateFilter.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'DateFilter._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'DateFilter.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'path' => {'type'=>'string', 'path'=>'DateFilter.path', 'min'=>0, 'max'=>1},
          '_path' => {'type'=>'Element', 'path'=>'DateFilter._path', 'min'=>0, 'max'=>1},
          'searchParam' => {'type'=>'string', 'path'=>'DateFilter.searchParam', 'min'=>0, 'max'=>1},
          '_searchParam' => {'type'=>'Element', 'path'=>'DateFilter._searchParam', 'min'=>0, 'max'=>1},
          'valueDateTime' => {'type'=>'dateTime', 'path'=>'DateFilter.value[x]', 'min'=>0, 'max'=>1},
          '_valueDateTime' => {'type'=>'Element', 'path'=>'DateFilter.value[x]', 'min'=>0, 'max'=>1},
          'valuePeriod' => {'type'=>'Period', 'path'=>'DateFilter.value[x]', 'min'=>0, 'max'=>1},
          'valueDuration' => {'type'=>'Duration', 'path'=>'DateFilter.value[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id             # 0-1 string
        attr_accessor :_id            # 0-1 Element
        attr_accessor :extension      # 0-* [ Extension ]
        attr_accessor :path           # 0-1 string
        attr_accessor :_path          # 0-1 Element
        attr_accessor :searchParam    # 0-1 string
        attr_accessor :_searchParam   # 0-1 Element
        attr_accessor :valueDateTime  # 0-1 dateTime
        attr_accessor :_valueDateTime # 0-1 Element
        attr_accessor :valuePeriod    # 0-1 Period
        attr_accessor :valueDuration  # 0-1 Duration
      end

      class Sort < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Sort.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Sort._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Sort.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'path' => {'type'=>'string', 'path'=>'Sort.path', 'min'=>1, 'max'=>1},
          '_path' => {'type'=>'Element', 'path'=>'Sort._path', 'min'=>0, 'max'=>1},
          'direction' => {'valid_codes'=>{'http://hl7.org/fhir/sort-direction'=>['ascending', 'descending']}, 'type'=>'code', 'path'=>'Sort.direction', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/sort-direction'}},
          '_direction' => {'type'=>'Element', 'path'=>'Sort._direction', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id         # 0-1 string
        attr_accessor :_id        # 0-1 Element
        attr_accessor :extension  # 0-* [ Extension ]
        attr_accessor :path       # 1-1 string
        attr_accessor :_path      # 0-1 Element
        attr_accessor :direction  # 1-1 code
        attr_accessor :_direction # 0-1 Element
      end

      attr_accessor :id                     # 0-1 string
      attr_accessor :_id                    # 0-1 Element
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :type                   # 1-1 code
      attr_accessor :_type                  # 0-1 Element
      attr_accessor :profile                # 0-* [ canonical ]
      attr_accessor :_profile               # 0-* [ Element ]
      attr_accessor :subjectCodeableConcept # 0-1 CodeableConcept
      attr_accessor :subjectReference       # 0-1 Reference(Group)
      attr_accessor :mustSupport            # 0-* [ string ]
      attr_accessor :_mustSupport           # 0-* [ Element ]
      attr_accessor :codeFilter             # 0-* [ DataRequirement::CodeFilter ]
      attr_accessor :dateFilter             # 0-* [ DataRequirement::DateFilter ]
      attr_accessor :limit                  # 0-1 positiveInt
      attr_accessor :_limit                 # 0-1 Element
      attr_accessor :sort                   # 0-* [ DataRequirement::Sort ]
    end
  end
end