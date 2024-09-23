module FHIR
  module R4B
    class StructureMap < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'description', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'StructureMap.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'StructureMap._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'StructureMap.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'StructureMap.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'StructureMap._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'StructureMap.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'StructureMap._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'StructureMap.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'StructureMap.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'StructureMap.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'StructureMap.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'StructureMap.url', 'min'=>1, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'StructureMap._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'StructureMap.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'StructureMap.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'StructureMap._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'StructureMap.name', 'min'=>1, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'StructureMap._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'StructureMap.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'StructureMap._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'StructureMap.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'StructureMap._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'StructureMap.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'StructureMap._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'StructureMap.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'StructureMap._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'StructureMap.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'StructureMap._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'StructureMap.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'StructureMap.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'StructureMap._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'StructureMap.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AD-03', 'AD-07', 'AD-04', 'AD-05', 'AD-02', 'AD-06', 'AD-08', 'AE-RK', 'AE-SH', 'AE-FU', 'AE-DU', 'AE-AZ', 'AE-UQ', 'AE-AJ', 'AF-BAM', 'AF-KAB', 'AF-KAP', 'AF-KHO', 'AF-KNR', 'AF-KAN', 'AF-LOG', 'AF-PIA', 'AF-SAM', 'AF-URU', 'AF-BDS', 'AF-FYB', 'AF-JOW', 'AF-KDZ', 'AF-LAG', 'AF-NIM', 'AF-BGL', 'AF-FRA', 'AF-HEL', 'AF-PKA', 'AF-SAR', 'AF-BDG', 'AF-GHA', 'AF-PAN', 'AF-TAK', 'AF-WAR', 'AF-BAL', 'AF-GHO', 'AF-DAY', 'AF-HER', 'AF-NAN', 'AF-NUR', 'AF-PAR', 'AF-ZAB', 'AG-03', 'AG-06', 'AG-10', 'AG-07', 'AG-08', 'AG-05', 'AG-04', 'AG-11', 'AL-11', 'AL-12', 'AL-03', 'AL-09', 'AL-01', 'AL-02', 'AL-08', 'AL-10', 'AL-05', 'AL-06', 'AL-07', 'AL-04', 'AM-AG', 'AM-AV', 'AM-KT', 'AM-GR', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-LO', 'AM-ER', 'AM-VD', 'AM-AR', 'AO-CAB', 'AO-CCU', 'AO-ZAI', 'AO-LNO', 'AO-LSU', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-CNO', 'AO-HUI', 'AO-LUA', 'AO-MAL', 'AO-BGO', 'AO-BGU', 'AO-CNN', 'AO-CUS', 'AO-HUA', 'AO-BIE', 'AR-N', 'AR-S', 'AR-Z', 'AR-A', 'AR-C', 'AR-F', 'AR-B', 'AR-G', 'AR-H', 'AR-P', 'AR-X', 'AR-J', 'AR-T', 'AR-E', 'AR-K', 'AR-V', 'AR-W', 'AR-U', 'AR-D', 'AR-L', 'AR-M', 'AR-Q', 'AR-R', 'AR-Y', 'AT-3', 'AT-4', 'AT-5', 'AT-8', 'AT-1', 'AT-7', 'AT-2', 'AT-6', 'AT-9', 'AU-NT', 'AU-QLD', 'AU-TAS', 'AU-ACT', 'AU-NSW', 'AU-SA', 'AU-WA', 'AU-VIC', 'AZ-ABS', 'AZ-BA', 'AZ-BAL', 'AZ-BAR', 'AZ-GOY', 'AZ-MAS', 'AZ-SKR', 'AZ-SR', 'AZ-XA', 'AZ-XIZ', 'AZ-AGC', 'AZ-AGU', 'AZ-BIL', 'AZ-GA', 'AZ-QAB', 'AZ-SMX', 'AZ-XAC', 'AZ-YAR', 'AZ-ZAN', 'AZ-AGA', 'AZ-FUZ', 'AZ-GAD', 'AZ-LAC', 'AZ-QAX', 'AZ-AGM', 'AZ-DAS', 'AZ-GYG', 'AZ-LA', 'AZ-LAN', 'AZ-OGU', 'AZ-QBA', 'AZ-QUS', 'AZ-SAB', 'AZ-CAB', 'AZ-KUR', 'AZ-SAL', 'AZ-SBN', 'AZ-SM', 'AZ-UCA', 'AZ-XCI', 'AZ-YEV', 'AZ-AGS', 'AZ-AST', 'AZ-BEY', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-LER', 'AZ-MI', 'AZ-NEF', 'AZ-NX', 'AZ-QAZ', 'AZ-SAK', 'AZ-SAT', 'AZ-TAR', 'AZ-XVD', 'AZ-CAL', 'AZ-KAL', 'AZ-QOB', 'AZ-SIY', 'AZ-SUS', 'AZ-ZAQ', 'AZ-ZAR', 'AZ-GOR', 'AZ-NA', 'AZ-QBI', 'AZ-SA', 'AZ-SMI', 'AZ-TOV', 'AZ-YE', 'BA-BRC', 'BA-BIH', 'BA-SRP', 'BB-03', 'BB-05', 'BB-02', 'BB-10', 'BB-11', 'BB-08', 'BB-04', 'BB-09', 'BB-01', 'BB-06', 'BB-07', 'BD-B', 'BD-H', 'BD-A', 'BD-C', 'BD-D', 'BD-E', 'BD-F', 'BD-G', 'BE-WAL', 'BE-BRU', 'BE-VLG', 'BF-05', 'BF-01', 'BF-10', 'BF-02', 'BF-03', 'BF-04', 'BF-06', 'BF-07', 'BF-08', 'BF-09', 'BF-11', 'BF-12', 'BF-13', 'BG-04', 'BG-09', 'BG-15', 'BG-16', 'BG-28', 'BG-13', 'BG-18', 'BG-21', 'BG-22', 'BG-27', 'BG-02', 'BG-14', 'BG-19', 'BG-25', 'BG-03', 'BG-24', 'BG-01', 'BG-10', 'BG-12', 'BG-20', 'BG-23', 'BG-11', 'BG-17', 'BG-05', 'BG-06', 'BG-07', 'BG-08', 'BG-26', 'BH-14', 'BH-13', 'BH-15', 'BH-17', 'BI-BM', 'BI-KR', 'BI-MY', 'BI-KI', 'BI-BR', 'BI-CI', 'BI-GI', 'BI-MA', 'BI-MU', 'BI-NG', 'BI-RY', 'BI-KY', 'BI-MW', 'BI-CA', 'BI-BL', 'BI-RT', 'BI-RM', 'BI-BB', 'BJ-AK', 'BJ-CO', 'BJ-BO', 'BJ-OU', 'BJ-LI', 'BJ-AQ', 'BJ-MO', 'BJ-AL', 'BJ-DO', 'BJ-KO', 'BJ-PL', 'BJ-ZO', 'BN-BM', 'BN-BE', 'BN-TE', 'BN-TU', 'BO-C', 'BO-L', 'BO-B', 'BO-O', 'BO-S', 'BO-P', 'BO-T', 'BO-H', 'BO-N', 'BQ-BO', 'BQ-SA', 'BQ-SE', 'BR-AC', 'BR-AM', 'BR-CE', 'BR-RR', 'BR-GO', 'BR-MG', 'BR-ES', 'BR-AP', 'BR-BA', 'BR-MS', 'BR-PR', 'BR-RN', 'BR-MT', 'BR-PB', 'BR-PE', 'BR-RJ', 'BR-RO', 'BR-SC', 'BR-SP', 'BR-AL', 'BR-DF', 'BR-MA', 'BR-PA', 'BR-PI', 'BR-RS', 'BR-SE', 'BR-TO', 'BS-CO', 'BS-EG', 'BS-HI', 'BS-MI', 'BS-SS', 'BS-SW', 'BS-AK', 'BS-LI', 'BS-BY', 'BS-FP', 'BS-NS', 'BS-RC', 'BS-SO', 'BS-CE', 'BS-CI', 'BS-CS', 'BS-EX', 'BS-IN', 'BS-MC', 'BS-SA', 'BS-GC', 'BS-MG', 'BS-WG', 'BS-BI', 'BS-BP', 'BS-NE', 'BS-NO', 'BS-SE', 'BS-CK', 'BS-HT', 'BS-RI', 'BT-42', 'BT-45', 'BT-12', 'BT-23', 'BT-24', 'BT-21', 'BT-33', 'BT-34', 'BT-31', 'BT-14', 'BT-15', 'BT-44', 'BT-TY', 'BT-13', 'BT-41', 'BT-GA', 'BT-22', 'BT-32', 'BT-43', 'BT-11', 'BW-KL', 'BW-GH', 'BW-NW', 'BW-SO', 'BW-KW', 'BW-CH', 'BW-LO', 'BW-SP', 'BW-JW', 'BW-ST', 'BW-FR', 'BW-GA', 'BW-KG', 'BW-CE', 'BW-SE', 'BW-NE', 'BY-VI', 'BY-BR', 'BY-HM', 'BY-HO', 'BY-HR', 'BY-MI', 'BY-MA', 'BZ-OW', 'BZ-CZL', 'BZ-SC', 'BZ-TOL', 'BZ-BZ', 'BZ-CY', 'CA-BC', 'CA-MB', 'CA-NB', 'CA-SK', 'CA-AB', 'CA-ON', 'CA-YT', 'CA-NT', 'CA-NU', 'CA-NL', 'CA-PE', 'CA-NS', 'CA-QC', 'CD-EQ', 'CD-BC', 'CD-SK', 'CD-NK', 'CD-KE', 'CD-KN', 'CD-BU', 'CD-HK', 'CD-HL', 'CD-HU', 'CD-IT', 'CD-KS', 'CD-KC', 'CD-KG', 'CD-KL', 'CD-LO', 'CD-LU', 'CD-MN', 'CD-MO', 'CD-NU', 'CD-SA', 'CD-SU', 'CD-TA', 'CD-TO', 'CD-TU', 'CD-MA', 'CF-HM', 'CF-HS', 'CF-LB', 'CF-AC', 'CF-KB', 'CF-BB', 'CF-MP', 'CF-HK', 'CF-KG', 'CF-MB', 'CF-NM', 'CF-SE', 'CF-VK', 'CF-BGF', 'CF-OP', 'CF-UK', 'CF-BK', 'CG-9', 'CG-15', 'CG-5', 'CG-11', 'CG-BZV', 'CG-16', 'CG-12', 'CG-13', 'CG-7', 'CG-14', 'CG-2', 'CG-8', 'CH-JU', 'CH-LU', 'CH-SO', 'CH-TG', 'CH-BS', 'CH-SZ', 'CH-ZG', 'CH-AG', 'CH-BE', 'CH-FR', 'CH-NE', 'CH-OW', 'CH-TI', 'CH-VD', 'CH-AR', 'CH-GE', 'CH-GL', 'CH-SG', 'CH-GR', 'CH-NW', 'CH-SH', 'CH-ZH', 'CH-AI', 'CH-VS', 'CH-BL', 'CH-UR', 'CI-AB', 'CI-YM', 'CI-BS', 'CI-CM', 'CI-DN', 'CI-GD', 'CI-LC', 'CI-LG', 'CI-MG', 'CI-SM', 'CI-SV', 'CI-VB', 'CI-WR', 'CI-ZZ', 'CL-AN', 'CL-RM', 'CL-TA', 'CL-BI', 'CL-AP', 'CL-AT', 'CL-LL', 'CL-LR', 'CL-ML', 'CL-AR', 'CL-LI', 'CL-AI', 'CL-VS', 'CL-CO', 'CL-MA', 'CM-NW', 'CM-OU', 'CM-AD', 'CM-LT', 'CM-NO', 'CM-CE', 'CM-EN', 'CM-ES', 'CM-SU', 'CM-SW', 'CN-NM', 'CN-GX', 'CN-XZ', 'CN-NX', 'CN-XJ', 'CN-BJ', 'CN-TJ', 'CN-SH', 'CN-CQ', 'CN-HE', 'CN-SX', 'CN-LN', 'CN-JL', 'CN-HL', 'CN-ZJ', 'CN-AH', 'CN-FJ', 'CN-JX', 'CN-SD', 'CN-HA', 'CN-HB', 'CN-HN', 'CN-GD', 'CN-HI', 'CN-SC', 'CN-GZ', 'CN-YN', 'CN-SN', 'CN-GS', 'CN-QH', 'CN-TW', 'CN-HK', 'CN-MO', 'CN-JS', 'CO-BOL', 'CO-MAG', 'CO-MET', 'CO-PUT', 'CO-VID', 'CO-AMA', 'CO-CAL', 'CO-CAU', 'CO-CES', 'CO-DC', 'CO-LAG', 'CO-ARA', 'CO-NSA', 'CO-TOL', 'CO-VAC', 'CO-GUV', 'CO-HUI', 'CO-SUC', 'CO-CAS', 'CO-CHO', 'CO-GUA', 'CO-QUI', 'CO-RIS', 'CO-SAN', 'CO-VAU', 'CO-ANT', 'CO-ATL', 'CO-COR', 'CO-SAP', 'CO-BOY', 'CO-CAQ', 'CO-CUN', 'CO-NAR', 'CR-H', 'CR-L', 'CR-G', 'CR-P', 'CR-A', 'CR-C', 'CR-SJ', 'CU-03', 'CU-07', 'CU-12', 'CU-05', 'CU-11', 'CU-08', 'CU-09', 'CU-10', 'CU-13', 'CU-15', 'CU-16', 'CU-01', 'CU-14', 'CU-99', 'CU-04', 'CU-06', 'CV-B', 'CV-S', 'CY-03', 'CY-06', 'CY-01', 'CY-04', 'CY-05', 'CY-02', 'CZ-42', 'CZ-63', 'CZ-72', 'CZ-31', 'CZ-64', 'CZ-41', 'CZ-52', 'CZ-51', 'CZ-80', 'CZ-71', 'CZ-53', 'CZ-32', 'CZ-20', 'CZ-10', 'DE-BW', 'DE-MV', 'DE-NW', 'DE-SL', 'DE-TH', 'DE-ST', 'DE-HH', 'DE-BB', 'DE-BE', 'DE-BY', 'DE-HB', 'DE-HE', 'DE-NI', 'DE-SH', 'DE-RP', 'DE-SN', 'DJ-OB', 'DJ-AR', 'DJ-DI', 'DJ-DJ', 'DJ-AS', 'DJ-TA', 'DK-82', 'DK-85', 'DK-81', 'DK-84', 'DK-83', 'DM-06', 'DM-08', 'DM-09', 'DM-03', 'DM-02', 'DM-11', 'DM-04', 'DM-10', 'DM-05', 'DM-07', 'DO-33', 'DO-34', 'DO-35', 'DO-36', 'DO-37', 'DO-38', 'DO-39', 'DO-40', 'DO-41', 'DO-42', 'DZ-06', 'DZ-11', 'DZ-13', 'DZ-27', 'DZ-40', 'DZ-03', 'DZ-09', 'DZ-14', 'DZ-15', 'DZ-19', 'DZ-20', 'DZ-35', 'DZ-41', 'DZ-42', 'DZ-44', 'DZ-02', 'DZ-04', 'DZ-05', 'DZ-23', 'DZ-39', 'DZ-01', 'DZ-08', 'DZ-16', 'DZ-28', 'DZ-31', 'DZ-07', 'DZ-24', 'DZ-33', 'DZ-36', 'DZ-38', 'DZ-45', 'DZ-10', 'DZ-21', 'DZ-25', 'DZ-32', 'DZ-43', 'DZ-46', 'DZ-48', 'DZ-17', 'DZ-18', 'DZ-22', 'DZ-30', 'DZ-47', 'DZ-12', 'DZ-26', 'DZ-29', 'DZ-34', 'DZ-37', 'EC-E', 'EC-G', 'EC-X', 'EC-Y', 'EC-A', 'EC-D', 'EC-L', 'EC-O', 'EC-SE', 'EC-Z', 'EC-H', 'EC-SD', 'EC-I', 'EC-M', 'EC-P', 'EC-W', 'EC-C', 'EC-F', 'EC-S', 'EC-U', 'EC-N', 'EC-T', 'EC-B', 'EC-R', 'EE-78', 'EE-49', 'EE-51', 'EE-70', 'EE-84', 'EE-37', 'EE-44', 'EE-57', 'EE-59', 'EE-67', 'EE-74', 'EE-82', 'EE-86', 'EE-65', 'EE-39', 'EG-AST', 'EG-BNS', 'EG-C', 'EG-FYM', 'EG-PTS', 'EG-DT', 'EG-GZ', 'EG-IS', 'EG-SHG', 'EG-BA', 'EG-KB', 'EG-SHR', 'EG-DK', 'EG-LX', 'EG-SIN', 'EG-WAD', 'EG-GH', 'EG-KN', 'EG-MNF', 'EG-SUZ', 'EG-BH', 'EG-MT', 'EG-ALX', 'EG-ASN', 'EG-JS', 'EG-KFS', 'EG-MN', 'ER-GB', 'ER-MA', 'ER-SK', 'ER-DK', 'ER-DU', 'ER-AN', 'ES-CB', 'ES-MC', 'ES-AR', 'ES-AS', 'ES-CE', 'ES-GA', 'ES-RI', 'ES-VC', 'ES-CT', 'ES-IB', 'ES-CM', 'ES-EX', 'ES-MD', 'ES-ML', 'ES-CL', 'ES-CN', 'ES-NC', 'ES-AN', 'ES-PV', 'ET-BE', 'ET-HA', 'ET-SO', 'ET-DD', 'ET-GA', 'ET-AM', 'ET-AA', 'ET-AF', 'ET-OR', 'ET-TI', 'ET-SN', 'FI-06', 'FI-08', 'FI-13', 'FI-18', 'FI-01', 'FI-15', 'FI-14', 'FI-04', 'FI-07', 'FI-09', 'FI-11', 'FI-12', 'FI-19', 'FI-17', 'FI-03', 'FI-05', 'FI-10', 'FI-02', 'FI-16', 'FJ-R', 'FJ-W', 'FJ-N', 'FJ-E', 'FJ-C', 'FM-TRK', 'FM-PNI', 'FM-KSA', 'FM-YAP', 'FR-CP', 'FR-MF', 'FR-NC', 'FR-PM', 'FR-TF', 'FR-WF', 'FR-ARA', 'FR-BFC', 'FR-BRE', 'FR-CVL', 'FR-COR', 'FR-GES', 'FR-HDF', 'FR-IDF', 'FR-NOR', 'FR-NAQ', 'FR-OCC', 'FR-PDL', 'FR-PAC', 'FR-GUA', 'FR-LRE', 'FR-MAY', 'FR-GF', 'FR-MQ', 'FR-BL', 'FR-PF', 'GA-1', 'GA-6', 'GA-7', 'GA-8', 'GA-2', 'GA-4', 'GA-9', 'GA-3', 'GA-5', 'GB-GBN', 'GB-SCT', 'GB-EAW', 'GB-ENG', 'GB-WLS', 'GB-NIR', 'GB-UKM', 'GD-10', 'GD-02', 'GD-05', 'GD-01', 'GD-03', 'GD-06', 'GD-04', 'GE-SK', 'GE-IM', 'GE-SJ', 'GE-GU', 'GE-RL', 'GE-TB', 'GE-KA', 'GE-KK', 'GE-AB', 'GE-AJ', 'GE-MM', 'GE-SZ', 'GH-EP', 'GH-CP', 'GH-NP', 'GH-BA', 'GH-TV', 'GH-UW', 'GH-AH', 'GH-AA', 'GH-UE', 'GH-WP', 'GL-KU', 'GL-SM', 'GL-QA', 'GL-QE', 'GM-M', 'GM-U', 'GM-W', 'GM-L', 'GM-B', 'GM-N', 'GN-M', 'GN-C', 'GN-K', 'GN-L', 'GN-B', 'GN-F', 'GN-D', 'GN-N', 'GQ-I', 'GQ-C', 'GR-H', 'GR-A', 'GR-B', 'GR-F', 'GR-69', 'GR-E', 'GR-K', 'GR-I'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'type'=>'CodeableConcept', 'path'=>'StructureMap.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'StructureMap.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'StructureMap._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'StructureMap.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'StructureMap._copyright', 'min'=>0, 'max'=>1},
        'structure' => {'type'=>'StructureMap::Structure', 'path'=>'StructureMap.structure', 'min'=>0, 'max'=>Float::INFINITY},
        'import' => {'type'=>'canonical', 'path'=>'StructureMap.import', 'min'=>0, 'max'=>Float::INFINITY},
        '_import' => {'type'=>'Element', 'path'=>'StructureMap._import', 'min'=>0, 'max'=>Float::INFINITY},
        'group' => {'type'=>'StructureMap::Group', 'path'=>'StructureMap.group', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Structure < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Structure.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Structure._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Structure.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Structure.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'url' => {'type'=>'canonical', 'path'=>'Structure.url', 'min'=>1, 'max'=>1},
          '_url' => {'type'=>'Element', 'path'=>'Structure._url', 'min'=>0, 'max'=>1},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/map-model-mode'=>['source', 'queried', 'target', 'produced']}, 'type'=>'code', 'path'=>'Structure.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-model-mode'}},
          '_mode' => {'type'=>'Element', 'path'=>'Structure._mode', 'min'=>0, 'max'=>1},
          'alias' => {'type'=>'string', 'path'=>'Structure.alias', 'min'=>0, 'max'=>1},
          '_alias' => {'type'=>'Element', 'path'=>'Structure._alias', 'min'=>0, 'max'=>1},
          'documentation' => {'type'=>'string', 'path'=>'Structure.documentation', 'min'=>0, 'max'=>1},
          '_documentation' => {'type'=>'Element', 'path'=>'Structure._documentation', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :url               # 1-1 canonical
        attr_accessor :_url              # 0-1 Element
        attr_accessor :mode              # 1-1 code
        attr_accessor :_mode             # 0-1 Element
        attr_accessor :alias             # 0-1 string
        attr_accessor :_alias            # 0-1 Element
        attr_accessor :documentation     # 0-1 string
        attr_accessor :_documentation    # 0-1 Element
      end

      class Group < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Group.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Group._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Group.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Group.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'id', 'path'=>'Group.name', 'min'=>1, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Group._name', 'min'=>0, 'max'=>1},
          'extends' => {'type'=>'id', 'path'=>'Group.extends', 'min'=>0, 'max'=>1},
          '_extends' => {'type'=>'Element', 'path'=>'Group._extends', 'min'=>0, 'max'=>1},
          'typeMode' => {'valid_codes'=>{'http://hl7.org/fhir/map-group-type-mode'=>['none', 'types', 'type-and-types']}, 'type'=>'code', 'path'=>'Group.typeMode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-group-type-mode'}},
          '_typeMode' => {'type'=>'Element', 'path'=>'Group._typeMode', 'min'=>0, 'max'=>1},
          'documentation' => {'type'=>'string', 'path'=>'Group.documentation', 'min'=>0, 'max'=>1},
          '_documentation' => {'type'=>'Element', 'path'=>'Group._documentation', 'min'=>0, 'max'=>1},
          'input' => {'type'=>'StructureMap::Group::Input', 'path'=>'Group.input', 'min'=>1, 'max'=>Float::INFINITY},
          'rule' => {'type'=>'StructureMap::Group::Rule', 'path'=>'Group.rule', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Input < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Input.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Input._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Input.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Input.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'type'=>'id', 'path'=>'Input.name', 'min'=>1, 'max'=>1},
            '_name' => {'type'=>'Element', 'path'=>'Input._name', 'min'=>0, 'max'=>1},
            'type' => {'type'=>'string', 'path'=>'Input.type', 'min'=>0, 'max'=>1},
            '_type' => {'type'=>'Element', 'path'=>'Input._type', 'min'=>0, 'max'=>1},
            'mode' => {'valid_codes'=>{'http://hl7.org/fhir/map-input-mode'=>['source', 'target']}, 'type'=>'code', 'path'=>'Input.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-input-mode'}},
            '_mode' => {'type'=>'Element', 'path'=>'Input._mode', 'min'=>0, 'max'=>1},
            'documentation' => {'type'=>'string', 'path'=>'Input.documentation', 'min'=>0, 'max'=>1},
            '_documentation' => {'type'=>'Element', 'path'=>'Input._documentation', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 id
          attr_accessor :_name             # 0-1 Element
          attr_accessor :type              # 0-1 string
          attr_accessor :_type             # 0-1 Element
          attr_accessor :mode              # 1-1 code
          attr_accessor :_mode             # 0-1 Element
          attr_accessor :documentation     # 0-1 string
          attr_accessor :_documentation    # 0-1 Element
        end

        class Rule < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Rule.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Rule._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Rule.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Rule.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'type'=>'id', 'path'=>'Rule.name', 'min'=>1, 'max'=>1},
            '_name' => {'type'=>'Element', 'path'=>'Rule._name', 'min'=>0, 'max'=>1},
            'source' => {'type'=>'StructureMap::Group::Rule::Source', 'path'=>'Rule.source', 'min'=>1, 'max'=>Float::INFINITY},
            'target' => {'type'=>'StructureMap::Group::Rule::Target', 'path'=>'Rule.target', 'min'=>0, 'max'=>Float::INFINITY},
            'rule' => {'type'=>'StructureMap::Group::Rule', 'path'=>'Rule.rule', 'min'=>0, 'max'=>Float::INFINITY},
            'dependent' => {'type'=>'StructureMap::Group::Rule::Dependent', 'path'=>'Rule.dependent', 'min'=>0, 'max'=>Float::INFINITY},
            'documentation' => {'type'=>'string', 'path'=>'Rule.documentation', 'min'=>0, 'max'=>1},
            '_documentation' => {'type'=>'Element', 'path'=>'Rule._documentation', 'min'=>0, 'max'=>1}
          }

          class Source < FHIR::Model
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
              'defaultValue' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
            }
            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Source.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Source._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Source.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Source.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'context' => {'type'=>'id', 'path'=>'Source.context', 'min'=>1, 'max'=>1},
              '_context' => {'type'=>'Element', 'path'=>'Source._context', 'min'=>0, 'max'=>1},
              'min' => {'type'=>'integer', 'path'=>'Source.min', 'min'=>0, 'max'=>1},
              '_min' => {'type'=>'Element', 'path'=>'Source._min', 'min'=>0, 'max'=>1},
              'max' => {'type'=>'string', 'path'=>'Source.max', 'min'=>0, 'max'=>1},
              '_max' => {'type'=>'Element', 'path'=>'Source._max', 'min'=>0, 'max'=>1},
              'type' => {'type'=>'string', 'path'=>'Source.type', 'min'=>0, 'max'=>1},
              '_type' => {'type'=>'Element', 'path'=>'Source._type', 'min'=>0, 'max'=>1},
              'defaultValueBase64Binary' => {'type'=>'base64Binary', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueBase64Binary' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueBoolean' => {'type'=>'boolean', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueBoolean' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueCanonical' => {'type'=>'canonical', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueCanonical' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueCode' => {'type'=>'code', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueCode' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueDate' => {'type'=>'date', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueDate' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueDateTime' => {'type'=>'dateTime', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueDateTime' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueDecimal' => {'type'=>'decimal', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueDecimal' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueId' => {'type'=>'id', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueId' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueInstant' => {'type'=>'instant', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueInstant' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueInteger' => {'type'=>'integer', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueInteger' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueMarkdown' => {'type'=>'markdown', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueMarkdown' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueOid' => {'type'=>'oid', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueOid' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValuePositiveInt' => {'type'=>'positiveInt', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValuePositiveInt' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueString' => {'type'=>'string', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueString' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueTime' => {'type'=>'time', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueTime' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueUnsignedInt' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueUri' => {'type'=>'uri', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueUri' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueUrl' => {'type'=>'url', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueUrl' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueUuid' => {'type'=>'uuid', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              '_defaultValueUuid' => {'type'=>'Element', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueAddress' => {'type'=>'Address', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueAge' => {'type'=>'Age', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueAnnotation' => {'type'=>'Annotation', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueAttachment' => {'type'=>'Attachment', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueCoding' => {'type'=>'Coding', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueContactPoint' => {'type'=>'ContactPoint', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueCount' => {'type'=>'Count', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueDistance' => {'type'=>'Distance', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueDuration' => {'type'=>'Duration', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueHumanName' => {'type'=>'HumanName', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueIdentifier' => {'type'=>'Identifier', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueMoney' => {'type'=>'Money', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValuePeriod' => {'type'=>'Period', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueQuantity' => {'type'=>'Quantity', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueRange' => {'type'=>'Range', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueRatio' => {'type'=>'Ratio', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueReference' => {'type'=>'Reference', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueSampledData' => {'type'=>'SampledData', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueSignature' => {'type'=>'Signature', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueTiming' => {'type'=>'Timing', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueContactDetail' => {'type'=>'ContactDetail', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueContributor' => {'type'=>'Contributor', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueDataRequirement' => {'type'=>'DataRequirement', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueExpression' => {'type'=>'Expression', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueParameterDefinition' => {'type'=>'ParameterDefinition', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueRelatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueTriggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueUsageContext' => {'type'=>'UsageContext', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueDosage' => {'type'=>'Dosage', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'defaultValueMeta' => {'type'=>'Meta', 'path'=>'Source.defaultValue[x]', 'min'=>0, 'max'=>1},
              'element' => {'type'=>'string', 'path'=>'Source.element', 'min'=>0, 'max'=>1},
              '_element' => {'type'=>'Element', 'path'=>'Source._element', 'min'=>0, 'max'=>1},
              'listMode' => {'valid_codes'=>{'http://hl7.org/fhir/map-source-list-mode'=>['first', 'not_first', 'last', 'not_last', 'only_one']}, 'type'=>'code', 'path'=>'Source.listMode', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-source-list-mode'}},
              '_listMode' => {'type'=>'Element', 'path'=>'Source._listMode', 'min'=>0, 'max'=>1},
              'variable' => {'type'=>'id', 'path'=>'Source.variable', 'min'=>0, 'max'=>1},
              '_variable' => {'type'=>'Element', 'path'=>'Source._variable', 'min'=>0, 'max'=>1},
              'condition' => {'type'=>'string', 'path'=>'Source.condition', 'min'=>0, 'max'=>1},
              '_condition' => {'type'=>'Element', 'path'=>'Source._condition', 'min'=>0, 'max'=>1},
              'check' => {'type'=>'string', 'path'=>'Source.check', 'min'=>0, 'max'=>1},
              '_check' => {'type'=>'Element', 'path'=>'Source._check', 'min'=>0, 'max'=>1},
              'logMessage' => {'type'=>'string', 'path'=>'Source.logMessage', 'min'=>0, 'max'=>1},
              '_logMessage' => {'type'=>'Element', 'path'=>'Source._logMessage', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                              # 0-1 string
            attr_accessor :_id                             # 0-1 Element
            attr_accessor :extension                       # 0-* [ Extension ]
            attr_accessor :modifierExtension               # 0-* [ Extension ]
            attr_accessor :context                         # 1-1 id
            attr_accessor :_context                        # 0-1 Element
            attr_accessor :min                             # 0-1 integer
            attr_accessor :_min                            # 0-1 Element
            attr_accessor :max                             # 0-1 string
            attr_accessor :_max                            # 0-1 Element
            attr_accessor :type                            # 0-1 string
            attr_accessor :_type                           # 0-1 Element
            attr_accessor :defaultValueBase64Binary        # 0-1 base64Binary
            attr_accessor :_defaultValueBase64Binary       # 0-1 Element
            attr_accessor :defaultValueBoolean             # 0-1 boolean
            attr_accessor :_defaultValueBoolean            # 0-1 Element
            attr_accessor :defaultValueCanonical           # 0-1 canonical
            attr_accessor :_defaultValueCanonical          # 0-1 Element
            attr_accessor :defaultValueCode                # 0-1 code
            attr_accessor :_defaultValueCode               # 0-1 Element
            attr_accessor :defaultValueDate                # 0-1 date
            attr_accessor :_defaultValueDate               # 0-1 Element
            attr_accessor :defaultValueDateTime            # 0-1 dateTime
            attr_accessor :_defaultValueDateTime           # 0-1 Element
            attr_accessor :defaultValueDecimal             # 0-1 decimal
            attr_accessor :_defaultValueDecimal            # 0-1 Element
            attr_accessor :defaultValueId                  # 0-1 id
            attr_accessor :_defaultValueId                 # 0-1 Element
            attr_accessor :defaultValueInstant             # 0-1 instant
            attr_accessor :_defaultValueInstant            # 0-1 Element
            attr_accessor :defaultValueInteger             # 0-1 integer
            attr_accessor :_defaultValueInteger            # 0-1 Element
            attr_accessor :defaultValueMarkdown            # 0-1 markdown
            attr_accessor :_defaultValueMarkdown           # 0-1 Element
            attr_accessor :defaultValueOid                 # 0-1 oid
            attr_accessor :_defaultValueOid                # 0-1 Element
            attr_accessor :defaultValuePositiveInt         # 0-1 positiveInt
            attr_accessor :_defaultValuePositiveInt        # 0-1 Element
            attr_accessor :defaultValueString              # 0-1 string
            attr_accessor :_defaultValueString             # 0-1 Element
            attr_accessor :defaultValueTime                # 0-1 time
            attr_accessor :_defaultValueTime               # 0-1 Element
            attr_accessor :defaultValueUnsignedInt         # 0-1 unsignedInt
            attr_accessor :_defaultValueUnsignedInt        # 0-1 Element
            attr_accessor :defaultValueUri                 # 0-1 uri
            attr_accessor :_defaultValueUri                # 0-1 Element
            attr_accessor :defaultValueUrl                 # 0-1 url
            attr_accessor :_defaultValueUrl                # 0-1 Element
            attr_accessor :defaultValueUuid                # 0-1 uuid
            attr_accessor :_defaultValueUuid               # 0-1 Element
            attr_accessor :defaultValueAddress             # 0-1 Address
            attr_accessor :defaultValueAge                 # 0-1 Age
            attr_accessor :defaultValueAnnotation          # 0-1 Annotation
            attr_accessor :defaultValueAttachment          # 0-1 Attachment
            attr_accessor :defaultValueCodeableConcept     # 0-1 CodeableConcept
            attr_accessor :defaultValueCoding              # 0-1 Coding
            attr_accessor :defaultValueContactPoint        # 0-1 ContactPoint
            attr_accessor :defaultValueCount               # 0-1 Count
            attr_accessor :defaultValueDistance            # 0-1 Distance
            attr_accessor :defaultValueDuration            # 0-1 Duration
            attr_accessor :defaultValueHumanName           # 0-1 HumanName
            attr_accessor :defaultValueIdentifier          # 0-1 Identifier
            attr_accessor :defaultValueMoney               # 0-1 Money
            attr_accessor :defaultValuePeriod              # 0-1 Period
            attr_accessor :defaultValueQuantity            # 0-1 Quantity
            attr_accessor :defaultValueRange               # 0-1 Range
            attr_accessor :defaultValueRatio               # 0-1 Ratio
            attr_accessor :defaultValueReference           # 0-1 Reference()
            attr_accessor :defaultValueSampledData         # 0-1 SampledData
            attr_accessor :defaultValueSignature           # 0-1 Signature
            attr_accessor :defaultValueTiming              # 0-1 Timing
            attr_accessor :defaultValueContactDetail       # 0-1 ContactDetail
            attr_accessor :defaultValueContributor         # 0-1 Contributor
            attr_accessor :defaultValueDataRequirement     # 0-1 DataRequirement
            attr_accessor :defaultValueExpression          # 0-1 Expression
            attr_accessor :defaultValueParameterDefinition # 0-1 ParameterDefinition
            attr_accessor :defaultValueRelatedArtifact     # 0-1 RelatedArtifact
            attr_accessor :defaultValueTriggerDefinition   # 0-1 TriggerDefinition
            attr_accessor :defaultValueUsageContext        # 0-1 UsageContext
            attr_accessor :defaultValueDosage              # 0-1 Dosage
            attr_accessor :defaultValueMeta                # 0-1 Meta
            attr_accessor :element                         # 0-1 string
            attr_accessor :_element                        # 0-1 Element
            attr_accessor :listMode                        # 0-1 code
            attr_accessor :_listMode                       # 0-1 Element
            attr_accessor :variable                        # 0-1 id
            attr_accessor :_variable                       # 0-1 Element
            attr_accessor :condition                       # 0-1 string
            attr_accessor :_condition                      # 0-1 Element
            attr_accessor :check                           # 0-1 string
            attr_accessor :_check                          # 0-1 Element
            attr_accessor :logMessage                      # 0-1 string
            attr_accessor :_logMessage                     # 0-1 Element
          end

          class Target < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Target.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Target._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Target.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Target.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'context' => {'type'=>'id', 'path'=>'Target.context', 'min'=>0, 'max'=>1},
              '_context' => {'type'=>'Element', 'path'=>'Target._context', 'min'=>0, 'max'=>1},
              'contextType' => {'valid_codes'=>{'http://hl7.org/fhir/map-context-type'=>['type', 'variable']}, 'type'=>'code', 'path'=>'Target.contextType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-context-type'}},
              '_contextType' => {'type'=>'Element', 'path'=>'Target._contextType', 'min'=>0, 'max'=>1},
              'element' => {'type'=>'string', 'path'=>'Target.element', 'min'=>0, 'max'=>1},
              '_element' => {'type'=>'Element', 'path'=>'Target._element', 'min'=>0, 'max'=>1},
              'variable' => {'type'=>'id', 'path'=>'Target.variable', 'min'=>0, 'max'=>1},
              '_variable' => {'type'=>'Element', 'path'=>'Target._variable', 'min'=>0, 'max'=>1},
              'listMode' => {'valid_codes'=>{'http://hl7.org/fhir/map-target-list-mode'=>['first', 'share', 'last', 'collate']}, 'type'=>'code', 'path'=>'Target.listMode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-target-list-mode'}},
              '_listMode' => {'type'=>'Element', 'path'=>'Target._listMode', 'min'=>0, 'max'=>Float::INFINITY},
              'listRuleId' => {'type'=>'id', 'path'=>'Target.listRuleId', 'min'=>0, 'max'=>1},
              '_listRuleId' => {'type'=>'Element', 'path'=>'Target._listRuleId', 'min'=>0, 'max'=>1},
              'transform' => {'valid_codes'=>{'http://hl7.org/fhir/map-transform'=>['create', 'copy', 'truncate', 'escape', 'cast', 'append', 'translate', 'reference', 'dateOp', 'uuid', 'pointer', 'evaluate', 'cc', 'c', 'qty', 'id', 'cp']}, 'type'=>'code', 'path'=>'Target.transform', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-transform'}},
              '_transform' => {'type'=>'Element', 'path'=>'Target._transform', 'min'=>0, 'max'=>1},
              'parameter' => {'type'=>'StructureMap::Group::Rule::Target::Parameter', 'path'=>'Target.parameter', 'min'=>0, 'max'=>Float::INFINITY}
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
                'value' => ['id', 'string', 'boolean', 'integer', 'decimal']
              }
              METADATA = {
                'id' => {'type'=>'string', 'path'=>'Parameter.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'Parameter._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'Parameter.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'Parameter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'valueId' => {'type'=>'id', 'path'=>'Parameter.value[x]', 'min'=>1, 'max'=>1},
                '_valueId' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
                'valueString' => {'type'=>'string', 'path'=>'Parameter.value[x]', 'min'=>1, 'max'=>1},
                '_valueString' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
                'valueBoolean' => {'type'=>'boolean', 'path'=>'Parameter.value[x]', 'min'=>1, 'max'=>1},
                '_valueBoolean' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
                'valueInteger' => {'type'=>'integer', 'path'=>'Parameter.value[x]', 'min'=>1, 'max'=>1},
                '_valueInteger' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
                'valueDecimal' => {'type'=>'decimal', 'path'=>'Parameter.value[x]', 'min'=>1, 'max'=>1},
                '_valueDecimal' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :valueId           # 1-1 id
              attr_accessor :_valueId          # 0-1 Element
              attr_accessor :valueString       # 1-1 string
              attr_accessor :_valueString      # 0-1 Element
              attr_accessor :valueBoolean      # 1-1 boolean
              attr_accessor :_valueBoolean     # 0-1 Element
              attr_accessor :valueInteger      # 1-1 integer
              attr_accessor :_valueInteger     # 0-1 Element
              attr_accessor :valueDecimal      # 1-1 decimal
              attr_accessor :_valueDecimal     # 0-1 Element
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :context           # 0-1 id
            attr_accessor :_context          # 0-1 Element
            attr_accessor :contextType       # 0-1 code
            attr_accessor :_contextType      # 0-1 Element
            attr_accessor :element           # 0-1 string
            attr_accessor :_element          # 0-1 Element
            attr_accessor :variable          # 0-1 id
            attr_accessor :_variable         # 0-1 Element
            attr_accessor :listMode          # 0-* [ code ]
            attr_accessor :_listMode         # 0-* [ Element ]
            attr_accessor :listRuleId        # 0-1 id
            attr_accessor :_listRuleId       # 0-1 Element
            attr_accessor :transform         # 0-1 code
            attr_accessor :_transform        # 0-1 Element
            attr_accessor :parameter         # 0-* [ StructureMap::Group::Rule::Target::Parameter ]
          end

          class Dependent < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Dependent.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Dependent._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Dependent.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Dependent.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'name' => {'type'=>'id', 'path'=>'Dependent.name', 'min'=>1, 'max'=>1},
              '_name' => {'type'=>'Element', 'path'=>'Dependent._name', 'min'=>0, 'max'=>1},
              'variable' => {'type'=>'string', 'path'=>'Dependent.variable', 'min'=>1, 'max'=>Float::INFINITY},
              '_variable' => {'type'=>'Element', 'path'=>'Dependent._variable', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :name              # 1-1 id
            attr_accessor :_name             # 0-1 Element
            attr_accessor :variable          # 1-* [ string ]
            attr_accessor :_variable         # 0-* [ Element ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 id
          attr_accessor :_name             # 0-1 Element
          attr_accessor :source            # 1-* [ StructureMap::Group::Rule::Source ]
          attr_accessor :target            # 0-* [ StructureMap::Group::Rule::Target ]
          attr_accessor :rule              # 0-* [ StructureMap::Group::Rule ]
          attr_accessor :dependent         # 0-* [ StructureMap::Group::Rule::Dependent ]
          attr_accessor :documentation     # 0-1 string
          attr_accessor :_documentation    # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 id
        attr_accessor :_name             # 0-1 Element
        attr_accessor :extends           # 0-1 id
        attr_accessor :_extends          # 0-1 Element
        attr_accessor :typeMode          # 1-1 code
        attr_accessor :_typeMode         # 0-1 Element
        attr_accessor :documentation     # 0-1 string
        attr_accessor :_documentation    # 0-1 Element
        attr_accessor :input             # 1-* [ StructureMap::Group::Input ]
        attr_accessor :rule              # 1-* [ StructureMap::Group::Rule ]
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
      attr_accessor :name              # 1-1 string
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
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :_purpose          # 0-1 Element
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :structure         # 0-* [ StructureMap::Structure ]
      attr_accessor :import            # 0-* [ canonical ]
      attr_accessor :_import           # 0-* [ Element ]
      attr_accessor :group             # 1-* [ StructureMap::Group ]

      def resourceType
        'StructureMap'
      end
    end
  end
end