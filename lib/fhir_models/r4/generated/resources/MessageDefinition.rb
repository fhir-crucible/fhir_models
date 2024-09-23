module FHIR
  module R4
    class MessageDefinition < FHIR::Model
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
        'event' => ['Coding', 'uri']
      }
      SEARCH_PARAMS = ['category', 'context', 'context-quantity', 'context-type', 'date', 'description', 'event', 'focus', 'identifier', 'jurisdiction', 'name', 'parent', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MessageDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MessageDefinition._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MessageDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MessageDefinition.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MessageDefinition._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MessageDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MessageDefinition._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MessageDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MessageDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MessageDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MessageDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'MessageDefinition.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'MessageDefinition._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'MessageDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'MessageDefinition.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'MessageDefinition._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'MessageDefinition.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'MessageDefinition._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'MessageDefinition.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'MessageDefinition._title', 'min'=>0, 'max'=>1},
        'replaces' => {'type'=>'canonical', 'path'=>'MessageDefinition.replaces', 'min'=>0, 'max'=>Float::INFINITY},
        '_replaces' => {'type'=>'Element', 'path'=>'MessageDefinition._replaces', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'MessageDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'MessageDefinition._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'MessageDefinition.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'MessageDefinition._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'MessageDefinition.date', 'min'=>1, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'MessageDefinition._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'MessageDefinition.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'MessageDefinition._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'MessageDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'MessageDefinition.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'MessageDefinition._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'MessageDefinition.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'MessageDefinition.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'MessageDefinition.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'MessageDefinition._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'MessageDefinition.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'MessageDefinition._copyright', 'min'=>0, 'max'=>1},
        'base' => {'type'=>'canonical', 'path'=>'MessageDefinition.base', 'min'=>0, 'max'=>1},
        '_base' => {'type'=>'Element', 'path'=>'MessageDefinition._base', 'min'=>0, 'max'=>1},
        'parent' => {'type'=>'canonical', 'path'=>'MessageDefinition.parent', 'min'=>0, 'max'=>Float::INFINITY},
        '_parent' => {'type'=>'Element', 'path'=>'MessageDefinition._parent', 'min'=>0, 'max'=>Float::INFINITY},
        'eventCoding' => {'type'=>'Coding', 'path'=>'MessageDefinition.event[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/message-events'}},
        'eventUri' => {'type'=>'uri', 'path'=>'MessageDefinition.event[x]', 'min'=>1, 'max'=>1},
        '_eventUri' => {'type'=>'Element', 'path'=>'MessageDefinition.event[x]', 'min'=>0, 'max'=>1},
        'category' => {'valid_codes'=>{'http://hl7.org/fhir/message-significance-category'=>['consequence', 'currency', 'notification']}, 'type'=>'code', 'path'=>'MessageDefinition.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/message-significance-category'}},
        '_category' => {'type'=>'Element', 'path'=>'MessageDefinition._category', 'min'=>0, 'max'=>1},
        'focus' => {'type'=>'MessageDefinition::Focus', 'path'=>'MessageDefinition.focus', 'min'=>0, 'max'=>Float::INFINITY},
        'responseRequired' => {'valid_codes'=>{'http://hl7.org/fhir/messageheader-response-request'=>['always', 'on-error', 'never', 'on-success']}, 'type'=>'code', 'path'=>'MessageDefinition.responseRequired', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/messageheader-response-request'}},
        '_responseRequired' => {'type'=>'Element', 'path'=>'MessageDefinition._responseRequired', 'min'=>0, 'max'=>1},
        'allowedResponse' => {'type'=>'MessageDefinition::AllowedResponse', 'path'=>'MessageDefinition.allowedResponse', 'min'=>0, 'max'=>Float::INFINITY},
        'graph' => {'type'=>'canonical', 'path'=>'MessageDefinition.graph', 'min'=>0, 'max'=>Float::INFINITY},
        '_graph' => {'type'=>'Element', 'path'=>'MessageDefinition._graph', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Focus < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Focus.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Focus._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Focus.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Focus.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'type'=>'code', 'path'=>'Focus.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
          '_code' => {'type'=>'Element', 'path'=>'Focus._code', 'min'=>0, 'max'=>1},
          'profile' => {'type'=>'canonical', 'path'=>'Focus.profile', 'min'=>0, 'max'=>1},
          '_profile' => {'type'=>'Element', 'path'=>'Focus._profile', 'min'=>0, 'max'=>1},
          'min' => {'type'=>'unsignedInt', 'path'=>'Focus.min', 'min'=>1, 'max'=>1},
          '_min' => {'type'=>'Element', 'path'=>'Focus._min', 'min'=>0, 'max'=>1},
          'max' => {'type'=>'string', 'path'=>'Focus.max', 'min'=>0, 'max'=>1},
          '_max' => {'type'=>'Element', 'path'=>'Focus._max', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 code
        attr_accessor :_code             # 0-1 Element
        attr_accessor :profile           # 0-1 canonical
        attr_accessor :_profile          # 0-1 Element
        attr_accessor :min               # 1-1 unsignedInt
        attr_accessor :_min              # 0-1 Element
        attr_accessor :max               # 0-1 string
        attr_accessor :_max              # 0-1 Element
      end

      class AllowedResponse < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'AllowedResponse.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'AllowedResponse._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'AllowedResponse.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'AllowedResponse.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'message' => {'type'=>'canonical', 'path'=>'AllowedResponse.message', 'min'=>1, 'max'=>1},
          '_message' => {'type'=>'Element', 'path'=>'AllowedResponse._message', 'min'=>0, 'max'=>1},
          'situation' => {'type'=>'markdown', 'path'=>'AllowedResponse.situation', 'min'=>0, 'max'=>1},
          '_situation' => {'type'=>'Element', 'path'=>'AllowedResponse._situation', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :message           # 1-1 canonical
        attr_accessor :_message          # 0-1 Element
        attr_accessor :situation         # 0-1 markdown
        attr_accessor :_situation        # 0-1 Element
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
      attr_accessor :title             # 0-1 string
      attr_accessor :_title            # 0-1 Element
      attr_accessor :replaces          # 0-* [ canonical ]
      attr_accessor :_replaces         # 0-* [ Element ]
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :_experimental     # 0-1 Element
      attr_accessor :date              # 1-1 dateTime
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
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :base              # 0-1 canonical
      attr_accessor :_base             # 0-1 Element
      attr_accessor :parent            # 0-* [ canonical ]
      attr_accessor :_parent           # 0-* [ Element ]
      attr_accessor :eventCoding       # 1-1 Coding
      attr_accessor :eventUri          # 1-1 uri
      attr_accessor :_eventUri         # 0-1 Element
      attr_accessor :category          # 0-1 code
      attr_accessor :_category         # 0-1 Element
      attr_accessor :focus             # 0-* [ MessageDefinition::Focus ]
      attr_accessor :responseRequired  # 0-1 code
      attr_accessor :_responseRequired # 0-1 Element
      attr_accessor :allowedResponse   # 0-* [ MessageDefinition::AllowedResponse ]
      attr_accessor :graph             # 0-* [ canonical ]
      attr_accessor :_graph            # 0-* [ Element ]

      def resourceType
        'MessageDefinition'
      end
    end
  end
  MessageDefinition = FHIR::R4::MessageDefinition
end