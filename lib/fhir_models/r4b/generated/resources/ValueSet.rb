module FHIR
  module R4B
    class ValueSet < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['code', 'context', 'context-quantity', 'context-type', 'date', 'description', 'expansion', 'identifier', 'jurisdiction', 'name', 'publisher', 'reference', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ValueSet.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ValueSet._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ValueSet.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ValueSet.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'ValueSet._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'ValueSet.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'ValueSet._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'ValueSet.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ValueSet.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ValueSet.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ValueSet.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'ValueSet.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'ValueSet._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'ValueSet.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'ValueSet.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'ValueSet._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'ValueSet.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'ValueSet._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'ValueSet.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'ValueSet._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'ValueSet.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'ValueSet._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'ValueSet.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'ValueSet._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'ValueSet.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'ValueSet._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'ValueSet.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'ValueSet._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'ValueSet.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'ValueSet.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'ValueSet._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'ValueSet.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AD-03', 'AD-07', 'AD-04', 'AD-05', 'AD-02', 'AD-06', 'AD-08', 'AE-RK', 'AE-SH', 'AE-FU', 'AE-DU', 'AE-AZ', 'AE-UQ', 'AE-AJ', 'AF-BAM', 'AF-KAB', 'AF-KAP', 'AF-KHO', 'AF-KNR', 'AF-KAN', 'AF-LOG', 'AF-PIA', 'AF-SAM', 'AF-URU', 'AF-BDS', 'AF-FYB', 'AF-JOW', 'AF-KDZ', 'AF-LAG', 'AF-NIM', 'AF-BGL', 'AF-FRA', 'AF-HEL', 'AF-PKA', 'AF-SAR', 'AF-BDG', 'AF-GHA', 'AF-PAN', 'AF-TAK', 'AF-WAR', 'AF-BAL', 'AF-GHO', 'AF-DAY', 'AF-HER', 'AF-NAN', 'AF-NUR', 'AF-PAR', 'AF-ZAB', 'AG-03', 'AG-06', 'AG-10', 'AG-07', 'AG-08', 'AG-05', 'AG-04', 'AG-11', 'AL-11', 'AL-12', 'AL-03', 'AL-09', 'AL-01', 'AL-02', 'AL-08', 'AL-10', 'AL-05', 'AL-06', 'AL-07', 'AL-04', 'AM-AG', 'AM-AV', 'AM-KT', 'AM-GR', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-LO', 'AM-ER', 'AM-VD', 'AM-AR', 'AO-CAB', 'AO-CCU', 'AO-ZAI', 'AO-LNO', 'AO-LSU', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-CNO', 'AO-HUI', 'AO-LUA', 'AO-MAL', 'AO-BGO', 'AO-BGU', 'AO-CNN', 'AO-CUS', 'AO-HUA', 'AO-BIE', 'AR-N', 'AR-S', 'AR-Z', 'AR-A', 'AR-C', 'AR-F', 'AR-B', 'AR-G', 'AR-H', 'AR-P', 'AR-X', 'AR-J', 'AR-T', 'AR-E', 'AR-K', 'AR-V', 'AR-W', 'AR-U', 'AR-D', 'AR-L', 'AR-M', 'AR-Q', 'AR-R', 'AR-Y', 'AT-3', 'AT-4', 'AT-5', 'AT-8', 'AT-1', 'AT-7', 'AT-2', 'AT-6', 'AT-9', 'AU-NT', 'AU-QLD', 'AU-TAS', 'AU-ACT', 'AU-NSW', 'AU-SA', 'AU-WA', 'AU-VIC', 'AZ-ABS', 'AZ-BA', 'AZ-BAL', 'AZ-BAR', 'AZ-GOY', 'AZ-MAS', 'AZ-SKR', 'AZ-SR', 'AZ-XA', 'AZ-XIZ', 'AZ-AGC', 'AZ-AGU', 'AZ-BIL', 'AZ-GA', 'AZ-QAB', 'AZ-SMX', 'AZ-XAC', 'AZ-YAR', 'AZ-ZAN', 'AZ-AGA', 'AZ-FUZ', 'AZ-GAD', 'AZ-LAC', 'AZ-QAX', 'AZ-AGM', 'AZ-DAS', 'AZ-GYG', 'AZ-LA', 'AZ-LAN', 'AZ-OGU', 'AZ-QBA', 'AZ-QUS', 'AZ-SAB', 'AZ-CAB', 'AZ-KUR', 'AZ-SAL', 'AZ-SBN', 'AZ-SM', 'AZ-UCA', 'AZ-XCI', 'AZ-YEV', 'AZ-AGS', 'AZ-AST', 'AZ-BEY', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-LER', 'AZ-MI', 'AZ-NEF', 'AZ-NX', 'AZ-QAZ', 'AZ-SAK', 'AZ-SAT', 'AZ-TAR', 'AZ-XVD', 'AZ-CAL', 'AZ-KAL', 'AZ-QOB', 'AZ-SIY', 'AZ-SUS', 'AZ-ZAQ', 'AZ-ZAR', 'AZ-GOR', 'AZ-NA', 'AZ-QBI', 'AZ-SA', 'AZ-SMI', 'AZ-TOV', 'AZ-YE', 'BA-BRC', 'BA-BIH', 'BA-SRP', 'BB-03', 'BB-05', 'BB-02', 'BB-10', 'BB-11', 'BB-08', 'BB-04', 'BB-09', 'BB-01', 'BB-06', 'BB-07', 'BD-B', 'BD-H', 'BD-A', 'BD-C', 'BD-D', 'BD-E', 'BD-F', 'BD-G', 'BE-WAL', 'BE-BRU', 'BE-VLG', 'BF-05', 'BF-01', 'BF-10', 'BF-02', 'BF-03', 'BF-04', 'BF-06', 'BF-07', 'BF-08', 'BF-09', 'BF-11', 'BF-12', 'BF-13', 'BG-04', 'BG-09', 'BG-15', 'BG-16', 'BG-28', 'BG-13', 'BG-18', 'BG-21', 'BG-22', 'BG-27', 'BG-02', 'BG-14', 'BG-19', 'BG-25', 'BG-03', 'BG-24', 'BG-01', 'BG-10', 'BG-12', 'BG-20', 'BG-23', 'BG-11', 'BG-17', 'BG-05', 'BG-06', 'BG-07', 'BG-08', 'BG-26', 'BH-14', 'BH-13', 'BH-15', 'BH-17', 'BI-BM', 'BI-KR', 'BI-MY', 'BI-KI', 'BI-BR', 'BI-CI', 'BI-GI', 'BI-MA', 'BI-MU', 'BI-NG', 'BI-RY', 'BI-KY', 'BI-MW', 'BI-CA', 'BI-BL', 'BI-RT', 'BI-RM', 'BI-BB', 'BJ-AK', 'BJ-CO', 'BJ-BO', 'BJ-OU', 'BJ-LI', 'BJ-AQ', 'BJ-MO', 'BJ-AL', 'BJ-DO', 'BJ-KO', 'BJ-PL', 'BJ-ZO', 'BN-BM', 'BN-BE', 'BN-TE', 'BN-TU', 'BO-C', 'BO-L', 'BO-B', 'BO-O', 'BO-S', 'BO-P', 'BO-T', 'BO-H', 'BO-N', 'BQ-BO', 'BQ-SA', 'BQ-SE', 'BR-AC', 'BR-AM', 'BR-CE', 'BR-RR', 'BR-GO', 'BR-MG', 'BR-ES', 'BR-AP', 'BR-BA', 'BR-MS', 'BR-PR', 'BR-RN', 'BR-MT', 'BR-PB', 'BR-PE', 'BR-RJ', 'BR-RO', 'BR-SC', 'BR-SP', 'BR-AL', 'BR-DF', 'BR-MA', 'BR-PA', 'BR-PI', 'BR-RS', 'BR-SE', 'BR-TO', 'BS-CO', 'BS-EG', 'BS-HI', 'BS-MI', 'BS-SS', 'BS-SW', 'BS-AK', 'BS-LI', 'BS-BY', 'BS-FP', 'BS-NS', 'BS-RC', 'BS-SO', 'BS-CE', 'BS-CI', 'BS-CS', 'BS-EX', 'BS-IN', 'BS-MC', 'BS-SA', 'BS-GC', 'BS-MG', 'BS-WG', 'BS-BI', 'BS-BP', 'BS-NE', 'BS-NO', 'BS-SE', 'BS-CK', 'BS-HT', 'BS-RI', 'BT-42', 'BT-45', 'BT-12', 'BT-23', 'BT-24', 'BT-21', 'BT-33', 'BT-34', 'BT-31', 'BT-14', 'BT-15', 'BT-44', 'BT-TY', 'BT-13', 'BT-41', 'BT-GA', 'BT-22', 'BT-32', 'BT-43', 'BT-11', 'BW-KL', 'BW-GH', 'BW-NW', 'BW-SO', 'BW-KW', 'BW-CH', 'BW-LO', 'BW-SP', 'BW-JW', 'BW-ST', 'BW-FR', 'BW-GA', 'BW-KG', 'BW-CE', 'BW-SE', 'BW-NE', 'BY-VI', 'BY-BR', 'BY-HM', 'BY-HO', 'BY-HR', 'BY-MI', 'BY-MA', 'BZ-OW', 'BZ-CZL', 'BZ-SC', 'BZ-TOL', 'BZ-BZ', 'BZ-CY', 'CA-BC', 'CA-MB', 'CA-NB', 'CA-SK', 'CA-AB', 'CA-ON', 'CA-YT', 'CA-NT', 'CA-NU', 'CA-NL', 'CA-PE', 'CA-NS', 'CA-QC', 'CD-EQ', 'CD-BC', 'CD-SK', 'CD-NK', 'CD-KE', 'CD-KN', 'CD-BU', 'CD-HK', 'CD-HL', 'CD-HU', 'CD-IT', 'CD-KS', 'CD-KC', 'CD-KG', 'CD-KL', 'CD-LO', 'CD-LU', 'CD-MN', 'CD-MO', 'CD-NU', 'CD-SA', 'CD-SU', 'CD-TA', 'CD-TO', 'CD-TU', 'CD-MA', 'CF-HM', 'CF-HS', 'CF-LB', 'CF-AC', 'CF-KB', 'CF-BB', 'CF-MP', 'CF-HK', 'CF-KG', 'CF-MB', 'CF-NM', 'CF-SE', 'CF-VK', 'CF-BGF', 'CF-OP', 'CF-UK', 'CF-BK', 'CG-9', 'CG-15', 'CG-5', 'CG-11', 'CG-BZV', 'CG-16', 'CG-12', 'CG-13', 'CG-7', 'CG-14', 'CG-2', 'CG-8', 'CH-JU', 'CH-LU', 'CH-SO', 'CH-TG', 'CH-BS', 'CH-SZ', 'CH-ZG', 'CH-AG', 'CH-BE', 'CH-FR', 'CH-NE', 'CH-OW', 'CH-TI', 'CH-VD', 'CH-AR', 'CH-GE', 'CH-GL', 'CH-SG', 'CH-GR', 'CH-NW', 'CH-SH', 'CH-ZH', 'CH-AI', 'CH-VS', 'CH-BL', 'CH-UR', 'CI-AB', 'CI-YM', 'CI-BS', 'CI-CM', 'CI-DN', 'CI-GD', 'CI-LC', 'CI-LG', 'CI-MG', 'CI-SM', 'CI-SV', 'CI-VB', 'CI-WR', 'CI-ZZ', 'CL-AN', 'CL-RM', 'CL-TA', 'CL-BI', 'CL-AP', 'CL-AT', 'CL-LL', 'CL-LR', 'CL-ML', 'CL-AR', 'CL-LI', 'CL-AI', 'CL-VS', 'CL-CO', 'CL-MA', 'CM-NW', 'CM-OU', 'CM-AD', 'CM-LT', 'CM-NO', 'CM-CE', 'CM-EN', 'CM-ES', 'CM-SU', 'CM-SW', 'CN-NM', 'CN-GX', 'CN-XZ', 'CN-NX', 'CN-XJ', 'CN-BJ', 'CN-TJ', 'CN-SH', 'CN-CQ', 'CN-HE', 'CN-SX', 'CN-LN', 'CN-JL', 'CN-HL', 'CN-ZJ', 'CN-AH', 'CN-FJ', 'CN-JX', 'CN-SD', 'CN-HA', 'CN-HB', 'CN-HN', 'CN-GD', 'CN-HI', 'CN-SC', 'CN-GZ', 'CN-YN', 'CN-SN', 'CN-GS', 'CN-QH', 'CN-TW', 'CN-HK', 'CN-MO', 'CN-JS', 'CO-BOL', 'CO-MAG', 'CO-MET', 'CO-PUT', 'CO-VID', 'CO-AMA', 'CO-CAL', 'CO-CAU', 'CO-CES', 'CO-DC', 'CO-LAG', 'CO-ARA', 'CO-NSA', 'CO-TOL', 'CO-VAC', 'CO-GUV', 'CO-HUI', 'CO-SUC', 'CO-CAS', 'CO-CHO', 'CO-GUA', 'CO-QUI', 'CO-RIS', 'CO-SAN', 'CO-VAU', 'CO-ANT', 'CO-ATL', 'CO-COR', 'CO-SAP', 'CO-BOY', 'CO-CAQ', 'CO-CUN', 'CO-NAR', 'CR-H', 'CR-L', 'CR-G', 'CR-P', 'CR-A', 'CR-C', 'CR-SJ', 'CU-03', 'CU-07', 'CU-12', 'CU-05', 'CU-11', 'CU-08', 'CU-09', 'CU-10', 'CU-13', 'CU-15', 'CU-16', 'CU-01', 'CU-14', 'CU-99', 'CU-04', 'CU-06', 'CV-B', 'CV-S', 'CY-03', 'CY-06', 'CY-01', 'CY-04', 'CY-05', 'CY-02', 'CZ-42', 'CZ-63', 'CZ-72', 'CZ-31', 'CZ-64', 'CZ-41', 'CZ-52', 'CZ-51', 'CZ-80', 'CZ-71', 'CZ-53', 'CZ-32', 'CZ-20', 'CZ-10', 'DE-BW', 'DE-MV', 'DE-NW', 'DE-SL', 'DE-TH', 'DE-ST', 'DE-HH', 'DE-BB', 'DE-BE', 'DE-BY', 'DE-HB', 'DE-HE', 'DE-NI', 'DE-SH', 'DE-RP', 'DE-SN', 'DJ-OB', 'DJ-AR', 'DJ-DI', 'DJ-DJ', 'DJ-AS', 'DJ-TA', 'DK-82', 'DK-85', 'DK-81', 'DK-84', 'DK-83', 'DM-06', 'DM-08', 'DM-09', 'DM-03', 'DM-02', 'DM-11', 'DM-04', 'DM-10', 'DM-05', 'DM-07', 'DO-33', 'DO-34', 'DO-35', 'DO-36', 'DO-37', 'DO-38', 'DO-39', 'DO-40', 'DO-41', 'DO-42', 'DZ-06', 'DZ-11', 'DZ-13', 'DZ-27', 'DZ-40', 'DZ-03', 'DZ-09', 'DZ-14', 'DZ-15', 'DZ-19', 'DZ-20', 'DZ-35', 'DZ-41', 'DZ-42', 'DZ-44', 'DZ-02', 'DZ-04', 'DZ-05', 'DZ-23', 'DZ-39', 'DZ-01', 'DZ-08', 'DZ-16', 'DZ-28', 'DZ-31', 'DZ-07', 'DZ-24', 'DZ-33', 'DZ-36', 'DZ-38', 'DZ-45', 'DZ-10', 'DZ-21', 'DZ-25', 'DZ-32', 'DZ-43', 'DZ-46', 'DZ-48', 'DZ-17', 'DZ-18', 'DZ-22', 'DZ-30', 'DZ-47', 'DZ-12', 'DZ-26', 'DZ-29', 'DZ-34', 'DZ-37', 'EC-E', 'EC-G', 'EC-X', 'EC-Y', 'EC-A', 'EC-D', 'EC-L', 'EC-O', 'EC-SE', 'EC-Z', 'EC-H', 'EC-SD', 'EC-I', 'EC-M', 'EC-P', 'EC-W', 'EC-C', 'EC-F', 'EC-S', 'EC-U', 'EC-N', 'EC-T', 'EC-B', 'EC-R', 'EE-78', 'EE-49', 'EE-51', 'EE-70', 'EE-84', 'EE-37', 'EE-44', 'EE-57', 'EE-59', 'EE-67', 'EE-74', 'EE-82', 'EE-86', 'EE-65', 'EE-39', 'EG-AST', 'EG-BNS', 'EG-C', 'EG-FYM', 'EG-PTS', 'EG-DT', 'EG-GZ', 'EG-IS', 'EG-SHG', 'EG-BA', 'EG-KB', 'EG-SHR', 'EG-DK', 'EG-LX', 'EG-SIN', 'EG-WAD', 'EG-GH', 'EG-KN', 'EG-MNF', 'EG-SUZ', 'EG-BH', 'EG-MT', 'EG-ALX', 'EG-ASN', 'EG-JS', 'EG-KFS', 'EG-MN', 'ER-GB', 'ER-MA', 'ER-SK', 'ER-DK', 'ER-DU', 'ER-AN', 'ES-CB', 'ES-MC', 'ES-AR', 'ES-AS', 'ES-CE', 'ES-GA', 'ES-RI', 'ES-VC', 'ES-CT', 'ES-IB', 'ES-CM', 'ES-EX', 'ES-MD', 'ES-ML', 'ES-CL', 'ES-CN', 'ES-NC', 'ES-AN', 'ES-PV', 'ET-BE', 'ET-HA', 'ET-SO', 'ET-DD', 'ET-GA', 'ET-AM', 'ET-AA', 'ET-AF', 'ET-OR', 'ET-TI', 'ET-SN', 'FI-06', 'FI-08', 'FI-13', 'FI-18', 'FI-01', 'FI-15', 'FI-14', 'FI-04', 'FI-07', 'FI-09', 'FI-11', 'FI-12', 'FI-19', 'FI-17', 'FI-03', 'FI-05', 'FI-10', 'FI-02', 'FI-16', 'FJ-R', 'FJ-W', 'FJ-N', 'FJ-E', 'FJ-C', 'FM-TRK', 'FM-PNI', 'FM-KSA', 'FM-YAP', 'FR-CP', 'FR-MF', 'FR-NC', 'FR-PM', 'FR-TF', 'FR-WF', 'FR-ARA', 'FR-BFC', 'FR-BRE', 'FR-CVL', 'FR-COR', 'FR-GES', 'FR-HDF', 'FR-IDF', 'FR-NOR', 'FR-NAQ', 'FR-OCC', 'FR-PDL', 'FR-PAC', 'FR-GUA', 'FR-LRE', 'FR-MAY', 'FR-GF', 'FR-MQ', 'FR-BL', 'FR-PF', 'GA-1', 'GA-6', 'GA-7', 'GA-8', 'GA-2', 'GA-4', 'GA-9', 'GA-3', 'GA-5', 'GB-GBN', 'GB-SCT', 'GB-EAW', 'GB-ENG', 'GB-WLS', 'GB-NIR', 'GB-UKM', 'GD-10', 'GD-02', 'GD-05', 'GD-01', 'GD-03', 'GD-06', 'GD-04', 'GE-SK', 'GE-IM', 'GE-SJ', 'GE-GU', 'GE-RL', 'GE-TB', 'GE-KA', 'GE-KK', 'GE-AB', 'GE-AJ', 'GE-MM', 'GE-SZ', 'GH-EP', 'GH-CP', 'GH-NP', 'GH-BA', 'GH-TV', 'GH-UW', 'GH-AH', 'GH-AA', 'GH-UE', 'GH-WP', 'GL-KU', 'GL-SM', 'GL-QA', 'GL-QE', 'GM-M', 'GM-U', 'GM-W', 'GM-L', 'GM-B', 'GM-N', 'GN-M', 'GN-C', 'GN-K', 'GN-L', 'GN-B', 'GN-F', 'GN-D', 'GN-N', 'GQ-I', 'GQ-C', 'GR-H', 'GR-A', 'GR-B', 'GR-F', 'GR-69', 'GR-E', 'GR-K', 'GR-I'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'type'=>'CodeableConcept', 'path'=>'ValueSet.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'immutable' => {'type'=>'boolean', 'path'=>'ValueSet.immutable', 'min'=>0, 'max'=>1},
        '_immutable' => {'type'=>'Element', 'path'=>'ValueSet._immutable', 'min'=>0, 'max'=>1},
        'purpose' => {'type'=>'markdown', 'path'=>'ValueSet.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'ValueSet._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'ValueSet.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'ValueSet._copyright', 'min'=>0, 'max'=>1},
        'compose' => {'type'=>'ValueSet::Compose', 'path'=>'ValueSet.compose', 'min'=>0, 'max'=>1},
        'expansion' => {'type'=>'ValueSet::Expansion', 'path'=>'ValueSet.expansion', 'min'=>0, 'max'=>1}
      }

      class Compose < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Compose.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Compose._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Compose.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Compose.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'lockedDate' => {'type'=>'date', 'path'=>'Compose.lockedDate', 'min'=>0, 'max'=>1},
          '_lockedDate' => {'type'=>'Element', 'path'=>'Compose._lockedDate', 'min'=>0, 'max'=>1},
          'inactive' => {'type'=>'boolean', 'path'=>'Compose.inactive', 'min'=>0, 'max'=>1},
          '_inactive' => {'type'=>'Element', 'path'=>'Compose._inactive', 'min'=>0, 'max'=>1},
          'include' => {'type'=>'ValueSet::Compose::Include', 'path'=>'Compose.include', 'min'=>1, 'max'=>Float::INFINITY},
          'exclude' => {'type'=>'ValueSet::Compose::Include', 'path'=>'Compose.exclude', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Include < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Include.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Include._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Include.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Include.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'system' => {'type'=>'uri', 'path'=>'Include.system', 'min'=>0, 'max'=>1},
            '_system' => {'type'=>'Element', 'path'=>'Include._system', 'min'=>0, 'max'=>1},
            'version' => {'type'=>'string', 'path'=>'Include.version', 'min'=>0, 'max'=>1},
            '_version' => {'type'=>'Element', 'path'=>'Include._version', 'min'=>0, 'max'=>1},
            'concept' => {'type'=>'ValueSet::Compose::Include::Concept', 'path'=>'Include.concept', 'min'=>0, 'max'=>Float::INFINITY},
            'filter' => {'type'=>'ValueSet::Compose::Include::Filter', 'path'=>'Include.filter', 'min'=>0, 'max'=>Float::INFINITY},
            'valueSet' => {'type'=>'canonical', 'path'=>'Include.valueSet', 'min'=>0, 'max'=>Float::INFINITY},
            '_valueSet' => {'type'=>'Element', 'path'=>'Include._valueSet', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Concept < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Concept.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Concept._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Concept.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Concept.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'code' => {'type'=>'code', 'path'=>'Concept.code', 'min'=>1, 'max'=>1},
              '_code' => {'type'=>'Element', 'path'=>'Concept._code', 'min'=>0, 'max'=>1},
              'display' => {'type'=>'string', 'path'=>'Concept.display', 'min'=>0, 'max'=>1},
              '_display' => {'type'=>'Element', 'path'=>'Concept._display', 'min'=>0, 'max'=>1},
              'designation' => {'type'=>'ValueSet::Compose::Include::Concept::Designation', 'path'=>'Concept.designation', 'min'=>0, 'max'=>Float::INFINITY}
            }

            class Designation < FHIR::Model
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
                'id' => {'type'=>'string', 'path'=>'Designation.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'Designation._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'Designation.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'Designation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Designation.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
                '_language' => {'type'=>'Element', 'path'=>'Designation._language', 'min'=>0, 'max'=>1},
                'use' => {'valid_codes'=>{'http://snomed.info/sct'=>['900000000000003001', '900000000000013009']}, 'type'=>'Coding', 'path'=>'Designation.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/designation-use'}},
                'value' => {'type'=>'string', 'path'=>'Designation.value', 'min'=>1, 'max'=>1},
                '_value' => {'type'=>'Element', 'path'=>'Designation._value', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :language          # 0-1 code
              attr_accessor :_language         # 0-1 Element
              attr_accessor :use               # 0-1 Coding
              attr_accessor :value             # 1-1 string
              attr_accessor :_value            # 0-1 Element
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :code              # 1-1 code
            attr_accessor :_code             # 0-1 Element
            attr_accessor :display           # 0-1 string
            attr_accessor :_display          # 0-1 Element
            attr_accessor :designation       # 0-* [ ValueSet::Compose::Include::Concept::Designation ]
          end

          class Filter < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Filter.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Filter._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Filter.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Filter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'property' => {'type'=>'code', 'path'=>'Filter.property', 'min'=>1, 'max'=>1},
              '_property' => {'type'=>'Element', 'path'=>'Filter._property', 'min'=>0, 'max'=>1},
              'op' => {'valid_codes'=>{'http://hl7.org/fhir/filter-operator'=>['=', 'is-a', 'descendent-of', 'is-not-a', 'regex', 'in', 'not-in', 'generalizes', 'exists']}, 'type'=>'code', 'path'=>'Filter.op', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/filter-operator'}},
              '_op' => {'type'=>'Element', 'path'=>'Filter._op', 'min'=>0, 'max'=>1},
              'value' => {'type'=>'string', 'path'=>'Filter.value', 'min'=>1, 'max'=>1},
              '_value' => {'type'=>'Element', 'path'=>'Filter._value', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :property          # 1-1 code
            attr_accessor :_property         # 0-1 Element
            attr_accessor :op                # 1-1 code
            attr_accessor :_op               # 0-1 Element
            attr_accessor :value             # 1-1 string
            attr_accessor :_value            # 0-1 Element
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :system            # 0-1 uri
          attr_accessor :_system           # 0-1 Element
          attr_accessor :version           # 0-1 string
          attr_accessor :_version          # 0-1 Element
          attr_accessor :concept           # 0-* [ ValueSet::Compose::Include::Concept ]
          attr_accessor :filter            # 0-* [ ValueSet::Compose::Include::Filter ]
          attr_accessor :valueSet          # 0-* [ canonical ]
          attr_accessor :_valueSet         # 0-* [ Element ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :lockedDate        # 0-1 date
        attr_accessor :_lockedDate       # 0-1 Element
        attr_accessor :inactive          # 0-1 boolean
        attr_accessor :_inactive         # 0-1 Element
        attr_accessor :include           # 1-* [ ValueSet::Compose::Include ]
        attr_accessor :exclude           # 0-* [ ValueSet::Compose::Include ]
      end

      class Expansion < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Expansion.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Expansion._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Expansion.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Expansion.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'uri', 'path'=>'Expansion.identifier', 'min'=>0, 'max'=>1},
          '_identifier' => {'type'=>'Element', 'path'=>'Expansion._identifier', 'min'=>0, 'max'=>1},
          'timestamp' => {'type'=>'dateTime', 'path'=>'Expansion.timestamp', 'min'=>1, 'max'=>1},
          '_timestamp' => {'type'=>'Element', 'path'=>'Expansion._timestamp', 'min'=>0, 'max'=>1},
          'total' => {'type'=>'integer', 'path'=>'Expansion.total', 'min'=>0, 'max'=>1},
          '_total' => {'type'=>'Element', 'path'=>'Expansion._total', 'min'=>0, 'max'=>1},
          'offset' => {'type'=>'integer', 'path'=>'Expansion.offset', 'min'=>0, 'max'=>1},
          '_offset' => {'type'=>'Element', 'path'=>'Expansion._offset', 'min'=>0, 'max'=>1},
          'parameter' => {'type'=>'ValueSet::Expansion::Parameter', 'path'=>'Expansion.parameter', 'min'=>0, 'max'=>Float::INFINITY},
          'contains' => {'type'=>'ValueSet::Expansion::Contains', 'path'=>'Expansion.contains', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Parameter < FHIR::Model
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
            'value' => ['string', 'boolean', 'integer', 'decimal', 'uri', 'code', 'dateTime']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Parameter.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Parameter._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Parameter.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Parameter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'type'=>'string', 'path'=>'Parameter.name', 'min'=>1, 'max'=>1},
            '_name' => {'type'=>'Element', 'path'=>'Parameter._name', 'min'=>0, 'max'=>1},
            'valueString' => {'type'=>'string', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueString' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueBoolean' => {'type'=>'boolean', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueBoolean' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueInteger' => {'type'=>'integer', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueInteger' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueDecimal' => {'type'=>'decimal', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueDecimal' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueUri' => {'type'=>'uri', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueUri' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueCode' => {'type'=>'code', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueCode' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueDateTime' => {'type'=>'dateTime', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueDateTime' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 string
          attr_accessor :_name             # 0-1 Element
          attr_accessor :valueString       # 0-1 string
          attr_accessor :_valueString      # 0-1 Element
          attr_accessor :valueBoolean      # 0-1 boolean
          attr_accessor :_valueBoolean     # 0-1 Element
          attr_accessor :valueInteger      # 0-1 integer
          attr_accessor :_valueInteger     # 0-1 Element
          attr_accessor :valueDecimal      # 0-1 decimal
          attr_accessor :_valueDecimal     # 0-1 Element
          attr_accessor :valueUri          # 0-1 uri
          attr_accessor :_valueUri         # 0-1 Element
          attr_accessor :valueCode         # 0-1 code
          attr_accessor :_valueCode        # 0-1 Element
          attr_accessor :valueDateTime     # 0-1 dateTime
          attr_accessor :_valueDateTime    # 0-1 Element
        end

        class Contains < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Contains.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Contains._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Contains.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Contains.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'system' => {'type'=>'uri', 'path'=>'Contains.system', 'min'=>0, 'max'=>1},
            '_system' => {'type'=>'Element', 'path'=>'Contains._system', 'min'=>0, 'max'=>1},
            'abstract' => {'type'=>'boolean', 'path'=>'Contains.abstract', 'min'=>0, 'max'=>1},
            '_abstract' => {'type'=>'Element', 'path'=>'Contains._abstract', 'min'=>0, 'max'=>1},
            'inactive' => {'type'=>'boolean', 'path'=>'Contains.inactive', 'min'=>0, 'max'=>1},
            '_inactive' => {'type'=>'Element', 'path'=>'Contains._inactive', 'min'=>0, 'max'=>1},
            'version' => {'type'=>'string', 'path'=>'Contains.version', 'min'=>0, 'max'=>1},
            '_version' => {'type'=>'Element', 'path'=>'Contains._version', 'min'=>0, 'max'=>1},
            'code' => {'type'=>'code', 'path'=>'Contains.code', 'min'=>0, 'max'=>1},
            '_code' => {'type'=>'Element', 'path'=>'Contains._code', 'min'=>0, 'max'=>1},
            'display' => {'type'=>'string', 'path'=>'Contains.display', 'min'=>0, 'max'=>1},
            '_display' => {'type'=>'Element', 'path'=>'Contains._display', 'min'=>0, 'max'=>1},
            'designation' => {'type'=>'ValueSet::Compose::Include::Concept::Designation', 'path'=>'Contains.designation', 'min'=>0, 'max'=>Float::INFINITY},
            'contains' => {'type'=>'ValueSet::Expansion::Contains', 'path'=>'Contains.contains', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :system            # 0-1 uri
          attr_accessor :_system           # 0-1 Element
          attr_accessor :abstract          # 0-1 boolean
          attr_accessor :_abstract         # 0-1 Element
          attr_accessor :inactive          # 0-1 boolean
          attr_accessor :_inactive         # 0-1 Element
          attr_accessor :version           # 0-1 string
          attr_accessor :_version          # 0-1 Element
          attr_accessor :code              # 0-1 code
          attr_accessor :_code             # 0-1 Element
          attr_accessor :display           # 0-1 string
          attr_accessor :_display          # 0-1 Element
          attr_accessor :designation       # 0-* [ ValueSet::Compose::Include::Concept::Designation ]
          attr_accessor :contains          # 0-* [ ValueSet::Expansion::Contains ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-1 uri
        attr_accessor :_identifier       # 0-1 Element
        attr_accessor :timestamp         # 1-1 dateTime
        attr_accessor :_timestamp        # 0-1 Element
        attr_accessor :total             # 0-1 integer
        attr_accessor :_total            # 0-1 Element
        attr_accessor :offset            # 0-1 integer
        attr_accessor :_offset           # 0-1 Element
        attr_accessor :parameter         # 0-* [ ValueSet::Expansion::Parameter ]
        attr_accessor :contains          # 0-* [ ValueSet::Expansion::Contains ]
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
      attr_accessor :immutable         # 0-1 boolean
      attr_accessor :_immutable        # 0-1 Element
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :_purpose          # 0-1 Element
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :compose           # 0-1 ValueSet::Compose
      attr_accessor :expansion         # 0-1 ValueSet::Expansion

      def resourceType
        'ValueSet'
      end
    end
  end
end