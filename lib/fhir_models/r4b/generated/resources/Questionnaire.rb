module FHIR
  module R4B
    class Questionnaire < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['code', 'context', 'context-quantity', 'context-type', 'date', 'definition', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'subject-type', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Questionnaire.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Questionnaire._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Questionnaire.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Questionnaire.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Questionnaire._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Questionnaire.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Questionnaire._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Questionnaire.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Questionnaire.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Questionnaire.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Questionnaire.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'Questionnaire.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'Questionnaire._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'Questionnaire.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'Questionnaire.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'Questionnaire._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'Questionnaire.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'Questionnaire._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'Questionnaire.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'Questionnaire._title', 'min'=>0, 'max'=>1},
        'derivedFrom' => {'type'=>'canonical', 'path'=>'Questionnaire.derivedFrom', 'min'=>0, 'max'=>Float::INFINITY},
        '_derivedFrom' => {'type'=>'Element', 'path'=>'Questionnaire._derivedFrom', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'Questionnaire.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Questionnaire._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'Questionnaire.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'Questionnaire._experimental', 'min'=>0, 'max'=>1},
        'subjectType' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Resource', 'Binary', 'Bundle', 'DomainResource', 'Account', 'ActivityDefinition', 'AdministrableProductDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'BiologicallyDerivedProduct', 'BodyStructure', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Citation', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus', 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription', 'Parameters']}, 'type'=>'code', 'path'=>'Questionnaire.subjectType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
        '_subjectType' => {'type'=>'Element', 'path'=>'Questionnaire._subjectType', 'min'=>0, 'max'=>Float::INFINITY},
        'date' => {'type'=>'dateTime', 'path'=>'Questionnaire.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'Questionnaire._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'Questionnaire.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'Questionnaire._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'Questionnaire.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'Questionnaire.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'Questionnaire._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'Questionnaire.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AD-03', 'AD-07', 'AD-04', 'AD-05', 'AD-02', 'AD-06', 'AD-08', 'AE-RK', 'AE-SH', 'AE-FU', 'AE-DU', 'AE-AZ', 'AE-UQ', 'AE-AJ', 'AF-BAM', 'AF-KAB', 'AF-KAP', 'AF-KHO', 'AF-KNR', 'AF-KAN', 'AF-LOG', 'AF-PIA', 'AF-SAM', 'AF-URU', 'AF-BDS', 'AF-FYB', 'AF-JOW', 'AF-KDZ', 'AF-LAG', 'AF-NIM', 'AF-BGL', 'AF-FRA', 'AF-HEL', 'AF-PKA', 'AF-SAR', 'AF-BDG', 'AF-GHA', 'AF-PAN', 'AF-TAK', 'AF-WAR', 'AF-BAL', 'AF-GHO', 'AF-DAY', 'AF-HER', 'AF-NAN', 'AF-NUR', 'AF-PAR', 'AF-ZAB', 'AG-03', 'AG-06', 'AG-10', 'AG-07', 'AG-08', 'AG-05', 'AG-04', 'AG-11', 'AL-11', 'AL-12', 'AL-03', 'AL-09', 'AL-01', 'AL-02', 'AL-08', 'AL-10', 'AL-05', 'AL-06', 'AL-07', 'AL-04', 'AM-AG', 'AM-AV', 'AM-KT', 'AM-GR', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-LO', 'AM-ER', 'AM-VD', 'AM-AR', 'AO-CAB', 'AO-CCU', 'AO-ZAI', 'AO-LNO', 'AO-LSU', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-CNO', 'AO-HUI', 'AO-LUA', 'AO-MAL', 'AO-BGO', 'AO-BGU', 'AO-CNN', 'AO-CUS', 'AO-HUA', 'AO-BIE', 'AR-N', 'AR-S', 'AR-Z', 'AR-A', 'AR-C', 'AR-F', 'AR-B', 'AR-G', 'AR-H', 'AR-P', 'AR-X', 'AR-J', 'AR-T', 'AR-E', 'AR-K', 'AR-V', 'AR-W', 'AR-U', 'AR-D', 'AR-L', 'AR-M', 'AR-Q', 'AR-R', 'AR-Y', 'AT-3', 'AT-4', 'AT-5', 'AT-8', 'AT-1', 'AT-7', 'AT-2', 'AT-6', 'AT-9', 'AU-NT', 'AU-QLD', 'AU-TAS', 'AU-ACT', 'AU-NSW', 'AU-SA', 'AU-WA', 'AU-VIC', 'AZ-ABS', 'AZ-BA', 'AZ-BAL', 'AZ-BAR', 'AZ-GOY', 'AZ-MAS', 'AZ-SKR', 'AZ-SR', 'AZ-XA', 'AZ-XIZ', 'AZ-AGC', 'AZ-AGU', 'AZ-BIL', 'AZ-GA', 'AZ-QAB', 'AZ-SMX', 'AZ-XAC', 'AZ-YAR', 'AZ-ZAN', 'AZ-AGA', 'AZ-FUZ', 'AZ-GAD', 'AZ-LAC', 'AZ-QAX', 'AZ-AGM', 'AZ-DAS', 'AZ-GYG', 'AZ-LA', 'AZ-LAN', 'AZ-OGU', 'AZ-QBA', 'AZ-QUS', 'AZ-SAB', 'AZ-CAB', 'AZ-KUR', 'AZ-SAL', 'AZ-SBN', 'AZ-SM', 'AZ-UCA', 'AZ-XCI', 'AZ-YEV', 'AZ-AGS', 'AZ-AST', 'AZ-BEY', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-LER', 'AZ-MI', 'AZ-NEF', 'AZ-NX', 'AZ-QAZ', 'AZ-SAK', 'AZ-SAT', 'AZ-TAR', 'AZ-XVD', 'AZ-CAL', 'AZ-KAL', 'AZ-QOB', 'AZ-SIY', 'AZ-SUS', 'AZ-ZAQ', 'AZ-ZAR', 'AZ-GOR', 'AZ-NA', 'AZ-QBI', 'AZ-SA', 'AZ-SMI', 'AZ-TOV', 'AZ-YE', 'BA-BRC', 'BA-BIH', 'BA-SRP', 'BB-03', 'BB-05', 'BB-02', 'BB-10', 'BB-11', 'BB-08', 'BB-04', 'BB-09', 'BB-01', 'BB-06', 'BB-07', 'BD-B', 'BD-H', 'BD-A', 'BD-C', 'BD-D', 'BD-E', 'BD-F', 'BD-G', 'BE-WAL', 'BE-BRU', 'BE-VLG', 'BF-05', 'BF-01', 'BF-10', 'BF-02', 'BF-03', 'BF-04', 'BF-06', 'BF-07', 'BF-08', 'BF-09', 'BF-11', 'BF-12', 'BF-13', 'BG-04', 'BG-09', 'BG-15', 'BG-16', 'BG-28', 'BG-13', 'BG-18', 'BG-21', 'BG-22', 'BG-27', 'BG-02', 'BG-14', 'BG-19', 'BG-25', 'BG-03', 'BG-24', 'BG-01', 'BG-10', 'BG-12', 'BG-20', 'BG-23', 'BG-11', 'BG-17', 'BG-05', 'BG-06', 'BG-07', 'BG-08', 'BG-26', 'BH-14', 'BH-13', 'BH-15', 'BH-17', 'BI-BM', 'BI-KR', 'BI-MY', 'BI-KI', 'BI-BR', 'BI-CI', 'BI-GI', 'BI-MA', 'BI-MU', 'BI-NG', 'BI-RY', 'BI-KY', 'BI-MW', 'BI-CA', 'BI-BL', 'BI-RT', 'BI-RM', 'BI-BB', 'BJ-AK', 'BJ-CO', 'BJ-BO', 'BJ-OU', 'BJ-LI', 'BJ-AQ', 'BJ-MO', 'BJ-AL', 'BJ-DO', 'BJ-KO', 'BJ-PL', 'BJ-ZO', 'BN-BM', 'BN-BE', 'BN-TE', 'BN-TU', 'BO-C', 'BO-L', 'BO-B', 'BO-O', 'BO-S', 'BO-P', 'BO-T', 'BO-H', 'BO-N', 'BQ-BO', 'BQ-SA', 'BQ-SE', 'BR-AC', 'BR-AM', 'BR-CE', 'BR-RR', 'BR-GO', 'BR-MG', 'BR-ES', 'BR-AP', 'BR-BA', 'BR-MS', 'BR-PR', 'BR-RN', 'BR-MT', 'BR-PB', 'BR-PE', 'BR-RJ', 'BR-RO', 'BR-SC', 'BR-SP', 'BR-AL', 'BR-DF', 'BR-MA', 'BR-PA', 'BR-PI', 'BR-RS', 'BR-SE', 'BR-TO', 'BS-CO', 'BS-EG', 'BS-HI', 'BS-MI', 'BS-SS', 'BS-SW', 'BS-AK', 'BS-LI', 'BS-BY', 'BS-FP', 'BS-NS', 'BS-RC', 'BS-SO', 'BS-CE', 'BS-CI', 'BS-CS', 'BS-EX', 'BS-IN', 'BS-MC', 'BS-SA', 'BS-GC', 'BS-MG', 'BS-WG', 'BS-BI', 'BS-BP', 'BS-NE', 'BS-NO', 'BS-SE', 'BS-CK', 'BS-HT', 'BS-RI', 'BT-42', 'BT-45', 'BT-12', 'BT-23', 'BT-24', 'BT-21', 'BT-33', 'BT-34', 'BT-31', 'BT-14', 'BT-15', 'BT-44', 'BT-TY', 'BT-13', 'BT-41', 'BT-GA', 'BT-22', 'BT-32', 'BT-43', 'BT-11', 'BW-KL', 'BW-GH', 'BW-NW', 'BW-SO', 'BW-KW', 'BW-CH', 'BW-LO', 'BW-SP', 'BW-JW', 'BW-ST', 'BW-FR', 'BW-GA', 'BW-KG', 'BW-CE', 'BW-SE', 'BW-NE', 'BY-VI', 'BY-BR', 'BY-HM', 'BY-HO', 'BY-HR', 'BY-MI', 'BY-MA', 'BZ-OW', 'BZ-CZL', 'BZ-SC', 'BZ-TOL', 'BZ-BZ', 'BZ-CY', 'CA-BC', 'CA-MB', 'CA-NB', 'CA-SK', 'CA-AB', 'CA-ON', 'CA-YT', 'CA-NT', 'CA-NU', 'CA-NL', 'CA-PE', 'CA-NS', 'CA-QC', 'CD-EQ', 'CD-BC', 'CD-SK', 'CD-NK', 'CD-KE', 'CD-KN', 'CD-BU', 'CD-HK', 'CD-HL', 'CD-HU', 'CD-IT', 'CD-KS', 'CD-KC', 'CD-KG', 'CD-KL', 'CD-LO', 'CD-LU', 'CD-MN', 'CD-MO', 'CD-NU', 'CD-SA', 'CD-SU', 'CD-TA', 'CD-TO', 'CD-TU', 'CD-MA', 'CF-HM', 'CF-HS', 'CF-LB', 'CF-AC', 'CF-KB', 'CF-BB', 'CF-MP', 'CF-HK', 'CF-KG', 'CF-MB', 'CF-NM', 'CF-SE', 'CF-VK', 'CF-BGF', 'CF-OP', 'CF-UK', 'CF-BK', 'CG-9', 'CG-15', 'CG-5', 'CG-11', 'CG-BZV', 'CG-16', 'CG-12', 'CG-13', 'CG-7', 'CG-14', 'CG-2', 'CG-8', 'CH-JU', 'CH-LU', 'CH-SO', 'CH-TG', 'CH-BS', 'CH-SZ', 'CH-ZG', 'CH-AG', 'CH-BE', 'CH-FR', 'CH-NE', 'CH-OW', 'CH-TI', 'CH-VD', 'CH-AR', 'CH-GE', 'CH-GL', 'CH-SG', 'CH-GR', 'CH-NW', 'CH-SH', 'CH-ZH', 'CH-AI', 'CH-VS', 'CH-BL', 'CH-UR', 'CI-AB', 'CI-YM', 'CI-BS', 'CI-CM', 'CI-DN', 'CI-GD', 'CI-LC', 'CI-LG', 'CI-MG', 'CI-SM', 'CI-SV', 'CI-VB', 'CI-WR', 'CI-ZZ', 'CL-AN', 'CL-RM', 'CL-TA', 'CL-BI', 'CL-AP', 'CL-AT', 'CL-LL', 'CL-LR', 'CL-ML', 'CL-AR', 'CL-LI', 'CL-AI', 'CL-VS', 'CL-CO', 'CL-MA', 'CM-NW', 'CM-OU', 'CM-AD', 'CM-LT', 'CM-NO', 'CM-CE', 'CM-EN', 'CM-ES', 'CM-SU', 'CM-SW', 'CN-NM', 'CN-GX', 'CN-XZ', 'CN-NX', 'CN-XJ', 'CN-BJ', 'CN-TJ', 'CN-SH', 'CN-CQ', 'CN-HE', 'CN-SX', 'CN-LN', 'CN-JL', 'CN-HL', 'CN-ZJ', 'CN-AH', 'CN-FJ', 'CN-JX', 'CN-SD', 'CN-HA', 'CN-HB', 'CN-HN', 'CN-GD', 'CN-HI', 'CN-SC', 'CN-GZ', 'CN-YN', 'CN-SN', 'CN-GS', 'CN-QH', 'CN-TW', 'CN-HK', 'CN-MO', 'CN-JS', 'CO-BOL', 'CO-MAG', 'CO-MET', 'CO-PUT', 'CO-VID', 'CO-AMA', 'CO-CAL', 'CO-CAU', 'CO-CES', 'CO-DC', 'CO-LAG', 'CO-ARA', 'CO-NSA', 'CO-TOL', 'CO-VAC', 'CO-GUV', 'CO-HUI', 'CO-SUC', 'CO-CAS', 'CO-CHO', 'CO-GUA', 'CO-QUI', 'CO-RIS', 'CO-SAN', 'CO-VAU', 'CO-ANT', 'CO-ATL', 'CO-COR', 'CO-SAP', 'CO-BOY', 'CO-CAQ', 'CO-CUN', 'CO-NAR', 'CR-H', 'CR-L', 'CR-G', 'CR-P', 'CR-A', 'CR-C', 'CR-SJ', 'CU-03', 'CU-07', 'CU-12', 'CU-05', 'CU-11', 'CU-08', 'CU-09', 'CU-10', 'CU-13', 'CU-15', 'CU-16', 'CU-01', 'CU-14', 'CU-99', 'CU-04', 'CU-06', 'CV-B', 'CV-S', 'CY-03', 'CY-06', 'CY-01', 'CY-04', 'CY-05', 'CY-02', 'CZ-42', 'CZ-63', 'CZ-72', 'CZ-31', 'CZ-64', 'CZ-41', 'CZ-52', 'CZ-51', 'CZ-80', 'CZ-71', 'CZ-53', 'CZ-32', 'CZ-20', 'CZ-10', 'DE-BW', 'DE-MV', 'DE-NW', 'DE-SL', 'DE-TH', 'DE-ST', 'DE-HH', 'DE-BB', 'DE-BE', 'DE-BY', 'DE-HB', 'DE-HE', 'DE-NI', 'DE-SH', 'DE-RP', 'DE-SN', 'DJ-OB', 'DJ-AR', 'DJ-DI', 'DJ-DJ', 'DJ-AS', 'DJ-TA', 'DK-82', 'DK-85', 'DK-81', 'DK-84', 'DK-83', 'DM-06', 'DM-08', 'DM-09', 'DM-03', 'DM-02', 'DM-11', 'DM-04', 'DM-10', 'DM-05', 'DM-07', 'DO-33', 'DO-34', 'DO-35', 'DO-36', 'DO-37', 'DO-38', 'DO-39', 'DO-40', 'DO-41', 'DO-42', 'DZ-06', 'DZ-11', 'DZ-13', 'DZ-27', 'DZ-40', 'DZ-03', 'DZ-09', 'DZ-14', 'DZ-15', 'DZ-19', 'DZ-20', 'DZ-35', 'DZ-41', 'DZ-42', 'DZ-44', 'DZ-02', 'DZ-04', 'DZ-05', 'DZ-23', 'DZ-39', 'DZ-01', 'DZ-08', 'DZ-16', 'DZ-28', 'DZ-31', 'DZ-07', 'DZ-24', 'DZ-33', 'DZ-36', 'DZ-38', 'DZ-45', 'DZ-10', 'DZ-21', 'DZ-25', 'DZ-32', 'DZ-43', 'DZ-46', 'DZ-48', 'DZ-17', 'DZ-18', 'DZ-22', 'DZ-30', 'DZ-47', 'DZ-12', 'DZ-26', 'DZ-29', 'DZ-34', 'DZ-37', 'EC-E', 'EC-G', 'EC-X', 'EC-Y', 'EC-A', 'EC-D', 'EC-L', 'EC-O', 'EC-SE', 'EC-Z', 'EC-H', 'EC-SD', 'EC-I', 'EC-M', 'EC-P', 'EC-W', 'EC-C', 'EC-F', 'EC-S', 'EC-U', 'EC-N', 'EC-T', 'EC-B', 'EC-R', 'EE-78', 'EE-49', 'EE-51', 'EE-70', 'EE-84', 'EE-37', 'EE-44', 'EE-57', 'EE-59', 'EE-67', 'EE-74', 'EE-82', 'EE-86', 'EE-65', 'EE-39', 'EG-AST', 'EG-BNS', 'EG-C', 'EG-FYM', 'EG-PTS', 'EG-DT', 'EG-GZ', 'EG-IS', 'EG-SHG', 'EG-BA', 'EG-KB', 'EG-SHR', 'EG-DK', 'EG-LX', 'EG-SIN', 'EG-WAD', 'EG-GH', 'EG-KN', 'EG-MNF', 'EG-SUZ', 'EG-BH', 'EG-MT', 'EG-ALX', 'EG-ASN', 'EG-JS', 'EG-KFS', 'EG-MN', 'ER-GB', 'ER-MA', 'ER-SK', 'ER-DK', 'ER-DU', 'ER-AN', 'ES-CB', 'ES-MC', 'ES-AR', 'ES-AS', 'ES-CE', 'ES-GA', 'ES-RI', 'ES-VC', 'ES-CT', 'ES-IB', 'ES-CM', 'ES-EX', 'ES-MD', 'ES-ML', 'ES-CL', 'ES-CN', 'ES-NC', 'ES-AN', 'ES-PV', 'ET-BE', 'ET-HA', 'ET-SO', 'ET-DD', 'ET-GA', 'ET-AM', 'ET-AA', 'ET-AF', 'ET-OR', 'ET-TI', 'ET-SN', 'FI-06', 'FI-08', 'FI-13', 'FI-18', 'FI-01', 'FI-15', 'FI-14', 'FI-04', 'FI-07', 'FI-09', 'FI-11', 'FI-12', 'FI-19', 'FI-17', 'FI-03', 'FI-05', 'FI-10', 'FI-02', 'FI-16', 'FJ-R', 'FJ-W', 'FJ-N', 'FJ-E', 'FJ-C', 'FM-TRK', 'FM-PNI', 'FM-KSA', 'FM-YAP', 'FR-CP', 'FR-MF', 'FR-NC', 'FR-PM', 'FR-TF', 'FR-WF', 'FR-ARA', 'FR-BFC', 'FR-BRE', 'FR-CVL', 'FR-COR', 'FR-GES', 'FR-HDF', 'FR-IDF', 'FR-NOR', 'FR-NAQ', 'FR-OCC', 'FR-PDL', 'FR-PAC', 'FR-GUA', 'FR-LRE', 'FR-MAY', 'FR-GF', 'FR-MQ', 'FR-BL', 'FR-PF', 'GA-1', 'GA-6', 'GA-7', 'GA-8', 'GA-2', 'GA-4', 'GA-9', 'GA-3', 'GA-5', 'GB-GBN', 'GB-SCT', 'GB-EAW', 'GB-ENG', 'GB-WLS', 'GB-NIR', 'GB-UKM', 'GD-10', 'GD-02', 'GD-05', 'GD-01', 'GD-03', 'GD-06', 'GD-04', 'GE-SK', 'GE-IM', 'GE-SJ', 'GE-GU', 'GE-RL', 'GE-TB', 'GE-KA', 'GE-KK', 'GE-AB', 'GE-AJ', 'GE-MM', 'GE-SZ', 'GH-EP', 'GH-CP', 'GH-NP', 'GH-BA', 'GH-TV', 'GH-UW', 'GH-AH', 'GH-AA', 'GH-UE', 'GH-WP', 'GL-KU', 'GL-SM', 'GL-QA', 'GL-QE', 'GM-M', 'GM-U', 'GM-W', 'GM-L', 'GM-B', 'GM-N', 'GN-M', 'GN-C', 'GN-K', 'GN-L', 'GN-B', 'GN-F', 'GN-D', 'GN-N', 'GQ-I', 'GQ-C', 'GR-H', 'GR-A', 'GR-B', 'GR-F', 'GR-69', 'GR-E', 'GR-K', 'GR-I'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'type'=>'CodeableConcept', 'path'=>'Questionnaire.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'Questionnaire.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'Questionnaire._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'Questionnaire.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'Questionnaire._copyright', 'min'=>0, 'max'=>1},
        'approvalDate' => {'type'=>'date', 'path'=>'Questionnaire.approvalDate', 'min'=>0, 'max'=>1},
        '_approvalDate' => {'type'=>'Element', 'path'=>'Questionnaire._approvalDate', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'type'=>'date', 'path'=>'Questionnaire.lastReviewDate', 'min'=>0, 'max'=>1},
        '_lastReviewDate' => {'type'=>'Element', 'path'=>'Questionnaire._lastReviewDate', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'Questionnaire.effectivePeriod', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://loinc.org'=>['1-8', '10-9', '100-8', '1000-9', '10000-8', '100002-5', '100003-3', '100004-1', '100005-8', '100006-6', '100007-4', '100008-2', '100009-0', '10001-6', '100010-8', '100011-6', '100012-4', '100013-2', '100014-0', '100015-7', '100016-5', '100017-3', '100018-1', '100019-9', '10002-4', '100020-7', '100021-5', '100022-3', '100023-1', '100024-9', '100025-6', '100026-4', '100027-2', '100028-0', '100029-8', '10003-2', '100030-6', '100031-4', '100032-2', '100033-0', '100034-8', '100035-5', '100036-3', '100037-1', '100038-9', '100039-7', '10004-0', '100040-5', '100041-3', '100042-1', '100043-9', '100044-7', '100045-4', '100046-2', '100047-0', '100048-8', '100049-6', '10005-7', '100050-4', '100051-2', '100052-0', '100053-8', '100054-6', '100055-3', '100056-1', '100057-9', '100058-7', '100059-5', '10006-5', '100060-3', '100061-1', '100062-9', '100063-7', '100064-5', '100065-2', '100066-0', '100067-8', '100068-6', '100069-4', '10007-3', '100070-2', '100071-0', '100072-8', '100073-6', '100074-4', '100075-1', '100076-9', '100077-7', '100078-5', '100079-3', '10008-1', '100080-1', '100081-9', '100082-7', '100083-5', '100084-3', '100085-0', '100086-8', '100087-6', '100088-4', '100089-2', '10009-9', '100090-0', '100091-8', '100092-6', '100093-4', '100094-2', '100095-9', '100096-7', '100097-5', '100098-3', '100099-1', '1001-7', '10010-7', '100100-7', '100101-5', '100102-3', '100103-1', '100104-9', '100105-6', '100106-4', '100107-2', '100108-0', '100109-8', '10011-5', '100110-6', '100111-4', '100112-2', '100113-0', '100114-8', '100115-5', '100116-3', '100117-1', '100118-9', '100119-7', '10012-3', '100120-5', '100121-3', '100122-1', '100123-9', '100124-7', '100125-4', '100126-2', '100127-0', '100128-8', '100129-6', '10013-1', '100130-4', '100131-2', '100132-0', '100133-8', '100134-6', '100135-3', '100136-1', '100137-9', '100138-7', '100139-5', '10014-9', '100140-3', '100141-1', '100142-9', '100143-7', '100144-5', '100145-2', '100146-0', '100147-8', '100148-6', '100149-4', '10015-6', '100150-2', '100151-0', '100152-8', '100153-6', '100154-4', '100155-1', '100156-9', '100157-7', '10016-4', '10017-2', '10018-0', '10019-8', '1002-5', '10020-6', '10021-4', '10022-2', '10023-0', '10024-8', '10025-5', '10026-3', '10027-1', '10028-9', '10029-7', '1003-3', '10030-5', '10031-3', '10032-1', '10033-9', '10034-7', '10035-4', '10036-2', '10037-0', '10038-8', '10039-6', '1004-1', '10040-4', '10041-2', '10042-0', '10043-8', '10044-6', '10045-3', '10046-1', '10047-9', '10048-7', '10049-5', '1005-8', '10050-3', '10051-1', '10052-9', '10053-7', '10054-5', '10055-2', '10056-0', '10057-8', '10058-6', '10059-4', '1006-6', '10060-2', '10061-0', '10062-8', '10063-6', '10064-4', '10065-1', '10066-9', '10067-7', '10068-5', '10069-3', '1007-4', '10070-1', '10071-9', '10072-7', '10073-5', '10074-3', '10075-0', '10076-8', '10077-6', '10078-4', '10079-2', '1008-2', '10080-0', '10081-8', '10082-6', '10083-4', '10084-2', '10085-9', '10086-7', '10087-5', '10088-3', '10089-1', '1009-0', '10090-9', '10091-7', '10092-5', '10093-3', '10094-1', '10095-8', '10096-6', '10097-4', '10098-2', '10099-0', '101-6', '1010-8', '10100-6', '10101-4', '10102-2', '10103-0', '10104-8', '10105-5', '10106-3', '10107-1', '10108-9', '10109-7', '1011-6', '10110-5', '10111-3', '10112-1', '10113-9', '10114-7', '10115-4', '10116-2', '10117-0', '10118-8', '10119-6', '1012-4', '10120-4', '10121-2', '10122-0', '10123-8', '10124-6', '10125-3', '10126-1', '10127-9', '10128-7', '10129-5', '1013-2', '10130-3', '10131-1', '10132-9', '10133-7', '10134-5', '10135-2', '10136-0', '10137-8', '10138-6', '10139-4', '1014-0', '10140-2', '10141-0', '10142-8', '10143-6', '10144-4', '10145-1', '10146-9', '10147-7', '10148-5', '10149-3', '1015-7', '10150-1', '10151-9', '10152-7', '10153-5', '10154-3', '10155-0', '10156-8', '10157-6', '10158-4', '10159-2', '1016-5', '10160-0', '10161-8', '10162-6', '10163-4', '10164-2', '10165-9', '10166-7', '10167-5', '10168-3', '10169-1', '1017-3', '10170-9', '10171-7', '10172-5', '10173-3', '10174-1', '10175-8', '10176-6', '10177-4', '10178-2', '10179-0', '1018-1', '10180-8', '10181-6', '10182-4', '10183-2', '10184-0', '10185-7', '10186-5', '10187-3', '10188-1', '10189-9', '1019-9', '10190-7', '10191-5', '10192-3', '10193-1', '10194-9', '10195-6', '10196-4', '10197-2', '10198-0', '10199-8', '102-4', '1020-7', '10200-4', '10201-2', '10202-0', '10203-8', '10204-6', '10205-3', '10206-1', '10207-9', '10208-7', '10209-5', '1021-5', '10210-3', '10211-1', '10212-9', '10213-7', '10214-5', '10215-2', '10216-0', '10217-8', '10218-6', '10219-4', '1022-3', '10220-2', '10221-0', '10222-8', '10223-6', '10224-4', '10225-1', '10226-9', '10227-7', '10228-5', '10229-3', '1023-1', '10230-1', '10231-9', '10232-7', '10233-5', '10234-3', '10235-0', '10236-8', '10237-6', '10238-4', '10239-2', '1024-9', '10240-0', '10241-8', '10242-6', '10243-4', '10244-2', '10245-9', '10246-7', '10247-5', '10248-3', '10249-1', '1025-6', '10250-9', '10251-7', '10252-5', '10253-3', '10254-1', '10255-8', '10256-6', '10257-4', '10258-2', '10259-0', '1026-4', '10260-8', '10261-6', '10262-4', '10263-2', '10264-0', '10265-7', '10266-5', '10267-3', '10268-1', '10269-9', '1027-2', '10270-7', '10271-5', '10272-3', '10273-1', '10274-9', '10275-6', '10276-4', '10277-2', '10278-0', '10279-8', '1028-0', '10280-6', '10281-4', '10282-2', '10283-0', '10284-8', '10285-5', '10286-3', '10287-1', '10288-9', '10289-7', '1029-8', '10290-5', '10291-3', '10292-1', '10293-9', '10294-7', '10295-4', '10296-2', '10297-0', '10298-8', '10299-6', '103-2', '1030-6', '10300-2', '10301-0', '10302-8', '10303-6', '10304-4', '10305-1', '10306-9', '10307-7', '10308-5', '10309-3', '1031-4', '10310-1', '10311-9', '10312-7', '10313-5', '10314-3', '10315-0', '10316-8', '10317-6', '10318-4', '10319-2', '1032-2', '10320-0', '10321-8', '10322-6', '10323-4', '10324-2', '10325-9', '10326-7', '10327-5', '10328-3', '10329-1', '1033-0', '10330-9', '10331-7', '10332-5', '10333-3', '10334-1', '10335-8', '10336-6', '10337-4', '10338-2', '10339-0', '1034-8', '10340-8', '10341-6', '10342-4', '10343-2', '10344-0', '10345-7', '10346-5', '10347-3', '10348-1', '10349-9', '1035-5', '10350-7', '10351-5', '10352-3', '10353-1', '10354-9', '10355-6', '10356-4', '10357-2', '10358-0', '10359-8', '1036-3', '10360-6', '10361-4', '10362-2', '10363-0', '10364-8', '10365-5', '10366-3', '10367-1', '10368-9', '10369-7', '1037-1', '10370-5', '10371-3', '10372-1', '10373-9', '10374-7', '10375-4', '10376-2', '10377-0', '10378-8', '10379-6', '1038-9', '10380-4', '10381-2', '10382-0', '10383-8', '10384-6', '10385-3', '10386-1', '10387-9', '10388-7', '10389-5', '1039-7', '10390-3', '10391-1', '10392-9', '10393-7', '10394-5', '10395-2', '10396-0', '10397-8', '10398-6', '10399-4', '104-0', '1040-5', '10400-0', '10401-8', '10402-6', '10403-4', '10404-2', '10405-9', '10406-7', '10407-5', '10408-3', '10409-1', '1041-3', '10410-9', '10411-7', '10412-5', '10413-3', '10414-1', '10415-8', '10416-6', '10417-4', '10418-2', '10419-0', '1042-1', '10420-8', '10421-6', '10422-4', '10423-2', '10424-0', '10425-7', '10426-5', '10427-3', '10428-1', '10429-9', '1043-9', '10430-7', '10431-5', '10432-3', '10433-1', '10434-9', '10435-6', '10436-4', '10437-2', '10438-0', '10439-8', '1044-7', '10440-6', '10441-4', '10442-2', '10443-0', '10444-8', '10445-5', '10446-3', '10447-1', '10448-9', '10449-7', '1045-4', '10450-5', '10451-3', '10452-1', '10453-9', '10454-7', '10455-4', '10456-2', '10457-0', '10458-8', '10459-6', '1046-2', '10460-4', '10461-2', '10462-0', '10463-8', '10464-6', '10465-3', '10466-1', '10467-9', '10468-7', '10469-5', '1047-0', '10470-3', '10471-1', '10472-9', '10473-7', '10474-5', '10475-2', '10476-0', '10477-8', '10478-6', '10479-4', '1048-8', '10480-2', '10481-0', '10482-8', '10483-6', '10484-4', '10485-1', '10486-9', '10487-7', '10488-5', '10489-3', '1049-6', '10490-1', '10491-9', '10492-7', '10493-5', '10494-3', '10495-0', '10496-8', '10497-6', '10498-4', '10499-2', '105-7', '1050-4', '10500-7', '10501-5', '10502-3', '10503-1', '10504-9', '10505-6', '10506-4', '10507-2', '10508-0', '10509-8', '1051-2', '10510-6', '10511-4', '10512-2', '10513-0', '10514-8', '10515-5', '10516-3', '10517-1', '10518-9', '10519-7', '1052-0', '10520-5', '10521-3', '10522-1', '10523-9', '10524-7', '10525-4', '10526-2', '10527-0', '10528-8', '10529-6', '1053-8', '10530-4', '10531-2', '10532-0', '10533-8', '10534-6', '10535-3', '10536-1', '10537-9', '10538-7', '10539-5', '1054-6', '10540-3', '10541-1', '10542-9', '10543-7', '10544-5', '10545-2', '10546-0', '10547-8', '10548-6', '10549-4', '1055-3', '10550-2', '10551-0', '10552-8', '10553-6', '10554-4', '10555-1', '10556-9', '10557-7', '10558-5', '10559-3', '1056-1', '10560-1', '10561-9', '10562-7', '10563-5', '10564-3', '10565-0', '10566-8', '10567-6', '10568-4', '10569-2', '1057-9', '10570-0', '10571-8', '10572-6', '10573-4', '10574-2', '10575-9', '10576-7', '10577-5', '10578-3', '10579-1', '1058-7', '10580-9', '10581-7', '10582-5', '10583-3', '10584-1', '10585-8', '10586-6', '10587-4', '10588-2', '10589-0', '1059-5', '10590-8', '10591-6', '10592-4', '10593-2', '10594-0', '10595-7', '10596-5', '10597-3', '10598-1', '10599-9', '106-5', '1060-3', '10600-5', '10601-3', '10602-1', '10603-9', '10604-7', '10605-4', '10606-2', '10607-0', '10608-8', '10609-6', '1061-1', '10610-4', '10611-2', '10612-0', '10613-8', '10614-6', '10615-3', '10616-1', '10617-9', '10618-7', '10619-5', '1062-9', '10620-3', '10621-1', '10622-9', '10623-7', '10624-5', '10625-2', '10626-0', '10627-8', '10628-6', '10629-4', '1063-7', '10630-2', '10631-0', '10632-8', '10633-6', '10634-4', '10635-1', '10636-9', '10637-7', '10638-5', '10639-3', '1064-5', '10640-1', '10641-9', '10642-7', '10643-5', '10644-3', '10645-0', '10646-8', '10647-6', '10648-4', '10649-2', '1065-2', '10650-0', '10651-8', '10652-6', '10653-4', '10654-2', '10655-9', '10656-7', '10657-5', '10658-3', '10659-1', '1066-0', '10660-9', '10661-7', '10662-5', '10663-3', '10664-1', '10665-8', '10666-6', '10667-4', '10668-2', '10669-0', '1067-8', '10670-8', '10671-6', '10672-4', '10673-2', '10674-0', '10675-7', '10676-5', '10677-3', '10678-1', '10679-9', '1068-6', '10680-7', '10681-5', '10682-3', '10683-1', '10684-9', '10685-6', '10686-4', '10687-2', '10688-0', '10689-8', '1069-4', '10690-6', '10691-4', '10692-2', '10693-0', '10694-8', '10695-5', '10696-3', '10697-1', '10698-9', '10699-7', '107-3', '1070-2', '10700-3', '10701-1', '10702-9', '10703-7', '10704-5', '10705-2', '10706-0', '10707-8', '10708-6', '10709-4', '1071-0', '10710-2', '10711-0', '10712-8', '10713-6', '10714-4', '10715-1', '10716-9', '10717-7', '10718-5', '10719-3', '1072-8', '10720-1', '10721-9', '10722-7', '10723-5', '10724-3', '10725-0', '10726-8', '10727-6', '10728-4', '10729-2', '1073-6', '10730-0', '10731-8', '10732-6', '10733-4', '10734-2', '10735-9', '10736-7', '10737-5', '10738-3', '10739-1', '1074-4', '10740-9', '10741-7', '10742-5', '10743-3', '10744-1', '10745-8', '10746-6', '10747-4', '10748-2', '10749-0', '1075-1', '10750-8', '10751-6', '10752-4', '10753-2', '10754-0', '10755-7', '10756-5', '10757-3']}, 'type'=>'Coding', 'path'=>'Questionnaire.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/questionnaire-questions'}},
        'item' => {'type'=>'Questionnaire::Item', 'path'=>'Questionnaire.item', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Item < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Item.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Item._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Item.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Item.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'linkId' => {'type'=>'string', 'path'=>'Item.linkId', 'min'=>1, 'max'=>1},
          '_linkId' => {'type'=>'Element', 'path'=>'Item._linkId', 'min'=>0, 'max'=>1},
          'definition' => {'type'=>'uri', 'path'=>'Item.definition', 'min'=>0, 'max'=>1},
          '_definition' => {'type'=>'Element', 'path'=>'Item._definition', 'min'=>0, 'max'=>1},
          'code' => {'valid_codes'=>{'http://loinc.org'=>['1-8', '10-9', '100-8', '1000-9', '10000-8', '100002-5', '100003-3', '100004-1', '100005-8', '100006-6', '100007-4', '100008-2', '100009-0', '10001-6', '100010-8', '100011-6', '100012-4', '100013-2', '100014-0', '100015-7', '100016-5', '100017-3', '100018-1', '100019-9', '10002-4', '100020-7', '100021-5', '100022-3', '100023-1', '100024-9', '100025-6', '100026-4', '100027-2', '100028-0', '100029-8', '10003-2', '100030-6', '100031-4', '100032-2', '100033-0', '100034-8', '100035-5', '100036-3', '100037-1', '100038-9', '100039-7', '10004-0', '100040-5', '100041-3', '100042-1', '100043-9', '100044-7', '100045-4', '100046-2', '100047-0', '100048-8', '100049-6', '10005-7', '100050-4', '100051-2', '100052-0', '100053-8', '100054-6', '100055-3', '100056-1', '100057-9', '100058-7', '100059-5', '10006-5', '100060-3', '100061-1', '100062-9', '100063-7', '100064-5', '100065-2', '100066-0', '100067-8', '100068-6', '100069-4', '10007-3', '100070-2', '100071-0', '100072-8', '100073-6', '100074-4', '100075-1', '100076-9', '100077-7', '100078-5', '100079-3', '10008-1', '100080-1', '100081-9', '100082-7', '100083-5', '100084-3', '100085-0', '100086-8', '100087-6', '100088-4', '100089-2', '10009-9', '100090-0', '100091-8', '100092-6', '100093-4', '100094-2', '100095-9', '100096-7', '100097-5', '100098-3', '100099-1', '1001-7', '10010-7', '100100-7', '100101-5', '100102-3', '100103-1', '100104-9', '100105-6', '100106-4', '100107-2', '100108-0', '100109-8', '10011-5', '100110-6', '100111-4', '100112-2', '100113-0', '100114-8', '100115-5', '100116-3', '100117-1', '100118-9', '100119-7', '10012-3', '100120-5', '100121-3', '100122-1', '100123-9', '100124-7', '100125-4', '100126-2', '100127-0', '100128-8', '100129-6', '10013-1', '100130-4', '100131-2', '100132-0', '100133-8', '100134-6', '100135-3', '100136-1', '100137-9', '100138-7', '100139-5', '10014-9', '100140-3', '100141-1', '100142-9', '100143-7', '100144-5', '100145-2', '100146-0', '100147-8', '100148-6', '100149-4', '10015-6', '100150-2', '100151-0', '100152-8', '100153-6', '100154-4', '100155-1', '100156-9', '100157-7', '10016-4', '10017-2', '10018-0', '10019-8', '1002-5', '10020-6', '10021-4', '10022-2', '10023-0', '10024-8', '10025-5', '10026-3', '10027-1', '10028-9', '10029-7', '1003-3', '10030-5', '10031-3', '10032-1', '10033-9', '10034-7', '10035-4', '10036-2', '10037-0', '10038-8', '10039-6', '1004-1', '10040-4', '10041-2', '10042-0', '10043-8', '10044-6', '10045-3', '10046-1', '10047-9', '10048-7', '10049-5', '1005-8', '10050-3', '10051-1', '10052-9', '10053-7', '10054-5', '10055-2', '10056-0', '10057-8', '10058-6', '10059-4', '1006-6', '10060-2', '10061-0', '10062-8', '10063-6', '10064-4', '10065-1', '10066-9', '10067-7', '10068-5', '10069-3', '1007-4', '10070-1', '10071-9', '10072-7', '10073-5', '10074-3', '10075-0', '10076-8', '10077-6', '10078-4', '10079-2', '1008-2', '10080-0', '10081-8', '10082-6', '10083-4', '10084-2', '10085-9', '10086-7', '10087-5', '10088-3', '10089-1', '1009-0', '10090-9', '10091-7', '10092-5', '10093-3', '10094-1', '10095-8', '10096-6', '10097-4', '10098-2', '10099-0', '101-6', '1010-8', '10100-6', '10101-4', '10102-2', '10103-0', '10104-8', '10105-5', '10106-3', '10107-1', '10108-9', '10109-7', '1011-6', '10110-5', '10111-3', '10112-1', '10113-9', '10114-7', '10115-4', '10116-2', '10117-0', '10118-8', '10119-6', '1012-4', '10120-4', '10121-2', '10122-0', '10123-8', '10124-6', '10125-3', '10126-1', '10127-9', '10128-7', '10129-5', '1013-2', '10130-3', '10131-1', '10132-9', '10133-7', '10134-5', '10135-2', '10136-0', '10137-8', '10138-6', '10139-4', '1014-0', '10140-2', '10141-0', '10142-8', '10143-6', '10144-4', '10145-1', '10146-9', '10147-7', '10148-5', '10149-3', '1015-7', '10150-1', '10151-9', '10152-7', '10153-5', '10154-3', '10155-0', '10156-8', '10157-6', '10158-4', '10159-2', '1016-5', '10160-0', '10161-8', '10162-6', '10163-4', '10164-2', '10165-9', '10166-7', '10167-5', '10168-3', '10169-1', '1017-3', '10170-9', '10171-7', '10172-5', '10173-3', '10174-1', '10175-8', '10176-6', '10177-4', '10178-2', '10179-0', '1018-1', '10180-8', '10181-6', '10182-4', '10183-2', '10184-0', '10185-7', '10186-5', '10187-3', '10188-1', '10189-9', '1019-9', '10190-7', '10191-5', '10192-3', '10193-1', '10194-9', '10195-6', '10196-4', '10197-2', '10198-0', '10199-8', '102-4', '1020-7', '10200-4', '10201-2', '10202-0', '10203-8', '10204-6', '10205-3', '10206-1', '10207-9', '10208-7', '10209-5', '1021-5', '10210-3', '10211-1', '10212-9', '10213-7', '10214-5', '10215-2', '10216-0', '10217-8', '10218-6', '10219-4', '1022-3', '10220-2', '10221-0', '10222-8', '10223-6', '10224-4', '10225-1', '10226-9', '10227-7', '10228-5', '10229-3', '1023-1', '10230-1', '10231-9', '10232-7', '10233-5', '10234-3', '10235-0', '10236-8', '10237-6', '10238-4', '10239-2', '1024-9', '10240-0', '10241-8', '10242-6', '10243-4', '10244-2', '10245-9', '10246-7', '10247-5', '10248-3', '10249-1', '1025-6', '10250-9', '10251-7', '10252-5', '10253-3', '10254-1', '10255-8', '10256-6', '10257-4', '10258-2', '10259-0', '1026-4', '10260-8', '10261-6', '10262-4', '10263-2', '10264-0', '10265-7', '10266-5', '10267-3', '10268-1', '10269-9', '1027-2', '10270-7', '10271-5', '10272-3', '10273-1', '10274-9', '10275-6', '10276-4', '10277-2', '10278-0', '10279-8', '1028-0', '10280-6', '10281-4', '10282-2', '10283-0', '10284-8', '10285-5', '10286-3', '10287-1', '10288-9', '10289-7', '1029-8', '10290-5', '10291-3', '10292-1', '10293-9', '10294-7', '10295-4', '10296-2', '10297-0', '10298-8', '10299-6', '103-2', '1030-6', '10300-2', '10301-0', '10302-8', '10303-6', '10304-4', '10305-1', '10306-9', '10307-7', '10308-5', '10309-3', '1031-4', '10310-1', '10311-9', '10312-7', '10313-5', '10314-3', '10315-0', '10316-8', '10317-6', '10318-4', '10319-2', '1032-2', '10320-0', '10321-8', '10322-6', '10323-4', '10324-2', '10325-9', '10326-7', '10327-5', '10328-3', '10329-1', '1033-0', '10330-9', '10331-7', '10332-5', '10333-3', '10334-1', '10335-8', '10336-6', '10337-4', '10338-2', '10339-0', '1034-8', '10340-8', '10341-6', '10342-4', '10343-2', '10344-0', '10345-7', '10346-5', '10347-3', '10348-1', '10349-9', '1035-5', '10350-7', '10351-5', '10352-3', '10353-1', '10354-9', '10355-6', '10356-4', '10357-2', '10358-0', '10359-8', '1036-3', '10360-6', '10361-4', '10362-2', '10363-0', '10364-8', '10365-5', '10366-3', '10367-1', '10368-9', '10369-7', '1037-1', '10370-5', '10371-3', '10372-1', '10373-9', '10374-7', '10375-4', '10376-2', '10377-0', '10378-8', '10379-6', '1038-9', '10380-4', '10381-2', '10382-0', '10383-8', '10384-6', '10385-3', '10386-1', '10387-9', '10388-7', '10389-5', '1039-7', '10390-3', '10391-1', '10392-9', '10393-7', '10394-5', '10395-2', '10396-0', '10397-8', '10398-6', '10399-4', '104-0', '1040-5', '10400-0', '10401-8', '10402-6', '10403-4', '10404-2', '10405-9', '10406-7', '10407-5', '10408-3', '10409-1', '1041-3', '10410-9', '10411-7', '10412-5', '10413-3', '10414-1', '10415-8', '10416-6', '10417-4', '10418-2', '10419-0', '1042-1', '10420-8', '10421-6', '10422-4', '10423-2', '10424-0', '10425-7', '10426-5', '10427-3', '10428-1', '10429-9', '1043-9', '10430-7', '10431-5', '10432-3', '10433-1', '10434-9', '10435-6', '10436-4', '10437-2', '10438-0', '10439-8', '1044-7', '10440-6', '10441-4', '10442-2', '10443-0', '10444-8', '10445-5', '10446-3', '10447-1', '10448-9', '10449-7', '1045-4', '10450-5', '10451-3', '10452-1', '10453-9', '10454-7', '10455-4', '10456-2', '10457-0', '10458-8', '10459-6', '1046-2', '10460-4', '10461-2', '10462-0', '10463-8', '10464-6', '10465-3', '10466-1', '10467-9', '10468-7', '10469-5', '1047-0', '10470-3', '10471-1', '10472-9', '10473-7', '10474-5', '10475-2', '10476-0', '10477-8', '10478-6', '10479-4', '1048-8', '10480-2', '10481-0', '10482-8', '10483-6', '10484-4', '10485-1', '10486-9', '10487-7', '10488-5', '10489-3', '1049-6', '10490-1', '10491-9', '10492-7', '10493-5', '10494-3', '10495-0', '10496-8', '10497-6', '10498-4', '10499-2', '105-7', '1050-4', '10500-7', '10501-5', '10502-3', '10503-1', '10504-9', '10505-6', '10506-4', '10507-2', '10508-0', '10509-8', '1051-2', '10510-6', '10511-4', '10512-2', '10513-0', '10514-8', '10515-5', '10516-3', '10517-1', '10518-9', '10519-7', '1052-0', '10520-5', '10521-3', '10522-1', '10523-9', '10524-7', '10525-4', '10526-2', '10527-0', '10528-8', '10529-6', '1053-8', '10530-4', '10531-2', '10532-0', '10533-8', '10534-6', '10535-3', '10536-1', '10537-9', '10538-7', '10539-5', '1054-6', '10540-3', '10541-1', '10542-9', '10543-7', '10544-5', '10545-2', '10546-0', '10547-8', '10548-6', '10549-4', '1055-3', '10550-2', '10551-0', '10552-8', '10553-6', '10554-4', '10555-1', '10556-9', '10557-7', '10558-5', '10559-3', '1056-1', '10560-1', '10561-9', '10562-7', '10563-5', '10564-3', '10565-0', '10566-8', '10567-6', '10568-4', '10569-2', '1057-9', '10570-0', '10571-8', '10572-6', '10573-4', '10574-2', '10575-9', '10576-7', '10577-5', '10578-3', '10579-1', '1058-7', '10580-9', '10581-7', '10582-5', '10583-3', '10584-1', '10585-8', '10586-6', '10587-4', '10588-2', '10589-0', '1059-5', '10590-8', '10591-6', '10592-4', '10593-2', '10594-0', '10595-7', '10596-5', '10597-3', '10598-1', '10599-9', '106-5', '1060-3', '10600-5', '10601-3', '10602-1', '10603-9', '10604-7', '10605-4', '10606-2', '10607-0', '10608-8', '10609-6', '1061-1', '10610-4', '10611-2', '10612-0', '10613-8', '10614-6', '10615-3', '10616-1', '10617-9', '10618-7', '10619-5', '1062-9', '10620-3', '10621-1', '10622-9', '10623-7', '10624-5', '10625-2', '10626-0', '10627-8', '10628-6', '10629-4', '1063-7', '10630-2', '10631-0', '10632-8', '10633-6', '10634-4', '10635-1', '10636-9', '10637-7', '10638-5', '10639-3', '1064-5', '10640-1', '10641-9', '10642-7', '10643-5', '10644-3', '10645-0', '10646-8', '10647-6', '10648-4', '10649-2', '1065-2', '10650-0', '10651-8', '10652-6', '10653-4', '10654-2', '10655-9', '10656-7', '10657-5', '10658-3', '10659-1', '1066-0', '10660-9', '10661-7', '10662-5', '10663-3', '10664-1', '10665-8', '10666-6', '10667-4', '10668-2', '10669-0', '1067-8', '10670-8', '10671-6', '10672-4', '10673-2', '10674-0', '10675-7', '10676-5', '10677-3', '10678-1', '10679-9', '1068-6', '10680-7', '10681-5', '10682-3', '10683-1', '10684-9', '10685-6', '10686-4', '10687-2', '10688-0', '10689-8', '1069-4', '10690-6', '10691-4', '10692-2', '10693-0', '10694-8', '10695-5', '10696-3', '10697-1', '10698-9', '10699-7', '107-3', '1070-2', '10700-3', '10701-1', '10702-9', '10703-7', '10704-5', '10705-2', '10706-0', '10707-8', '10708-6', '10709-4', '1071-0', '10710-2', '10711-0', '10712-8', '10713-6', '10714-4', '10715-1', '10716-9', '10717-7', '10718-5', '10719-3', '1072-8', '10720-1', '10721-9', '10722-7', '10723-5', '10724-3', '10725-0', '10726-8', '10727-6', '10728-4', '10729-2', '1073-6', '10730-0', '10731-8', '10732-6', '10733-4', '10734-2', '10735-9', '10736-7', '10737-5', '10738-3', '10739-1', '1074-4', '10740-9', '10741-7', '10742-5', '10743-3', '10744-1', '10745-8', '10746-6', '10747-4', '10748-2', '10749-0', '1075-1', '10750-8', '10751-6', '10752-4', '10753-2', '10754-0', '10755-7', '10756-5', '10757-3']}, 'type'=>'Coding', 'path'=>'Item.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/questionnaire-questions'}},
          'prefix' => {'type'=>'string', 'path'=>'Item.prefix', 'min'=>0, 'max'=>1},
          '_prefix' => {'type'=>'Element', 'path'=>'Item._prefix', 'min'=>0, 'max'=>1},
          'text' => {'type'=>'string', 'path'=>'Item.text', 'min'=>0, 'max'=>1},
          '_text' => {'type'=>'Element', 'path'=>'Item._text', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/item-type'=>['group', 'display', 'question', 'boolean', 'decimal', 'integer', 'date', 'dateTime', 'time', 'string', 'text', 'url', 'choice', 'open-choice', 'attachment', 'reference', 'quantity']}, 'type'=>'code', 'path'=>'Item.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/item-type'}},
          '_type' => {'type'=>'Element', 'path'=>'Item._type', 'min'=>0, 'max'=>1},
          'enableWhen' => {'type'=>'Questionnaire::Item::EnableWhen', 'path'=>'Item.enableWhen', 'min'=>0, 'max'=>Float::INFINITY},
          'enableBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/questionnaire-enable-behavior'=>['all', 'any']}, 'type'=>'code', 'path'=>'Item.enableBehavior', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior'}},
          '_enableBehavior' => {'type'=>'Element', 'path'=>'Item._enableBehavior', 'min'=>0, 'max'=>1},
          'required' => {'type'=>'boolean', 'path'=>'Item.required', 'min'=>0, 'max'=>1},
          '_required' => {'type'=>'Element', 'path'=>'Item._required', 'min'=>0, 'max'=>1},
          'repeats' => {'type'=>'boolean', 'path'=>'Item.repeats', 'min'=>0, 'max'=>1},
          '_repeats' => {'type'=>'Element', 'path'=>'Item._repeats', 'min'=>0, 'max'=>1},
          'readOnly' => {'type'=>'boolean', 'path'=>'Item.readOnly', 'min'=>0, 'max'=>1},
          '_readOnly' => {'type'=>'Element', 'path'=>'Item._readOnly', 'min'=>0, 'max'=>1},
          'maxLength' => {'type'=>'integer', 'path'=>'Item.maxLength', 'min'=>0, 'max'=>1},
          '_maxLength' => {'type'=>'Element', 'path'=>'Item._maxLength', 'min'=>0, 'max'=>1},
          'answerValueSet' => {'type'=>'canonical', 'path'=>'Item.answerValueSet', 'min'=>0, 'max'=>1},
          '_answerValueSet' => {'type'=>'Element', 'path'=>'Item._answerValueSet', 'min'=>0, 'max'=>1},
          'answerOption' => {'type'=>'Questionnaire::Item::AnswerOption', 'path'=>'Item.answerOption', 'min'=>0, 'max'=>Float::INFINITY},
          'initial' => {'type'=>'Questionnaire::Item::Initial', 'path'=>'Item.initial', 'min'=>0, 'max'=>Float::INFINITY},
          'item' => {'type'=>'Questionnaire::Item', 'path'=>'Item.item', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class EnableWhen < FHIR::Model
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
            'answer' => ['boolean', 'decimal', 'integer', 'date', 'dateTime', 'time', 'string', 'Coding', 'Quantity', 'Reference']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'EnableWhen.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'EnableWhen._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'EnableWhen.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'EnableWhen.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'question' => {'type'=>'string', 'path'=>'EnableWhen.question', 'min'=>1, 'max'=>1},
            '_question' => {'type'=>'Element', 'path'=>'EnableWhen._question', 'min'=>0, 'max'=>1},
            'operator' => {'valid_codes'=>{'http://hl7.org/fhir/questionnaire-enable-operator'=>['exists', '=', '!=', '>', '<', '>=', '<=']}, 'type'=>'code', 'path'=>'EnableWhen.operator', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/questionnaire-enable-operator'}},
            '_operator' => {'type'=>'Element', 'path'=>'EnableWhen._operator', 'min'=>0, 'max'=>1},
            'answerBoolean' => {'type'=>'boolean', 'path'=>'EnableWhen.answer[x]', 'min'=>1, 'max'=>1},
            '_answerBoolean' => {'type'=>'Element', 'path'=>'EnableWhen.answer[x]', 'min'=>0, 'max'=>1},
            'answerDecimal' => {'type'=>'decimal', 'path'=>'EnableWhen.answer[x]', 'min'=>1, 'max'=>1},
            '_answerDecimal' => {'type'=>'Element', 'path'=>'EnableWhen.answer[x]', 'min'=>0, 'max'=>1},
            'answerInteger' => {'type'=>'integer', 'path'=>'EnableWhen.answer[x]', 'min'=>1, 'max'=>1},
            '_answerInteger' => {'type'=>'Element', 'path'=>'EnableWhen.answer[x]', 'min'=>0, 'max'=>1},
            'answerDate' => {'type'=>'date', 'path'=>'EnableWhen.answer[x]', 'min'=>1, 'max'=>1},
            '_answerDate' => {'type'=>'Element', 'path'=>'EnableWhen.answer[x]', 'min'=>0, 'max'=>1},
            'answerDateTime' => {'type'=>'dateTime', 'path'=>'EnableWhen.answer[x]', 'min'=>1, 'max'=>1},
            '_answerDateTime' => {'type'=>'Element', 'path'=>'EnableWhen.answer[x]', 'min'=>0, 'max'=>1},
            'answerTime' => {'type'=>'time', 'path'=>'EnableWhen.answer[x]', 'min'=>1, 'max'=>1},
            '_answerTime' => {'type'=>'Element', 'path'=>'EnableWhen.answer[x]', 'min'=>0, 'max'=>1},
            'answerString' => {'type'=>'string', 'path'=>'EnableWhen.answer[x]', 'min'=>1, 'max'=>1},
            '_answerString' => {'type'=>'Element', 'path'=>'EnableWhen.answer[x]', 'min'=>0, 'max'=>1},
            'answerCoding' => {'type'=>'Coding', 'path'=>'EnableWhen.answer[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/questionnaire-answers'}},
            'answerQuantity' => {'type'=>'Quantity', 'path'=>'EnableWhen.answer[x]', 'min'=>1, 'max'=>1},
            'answerReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'EnableWhen.answer[x]', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :question          # 1-1 string
          attr_accessor :_question         # 0-1 Element
          attr_accessor :operator          # 1-1 code
          attr_accessor :_operator         # 0-1 Element
          attr_accessor :answerBoolean     # 1-1 boolean
          attr_accessor :_answerBoolean    # 0-1 Element
          attr_accessor :answerDecimal     # 1-1 decimal
          attr_accessor :_answerDecimal    # 0-1 Element
          attr_accessor :answerInteger     # 1-1 integer
          attr_accessor :_answerInteger    # 0-1 Element
          attr_accessor :answerDate        # 1-1 date
          attr_accessor :_answerDate       # 0-1 Element
          attr_accessor :answerDateTime    # 1-1 dateTime
          attr_accessor :_answerDateTime   # 0-1 Element
          attr_accessor :answerTime        # 1-1 time
          attr_accessor :_answerTime       # 0-1 Element
          attr_accessor :answerString      # 1-1 string
          attr_accessor :_answerString     # 0-1 Element
          attr_accessor :answerCoding      # 1-1 Coding
          attr_accessor :answerQuantity    # 1-1 Quantity
          attr_accessor :answerReference   # 1-1 Reference(Resource)
        end

        class AnswerOption < FHIR::Model
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
            'value' => ['integer', 'date', 'time', 'string', 'Coding', 'Reference']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'AnswerOption.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'AnswerOption._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'AnswerOption.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'AnswerOption.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'valueInteger' => {'type'=>'integer', 'path'=>'AnswerOption.value[x]', 'min'=>1, 'max'=>1},
            '_valueInteger' => {'type'=>'Element', 'path'=>'AnswerOption.value[x]', 'min'=>0, 'max'=>1},
            'valueDate' => {'type'=>'date', 'path'=>'AnswerOption.value[x]', 'min'=>1, 'max'=>1},
            '_valueDate' => {'type'=>'Element', 'path'=>'AnswerOption.value[x]', 'min'=>0, 'max'=>1},
            'valueTime' => {'type'=>'time', 'path'=>'AnswerOption.value[x]', 'min'=>1, 'max'=>1},
            '_valueTime' => {'type'=>'Element', 'path'=>'AnswerOption.value[x]', 'min'=>0, 'max'=>1},
            'valueString' => {'type'=>'string', 'path'=>'AnswerOption.value[x]', 'min'=>1, 'max'=>1},
            '_valueString' => {'type'=>'Element', 'path'=>'AnswerOption.value[x]', 'min'=>0, 'max'=>1},
            'valueCoding' => {'type'=>'Coding', 'path'=>'AnswerOption.value[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/questionnaire-answers'}},
            'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'AnswerOption.value[x]', 'min'=>1, 'max'=>1},
            'initialSelected' => {'type'=>'boolean', 'path'=>'AnswerOption.initialSelected', 'min'=>0, 'max'=>1},
            '_initialSelected' => {'type'=>'Element', 'path'=>'AnswerOption._initialSelected', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :valueInteger      # 1-1 integer
          attr_accessor :_valueInteger     # 0-1 Element
          attr_accessor :valueDate         # 1-1 date
          attr_accessor :_valueDate        # 0-1 Element
          attr_accessor :valueTime         # 1-1 time
          attr_accessor :_valueTime        # 0-1 Element
          attr_accessor :valueString       # 1-1 string
          attr_accessor :_valueString      # 0-1 Element
          attr_accessor :valueCoding       # 1-1 Coding
          attr_accessor :valueReference    # 1-1 Reference(Resource)
          attr_accessor :initialSelected   # 0-1 boolean
          attr_accessor :_initialSelected  # 0-1 Element
        end

        class Initial < FHIR::Model
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
            'value' => ['boolean', 'decimal', 'integer', 'date', 'dateTime', 'time', 'string', 'uri', 'Attachment', 'Coding', 'Quantity', 'Reference']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Initial.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Initial._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Initial.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Initial.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'valueBoolean' => {'type'=>'boolean', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1},
            '_valueBoolean' => {'type'=>'Element', 'path'=>'Initial.value[x]', 'min'=>0, 'max'=>1},
            'valueDecimal' => {'type'=>'decimal', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1},
            '_valueDecimal' => {'type'=>'Element', 'path'=>'Initial.value[x]', 'min'=>0, 'max'=>1},
            'valueInteger' => {'type'=>'integer', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1},
            '_valueInteger' => {'type'=>'Element', 'path'=>'Initial.value[x]', 'min'=>0, 'max'=>1},
            'valueDate' => {'type'=>'date', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1},
            '_valueDate' => {'type'=>'Element', 'path'=>'Initial.value[x]', 'min'=>0, 'max'=>1},
            'valueDateTime' => {'type'=>'dateTime', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1},
            '_valueDateTime' => {'type'=>'Element', 'path'=>'Initial.value[x]', 'min'=>0, 'max'=>1},
            'valueTime' => {'type'=>'time', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1},
            '_valueTime' => {'type'=>'Element', 'path'=>'Initial.value[x]', 'min'=>0, 'max'=>1},
            'valueString' => {'type'=>'string', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1},
            '_valueString' => {'type'=>'Element', 'path'=>'Initial.value[x]', 'min'=>0, 'max'=>1},
            'valueUri' => {'type'=>'uri', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1},
            '_valueUri' => {'type'=>'Element', 'path'=>'Initial.value[x]', 'min'=>0, 'max'=>1},
            'valueAttachment' => {'type'=>'Attachment', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1},
            'valueCoding' => {'type'=>'Coding', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/questionnaire-answers'}},
            'valueQuantity' => {'type'=>'Quantity', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1},
            'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Initial.value[x]', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :valueBoolean      # 1-1 boolean
          attr_accessor :_valueBoolean     # 0-1 Element
          attr_accessor :valueDecimal      # 1-1 decimal
          attr_accessor :_valueDecimal     # 0-1 Element
          attr_accessor :valueInteger      # 1-1 integer
          attr_accessor :_valueInteger     # 0-1 Element
          attr_accessor :valueDate         # 1-1 date
          attr_accessor :_valueDate        # 0-1 Element
          attr_accessor :valueDateTime     # 1-1 dateTime
          attr_accessor :_valueDateTime    # 0-1 Element
          attr_accessor :valueTime         # 1-1 time
          attr_accessor :_valueTime        # 0-1 Element
          attr_accessor :valueString       # 1-1 string
          attr_accessor :_valueString      # 0-1 Element
          attr_accessor :valueUri          # 1-1 uri
          attr_accessor :_valueUri         # 0-1 Element
          attr_accessor :valueAttachment   # 1-1 Attachment
          attr_accessor :valueCoding       # 1-1 Coding
          attr_accessor :valueQuantity     # 1-1 Quantity
          attr_accessor :valueReference    # 1-1 Reference(Resource)
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :linkId            # 1-1 string
        attr_accessor :_linkId           # 0-1 Element
        attr_accessor :definition        # 0-1 uri
        attr_accessor :_definition       # 0-1 Element
        attr_accessor :code              # 0-* [ Coding ]
        attr_accessor :prefix            # 0-1 string
        attr_accessor :_prefix           # 0-1 Element
        attr_accessor :text              # 0-1 string
        attr_accessor :_text             # 0-1 Element
        attr_accessor :type              # 1-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :enableWhen        # 0-* [ Questionnaire::Item::EnableWhen ]
        attr_accessor :enableBehavior    # 0-1 code
        attr_accessor :_enableBehavior   # 0-1 Element
        attr_accessor :required          # 0-1 boolean
        attr_accessor :_required         # 0-1 Element
        attr_accessor :repeats           # 0-1 boolean
        attr_accessor :_repeats          # 0-1 Element
        attr_accessor :readOnly          # 0-1 boolean
        attr_accessor :_readOnly         # 0-1 Element
        attr_accessor :maxLength         # 0-1 integer
        attr_accessor :_maxLength        # 0-1 Element
        attr_accessor :answerValueSet    # 0-1 canonical
        attr_accessor :_answerValueSet   # 0-1 Element
        attr_accessor :answerOption      # 0-* [ Questionnaire::Item::AnswerOption ]
        attr_accessor :initial           # 0-* [ Questionnaire::Item::Initial ]
        attr_accessor :item              # 0-* [ Questionnaire::Item ]
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
      attr_accessor :derivedFrom       # 0-* [ canonical ]
      attr_accessor :_derivedFrom      # 0-* [ Element ]
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :_experimental     # 0-1 Element
      attr_accessor :subjectType       # 0-* [ code ]
      attr_accessor :_subjectType      # 0-* [ Element ]
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
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :approvalDate      # 0-1 date
      attr_accessor :_approvalDate     # 0-1 Element
      attr_accessor :lastReviewDate    # 0-1 date
      attr_accessor :_lastReviewDate   # 0-1 Element
      attr_accessor :effectivePeriod   # 0-1 Period
      attr_accessor :code              # 0-* [ Coding ]
      attr_accessor :item              # 0-* [ Questionnaire::Item ]

      def resourceType
        'Questionnaire'
      end
    end
  end
end