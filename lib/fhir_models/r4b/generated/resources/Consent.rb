module FHIR
  module R4B
    class Consent < FHIR::Model
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
        'source' => ['Attachment', 'Reference']
      }
      SEARCH_PARAMS = ['action', 'actor', 'category', 'consentor', 'data', 'date', 'identifier', 'organization', 'patient', 'period', 'purpose', 'scope', 'security-label', 'source-reference', 'status']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Consent.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Consent._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Consent.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Consent.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Consent._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Consent.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Consent._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Consent.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Consent.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Consent.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Consent.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Consent.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/consent-state-codes'=>['draft', 'proposed', 'active', 'rejected', 'inactive', 'entered-in-error']}, 'type'=>'code', 'path'=>'Consent.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-state-codes'}},
        '_status' => {'type'=>'Element', 'path'=>'Consent._status', 'min'=>0, 'max'=>1},
        'scope' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/consentscope'=>['adr', 'research', 'patient-privacy', 'treatment']}, 'type'=>'CodeableConcept', 'path'=>'Consent.scope', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-scope'}},
        'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/consentcategorycodes'=>['acd', 'dnr', 'emrgonly', 'hcd', 'npp', 'polst', 'research', 'rsdid', 'rsreid'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_ActConsentType', 'ICOL', 'IDSCL', 'INFA', 'INFAO', 'INFASO', 'IRDSCL', 'RESEARCH', 'RSDID', 'RSREID'], 'http://loinc.org'=>['59284-0', '57016-8', '57017-6', '64292-6']}, 'type'=>'CodeableConcept', 'path'=>'Consent.category', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-category'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'Consent.patient', 'min'=>0, 'max'=>1},
        'dateTime' => {'type'=>'dateTime', 'path'=>'Consent.dateTime', 'min'=>0, 'max'=>1},
        '_dateTime' => {'type'=>'Element', 'path'=>'Consent._dateTime', 'min'=>0, 'max'=>1},
        'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'Consent.performer', 'min'=>0, 'max'=>Float::INFINITY},
        'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Consent.organization', 'min'=>0, 'max'=>Float::INFINITY},
        'sourceAttachment' => {'type'=>'Attachment', 'path'=>'Consent.source[x]', 'min'=>0, 'max'=>1},
        'sourceReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Consent', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/Contract', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'type'=>'Reference', 'path'=>'Consent.source[x]', 'min'=>0, 'max'=>1},
        'policy' => {'type'=>'Consent::Policy', 'path'=>'Consent.policy', 'min'=>0, 'max'=>Float::INFINITY},
        'policyRule' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/consentpolicycodes'=>['cric', 'illinois-minor-procedure', 'hipaa-auth', 'hipaa-npp', 'hipaa-restrictions', 'hipaa-research', 'hipaa-self-pay', 'mdhhs-5515', 'nyssipp', 'va-10-0484', 'va-10-0485', 'va-10-5345', 'va-10-5345a', 'va-10-5345a-mhv', 'va-10-10116', 'va-21-4142', 'ssa-827', 'dch-3927', 'squaxin', 'nl-lsp', 'at-elga', 'nih-hipaa', 'nci', 'nih-grdr', 'nih-527', 'ga4gh']}, 'type'=>'CodeableConcept', 'path'=>'Consent.policyRule', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-policy'}},
        'verification' => {'type'=>'Consent::Verification', 'path'=>'Consent.verification', 'min'=>0, 'max'=>Float::INFINITY},
        'provision' => {'type'=>'Consent::Provision', 'path'=>'Consent.provision', 'min'=>0, 'max'=>1}
      }

      class Policy < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Policy.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Policy._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Policy.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Policy.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'authority' => {'type'=>'uri', 'path'=>'Policy.authority', 'min'=>0, 'max'=>1},
          '_authority' => {'type'=>'Element', 'path'=>'Policy._authority', 'min'=>0, 'max'=>1},
          'uri' => {'type'=>'uri', 'path'=>'Policy.uri', 'min'=>0, 'max'=>1},
          '_uri' => {'type'=>'Element', 'path'=>'Policy._uri', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :authority         # 0-1 uri
        attr_accessor :_authority        # 0-1 Element
        attr_accessor :uri               # 0-1 uri
        attr_accessor :_uri              # 0-1 Element
      end

      class Verification < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Verification.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Verification._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Verification.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Verification.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'verified' => {'type'=>'boolean', 'path'=>'Verification.verified', 'min'=>1, 'max'=>1},
          '_verified' => {'type'=>'Element', 'path'=>'Verification._verified', 'min'=>0, 'max'=>1},
          'verifiedWith' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Verification.verifiedWith', 'min'=>0, 'max'=>1},
          'verificationDate' => {'type'=>'dateTime', 'path'=>'Verification.verificationDate', 'min'=>0, 'max'=>1},
          '_verificationDate' => {'type'=>'Element', 'path'=>'Verification._verificationDate', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :verified          # 1-1 boolean
        attr_accessor :_verified         # 0-1 Element
        attr_accessor :verifiedWith      # 0-1 Reference(Patient|RelatedPerson)
        attr_accessor :verificationDate  # 0-1 dateTime
        attr_accessor :_verificationDate # 0-1 Element
      end

      class Provision < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Provision.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Provision._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Provision.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Provision.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/consent-provision-type'=>['deny', 'permit']}, 'type'=>'code', 'path'=>'Provision.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-provision-type'}},
          '_type' => {'type'=>'Element', 'path'=>'Provision._type', 'min'=>0, 'max'=>1},
          'period' => {'type'=>'Period', 'path'=>'Provision.period', 'min'=>0, 'max'=>1},
          'actor' => {'type'=>'Consent::Provision::Actor', 'path'=>'Provision.actor', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/consentaction'=>['collect', 'access', 'use', 'disclose', 'correct']}, 'type'=>'CodeableConcept', 'path'=>'Provision.action', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-action'}},
          'securityLabel' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-Confidentiality'=>['U', 'L', 'M', 'N', 'R', 'V'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_InformationSensitivityPolicy', '_ActInformationSensitivityPolicy', 'ETH', 'GDIS', 'HIV', 'MST', 'PREGNANT', 'SCA', 'SDV', 'SEX', 'SPI', 'BH', 'COGN', 'DVD', 'EMOTDIS', 'MH', 'PSY', 'PSYTHPN', 'SUD', 'ETHUD', 'OPIOIDUD', 'STD', 'TBOO', 'VIO', 'IDS', 'SICKLE', '_EntitySensitivityPolicyType', 'DEMO', 'DOB', 'GENDER', 'LIVARG', 'MARST', 'PATLOC', 'RACE', 'REL', '_RoleInformationSensitivityPolicy', 'B', 'EMPL', 'LOCIS', 'SSP', 'ADOL', 'CEL', 'VIP', 'DIA', 'DRGIS', 'EMP', 'PDS', 'PHY', 'PRS', 'COMPT', 'ACOCOMPT', 'CDSSCOMPT', 'CTCOMPT', 'FMCOMPT', 'HRCOMPT', 'LRCOMPT', 'PACOMPT', 'RESCOMPT', 'RMGTCOMPT', 'SecurityPolicy', 'AUTHPOL', 'ACCESSCONSCHEME', 'DELEPOL', 'ObligationPolicy', 'ANONY', 'AOD', 'AUDIT', 'AUDTR', 'CPLYPOL', 'CPLYCC', 'CPLYCD', 'CPLYCUI', 'CPLYJPP', 'CPLYJSP', 'CPLYOPP', 'CPLYOSP', 'DECLASSIFYLABEL', 'DEID', 'DELAU', 'DOWNGRDLABEL', 'DRIVLABEL', 'ENCRYPT', 'ENCRYPTR', 'ENCRYPTT', 'ENCRYPTU', 'HUAPRV', 'LABEL', 'MASK', 'MINEC', 'PERSISTLABEL', 'PRIVMARK', 'CUIMark', 'PSEUD', 'REDACT', 'UPGRDLABEL', 'PrivacyMark', 'ControlledUnclassifiedInformation', 'CONTROLLED', 'CUI', 'CUIHLTH', 'CUIHLTHP', 'CUIP', 'CUIPRVCY', 'CUIPRVCYP', 'CUISP-HLTH', 'CUISP-HLTHP', 'CUISP-PRVCY', 'CUISP-PRVCYP', 'UUI', 'SecurityLabelMark', 'ConfidentialMark', 'COPYMark', 'DeliverToAddresseeOnlyMark', 'RedisclosureProhibitionMark', 'RestrictedConfidentialityMark', 'DRAFTMark', 'RefrainPolicy', 'NOAUTH', 'NOCOLLECT', 'NODSCLCD', 'NODSCLCDS', 'NOINTEGRATE', 'NOLIST', 'NOMOU', 'NOORGPOL', 'NOPAT', 'NOPERSISTP', 'NORDSCLCD', 'NORDSLCD', 'NORDSCLCDS', 'NORDSCLW', 'NORELINK', 'NOREUSE', 'NOVIP', 'ORCON'], 'http://terminology.hl7.org/CodeSystem/v3-ObservationValue'=>['_SECALTINTOBV', 'ABSTRED', 'AGGRED', 'ANONYED', 'MAPPED', 'MASKED', 'PSEUDED', 'REDACTED', 'SUBSETTED', 'SYNTAC', 'TRSLT', 'VERSIONED', '_SECDATINTOBV', 'CRYTOHASH', 'DIGSIG', '_SECINTCONOBV', 'HRELIABLE', 'RELIABLE', 'UNCERTREL', 'UNRELIABLE', '_SECINTPRVOBV', '_SECINTPRVABOBV', 'CLINAST', 'DEVAST', 'HCPAST', 'PACQAST', 'PATAST', 'PAYAST', 'PROAST', 'SDMAST', '_SECINTPRVRBOBV', 'CLINRPT', 'DEVRPT', 'HCPRPT', 'PACQRPT', 'PATRPT', 'PAYRPT', 'PRORPT', 'SDMRPT', '_SECINTSTOBV', '_ActCoverageAssessmentObservationValue', '_ActFinancialStatusObservationValue', 'ASSET', 'ANNUITY', 'PROP', 'RETACCT', 'TRUST', 'INCOME', 'CHILD', 'DISABL', 'INVEST', 'PAY', 'RETIRE', 'SPOUSAL', 'SUPPLE', 'TAX', 'LIVEXP', 'CLOTH', 'FOOD', 'HEALTH', 'HOUSE', 'LEGAL', 'MORTG', 'RENT', 'SUNDRY', 'TRANS', 'UTIL', 'ELSTAT', 'ADOPT', 'BTHCERT', 'CCOC', 'DRLIC', 'FOSTER', 'MEMBER', 'MIL', 'MRGCERT', 'PASSPORT', 'STUDENRL', 'HLSTAT', 'DISABLE', 'DRUG', 'IVDRG', 'PGNT', 'LIVDEP', 'RELDEP', 'SPSDEP', 'URELDEP', 'LIVSIT', 'ALONE', 'DEPCHD', 'DEPSPS', 'DEPYGCHD', 'FAM', 'RELAT', 'SPS', 'UNREL', 'SOECSTAT', 'ABUSE', 'HMLESS', 'ILGIM', 'INCAR', 'PROB', 'REFUG', 'UNEMPL', '_AllergyTestValue', 'A0', 'A1', 'A2', 'A3', 'A4', '_CompositeMeasureScoring', 'ALLORNONESCR', 'LINEARSCR', 'OPPORSCR', 'WEIGHTSCR', '_CoverageLimitObservationValue', '_CoverageLevelObservationValue', 'ADC', 'CHD', 'DEP', 'DP', 'ECH', 'FLY', 'IND', 'SSP', '_CoverageItemLimitObservationValue', '_CoverageLocationLimitObservationValue', '_CriticalityObservationValue', 'CRITH', 'CRITL', 'CRITU', '_EmploymentStatus', 'Employed', 'NotInLaborForce', 'Unemployed', '_GeneticObservationValue', 'Homozygote', '_MeasurementImprovementNotation', 'DecrIsImp', 'IncrIsImp', '_ObservationMeasureScoring', 'COHORT', 'CONTVAR', 'PROPOR', 'RATIO', '_ObservationMeasureType', 'COMPOSITE', 'EFFICIENCY', 'EXPERIENCE', 'OUTCOME', 'INTERM-OM', 'PRO-PM', 'PROCESS', 'APPROPRIATE', 'RESOURCE', 'STRUCTURE', '_ObservationPopulationInclusion', 'DENEX', 'DENEXCEP', 'DENOM', 'IP', 'IPP', 'MSRPOPL', 'NUMER', 'NUMEX', '_PartialCompletionScale', 'G', 'LE', 'ME', 'MI', 'N', 'S', '_SecurityObservationValue', '_SECCATOBV', '_SECCLASSOBV', '_SECCONOBV', '_SECINTOBV', 'SECTRSTOBV', 'TRSTACCRDOBV', 'TRSTAGREOBV', 'TRSTCERTOBV', 'TRSTFWKOBV', 'TRSTLOAOBV', 'LOAAN', 'LOAAN1', 'LOAAN2', 'LOAAN3', 'LOAAN4', 'LOAAP', 'LOAAP1', 'LOAAP2', 'LOAAP3', 'LOAAP4', 'LOAAS', 'LOAAS1', 'LOAAS2', 'LOAAS3', 'LOAAS4', 'LOACM', 'LOACM1', 'LOACM2', 'LOACM3', 'LOACM4', 'LOAID', 'LOAID1', 'LOAID2', 'LOAID3', 'LOAID4', 'LOANR', 'LOANR1', 'LOANR2', 'LOANR3', 'LOANR4', 'LOARA', 'LOARA1', 'LOARA2', 'LOARA3', 'LOARA4', 'LOATK', 'LOATK1', 'LOATK2', 'LOATK3', 'LOATK4', 'TRSTMECOBV', '_SeverityObservation', 'H', 'L', 'M', '_SubjectBodyPosition', 'LLD', 'PRN', 'RLD', 'SFWL', 'SIT', 'STN', 'SUP', 'RTRD', 'TRD', '_VerificationOutcomeValue', 'ACT', 'ACTPEND', 'ELG', 'INACT', 'INPNDINV', 'INPNDUPD', 'NELG', '_WorkSchedule', 'DS', 'EMS', 'ES', 'NS', 'RSWN', 'RSWON', 'SS', 'VLS', 'VS', '_AnnotationValue', '_ECGAnnotationValue', '_CommonClinicalObservationValue', '_CommonClinicalObservationAssertionValue', '_CommonClinicalObservationResultValue', '_CoverageChemicalDependencyValue', '_IndividualCaseSafetyReportValueDomains', '_CaseSeriousnessCriteria', '_DeviceManufacturerEvaluationInterpretation', '_DeviceManufacturerEvaluationMethod', '_DeviceManufacturerEvaluationResult', '_PertinentReactionRelatedness', '_ProductCharacterization', '_ReactionActionTaken', '_SubjectReaction', '_SubjectReactionEmphasis', '_SubjectReactionOutcome', '_InjuryObservationValue', '_IntoleranceValue', '_IssueTriggerObservationValue', '_OtherIndicationValue', '_IndicationValue', '_DiagnosisValue', '_SymptomValue'], 'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH'], 'http://terminology.hl7.org/CodeSystem/v3-ActUSPrivacyLaw'=>['_ActUSPrivacyLaw', '42CFRPart2', 'CommonRule', 'HIPAANOPP', 'HIPAAPsyNotes', 'HIPAASelfPay', 'Title38Section7332', 'Title38Part1']}, 'type'=>'Coding', 'path'=>'Provision.securityLabel', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/security-labels'}},
          'purpose' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'type'=>'Coding', 'path'=>'Provision.purpose', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}},
          'class' => {'local_name'=>'local_class', 'valid_codes'=>{'http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem'=>['urn:ihe:pcc:xphr:2007', 'urn:ihe:pcc:aps:2007', 'urn:ihe:pcc:xds-ms:2007', 'urn:ihe:pcc:edr:2007', 'urn:ihe:pcc:edes:2007', 'urn:ihe:pcc:apr:handp:2008', 'urn:ihe:pcc:apr:lab:2008', 'urn:ihe:pcc:apr:edu:2008', 'urn:ihe:pcc:crc:2008', 'urn:ihe:pcc:cm:2008', 'urn:ihe:pcc:ic:2008', 'urn:ihe:pcc:tn:2007', 'urn:ihe:pcc:nn:2007', 'urn:ihe:pcc:ctn:2007', 'urn:ihe:pcc:edpn:2007', 'urn:ihe:pcc:hp:2008', 'urn:ihe:pcc:ldhp:2009', 'urn:ihe:pcc:lds:2009', 'urn:ihe:pcc:mds:2009', 'urn:ihe:pcc:nds:2010', 'urn:ihe:pcc:ppvs:2010', 'urn:ihe:pcc:trs:2011', 'urn:ihe:pcc:ets:2011', 'urn:ihe:pcc:its:2011', 'urn:ihe:pcc:ript:2017', 'urn:ihe:iti:bppc:2007', 'urn:ihe:iti:bppc-sd:2007', 'urn:ihe:iti:xds-sd:pdf:2008', 'urn:ihe:iti:xds-sd:text:2008', 'urn:ihe:iti:xdw:2011:workflowDoc', 'urn:ihe:iti:dsg:detached:2014', 'urn:ihe:iti:dsg:enveloping:2014', 'urn:ihe:iti:appc:2016:consent', 'urn:ihe:iti:xds:2017:mimeTypeSufficient', 'urn:ihe:lab:xd-lab:2008', 'urn:ihe:rad:TEXT', 'urn:ihe:rad:PDF', 'urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013', 'urn:ihe:card:imaging:2011', 'urn:ihe:card:CRC:2012', 'urn:ihe:card:EPRC-IE:2014', 'urn:ihe:dent:TEXT', 'urn:ihe:dent:PDF', 'urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013', 'urn:ihe:pat:apsr:all:2010', 'urn:ihe:pat:apsr:cancer:all:2010', 'urn:ihe:pat:apsr:cancer:breast:2010', 'urn:ihe:pat:apsr:cancer:colon:2010', 'urn:ihe:pat:apsr:cancer:prostate:2010', 'urn:ihe:pat:apsr:cancer:thyroid:2010', 'urn:ihe:pat:apsr:cancer:lung:2010', 'urn:ihe:pat:apsr:cancer:skin:2010', 'urn:ihe:pat:apsr:cancer:kidney:2010', 'urn:ihe:pat:apsr:cancer:cervix:2010', 'urn:ihe:pat:apsr:cancer:endometrium:2010', 'urn:ihe:pat:apsr:cancer:ovary:2010', 'urn:ihe:pat:apsr:cancer:esophagus:2010', 'urn:ihe:pat:apsr:cancer:stomach:2010', 'urn:ihe:pat:apsr:cancer:liver:2010', 'urn:ihe:pat:apsr:cancer:pancreas:2010', 'urn:ihe:pat:apsr:cancer:testis:2010', 'urn:ihe:pat:apsr:cancer:urinary_bladder:2010', 'urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010', 'urn:ihe:pat:apsr:cancer:pharynx:2010', 'urn:ihe:pat:apsr:cancer:salivary_gland:2010', 'urn:ihe:pat:apsr:cancer:larynx:2010', 'urn:ihe:pharm:pre:2010', 'urn:ihe:pharm:padv:2010', 'urn:ihe:pharm:dis:2010', 'urn:ihe:pharm:pml:2013', 'urn:hl7-org:sdwg:ccda-structuredBody:1.1', 'urn:hl7-org:sdwg:ccda-nonXMLBody:1.1', 'urn:hl7-org:sdwg:ccda-structuredBody:2.1', 'urn:hl7-org:sdwg:ccda-nonXMLBody:2.1'], 'http://hl7.org/fhir/resource-types'=>['Resource', 'Binary', 'Bundle', 'DomainResource', 'Account', 'ActivityDefinition', 'AdministrableProductDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'BiologicallyDerivedProduct', 'BodyStructure', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Citation', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus', 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription', 'Parameters'], 'urn:ietf:rfc:3986'=>['http://hl7.org/fhir/StructureDefinition/lipidprofile'], 'urn:ietf:bcp:13'=>['application/hl7-cda+xml']}, 'type'=>'Coding', 'path'=>'Provision.class', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-content-class'}},
          'code' => {'valid_codes'=>{'http://loinc.org'=>['1-8', '10-9', '100-8', '1000-9', '10000-8', '100002-5', '100003-3', '100004-1', '100005-8', '100006-6', '100007-4', '100008-2', '100009-0', '10001-6', '100010-8', '100011-6', '100012-4', '100013-2', '100014-0', '100015-7', '100016-5', '100017-3', '100018-1', '100019-9', '10002-4', '100020-7', '100021-5', '100022-3', '100023-1', '100024-9', '100025-6', '100026-4', '100027-2', '100028-0', '100029-8', '10003-2', '100030-6', '100031-4', '100032-2', '100033-0', '100034-8', '100035-5', '100036-3', '100037-1', '100038-9', '100039-7', '10004-0', '100040-5', '100041-3', '100042-1', '100043-9', '100044-7', '100045-4', '100046-2', '100047-0', '100048-8', '100049-6', '10005-7', '100050-4', '100051-2', '100052-0', '100053-8', '100054-6', '100055-3', '100056-1', '100057-9', '100058-7', '100059-5', '10006-5', '100060-3', '100061-1', '100062-9', '100063-7', '100064-5', '100065-2', '100066-0', '100067-8', '100068-6', '100069-4', '10007-3', '100070-2', '100071-0', '100072-8', '100073-6', '100074-4', '100075-1', '100076-9', '100077-7', '100078-5', '100079-3', '10008-1', '100080-1', '100081-9', '100082-7', '100083-5', '100084-3', '100085-0', '100086-8', '100087-6', '100088-4', '100089-2', '10009-9', '100090-0', '100091-8', '100092-6', '100093-4', '100094-2', '100095-9', '100096-7', '100097-5', '100098-3', '100099-1', '1001-7', '10010-7', '100100-7', '100101-5', '100102-3', '100103-1', '100104-9', '100105-6', '100106-4', '100107-2', '100108-0', '100109-8', '10011-5', '100110-6', '100111-4', '100112-2', '100113-0', '100114-8', '100115-5', '100116-3', '100117-1', '100118-9', '100119-7', '10012-3', '100120-5', '100121-3', '100122-1', '100123-9', '100124-7', '100125-4', '100126-2', '100127-0', '100128-8', '100129-6', '10013-1', '100130-4', '100131-2', '100132-0', '100133-8', '100134-6', '100135-3', '100136-1', '100137-9', '100138-7', '100139-5', '10014-9', '100140-3', '100141-1', '100142-9', '100143-7', '100144-5', '100145-2', '100146-0', '100147-8', '100148-6', '100149-4', '10015-6', '100150-2', '100151-0', '100152-8', '100153-6', '100154-4', '100155-1', '100156-9', '100157-7', '10016-4', '10017-2', '10018-0', '10019-8', '1002-5', '10020-6', '10021-4', '10022-2', '10023-0', '10024-8', '10025-5', '10026-3', '10027-1', '10028-9', '10029-7', '1003-3', '10030-5', '10031-3', '10032-1', '10033-9', '10034-7', '10035-4', '10036-2', '10037-0', '10038-8', '10039-6', '1004-1', '10040-4', '10041-2', '10042-0', '10043-8', '10044-6', '10045-3', '10046-1', '10047-9', '10048-7', '10049-5', '1005-8', '10050-3', '10051-1', '10052-9', '10053-7', '10054-5', '10055-2', '10056-0', '10057-8', '10058-6', '10059-4', '1006-6', '10060-2', '10061-0', '10062-8', '10063-6', '10064-4', '10065-1', '10066-9', '10067-7', '10068-5', '10069-3', '1007-4', '10070-1', '10071-9', '10072-7', '10073-5', '10074-3', '10075-0', '10076-8', '10077-6', '10078-4', '10079-2', '1008-2', '10080-0', '10081-8', '10082-6', '10083-4', '10084-2', '10085-9', '10086-7', '10087-5', '10088-3', '10089-1', '1009-0', '10090-9', '10091-7', '10092-5', '10093-3', '10094-1', '10095-8', '10096-6', '10097-4', '10098-2', '10099-0', '101-6', '1010-8', '10100-6', '10101-4', '10102-2', '10103-0', '10104-8', '10105-5', '10106-3', '10107-1', '10108-9', '10109-7', '1011-6', '10110-5', '10111-3', '10112-1', '10113-9', '10114-7', '10115-4', '10116-2', '10117-0', '10118-8', '10119-6', '1012-4', '10120-4', '10121-2', '10122-0', '10123-8', '10124-6', '10125-3', '10126-1', '10127-9', '10128-7', '10129-5', '1013-2', '10130-3', '10131-1', '10132-9', '10133-7', '10134-5', '10135-2', '10136-0', '10137-8', '10138-6', '10139-4', '1014-0', '10140-2', '10141-0', '10142-8', '10143-6', '10144-4', '10145-1', '10146-9', '10147-7', '10148-5', '10149-3', '1015-7', '10150-1', '10151-9', '10152-7', '10153-5', '10154-3', '10155-0', '10156-8', '10157-6', '10158-4', '10159-2', '1016-5', '10160-0', '10161-8', '10162-6', '10163-4', '10164-2', '10165-9', '10166-7', '10167-5', '10168-3', '10169-1', '1017-3', '10170-9', '10171-7', '10172-5', '10173-3', '10174-1', '10175-8', '10176-6', '10177-4', '10178-2', '10179-0', '1018-1', '10180-8', '10181-6', '10182-4', '10183-2', '10184-0', '10185-7', '10186-5', '10187-3', '10188-1', '10189-9', '1019-9', '10190-7', '10191-5', '10192-3', '10193-1', '10194-9', '10195-6', '10196-4', '10197-2', '10198-0', '10199-8', '102-4', '1020-7', '10200-4', '10201-2', '10202-0', '10203-8', '10204-6', '10205-3', '10206-1', '10207-9', '10208-7', '10209-5', '1021-5', '10210-3', '10211-1', '10212-9', '10213-7', '10214-5', '10215-2', '10216-0', '10217-8', '10218-6', '10219-4', '1022-3', '10220-2', '10221-0', '10222-8', '10223-6', '10224-4', '10225-1', '10226-9', '10227-7', '10228-5', '10229-3', '1023-1', '10230-1', '10231-9', '10232-7', '10233-5', '10234-3', '10235-0', '10236-8', '10237-6', '10238-4', '10239-2', '1024-9', '10240-0', '10241-8', '10242-6', '10243-4', '10244-2', '10245-9', '10246-7', '10247-5', '10248-3', '10249-1', '1025-6', '10250-9', '10251-7', '10252-5', '10253-3', '10254-1', '10255-8', '10256-6', '10257-4', '10258-2', '10259-0', '1026-4', '10260-8', '10261-6', '10262-4', '10263-2', '10264-0', '10265-7', '10266-5', '10267-3', '10268-1', '10269-9', '1027-2', '10270-7', '10271-5', '10272-3', '10273-1', '10274-9', '10275-6', '10276-4', '10277-2', '10278-0', '10279-8', '1028-0', '10280-6', '10281-4', '10282-2', '10283-0', '10284-8', '10285-5', '10286-3', '10287-1', '10288-9', '10289-7', '1029-8', '10290-5', '10291-3', '10292-1', '10293-9', '10294-7', '10295-4', '10296-2', '10297-0', '10298-8', '10299-6', '103-2', '1030-6', '10300-2', '10301-0', '10302-8', '10303-6', '10304-4', '10305-1', '10306-9', '10307-7', '10308-5', '10309-3', '1031-4', '10310-1', '10311-9', '10312-7', '10313-5', '10314-3', '10315-0', '10316-8', '10317-6', '10318-4', '10319-2', '1032-2', '10320-0', '10321-8', '10322-6', '10323-4', '10324-2', '10325-9', '10326-7', '10327-5', '10328-3', '10329-1', '1033-0', '10330-9', '10331-7', '10332-5', '10333-3', '10334-1', '10335-8', '10336-6', '10337-4', '10338-2', '10339-0', '1034-8', '10340-8', '10341-6', '10342-4', '10343-2', '10344-0', '10345-7', '10346-5', '10347-3', '10348-1', '10349-9', '1035-5', '10350-7', '10351-5', '10352-3', '10353-1', '10354-9', '10355-6', '10356-4', '10357-2', '10358-0', '10359-8', '1036-3', '10360-6', '10361-4', '10362-2', '10363-0', '10364-8', '10365-5', '10366-3', '10367-1', '10368-9', '10369-7', '1037-1', '10370-5', '10371-3', '10372-1', '10373-9', '10374-7', '10375-4', '10376-2', '10377-0', '10378-8', '10379-6', '1038-9', '10380-4', '10381-2', '10382-0', '10383-8', '10384-6', '10385-3', '10386-1', '10387-9', '10388-7', '10389-5', '1039-7', '10390-3', '10391-1', '10392-9', '10393-7', '10394-5', '10395-2', '10396-0', '10397-8', '10398-6', '10399-4', '104-0', '1040-5', '10400-0', '10401-8', '10402-6', '10403-4', '10404-2', '10405-9', '10406-7', '10407-5', '10408-3', '10409-1', '1041-3', '10410-9', '10411-7', '10412-5', '10413-3', '10414-1', '10415-8', '10416-6', '10417-4', '10418-2', '10419-0', '1042-1', '10420-8', '10421-6', '10422-4', '10423-2', '10424-0', '10425-7', '10426-5', '10427-3', '10428-1', '10429-9', '1043-9', '10430-7', '10431-5', '10432-3', '10433-1', '10434-9', '10435-6', '10436-4', '10437-2', '10438-0', '10439-8', '1044-7', '10440-6', '10441-4', '10442-2', '10443-0', '10444-8', '10445-5', '10446-3', '10447-1', '10448-9', '10449-7', '1045-4', '10450-5', '10451-3', '10452-1', '10453-9', '10454-7', '10455-4', '10456-2', '10457-0', '10458-8', '10459-6', '1046-2', '10460-4', '10461-2', '10462-0', '10463-8', '10464-6', '10465-3', '10466-1', '10467-9', '10468-7', '10469-5', '1047-0', '10470-3', '10471-1', '10472-9', '10473-7', '10474-5', '10475-2', '10476-0', '10477-8', '10478-6', '10479-4', '1048-8', '10480-2', '10481-0', '10482-8', '10483-6', '10484-4', '10485-1', '10486-9', '10487-7', '10488-5', '10489-3', '1049-6', '10490-1', '10491-9', '10492-7', '10493-5', '10494-3', '10495-0', '10496-8', '10497-6', '10498-4', '10499-2', '105-7', '1050-4', '10500-7', '10501-5', '10502-3', '10503-1', '10504-9', '10505-6', '10506-4', '10507-2', '10508-0', '10509-8', '1051-2', '10510-6', '10511-4', '10512-2', '10513-0', '10514-8', '10515-5', '10516-3', '10517-1', '10518-9', '10519-7', '1052-0', '10520-5', '10521-3', '10522-1', '10523-9', '10524-7', '10525-4', '10526-2', '10527-0', '10528-8', '10529-6', '1053-8', '10530-4', '10531-2', '10532-0', '10533-8', '10534-6', '10535-3', '10536-1', '10537-9', '10538-7', '10539-5', '1054-6', '10540-3', '10541-1', '10542-9', '10543-7', '10544-5', '10545-2', '10546-0', '10547-8', '10548-6', '10549-4', '1055-3', '10550-2', '10551-0', '10552-8', '10553-6', '10554-4', '10555-1', '10556-9', '10557-7', '10558-5', '10559-3', '1056-1', '10560-1', '10561-9', '10562-7', '10563-5', '10564-3', '10565-0', '10566-8', '10567-6', '10568-4', '10569-2', '1057-9', '10570-0', '10571-8', '10572-6', '10573-4', '10574-2', '10575-9', '10576-7', '10577-5', '10578-3', '10579-1', '1058-7', '10580-9', '10581-7', '10582-5', '10583-3', '10584-1', '10585-8', '10586-6', '10587-4', '10588-2', '10589-0', '1059-5', '10590-8', '10591-6', '10592-4', '10593-2', '10594-0', '10595-7', '10596-5', '10597-3', '10598-1', '10599-9', '106-5', '1060-3', '10600-5', '10601-3', '10602-1', '10603-9', '10604-7', '10605-4', '10606-2', '10607-0', '10608-8', '10609-6', '1061-1', '10610-4', '10611-2', '10612-0', '10613-8', '10614-6', '10615-3', '10616-1', '10617-9', '10618-7', '10619-5', '1062-9', '10620-3', '10621-1', '10622-9', '10623-7', '10624-5', '10625-2', '10626-0', '10627-8', '10628-6', '10629-4', '1063-7', '10630-2', '10631-0', '10632-8', '10633-6', '10634-4', '10635-1', '10636-9', '10637-7', '10638-5', '10639-3', '1064-5', '10640-1', '10641-9', '10642-7', '10643-5', '10644-3', '10645-0', '10646-8', '10647-6', '10648-4', '10649-2', '1065-2', '10650-0', '10651-8', '10652-6', '10653-4', '10654-2', '10655-9', '10656-7', '10657-5', '10658-3', '10659-1', '1066-0', '10660-9', '10661-7', '10662-5', '10663-3', '10664-1', '10665-8', '10666-6', '10667-4', '10668-2', '10669-0', '1067-8', '10670-8', '10671-6', '10672-4', '10673-2', '10674-0', '10675-7', '10676-5', '10677-3', '10678-1', '10679-9', '1068-6', '10680-7', '10681-5', '10682-3', '10683-1', '10684-9', '10685-6', '10686-4', '10687-2', '10688-0', '10689-8', '1069-4', '10690-6', '10691-4', '10692-2', '10693-0', '10694-8', '10695-5', '10696-3', '10697-1', '10698-9', '10699-7', '107-3', '1070-2', '10700-3', '10701-1', '10702-9', '10703-7', '10704-5', '10705-2', '10706-0', '10707-8', '10708-6', '10709-4', '1071-0', '10710-2', '10711-0', '10712-8', '10713-6', '10714-4', '10715-1', '10716-9', '10717-7', '10718-5', '10719-3', '1072-8', '10720-1', '10721-9', '10722-7', '10723-5', '10724-3', '10725-0', '10726-8', '10727-6', '10728-4', '10729-2', '1073-6', '10730-0', '10731-8', '10732-6', '10733-4', '10734-2', '10735-9', '10736-7', '10737-5', '10738-3', '10739-1', '1074-4', '10740-9', '10741-7', '10742-5', '10743-3', '10744-1', '10745-8', '10746-6', '10747-4', '10748-2', '10749-0', '1075-1', '10750-8', '10751-6', '10752-4', '10753-2', '10754-0', '10755-7', '10756-5', '10757-3']}, 'type'=>'CodeableConcept', 'path'=>'Provision.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-content-code'}},
          'dataPeriod' => {'type'=>'Period', 'path'=>'Provision.dataPeriod', 'min'=>0, 'max'=>1},
          'data' => {'type'=>'Consent::Provision::Data', 'path'=>'Provision.data', 'min'=>0, 'max'=>Float::INFINITY},
          'provision' => {'type'=>'Consent::Provision', 'path'=>'Provision.provision', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Actor < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Actor.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Actor._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Actor.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Actor.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsignertypecodes'=>['AMENDER', 'COAUTH', 'CONT', 'EVTWIT', 'PRIMAUTH', 'REVIEWER', 'SOURCE', 'TRANS', 'VALID', 'VERF'], 'http://terminology.hl7.org/CodeSystem/v3-RoleClass'=>['AFFL', 'AGNT', 'ASSIGNED', 'CLAIM', 'COVPTY', 'DEPEN', 'ECON', 'EMP', 'GUARD', 'INVSBJ', 'NAMED', 'NOK', 'PAT', 'PROV', 'NOT'], 'http://terminology.hl7.org/CodeSystem/v3-RoleCode'=>['CLASSIFIER', 'CONSENTER', 'CONSWIT', 'COPART', 'DECLASSIFIER', 'DELEGATEE', 'DELEGATOR', 'DOWNGRDER', 'DPOWATT', 'EXCEST', 'GRANTEE', 'GRANTOR', 'GT', 'GUADLTM', 'HPOWATT', 'INTPRTER', 'POWATT', 'RESPRSN', 'SPOWATT', '_CitizenRoleType', 'CAS', 'CASM', 'CN', 'CNRP', 'CNRPM', 'CPCA', 'CRP', 'CRPM'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction'=>['AUCG', 'AULR', 'AUTM', 'AUWA', 'PROMSK'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['AUT', 'CST', 'INF', 'IRCP', 'LA', 'TRC', 'WIT'], 'http://terminology.hl7.org/CodeSystem/extra-security-role-type'=>['authserver', 'datacollector', 'dataprocessor', 'datasubject', 'humanuser'], 'http://dicom.nema.org/resources/ontology/DCM'=>['110150', '110151', '110152', '110153', '110154', '110155']}, 'type'=>'CodeableConcept', 'path'=>'Actor.role', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/security-role-type'}},
            'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'Actor.reference', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :role              # 1-1 CodeableConcept
          attr_accessor :reference         # 1-1 Reference(Device|Group|CareTeam|Organization|Patient|Practitioner|RelatedPerson|PractitionerRole)
        end

        class Data < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Data.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Data._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Data.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Data.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'meaning' => {'valid_codes'=>{'http://hl7.org/fhir/consent-data-meaning'=>['instance', 'related', 'dependents', 'authoredby']}, 'type'=>'code', 'path'=>'Data.meaning', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-data-meaning'}},
            '_meaning' => {'type'=>'Element', 'path'=>'Data._meaning', 'min'=>0, 'max'=>1},
            'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Data.reference', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :meaning           # 1-1 code
          attr_accessor :_meaning          # 0-1 Element
          attr_accessor :reference         # 1-1 Reference(Resource)
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :period            # 0-1 Period
        attr_accessor :actor             # 0-* [ Consent::Provision::Actor ]
        attr_accessor :action            # 0-* [ CodeableConcept ]
        attr_accessor :securityLabel     # 0-* [ Coding ]
        attr_accessor :purpose           # 0-* [ Coding ]
        attr_accessor :local_class       # 0-* [ Coding ]
        attr_accessor :code              # 0-* [ CodeableConcept ]
        attr_accessor :dataPeriod        # 0-1 Period
        attr_accessor :data              # 0-* [ Consent::Provision::Data ]
        attr_accessor :provision         # 0-* [ Consent::Provision ]
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
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :scope             # 1-1 CodeableConcept
      attr_accessor :category          # 1-* [ CodeableConcept ]
      attr_accessor :patient           # 0-1 Reference(Patient)
      attr_accessor :dateTime          # 0-1 dateTime
      attr_accessor :_dateTime         # 0-1 Element
      attr_accessor :performer         # 0-* [ Reference(Organization|Patient|Practitioner|RelatedPerson|PractitionerRole) ]
      attr_accessor :organization      # 0-* [ Reference(Organization) ]
      attr_accessor :sourceAttachment  # 0-1 Attachment
      attr_accessor :sourceReference   # 0-1 Reference(Consent|DocumentReference|Contract|QuestionnaireResponse)
      attr_accessor :policy            # 0-* [ Consent::Policy ]
      attr_accessor :policyRule        # 0-1 CodeableConcept
      attr_accessor :verification      # 0-* [ Consent::Verification ]
      attr_accessor :provision         # 0-1 Consent::Provision

      def resourceType
        'Consent'
      end
    end
  end
end