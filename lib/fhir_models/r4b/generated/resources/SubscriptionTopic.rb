module FHIR
  module R4B
    class SubscriptionTopic < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['date', 'derived-or-self', 'identifier', 'resource', 'status', 'title', 'trigger-description', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'SubscriptionTopic.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'SubscriptionTopic._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SubscriptionTopic.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SubscriptionTopic.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'SubscriptionTopic._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SubscriptionTopic.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'SubscriptionTopic._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'SubscriptionTopic.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SubscriptionTopic.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SubscriptionTopic.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SubscriptionTopic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'SubscriptionTopic.url', 'min'=>1, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'SubscriptionTopic._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'SubscriptionTopic.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'SubscriptionTopic.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'SubscriptionTopic._version', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'SubscriptionTopic.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'SubscriptionTopic._title', 'min'=>0, 'max'=>1},
        'derivedFrom' => {'type'=>'canonical', 'path'=>'SubscriptionTopic.derivedFrom', 'min'=>0, 'max'=>Float::INFINITY},
        '_derivedFrom' => {'type'=>'Element', 'path'=>'SubscriptionTopic._derivedFrom', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'SubscriptionTopic.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'SubscriptionTopic._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'SubscriptionTopic.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'SubscriptionTopic._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'SubscriptionTopic.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'SubscriptionTopic._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'SubscriptionTopic.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'SubscriptionTopic._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'SubscriptionTopic.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'SubscriptionTopic.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'SubscriptionTopic._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'SubscriptionTopic.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AD-03', 'AD-07', 'AD-04', 'AD-05', 'AD-02', 'AD-06', 'AD-08', 'AE-RK', 'AE-SH', 'AE-FU', 'AE-DU', 'AE-AZ', 'AE-UQ', 'AE-AJ', 'AF-BAM', 'AF-KAB', 'AF-KAP', 'AF-KHO', 'AF-KNR', 'AF-KAN', 'AF-LOG', 'AF-PIA', 'AF-SAM', 'AF-URU', 'AF-BDS', 'AF-FYB', 'AF-JOW', 'AF-KDZ', 'AF-LAG', 'AF-NIM', 'AF-BGL', 'AF-FRA', 'AF-HEL', 'AF-PKA', 'AF-SAR', 'AF-BDG', 'AF-GHA', 'AF-PAN', 'AF-TAK', 'AF-WAR', 'AF-BAL', 'AF-GHO', 'AF-DAY', 'AF-HER', 'AF-NAN', 'AF-NUR', 'AF-PAR', 'AF-ZAB', 'AG-03', 'AG-06', 'AG-10', 'AG-07', 'AG-08', 'AG-05', 'AG-04', 'AG-11', 'AL-11', 'AL-12', 'AL-03', 'AL-09', 'AL-01', 'AL-02', 'AL-08', 'AL-10', 'AL-05', 'AL-06', 'AL-07', 'AL-04', 'AM-AG', 'AM-AV', 'AM-KT', 'AM-GR', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-LO', 'AM-ER', 'AM-VD', 'AM-AR', 'AO-CAB', 'AO-CCU', 'AO-ZAI', 'AO-LNO', 'AO-LSU', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-CNO', 'AO-HUI', 'AO-LUA', 'AO-MAL', 'AO-BGO', 'AO-BGU', 'AO-CNN', 'AO-CUS', 'AO-HUA', 'AO-BIE', 'AR-N', 'AR-S', 'AR-Z', 'AR-A', 'AR-C', 'AR-F', 'AR-B', 'AR-G', 'AR-H', 'AR-P', 'AR-X', 'AR-J', 'AR-T', 'AR-E', 'AR-K', 'AR-V', 'AR-W', 'AR-U', 'AR-D', 'AR-L', 'AR-M', 'AR-Q', 'AR-R', 'AR-Y', 'AT-3', 'AT-4', 'AT-5', 'AT-8', 'AT-1', 'AT-7', 'AT-2', 'AT-6', 'AT-9', 'AU-NT', 'AU-QLD', 'AU-TAS', 'AU-ACT', 'AU-NSW', 'AU-SA', 'AU-WA', 'AU-VIC', 'AZ-ABS', 'AZ-BA', 'AZ-BAL', 'AZ-BAR', 'AZ-GOY', 'AZ-MAS', 'AZ-SKR', 'AZ-SR', 'AZ-XA', 'AZ-XIZ', 'AZ-AGC', 'AZ-AGU', 'AZ-BIL', 'AZ-GA', 'AZ-QAB', 'AZ-SMX', 'AZ-XAC', 'AZ-YAR', 'AZ-ZAN', 'AZ-AGA', 'AZ-FUZ', 'AZ-GAD', 'AZ-LAC', 'AZ-QAX', 'AZ-AGM', 'AZ-DAS', 'AZ-GYG', 'AZ-LA', 'AZ-LAN', 'AZ-OGU', 'AZ-QBA', 'AZ-QUS', 'AZ-SAB', 'AZ-CAB', 'AZ-KUR', 'AZ-SAL', 'AZ-SBN', 'AZ-SM', 'AZ-UCA', 'AZ-XCI', 'AZ-YEV', 'AZ-AGS', 'AZ-AST', 'AZ-BEY', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-LER', 'AZ-MI', 'AZ-NEF', 'AZ-NX', 'AZ-QAZ', 'AZ-SAK', 'AZ-SAT', 'AZ-TAR', 'AZ-XVD', 'AZ-CAL', 'AZ-KAL', 'AZ-QOB', 'AZ-SIY', 'AZ-SUS', 'AZ-ZAQ', 'AZ-ZAR', 'AZ-GOR', 'AZ-NA', 'AZ-QBI', 'AZ-SA', 'AZ-SMI', 'AZ-TOV', 'AZ-YE', 'BA-BRC', 'BA-BIH', 'BA-SRP', 'BB-03', 'BB-05', 'BB-02', 'BB-10', 'BB-11', 'BB-08', 'BB-04', 'BB-09', 'BB-01', 'BB-06', 'BB-07', 'BD-B', 'BD-H', 'BD-A', 'BD-C', 'BD-D', 'BD-E', 'BD-F', 'BD-G', 'BE-WAL', 'BE-BRU', 'BE-VLG', 'BF-05', 'BF-01', 'BF-10', 'BF-02', 'BF-03', 'BF-04', 'BF-06', 'BF-07', 'BF-08', 'BF-09', 'BF-11', 'BF-12', 'BF-13', 'BG-04', 'BG-09', 'BG-15', 'BG-16', 'BG-28', 'BG-13', 'BG-18', 'BG-21', 'BG-22', 'BG-27', 'BG-02', 'BG-14', 'BG-19', 'BG-25', 'BG-03', 'BG-24', 'BG-01', 'BG-10', 'BG-12', 'BG-20', 'BG-23', 'BG-11', 'BG-17', 'BG-05', 'BG-06', 'BG-07', 'BG-08', 'BG-26', 'BH-14', 'BH-13', 'BH-15', 'BH-17', 'BI-BM', 'BI-KR', 'BI-MY', 'BI-KI', 'BI-BR', 'BI-CI', 'BI-GI', 'BI-MA', 'BI-MU', 'BI-NG', 'BI-RY', 'BI-KY', 'BI-MW', 'BI-CA', 'BI-BL', 'BI-RT', 'BI-RM', 'BI-BB', 'BJ-AK', 'BJ-CO', 'BJ-BO', 'BJ-OU', 'BJ-LI', 'BJ-AQ', 'BJ-MO', 'BJ-AL', 'BJ-DO', 'BJ-KO', 'BJ-PL', 'BJ-ZO', 'BN-BM', 'BN-BE', 'BN-TE', 'BN-TU', 'BO-C', 'BO-L', 'BO-B', 'BO-O', 'BO-S', 'BO-P', 'BO-T', 'BO-H', 'BO-N', 'BQ-BO', 'BQ-SA', 'BQ-SE', 'BR-AC', 'BR-AM', 'BR-CE', 'BR-RR', 'BR-GO', 'BR-MG', 'BR-ES', 'BR-AP', 'BR-BA', 'BR-MS', 'BR-PR', 'BR-RN', 'BR-MT', 'BR-PB', 'BR-PE', 'BR-RJ', 'BR-RO', 'BR-SC', 'BR-SP', 'BR-AL', 'BR-DF', 'BR-MA', 'BR-PA', 'BR-PI', 'BR-RS', 'BR-SE', 'BR-TO', 'BS-CO', 'BS-EG', 'BS-HI', 'BS-MI', 'BS-SS', 'BS-SW', 'BS-AK', 'BS-LI', 'BS-BY', 'BS-FP', 'BS-NS', 'BS-RC', 'BS-SO', 'BS-CE', 'BS-CI', 'BS-CS', 'BS-EX', 'BS-IN', 'BS-MC', 'BS-SA', 'BS-GC', 'BS-MG', 'BS-WG', 'BS-BI', 'BS-BP', 'BS-NE', 'BS-NO', 'BS-SE', 'BS-CK', 'BS-HT', 'BS-RI', 'BT-42', 'BT-45', 'BT-12', 'BT-23', 'BT-24', 'BT-21', 'BT-33', 'BT-34', 'BT-31', 'BT-14', 'BT-15', 'BT-44', 'BT-TY', 'BT-13', 'BT-41', 'BT-GA', 'BT-22', 'BT-32', 'BT-43', 'BT-11', 'BW-KL', 'BW-GH', 'BW-NW', 'BW-SO', 'BW-KW', 'BW-CH', 'BW-LO', 'BW-SP', 'BW-JW', 'BW-ST', 'BW-FR', 'BW-GA', 'BW-KG', 'BW-CE', 'BW-SE', 'BW-NE', 'BY-VI', 'BY-BR', 'BY-HM', 'BY-HO', 'BY-HR', 'BY-MI', 'BY-MA', 'BZ-OW', 'BZ-CZL', 'BZ-SC', 'BZ-TOL', 'BZ-BZ', 'BZ-CY', 'CA-BC', 'CA-MB', 'CA-NB', 'CA-SK', 'CA-AB', 'CA-ON', 'CA-YT', 'CA-NT', 'CA-NU', 'CA-NL', 'CA-PE', 'CA-NS', 'CA-QC', 'CD-EQ', 'CD-BC', 'CD-SK', 'CD-NK', 'CD-KE', 'CD-KN', 'CD-BU', 'CD-HK', 'CD-HL', 'CD-HU', 'CD-IT', 'CD-KS', 'CD-KC', 'CD-KG', 'CD-KL', 'CD-LO', 'CD-LU', 'CD-MN', 'CD-MO', 'CD-NU', 'CD-SA', 'CD-SU', 'CD-TA', 'CD-TO', 'CD-TU', 'CD-MA', 'CF-HM', 'CF-HS', 'CF-LB', 'CF-AC', 'CF-KB', 'CF-BB', 'CF-MP', 'CF-HK', 'CF-KG', 'CF-MB', 'CF-NM', 'CF-SE', 'CF-VK', 'CF-BGF', 'CF-OP', 'CF-UK', 'CF-BK', 'CG-9', 'CG-15', 'CG-5', 'CG-11', 'CG-BZV', 'CG-16', 'CG-12', 'CG-13', 'CG-7', 'CG-14', 'CG-2', 'CG-8', 'CH-JU', 'CH-LU', 'CH-SO', 'CH-TG', 'CH-BS', 'CH-SZ', 'CH-ZG', 'CH-AG', 'CH-BE', 'CH-FR', 'CH-NE', 'CH-OW', 'CH-TI', 'CH-VD', 'CH-AR', 'CH-GE', 'CH-GL', 'CH-SG', 'CH-GR', 'CH-NW', 'CH-SH', 'CH-ZH', 'CH-AI', 'CH-VS', 'CH-BL', 'CH-UR', 'CI-AB', 'CI-YM', 'CI-BS', 'CI-CM', 'CI-DN', 'CI-GD', 'CI-LC', 'CI-LG', 'CI-MG', 'CI-SM', 'CI-SV', 'CI-VB', 'CI-WR', 'CI-ZZ', 'CL-AN', 'CL-RM', 'CL-TA', 'CL-BI', 'CL-AP', 'CL-AT', 'CL-LL', 'CL-LR', 'CL-ML', 'CL-AR', 'CL-LI', 'CL-AI', 'CL-VS', 'CL-CO', 'CL-MA', 'CM-NW', 'CM-OU', 'CM-AD', 'CM-LT', 'CM-NO', 'CM-CE', 'CM-EN', 'CM-ES', 'CM-SU', 'CM-SW', 'CN-NM', 'CN-GX', 'CN-XZ', 'CN-NX', 'CN-XJ', 'CN-BJ', 'CN-TJ', 'CN-SH', 'CN-CQ', 'CN-HE', 'CN-SX', 'CN-LN', 'CN-JL', 'CN-HL', 'CN-ZJ', 'CN-AH', 'CN-FJ', 'CN-JX', 'CN-SD', 'CN-HA', 'CN-HB', 'CN-HN', 'CN-GD', 'CN-HI', 'CN-SC', 'CN-GZ', 'CN-YN', 'CN-SN', 'CN-GS', 'CN-QH', 'CN-TW', 'CN-HK', 'CN-MO', 'CN-JS', 'CO-BOL', 'CO-MAG', 'CO-MET', 'CO-PUT', 'CO-VID', 'CO-AMA', 'CO-CAL', 'CO-CAU', 'CO-CES', 'CO-DC', 'CO-LAG', 'CO-ARA', 'CO-NSA', 'CO-TOL', 'CO-VAC', 'CO-GUV', 'CO-HUI', 'CO-SUC', 'CO-CAS', 'CO-CHO', 'CO-GUA', 'CO-QUI', 'CO-RIS', 'CO-SAN', 'CO-VAU', 'CO-ANT', 'CO-ATL', 'CO-COR', 'CO-SAP', 'CO-BOY', 'CO-CAQ', 'CO-CUN', 'CO-NAR', 'CR-H', 'CR-L', 'CR-G', 'CR-P', 'CR-A', 'CR-C', 'CR-SJ', 'CU-03', 'CU-07', 'CU-12', 'CU-05', 'CU-11', 'CU-08', 'CU-09', 'CU-10', 'CU-13', 'CU-15', 'CU-16', 'CU-01', 'CU-14', 'CU-99', 'CU-04', 'CU-06', 'CV-B', 'CV-S', 'CY-03', 'CY-06', 'CY-01', 'CY-04', 'CY-05', 'CY-02', 'CZ-42', 'CZ-63', 'CZ-72', 'CZ-31', 'CZ-64', 'CZ-41', 'CZ-52', 'CZ-51', 'CZ-80', 'CZ-71', 'CZ-53', 'CZ-32', 'CZ-20', 'CZ-10', 'DE-BW', 'DE-MV', 'DE-NW', 'DE-SL', 'DE-TH', 'DE-ST', 'DE-HH', 'DE-BB', 'DE-BE', 'DE-BY', 'DE-HB', 'DE-HE', 'DE-NI', 'DE-SH', 'DE-RP', 'DE-SN', 'DJ-OB', 'DJ-AR', 'DJ-DI', 'DJ-DJ', 'DJ-AS', 'DJ-TA', 'DK-82', 'DK-85', 'DK-81', 'DK-84', 'DK-83', 'DM-06', 'DM-08', 'DM-09', 'DM-03', 'DM-02', 'DM-11', 'DM-04', 'DM-10', 'DM-05', 'DM-07', 'DO-33', 'DO-34', 'DO-35', 'DO-36', 'DO-37', 'DO-38', 'DO-39', 'DO-40', 'DO-41', 'DO-42', 'DZ-06', 'DZ-11', 'DZ-13', 'DZ-27', 'DZ-40', 'DZ-03', 'DZ-09', 'DZ-14', 'DZ-15', 'DZ-19', 'DZ-20', 'DZ-35', 'DZ-41', 'DZ-42', 'DZ-44', 'DZ-02', 'DZ-04', 'DZ-05', 'DZ-23', 'DZ-39', 'DZ-01', 'DZ-08', 'DZ-16', 'DZ-28', 'DZ-31', 'DZ-07', 'DZ-24', 'DZ-33', 'DZ-36', 'DZ-38', 'DZ-45', 'DZ-10', 'DZ-21', 'DZ-25', 'DZ-32', 'DZ-43', 'DZ-46', 'DZ-48', 'DZ-17', 'DZ-18', 'DZ-22', 'DZ-30', 'DZ-47', 'DZ-12', 'DZ-26', 'DZ-29', 'DZ-34', 'DZ-37', 'EC-E', 'EC-G', 'EC-X', 'EC-Y', 'EC-A', 'EC-D', 'EC-L', 'EC-O', 'EC-SE', 'EC-Z', 'EC-H', 'EC-SD', 'EC-I', 'EC-M', 'EC-P', 'EC-W', 'EC-C', 'EC-F', 'EC-S', 'EC-U', 'EC-N', 'EC-T', 'EC-B', 'EC-R', 'EE-78', 'EE-49', 'EE-51', 'EE-70', 'EE-84', 'EE-37', 'EE-44', 'EE-57', 'EE-59', 'EE-67', 'EE-74', 'EE-82', 'EE-86', 'EE-65', 'EE-39', 'EG-AST', 'EG-BNS', 'EG-C', 'EG-FYM', 'EG-PTS', 'EG-DT', 'EG-GZ', 'EG-IS', 'EG-SHG', 'EG-BA', 'EG-KB', 'EG-SHR', 'EG-DK', 'EG-LX', 'EG-SIN', 'EG-WAD', 'EG-GH', 'EG-KN', 'EG-MNF', 'EG-SUZ', 'EG-BH', 'EG-MT', 'EG-ALX', 'EG-ASN', 'EG-JS', 'EG-KFS', 'EG-MN', 'ER-GB', 'ER-MA', 'ER-SK', 'ER-DK', 'ER-DU', 'ER-AN', 'ES-CB', 'ES-MC', 'ES-AR', 'ES-AS', 'ES-CE', 'ES-GA', 'ES-RI', 'ES-VC', 'ES-CT', 'ES-IB', 'ES-CM', 'ES-EX', 'ES-MD', 'ES-ML', 'ES-CL', 'ES-CN', 'ES-NC', 'ES-AN', 'ES-PV', 'ET-BE', 'ET-HA', 'ET-SO', 'ET-DD', 'ET-GA', 'ET-AM', 'ET-AA', 'ET-AF', 'ET-OR', 'ET-TI', 'ET-SN', 'FI-06', 'FI-08', 'FI-13', 'FI-18', 'FI-01', 'FI-15', 'FI-14', 'FI-04', 'FI-07', 'FI-09', 'FI-11', 'FI-12', 'FI-19', 'FI-17', 'FI-03', 'FI-05', 'FI-10', 'FI-02', 'FI-16', 'FJ-R', 'FJ-W', 'FJ-N', 'FJ-E', 'FJ-C', 'FM-TRK', 'FM-PNI', 'FM-KSA', 'FM-YAP', 'FR-CP', 'FR-MF', 'FR-NC', 'FR-PM', 'FR-TF', 'FR-WF', 'FR-ARA', 'FR-BFC', 'FR-BRE', 'FR-CVL', 'FR-COR', 'FR-GES', 'FR-HDF', 'FR-IDF', 'FR-NOR', 'FR-NAQ', 'FR-OCC', 'FR-PDL', 'FR-PAC', 'FR-GUA', 'FR-LRE', 'FR-MAY', 'FR-GF', 'FR-MQ', 'FR-BL', 'FR-PF', 'GA-1', 'GA-6', 'GA-7', 'GA-8', 'GA-2', 'GA-4', 'GA-9', 'GA-3', 'GA-5', 'GB-GBN', 'GB-SCT', 'GB-EAW', 'GB-ENG', 'GB-WLS', 'GB-NIR', 'GB-UKM', 'GD-10', 'GD-02', 'GD-05', 'GD-01', 'GD-03', 'GD-06', 'GD-04', 'GE-SK', 'GE-IM', 'GE-SJ', 'GE-GU', 'GE-RL', 'GE-TB', 'GE-KA', 'GE-KK', 'GE-AB', 'GE-AJ', 'GE-MM', 'GE-SZ', 'GH-EP', 'GH-CP', 'GH-NP', 'GH-BA', 'GH-TV', 'GH-UW', 'GH-AH', 'GH-AA', 'GH-UE', 'GH-WP', 'GL-KU', 'GL-SM', 'GL-QA', 'GL-QE', 'GM-M', 'GM-U', 'GM-W', 'GM-L', 'GM-B', 'GM-N', 'GN-M', 'GN-C', 'GN-K', 'GN-L', 'GN-B', 'GN-F', 'GN-D', 'GN-N', 'GQ-I', 'GQ-C', 'GR-H', 'GR-A', 'GR-B', 'GR-F', 'GR-69', 'GR-E', 'GR-K', 'GR-I'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'type'=>'CodeableConcept', 'path'=>'SubscriptionTopic.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'SubscriptionTopic.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'SubscriptionTopic._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'SubscriptionTopic.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'SubscriptionTopic._copyright', 'min'=>0, 'max'=>1},
        'approvalDate' => {'type'=>'date', 'path'=>'SubscriptionTopic.approvalDate', 'min'=>0, 'max'=>1},
        '_approvalDate' => {'type'=>'Element', 'path'=>'SubscriptionTopic._approvalDate', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'type'=>'date', 'path'=>'SubscriptionTopic.lastReviewDate', 'min'=>0, 'max'=>1},
        '_lastReviewDate' => {'type'=>'Element', 'path'=>'SubscriptionTopic._lastReviewDate', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'SubscriptionTopic.effectivePeriod', 'min'=>0, 'max'=>1},
        'resourceTrigger' => {'type'=>'SubscriptionTopic::ResourceTrigger', 'path'=>'SubscriptionTopic.resourceTrigger', 'min'=>0, 'max'=>Float::INFINITY},
        'eventTrigger' => {'type'=>'SubscriptionTopic::EventTrigger', 'path'=>'SubscriptionTopic.eventTrigger', 'min'=>0, 'max'=>Float::INFINITY},
        'canFilterBy' => {'type'=>'SubscriptionTopic::CanFilterBy', 'path'=>'SubscriptionTopic.canFilterBy', 'min'=>0, 'max'=>Float::INFINITY},
        'notificationShape' => {'type'=>'SubscriptionTopic::NotificationShape', 'path'=>'SubscriptionTopic.notificationShape', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class ResourceTrigger < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'ResourceTrigger.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'ResourceTrigger._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ResourceTrigger.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'ResourceTrigger.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'markdown', 'path'=>'ResourceTrigger.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'ResourceTrigger._description', 'min'=>0, 'max'=>1},
          'resource' => {'type'=>'uri', 'path'=>'ResourceTrigger.resource', 'min'=>1, 'max'=>1},
          '_resource' => {'type'=>'Element', 'path'=>'ResourceTrigger._resource', 'min'=>0, 'max'=>1},
          'supportedInteraction' => {'valid_codes'=>{'http://hl7.org/fhir/restful-interaction'=>['create', 'update', 'delete']}, 'type'=>'code', 'path'=>'ResourceTrigger.supportedInteraction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/interaction-trigger'}},
          '_supportedInteraction' => {'type'=>'Element', 'path'=>'ResourceTrigger._supportedInteraction', 'min'=>0, 'max'=>Float::INFINITY},
          'queryCriteria' => {'type'=>'SubscriptionTopic::ResourceTrigger::QueryCriteria', 'path'=>'ResourceTrigger.queryCriteria', 'min'=>0, 'max'=>1},
          'fhirPathCriteria' => {'type'=>'string', 'path'=>'ResourceTrigger.fhirPathCriteria', 'min'=>0, 'max'=>1},
          '_fhirPathCriteria' => {'type'=>'Element', 'path'=>'ResourceTrigger._fhirPathCriteria', 'min'=>0, 'max'=>1}
        }

        class QueryCriteria < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'QueryCriteria.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'QueryCriteria._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'QueryCriteria.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'QueryCriteria.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'previous' => {'type'=>'string', 'path'=>'QueryCriteria.previous', 'min'=>0, 'max'=>1},
            '_previous' => {'type'=>'Element', 'path'=>'QueryCriteria._previous', 'min'=>0, 'max'=>1},
            'resultForCreate' => {'valid_codes'=>{'http://hl7.org/fhir/subscriptiontopic-cr-behavior'=>['test-passes', 'test-fails']}, 'type'=>'code', 'path'=>'QueryCriteria.resultForCreate', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscriptiontopic-cr-behavior'}},
            '_resultForCreate' => {'type'=>'Element', 'path'=>'QueryCriteria._resultForCreate', 'min'=>0, 'max'=>1},
            'current' => {'type'=>'string', 'path'=>'QueryCriteria.current', 'min'=>0, 'max'=>1},
            '_current' => {'type'=>'Element', 'path'=>'QueryCriteria._current', 'min'=>0, 'max'=>1},
            'resultForDelete' => {'valid_codes'=>{'http://hl7.org/fhir/subscriptiontopic-cr-behavior'=>['test-passes', 'test-fails']}, 'type'=>'code', 'path'=>'QueryCriteria.resultForDelete', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscriptiontopic-cr-behavior'}},
            '_resultForDelete' => {'type'=>'Element', 'path'=>'QueryCriteria._resultForDelete', 'min'=>0, 'max'=>1},
            'requireBoth' => {'type'=>'boolean', 'path'=>'QueryCriteria.requireBoth', 'min'=>0, 'max'=>1},
            '_requireBoth' => {'type'=>'Element', 'path'=>'QueryCriteria._requireBoth', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :previous          # 0-1 string
          attr_accessor :_previous         # 0-1 Element
          attr_accessor :resultForCreate   # 0-1 code
          attr_accessor :_resultForCreate  # 0-1 Element
          attr_accessor :current           # 0-1 string
          attr_accessor :_current          # 0-1 Element
          attr_accessor :resultForDelete   # 0-1 code
          attr_accessor :_resultForDelete  # 0-1 Element
          attr_accessor :requireBoth       # 0-1 boolean
          attr_accessor :_requireBoth      # 0-1 Element
        end

        attr_accessor :id                    # 0-1 string
        attr_accessor :_id                   # 0-1 Element
        attr_accessor :extension             # 0-* [ Extension ]
        attr_accessor :modifierExtension     # 0-* [ Extension ]
        attr_accessor :description           # 0-1 markdown
        attr_accessor :_description          # 0-1 Element
        attr_accessor :resource              # 1-1 uri
        attr_accessor :_resource             # 0-1 Element
        attr_accessor :supportedInteraction  # 0-* [ code ]
        attr_accessor :_supportedInteraction # 0-* [ Element ]
        attr_accessor :queryCriteria         # 0-1 SubscriptionTopic::ResourceTrigger::QueryCriteria
        attr_accessor :fhirPathCriteria      # 0-1 string
        attr_accessor :_fhirPathCriteria     # 0-1 Element
      end

      class EventTrigger < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'EventTrigger.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'EventTrigger._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'EventTrigger.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'EventTrigger.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'markdown', 'path'=>'EventTrigger.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'EventTrigger._description', 'min'=>0, 'max'=>1},
          'event' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0003'=>['X01', 'A01', 'A02', 'A03', 'A04', 'A05', 'A06', 'A07', 'A08', 'A09', 'A10', 'A11', 'A12', 'A13', 'A14', 'A15', 'A16', 'A17', 'A18', 'A19', 'A20', 'A21', 'A22', 'A23', 'A24', 'A25', 'A26', 'A27', 'A28', 'A29', 'A30', 'A31', 'A32', 'A33', 'A34', 'A35', 'A36', 'A37', 'A38', 'A39', 'A40', 'A41', 'A42', 'A43', 'A44', 'A45', 'A46', 'A47', 'A48', 'A49', 'A50', 'A51', 'A52', 'A53', 'A54', 'A55', 'A60', 'A61', 'A62', 'B01', 'B02', 'B03', 'B04', 'B05', 'B06', 'B07', 'B08', 'C01', 'C02', 'C03', 'C04', 'C05', 'C06', 'C07', 'C08', 'C09', 'C10', 'C11', 'C12', 'CNQ', 'E01', 'E02', 'E03', 'varies', 'E04', 'E10', 'E12', 'E13', 'E15', 'E20', 'E21', 'E22', 'E24', 'E30', 'E31', 'I01', 'I02', 'I03', 'I04', 'I05', 'I06', 'I07', 'I08', 'I09', 'I10', 'I11', 'I12', 'I13', 'I14', 'I15', 'I16', 'I17', 'I18', 'I19', 'I20', 'I21', 'I22', 'J01', 'J02', 'K11', 'K13', 'K15', 'K21', 'K22', 'K23', 'K24', 'K25', 'K31', 'K32', 'K33', 'K34', 'M01', 'M02', 'M03', 'M04', 'M05', 'M06', 'M07', 'M08', 'M09', 'M10', 'M11', 'M12', 'M13', 'M14', 'M15', 'R0R', 'M16', 'M17', 'M18', 'N01', 'N02', 'O01', 'O02', 'O03', 'O04', 'O05', 'O06', 'O07', 'O08', 'O09', 'O10', 'O11', 'O12', 'O13', 'O14', 'O15', 'O16', 'O17', 'O18', 'O19', 'O20', 'O21', 'O22', 'O23', 'O24', 'O25', 'O26', 'O27', 'O28', 'O29', 'O30', 'O31', 'O32', 'O33', 'O34', 'O35', 'R05', 'O36', 'R06', 'O37', 'O38', 'O39', 'O40', 'O41', 'O42', 'RAR', 'O43', 'RDR', 'Q04', 'O44', 'RER', 'O45', 'RGR', 'O46', 'Q07', 'O47', 'Q08', 'O48', 'Q09', 'O49', 'O50', 'O51', 'O52', 'O53', 'O54', 'O55', 'O56', 'O57', 'O58', 'O59', 'P01', 'P02', 'P03', 'P04', 'P05', 'P06', 'P07', 'R03', 'P08', 'P09', 'P10', 'R07', 'P11', 'R08', 'P12', 'PC1', 'R09', 'PC2', 'PC3', 'PC4', 'PC5', 'PC6', 'PC7', 'PC8', 'PC9', 'PCA', 'PCB', 'PCC', 'PCD', 'PCE', 'PCF', 'PCG', 'PCH', 'PCJ', 'PCK', 'PCL', 'Q01', 'Q02', 'Q03', 'Q05', 'Q06', 'Q11', 'Q13', 'Q15', 'Q16', 'Q17', 'Q21', 'Q22', 'Q23', 'Q24', 'Q25', 'Q26', 'Q27', 'Q28', 'Q29', 'Q30', 'Q31', 'Q32', 'Q33', 'Q34', 'R01', 'R02', 'R04', 'R21', 'R22', 'R23', 'R24', 'R25', 'R26', 'R30', 'R31', 'R32', 'R33', 'R40', 'R41', 'R42', 'R43', 'ROR', 'S01', 'S02', 'S03', 'S04', 'S05', 'S06', 'S07', 'S08', 'S09', 'S10', 'S11', 'S12', 'S13', 'S14', 'S15', 'S16', 'S17', 'S18', 'S19', 'S20', 'S21', 'S22', 'S23', 'S24', 'S25', 'S26', 'S27', 'S28', 'S29', 'S30', 'S31', 'S32', 'S33', 'S34', 'S35', 'S36', 'S37', 'S38', 'S39', 'S40', 'S41', 'S42', 'S43', 'S44', 'S45', 'S46', 'S47', 'S48', 'S49', 'S50', 'S51', 'S52', 'T01', 'T02', 'T03', 'T04', 'T05', 'T06', 'T07', 'T08', 'T09', 'T10', 'T11', 'T12', 'U01', 'U02', 'U03', 'U04', 'U05', 'U06', 'U07', 'U08', 'U09', 'U10', 'U11', 'U12', 'U13', 'U14', 'V01', 'V02', 'V03', 'V04', 'Varies', 'W01', 'W02']}, 'type'=>'CodeableConcept', 'path'=>'EventTrigger.event', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0003'}},
          'resource' => {'type'=>'uri', 'path'=>'EventTrigger.resource', 'min'=>1, 'max'=>1},
          '_resource' => {'type'=>'Element', 'path'=>'EventTrigger._resource', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 0-1 markdown
        attr_accessor :_description      # 0-1 Element
        attr_accessor :event             # 1-1 CodeableConcept
        attr_accessor :resource          # 1-1 uri
        attr_accessor :_resource         # 0-1 Element
      end

      class CanFilterBy < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'CanFilterBy.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'CanFilterBy._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'CanFilterBy.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'CanFilterBy.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'markdown', 'path'=>'CanFilterBy.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'CanFilterBy._description', 'min'=>0, 'max'=>1},
          'resource' => {'type'=>'uri', 'path'=>'CanFilterBy.resource', 'min'=>0, 'max'=>1},
          '_resource' => {'type'=>'Element', 'path'=>'CanFilterBy._resource', 'min'=>0, 'max'=>1},
          'filterParameter' => {'type'=>'string', 'path'=>'CanFilterBy.filterParameter', 'min'=>1, 'max'=>1},
          '_filterParameter' => {'type'=>'Element', 'path'=>'CanFilterBy._filterParameter', 'min'=>0, 'max'=>1},
          'filterDefinition' => {'type'=>'uri', 'path'=>'CanFilterBy.filterDefinition', 'min'=>0, 'max'=>1},
          '_filterDefinition' => {'type'=>'Element', 'path'=>'CanFilterBy._filterDefinition', 'min'=>0, 'max'=>1},
          'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/subscription-search-modifier'=>['=', 'eq', 'ne', 'gt', 'lt', 'ge', 'le', 'sa', 'eb', 'ap', 'above', 'below', 'in', 'not-in', 'of-type']}, 'type'=>'code', 'path'=>'CanFilterBy.modifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-search-modifier'}},
          '_modifier' => {'type'=>'Element', 'path'=>'CanFilterBy._modifier', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 0-1 markdown
        attr_accessor :_description      # 0-1 Element
        attr_accessor :resource          # 0-1 uri
        attr_accessor :_resource         # 0-1 Element
        attr_accessor :filterParameter   # 1-1 string
        attr_accessor :_filterParameter  # 0-1 Element
        attr_accessor :filterDefinition  # 0-1 uri
        attr_accessor :_filterDefinition # 0-1 Element
        attr_accessor :modifier          # 0-* [ code ]
        attr_accessor :_modifier         # 0-* [ Element ]
      end

      class NotificationShape < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'NotificationShape.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'NotificationShape._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'NotificationShape.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'NotificationShape.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'resource' => {'type'=>'uri', 'path'=>'NotificationShape.resource', 'min'=>1, 'max'=>1},
          '_resource' => {'type'=>'Element', 'path'=>'NotificationShape._resource', 'min'=>0, 'max'=>1},
          'include' => {'type'=>'string', 'path'=>'NotificationShape.include', 'min'=>0, 'max'=>Float::INFINITY},
          '_include' => {'type'=>'Element', 'path'=>'NotificationShape._include', 'min'=>0, 'max'=>Float::INFINITY},
          'revInclude' => {'type'=>'string', 'path'=>'NotificationShape.revInclude', 'min'=>0, 'max'=>Float::INFINITY},
          '_revInclude' => {'type'=>'Element', 'path'=>'NotificationShape._revInclude', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :resource          # 1-1 uri
        attr_accessor :_resource         # 0-1 Element
        attr_accessor :include           # 0-* [ string ]
        attr_accessor :_include          # 0-* [ Element ]
        attr_accessor :revInclude        # 0-* [ string ]
        attr_accessor :_revInclude       # 0-* [ Element ]
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
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :version           # 0-1 string
      attr_accessor :_version          # 0-1 Element
      attr_accessor :title             # 0-1 string
      attr_accessor :_title            # 0-1 Element
      attr_accessor :derivedFrom       # 0-* [ canonical ]
      attr_accessor :_derivedFrom      # 0-* [ Element ]
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
      attr_accessor :resourceTrigger   # 0-* [ SubscriptionTopic::ResourceTrigger ]
      attr_accessor :eventTrigger      # 0-* [ SubscriptionTopic::EventTrigger ]
      attr_accessor :canFilterBy       # 0-* [ SubscriptionTopic::CanFilterBy ]
      attr_accessor :notificationShape # 0-* [ SubscriptionTopic::NotificationShape ]

      def resourceType
        'SubscriptionTopic'
      end
    end
  end
end