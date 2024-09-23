module FHIR
  module R4B
    class Meta < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'Meta.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Meta._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Meta.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'versionId' => {'type'=>'id', 'path'=>'Meta.versionId', 'min'=>0, 'max'=>1},
        '_versionId' => {'type'=>'Element', 'path'=>'Meta._versionId', 'min'=>0, 'max'=>1},
        'lastUpdated' => {'type'=>'instant', 'path'=>'Meta.lastUpdated', 'min'=>0, 'max'=>1},
        '_lastUpdated' => {'type'=>'Element', 'path'=>'Meta._lastUpdated', 'min'=>0, 'max'=>1},
        'source' => {'type'=>'uri', 'path'=>'Meta.source', 'min'=>0, 'max'=>1},
        '_source' => {'type'=>'Element', 'path'=>'Meta._source', 'min'=>0, 'max'=>1},
        'profile' => {'type'=>'canonical', 'path'=>'Meta.profile', 'min'=>0, 'max'=>Float::INFINITY},
        '_profile' => {'type'=>'Element', 'path'=>'Meta._profile', 'min'=>0, 'max'=>Float::INFINITY},
        'security' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-Confidentiality'=>['U', 'L', 'M', 'N', 'R', 'V'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_InformationSensitivityPolicy', '_ActInformationSensitivityPolicy', 'ETH', 'GDIS', 'HIV', 'MST', 'PREGNANT', 'SCA', 'SDV', 'SEX', 'SPI', 'BH', 'COGN', 'DVD', 'EMOTDIS', 'MH', 'PSY', 'PSYTHPN', 'SUD', 'ETHUD', 'OPIOIDUD', 'STD', 'TBOO', 'VIO', 'IDS', 'SICKLE', '_EntitySensitivityPolicyType', 'DEMO', 'DOB', 'GENDER', 'LIVARG', 'MARST', 'PATLOC', 'RACE', 'REL', '_RoleInformationSensitivityPolicy', 'B', 'EMPL', 'LOCIS', 'SSP', 'ADOL', 'CEL', 'VIP', 'DIA', 'DRGIS', 'EMP', 'PDS', 'PHY', 'PRS', 'COMPT', 'ACOCOMPT', 'CDSSCOMPT', 'CTCOMPT', 'FMCOMPT', 'HRCOMPT', 'LRCOMPT', 'PACOMPT', 'RESCOMPT', 'RMGTCOMPT', 'SecurityPolicy', 'AUTHPOL', 'ACCESSCONSCHEME', 'DELEPOL', 'ObligationPolicy', 'ANONY', 'AOD', 'AUDIT', 'AUDTR', 'CPLYPOL', 'CPLYCC', 'CPLYCD', 'CPLYCUI', 'CPLYJPP', 'CPLYJSP', 'CPLYOPP', 'CPLYOSP', 'DECLASSIFYLABEL', 'DEID', 'DELAU', 'DOWNGRDLABEL', 'DRIVLABEL', 'ENCRYPT', 'ENCRYPTR', 'ENCRYPTT', 'ENCRYPTU', 'HUAPRV', 'LABEL', 'MASK', 'MINEC', 'PERSISTLABEL', 'PRIVMARK', 'CUIMark', 'PSEUD', 'REDACT', 'UPGRDLABEL', 'PrivacyMark', 'ControlledUnclassifiedInformation', 'CONTROLLED', 'CUI', 'CUIHLTH', 'CUIHLTHP', 'CUIP', 'CUIPRVCY', 'CUIPRVCYP', 'CUISP-HLTH', 'CUISP-HLTHP', 'CUISP-PRVCY', 'CUISP-PRVCYP', 'UUI', 'SecurityLabelMark', 'ConfidentialMark', 'COPYMark', 'DeliverToAddresseeOnlyMark', 'RedisclosureProhibitionMark', 'RestrictedConfidentialityMark', 'DRAFTMark', 'RefrainPolicy', 'NOAUTH', 'NOCOLLECT', 'NODSCLCD', 'NODSCLCDS', 'NOINTEGRATE', 'NOLIST', 'NOMOU', 'NOORGPOL', 'NOPAT', 'NOPERSISTP', 'NORDSCLCD', 'NORDSLCD', 'NORDSCLCDS', 'NORDSCLW', 'NORELINK', 'NOREUSE', 'NOVIP', 'ORCON'], 'http://terminology.hl7.org/CodeSystem/v3-ObservationValue'=>['_SECALTINTOBV', 'ABSTRED', 'AGGRED', 'ANONYED', 'MAPPED', 'MASKED', 'PSEUDED', 'REDACTED', 'SUBSETTED', 'SYNTAC', 'TRSLT', 'VERSIONED', '_SECDATINTOBV', 'CRYTOHASH', 'DIGSIG', '_SECINTCONOBV', 'HRELIABLE', 'RELIABLE', 'UNCERTREL', 'UNRELIABLE', '_SECINTPRVOBV', '_SECINTPRVABOBV', 'CLINAST', 'DEVAST', 'HCPAST', 'PACQAST', 'PATAST', 'PAYAST', 'PROAST', 'SDMAST', '_SECINTPRVRBOBV', 'CLINRPT', 'DEVRPT', 'HCPRPT', 'PACQRPT', 'PATRPT', 'PAYRPT', 'PRORPT', 'SDMRPT', '_SECINTSTOBV', '_ActCoverageAssessmentObservationValue', '_ActFinancialStatusObservationValue', 'ASSET', 'ANNUITY', 'PROP', 'RETACCT', 'TRUST', 'INCOME', 'CHILD', 'DISABL', 'INVEST', 'PAY', 'RETIRE', 'SPOUSAL', 'SUPPLE', 'TAX', 'LIVEXP', 'CLOTH', 'FOOD', 'HEALTH', 'HOUSE', 'LEGAL', 'MORTG', 'RENT', 'SUNDRY', 'TRANS', 'UTIL', 'ELSTAT', 'ADOPT', 'BTHCERT', 'CCOC', 'DRLIC', 'FOSTER', 'MEMBER', 'MIL', 'MRGCERT', 'PASSPORT', 'STUDENRL', 'HLSTAT', 'DISABLE', 'DRUG', 'IVDRG', 'PGNT', 'LIVDEP', 'RELDEP', 'SPSDEP', 'URELDEP', 'LIVSIT', 'ALONE', 'DEPCHD', 'DEPSPS', 'DEPYGCHD', 'FAM', 'RELAT', 'SPS', 'UNREL', 'SOECSTAT', 'ABUSE', 'HMLESS', 'ILGIM', 'INCAR', 'PROB', 'REFUG', 'UNEMPL', '_AllergyTestValue', 'A0', 'A1', 'A2', 'A3', 'A4', '_CompositeMeasureScoring', 'ALLORNONESCR', 'LINEARSCR', 'OPPORSCR', 'WEIGHTSCR', '_CoverageLimitObservationValue', '_CoverageLevelObservationValue', 'ADC', 'CHD', 'DEP', 'DP', 'ECH', 'FLY', 'IND', 'SSP', '_CoverageItemLimitObservationValue', '_CoverageLocationLimitObservationValue', '_CriticalityObservationValue', 'CRITH', 'CRITL', 'CRITU', '_EmploymentStatus', 'Employed', 'NotInLaborForce', 'Unemployed', '_GeneticObservationValue', 'Homozygote', '_MeasurementImprovementNotation', 'DecrIsImp', 'IncrIsImp', '_ObservationMeasureScoring', 'COHORT', 'CONTVAR', 'PROPOR', 'RATIO', '_ObservationMeasureType', 'COMPOSITE', 'EFFICIENCY', 'EXPERIENCE', 'OUTCOME', 'INTERM-OM', 'PRO-PM', 'PROCESS', 'APPROPRIATE', 'RESOURCE', 'STRUCTURE', '_ObservationPopulationInclusion', 'DENEX', 'DENEXCEP', 'DENOM', 'IP', 'IPP', 'MSRPOPL', 'NUMER', 'NUMEX', '_PartialCompletionScale', 'G', 'LE', 'ME', 'MI', 'N', 'S', '_SecurityObservationValue', '_SECCATOBV', '_SECCLASSOBV', '_SECCONOBV', '_SECINTOBV', 'SECTRSTOBV', 'TRSTACCRDOBV', 'TRSTAGREOBV', 'TRSTCERTOBV', 'TRSTFWKOBV', 'TRSTLOAOBV', 'LOAAN', 'LOAAN1', 'LOAAN2', 'LOAAN3', 'LOAAN4', 'LOAAP', 'LOAAP1', 'LOAAP2', 'LOAAP3', 'LOAAP4', 'LOAAS', 'LOAAS1', 'LOAAS2', 'LOAAS3', 'LOAAS4', 'LOACM', 'LOACM1', 'LOACM2', 'LOACM3', 'LOACM4', 'LOAID', 'LOAID1', 'LOAID2', 'LOAID3', 'LOAID4', 'LOANR', 'LOANR1', 'LOANR2', 'LOANR3', 'LOANR4', 'LOARA', 'LOARA1', 'LOARA2', 'LOARA3', 'LOARA4', 'LOATK', 'LOATK1', 'LOATK2', 'LOATK3', 'LOATK4', 'TRSTMECOBV', '_SeverityObservation', 'H', 'L', 'M', '_SubjectBodyPosition', 'LLD', 'PRN', 'RLD', 'SFWL', 'SIT', 'STN', 'SUP', 'RTRD', 'TRD', '_VerificationOutcomeValue', 'ACT', 'ACTPEND', 'ELG', 'INACT', 'INPNDINV', 'INPNDUPD', 'NELG', '_WorkSchedule', 'DS', 'EMS', 'ES', 'NS', 'RSWN', 'RSWON', 'SS', 'VLS', 'VS', '_AnnotationValue', '_ECGAnnotationValue', '_CommonClinicalObservationValue', '_CommonClinicalObservationAssertionValue', '_CommonClinicalObservationResultValue', '_CoverageChemicalDependencyValue', '_IndividualCaseSafetyReportValueDomains', '_CaseSeriousnessCriteria', '_DeviceManufacturerEvaluationInterpretation', '_DeviceManufacturerEvaluationMethod', '_DeviceManufacturerEvaluationResult', '_PertinentReactionRelatedness', '_ProductCharacterization', '_ReactionActionTaken', '_SubjectReaction', '_SubjectReactionEmphasis', '_SubjectReactionOutcome', '_InjuryObservationValue', '_IntoleranceValue', '_IssueTriggerObservationValue', '_OtherIndicationValue', '_IndicationValue', '_DiagnosisValue', '_SymptomValue'], 'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH'], 'http://terminology.hl7.org/CodeSystem/v3-ActUSPrivacyLaw'=>['_ActUSPrivacyLaw', '42CFRPart2', 'CommonRule', 'HIPAANOPP', 'HIPAAPsyNotes', 'HIPAASelfPay', 'Title38Section7332', 'Title38Part1']}, 'type'=>'Coding', 'path'=>'Meta.security', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/security-labels'}},
        'tag' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/common-tags'=>['actionable']}, 'type'=>'Coding', 'path'=>'Meta.tag', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/common-tags'}}
      }

      attr_accessor :id           # 0-1 string
      attr_accessor :_id          # 0-1 Element
      attr_accessor :extension    # 0-* [ Extension ]
      attr_accessor :versionId    # 0-1 id
      attr_accessor :_versionId   # 0-1 Element
      attr_accessor :lastUpdated  # 0-1 instant
      attr_accessor :_lastUpdated # 0-1 Element
      attr_accessor :source       # 0-1 uri
      attr_accessor :_source      # 0-1 Element
      attr_accessor :profile      # 0-* [ canonical ]
      attr_accessor :_profile     # 0-* [ Element ]
      attr_accessor :security     # 0-* [ Coding ]
      attr_accessor :tag          # 0-* [ Coding ]
    end
  end
end