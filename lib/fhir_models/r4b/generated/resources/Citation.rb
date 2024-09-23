module FHIR
  module R4B
    class Citation < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Citation.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Citation._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Citation.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Citation.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Citation._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Citation.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Citation._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Citation.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Citation.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Citation.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Citation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'Citation.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'Citation._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'Citation.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'Citation.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'Citation._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'Citation.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'Citation._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'Citation.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'Citation._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'Citation.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Citation._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'Citation.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'Citation._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'Citation.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'Citation._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'Citation.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'Citation._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'Citation.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'Citation.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'Citation._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'Citation.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AD-03', 'AD-07', 'AD-04', 'AD-05', 'AD-02', 'AD-06', 'AD-08', 'AE-RK', 'AE-SH', 'AE-FU', 'AE-DU', 'AE-AZ', 'AE-UQ', 'AE-AJ', 'AF-BAM', 'AF-KAB', 'AF-KAP', 'AF-KHO', 'AF-KNR', 'AF-KAN', 'AF-LOG', 'AF-PIA', 'AF-SAM', 'AF-URU', 'AF-BDS', 'AF-FYB', 'AF-JOW', 'AF-KDZ', 'AF-LAG', 'AF-NIM', 'AF-BGL', 'AF-FRA', 'AF-HEL', 'AF-PKA', 'AF-SAR', 'AF-BDG', 'AF-GHA', 'AF-PAN', 'AF-TAK', 'AF-WAR', 'AF-BAL', 'AF-GHO', 'AF-DAY', 'AF-HER', 'AF-NAN', 'AF-NUR', 'AF-PAR', 'AF-ZAB', 'AG-03', 'AG-06', 'AG-10', 'AG-07', 'AG-08', 'AG-05', 'AG-04', 'AG-11', 'AL-11', 'AL-12', 'AL-03', 'AL-09', 'AL-01', 'AL-02', 'AL-08', 'AL-10', 'AL-05', 'AL-06', 'AL-07', 'AL-04', 'AM-AG', 'AM-AV', 'AM-KT', 'AM-GR', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-LO', 'AM-ER', 'AM-VD', 'AM-AR', 'AO-CAB', 'AO-CCU', 'AO-ZAI', 'AO-LNO', 'AO-LSU', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-CNO', 'AO-HUI', 'AO-LUA', 'AO-MAL', 'AO-BGO', 'AO-BGU', 'AO-CNN', 'AO-CUS', 'AO-HUA', 'AO-BIE', 'AR-N', 'AR-S', 'AR-Z', 'AR-A', 'AR-C', 'AR-F', 'AR-B', 'AR-G', 'AR-H', 'AR-P', 'AR-X', 'AR-J', 'AR-T', 'AR-E', 'AR-K', 'AR-V', 'AR-W', 'AR-U', 'AR-D', 'AR-L', 'AR-M', 'AR-Q', 'AR-R', 'AR-Y', 'AT-3', 'AT-4', 'AT-5', 'AT-8', 'AT-1', 'AT-7', 'AT-2', 'AT-6', 'AT-9', 'AU-NT', 'AU-QLD', 'AU-TAS', 'AU-ACT', 'AU-NSW', 'AU-SA', 'AU-WA', 'AU-VIC', 'AZ-ABS', 'AZ-BA', 'AZ-BAL', 'AZ-BAR', 'AZ-GOY', 'AZ-MAS', 'AZ-SKR', 'AZ-SR', 'AZ-XA', 'AZ-XIZ', 'AZ-AGC', 'AZ-AGU', 'AZ-BIL', 'AZ-GA', 'AZ-QAB', 'AZ-SMX', 'AZ-XAC', 'AZ-YAR', 'AZ-ZAN', 'AZ-AGA', 'AZ-FUZ', 'AZ-GAD', 'AZ-LAC', 'AZ-QAX', 'AZ-AGM', 'AZ-DAS', 'AZ-GYG', 'AZ-LA', 'AZ-LAN', 'AZ-OGU', 'AZ-QBA', 'AZ-QUS', 'AZ-SAB', 'AZ-CAB', 'AZ-KUR', 'AZ-SAL', 'AZ-SBN', 'AZ-SM', 'AZ-UCA', 'AZ-XCI', 'AZ-YEV', 'AZ-AGS', 'AZ-AST', 'AZ-BEY', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-LER', 'AZ-MI', 'AZ-NEF', 'AZ-NX', 'AZ-QAZ', 'AZ-SAK', 'AZ-SAT', 'AZ-TAR', 'AZ-XVD', 'AZ-CAL', 'AZ-KAL', 'AZ-QOB', 'AZ-SIY', 'AZ-SUS', 'AZ-ZAQ', 'AZ-ZAR', 'AZ-GOR', 'AZ-NA', 'AZ-QBI', 'AZ-SA', 'AZ-SMI', 'AZ-TOV', 'AZ-YE', 'BA-BRC', 'BA-BIH', 'BA-SRP', 'BB-03', 'BB-05', 'BB-02', 'BB-10', 'BB-11', 'BB-08', 'BB-04', 'BB-09', 'BB-01', 'BB-06', 'BB-07', 'BD-B', 'BD-H', 'BD-A', 'BD-C', 'BD-D', 'BD-E', 'BD-F', 'BD-G', 'BE-WAL', 'BE-BRU', 'BE-VLG', 'BF-05', 'BF-01', 'BF-10', 'BF-02', 'BF-03', 'BF-04', 'BF-06', 'BF-07', 'BF-08', 'BF-09', 'BF-11', 'BF-12', 'BF-13', 'BG-04', 'BG-09', 'BG-15', 'BG-16', 'BG-28', 'BG-13', 'BG-18', 'BG-21', 'BG-22', 'BG-27', 'BG-02', 'BG-14', 'BG-19', 'BG-25', 'BG-03', 'BG-24', 'BG-01', 'BG-10', 'BG-12', 'BG-20', 'BG-23', 'BG-11', 'BG-17', 'BG-05', 'BG-06', 'BG-07', 'BG-08', 'BG-26', 'BH-14', 'BH-13', 'BH-15', 'BH-17', 'BI-BM', 'BI-KR', 'BI-MY', 'BI-KI', 'BI-BR', 'BI-CI', 'BI-GI', 'BI-MA', 'BI-MU', 'BI-NG', 'BI-RY', 'BI-KY', 'BI-MW', 'BI-CA', 'BI-BL', 'BI-RT', 'BI-RM', 'BI-BB', 'BJ-AK', 'BJ-CO', 'BJ-BO', 'BJ-OU', 'BJ-LI', 'BJ-AQ', 'BJ-MO', 'BJ-AL', 'BJ-DO', 'BJ-KO', 'BJ-PL', 'BJ-ZO', 'BN-BM', 'BN-BE', 'BN-TE', 'BN-TU', 'BO-C', 'BO-L', 'BO-B', 'BO-O', 'BO-S', 'BO-P', 'BO-T', 'BO-H', 'BO-N', 'BQ-BO', 'BQ-SA', 'BQ-SE', 'BR-AC', 'BR-AM', 'BR-CE', 'BR-RR', 'BR-GO', 'BR-MG', 'BR-ES', 'BR-AP', 'BR-BA', 'BR-MS', 'BR-PR', 'BR-RN', 'BR-MT', 'BR-PB', 'BR-PE', 'BR-RJ', 'BR-RO', 'BR-SC', 'BR-SP', 'BR-AL', 'BR-DF', 'BR-MA', 'BR-PA', 'BR-PI', 'BR-RS', 'BR-SE', 'BR-TO', 'BS-CO', 'BS-EG', 'BS-HI', 'BS-MI', 'BS-SS', 'BS-SW', 'BS-AK', 'BS-LI', 'BS-BY', 'BS-FP', 'BS-NS', 'BS-RC', 'BS-SO', 'BS-CE', 'BS-CI', 'BS-CS', 'BS-EX', 'BS-IN', 'BS-MC', 'BS-SA', 'BS-GC', 'BS-MG', 'BS-WG', 'BS-BI', 'BS-BP', 'BS-NE', 'BS-NO', 'BS-SE', 'BS-CK', 'BS-HT', 'BS-RI', 'BT-42', 'BT-45', 'BT-12', 'BT-23', 'BT-24', 'BT-21', 'BT-33', 'BT-34', 'BT-31', 'BT-14', 'BT-15', 'BT-44', 'BT-TY', 'BT-13', 'BT-41', 'BT-GA', 'BT-22', 'BT-32', 'BT-43', 'BT-11', 'BW-KL', 'BW-GH', 'BW-NW', 'BW-SO', 'BW-KW', 'BW-CH', 'BW-LO', 'BW-SP', 'BW-JW', 'BW-ST', 'BW-FR', 'BW-GA', 'BW-KG', 'BW-CE', 'BW-SE', 'BW-NE', 'BY-VI', 'BY-BR', 'BY-HM', 'BY-HO', 'BY-HR', 'BY-MI', 'BY-MA', 'BZ-OW', 'BZ-CZL', 'BZ-SC', 'BZ-TOL', 'BZ-BZ', 'BZ-CY', 'CA-BC', 'CA-MB', 'CA-NB', 'CA-SK', 'CA-AB', 'CA-ON', 'CA-YT', 'CA-NT', 'CA-NU', 'CA-NL', 'CA-PE', 'CA-NS', 'CA-QC', 'CD-EQ', 'CD-BC', 'CD-SK', 'CD-NK', 'CD-KE', 'CD-KN', 'CD-BU', 'CD-HK', 'CD-HL', 'CD-HU', 'CD-IT', 'CD-KS', 'CD-KC', 'CD-KG', 'CD-KL', 'CD-LO', 'CD-LU', 'CD-MN', 'CD-MO', 'CD-NU', 'CD-SA', 'CD-SU', 'CD-TA', 'CD-TO', 'CD-TU', 'CD-MA', 'CF-HM', 'CF-HS', 'CF-LB', 'CF-AC', 'CF-KB', 'CF-BB', 'CF-MP', 'CF-HK', 'CF-KG', 'CF-MB', 'CF-NM', 'CF-SE', 'CF-VK', 'CF-BGF', 'CF-OP', 'CF-UK', 'CF-BK', 'CG-9', 'CG-15', 'CG-5', 'CG-11', 'CG-BZV', 'CG-16', 'CG-12', 'CG-13', 'CG-7', 'CG-14', 'CG-2', 'CG-8', 'CH-JU', 'CH-LU', 'CH-SO', 'CH-TG', 'CH-BS', 'CH-SZ', 'CH-ZG', 'CH-AG', 'CH-BE', 'CH-FR', 'CH-NE', 'CH-OW', 'CH-TI', 'CH-VD', 'CH-AR', 'CH-GE', 'CH-GL', 'CH-SG', 'CH-GR', 'CH-NW', 'CH-SH', 'CH-ZH', 'CH-AI', 'CH-VS', 'CH-BL', 'CH-UR', 'CI-AB', 'CI-YM', 'CI-BS', 'CI-CM', 'CI-DN', 'CI-GD', 'CI-LC', 'CI-LG', 'CI-MG', 'CI-SM', 'CI-SV', 'CI-VB', 'CI-WR', 'CI-ZZ', 'CL-AN', 'CL-RM', 'CL-TA', 'CL-BI', 'CL-AP', 'CL-AT', 'CL-LL', 'CL-LR', 'CL-ML', 'CL-AR', 'CL-LI', 'CL-AI', 'CL-VS', 'CL-CO', 'CL-MA', 'CM-NW', 'CM-OU', 'CM-AD', 'CM-LT', 'CM-NO', 'CM-CE', 'CM-EN', 'CM-ES', 'CM-SU', 'CM-SW', 'CN-NM', 'CN-GX', 'CN-XZ', 'CN-NX', 'CN-XJ', 'CN-BJ', 'CN-TJ', 'CN-SH', 'CN-CQ', 'CN-HE', 'CN-SX', 'CN-LN', 'CN-JL', 'CN-HL', 'CN-ZJ', 'CN-AH', 'CN-FJ', 'CN-JX', 'CN-SD', 'CN-HA', 'CN-HB', 'CN-HN', 'CN-GD', 'CN-HI', 'CN-SC', 'CN-GZ', 'CN-YN', 'CN-SN', 'CN-GS', 'CN-QH', 'CN-TW', 'CN-HK', 'CN-MO', 'CN-JS', 'CO-BOL', 'CO-MAG', 'CO-MET', 'CO-PUT', 'CO-VID', 'CO-AMA', 'CO-CAL', 'CO-CAU', 'CO-CES', 'CO-DC', 'CO-LAG', 'CO-ARA', 'CO-NSA', 'CO-TOL', 'CO-VAC', 'CO-GUV', 'CO-HUI', 'CO-SUC', 'CO-CAS', 'CO-CHO', 'CO-GUA', 'CO-QUI', 'CO-RIS', 'CO-SAN', 'CO-VAU', 'CO-ANT', 'CO-ATL', 'CO-COR', 'CO-SAP', 'CO-BOY', 'CO-CAQ', 'CO-CUN', 'CO-NAR', 'CR-H', 'CR-L', 'CR-G', 'CR-P', 'CR-A', 'CR-C', 'CR-SJ', 'CU-03', 'CU-07', 'CU-12', 'CU-05', 'CU-11', 'CU-08', 'CU-09', 'CU-10', 'CU-13', 'CU-15', 'CU-16', 'CU-01', 'CU-14', 'CU-99', 'CU-04', 'CU-06', 'CV-B', 'CV-S', 'CY-03', 'CY-06', 'CY-01', 'CY-04', 'CY-05', 'CY-02', 'CZ-42', 'CZ-63', 'CZ-72', 'CZ-31', 'CZ-64', 'CZ-41', 'CZ-52', 'CZ-51', 'CZ-80', 'CZ-71', 'CZ-53', 'CZ-32', 'CZ-20', 'CZ-10', 'DE-BW', 'DE-MV', 'DE-NW', 'DE-SL', 'DE-TH', 'DE-ST', 'DE-HH', 'DE-BB', 'DE-BE', 'DE-BY', 'DE-HB', 'DE-HE', 'DE-NI', 'DE-SH', 'DE-RP', 'DE-SN', 'DJ-OB', 'DJ-AR', 'DJ-DI', 'DJ-DJ', 'DJ-AS', 'DJ-TA', 'DK-82', 'DK-85', 'DK-81', 'DK-84', 'DK-83', 'DM-06', 'DM-08', 'DM-09', 'DM-03', 'DM-02', 'DM-11', 'DM-04', 'DM-10', 'DM-05', 'DM-07', 'DO-33', 'DO-34', 'DO-35', 'DO-36', 'DO-37', 'DO-38', 'DO-39', 'DO-40', 'DO-41', 'DO-42', 'DZ-06', 'DZ-11', 'DZ-13', 'DZ-27', 'DZ-40', 'DZ-03', 'DZ-09', 'DZ-14', 'DZ-15', 'DZ-19', 'DZ-20', 'DZ-35', 'DZ-41', 'DZ-42', 'DZ-44', 'DZ-02', 'DZ-04', 'DZ-05', 'DZ-23', 'DZ-39', 'DZ-01', 'DZ-08', 'DZ-16', 'DZ-28', 'DZ-31', 'DZ-07', 'DZ-24', 'DZ-33', 'DZ-36', 'DZ-38', 'DZ-45', 'DZ-10', 'DZ-21', 'DZ-25', 'DZ-32', 'DZ-43', 'DZ-46', 'DZ-48', 'DZ-17', 'DZ-18', 'DZ-22', 'DZ-30', 'DZ-47', 'DZ-12', 'DZ-26', 'DZ-29', 'DZ-34', 'DZ-37', 'EC-E', 'EC-G', 'EC-X', 'EC-Y', 'EC-A', 'EC-D', 'EC-L', 'EC-O', 'EC-SE', 'EC-Z', 'EC-H', 'EC-SD', 'EC-I', 'EC-M', 'EC-P', 'EC-W', 'EC-C', 'EC-F', 'EC-S', 'EC-U', 'EC-N', 'EC-T', 'EC-B', 'EC-R', 'EE-78', 'EE-49', 'EE-51', 'EE-70', 'EE-84', 'EE-37', 'EE-44', 'EE-57', 'EE-59', 'EE-67', 'EE-74', 'EE-82', 'EE-86', 'EE-65', 'EE-39', 'EG-AST', 'EG-BNS', 'EG-C', 'EG-FYM', 'EG-PTS', 'EG-DT', 'EG-GZ', 'EG-IS', 'EG-SHG', 'EG-BA', 'EG-KB', 'EG-SHR', 'EG-DK', 'EG-LX', 'EG-SIN', 'EG-WAD', 'EG-GH', 'EG-KN', 'EG-MNF', 'EG-SUZ', 'EG-BH', 'EG-MT', 'EG-ALX', 'EG-ASN', 'EG-JS', 'EG-KFS', 'EG-MN', 'ER-GB', 'ER-MA', 'ER-SK', 'ER-DK', 'ER-DU', 'ER-AN', 'ES-CB', 'ES-MC', 'ES-AR', 'ES-AS', 'ES-CE', 'ES-GA', 'ES-RI', 'ES-VC', 'ES-CT', 'ES-IB', 'ES-CM', 'ES-EX', 'ES-MD', 'ES-ML', 'ES-CL', 'ES-CN', 'ES-NC', 'ES-AN', 'ES-PV', 'ET-BE', 'ET-HA', 'ET-SO', 'ET-DD', 'ET-GA', 'ET-AM', 'ET-AA', 'ET-AF', 'ET-OR', 'ET-TI', 'ET-SN', 'FI-06', 'FI-08', 'FI-13', 'FI-18', 'FI-01', 'FI-15', 'FI-14', 'FI-04', 'FI-07', 'FI-09', 'FI-11', 'FI-12', 'FI-19', 'FI-17', 'FI-03', 'FI-05', 'FI-10', 'FI-02', 'FI-16', 'FJ-R', 'FJ-W', 'FJ-N', 'FJ-E', 'FJ-C', 'FM-TRK', 'FM-PNI', 'FM-KSA', 'FM-YAP', 'FR-CP', 'FR-MF', 'FR-NC', 'FR-PM', 'FR-TF', 'FR-WF', 'FR-ARA', 'FR-BFC', 'FR-BRE', 'FR-CVL', 'FR-COR', 'FR-GES', 'FR-HDF', 'FR-IDF', 'FR-NOR', 'FR-NAQ', 'FR-OCC', 'FR-PDL', 'FR-PAC', 'FR-GUA', 'FR-LRE', 'FR-MAY', 'FR-GF', 'FR-MQ', 'FR-BL', 'FR-PF', 'GA-1', 'GA-6', 'GA-7', 'GA-8', 'GA-2', 'GA-4', 'GA-9', 'GA-3', 'GA-5', 'GB-GBN', 'GB-SCT', 'GB-EAW', 'GB-ENG', 'GB-WLS', 'GB-NIR', 'GB-UKM', 'GD-10', 'GD-02', 'GD-05', 'GD-01', 'GD-03', 'GD-06', 'GD-04', 'GE-SK', 'GE-IM', 'GE-SJ', 'GE-GU', 'GE-RL', 'GE-TB', 'GE-KA', 'GE-KK', 'GE-AB', 'GE-AJ', 'GE-MM', 'GE-SZ', 'GH-EP', 'GH-CP', 'GH-NP', 'GH-BA', 'GH-TV', 'GH-UW', 'GH-AH', 'GH-AA', 'GH-UE', 'GH-WP', 'GL-KU', 'GL-SM', 'GL-QA', 'GL-QE', 'GM-M', 'GM-U', 'GM-W', 'GM-L', 'GM-B', 'GM-N', 'GN-M', 'GN-C', 'GN-K', 'GN-L', 'GN-B', 'GN-F', 'GN-D', 'GN-N', 'GQ-I', 'GQ-C', 'GR-H', 'GR-A', 'GR-B', 'GR-F', 'GR-69', 'GR-E', 'GR-K', 'GR-I'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'type'=>'CodeableConcept', 'path'=>'Citation.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'Citation.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'Citation._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'Citation.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'Citation._copyright', 'min'=>0, 'max'=>1},
        'approvalDate' => {'type'=>'date', 'path'=>'Citation.approvalDate', 'min'=>0, 'max'=>1},
        '_approvalDate' => {'type'=>'Element', 'path'=>'Citation._approvalDate', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'type'=>'date', 'path'=>'Citation.lastReviewDate', 'min'=>0, 'max'=>1},
        '_lastReviewDate' => {'type'=>'Element', 'path'=>'Citation._lastReviewDate', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'Citation.effectivePeriod', 'min'=>0, 'max'=>1},
        'author' => {'type'=>'ContactDetail', 'path'=>'Citation.author', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'type'=>'ContactDetail', 'path'=>'Citation.editor', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'type'=>'ContactDetail', 'path'=>'Citation.reviewer', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'type'=>'ContactDetail', 'path'=>'Citation.endorser', 'min'=>0, 'max'=>Float::INFINITY},
        'summary' => {'type'=>'Citation::Summary', 'path'=>'Citation.summary', 'min'=>0, 'max'=>Float::INFINITY},
        'classification' => {'type'=>'Citation::Classification', 'path'=>'Citation.classification', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'type'=>'Annotation', 'path'=>'Citation.note', 'min'=>0, 'max'=>Float::INFINITY},
        'currentState' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/citation-status-type'=>['pubmed-pubstatus-received', 'pubmed-pubstatus-accepted', 'pubmed-pubstatus-epublish', 'pubmed-pubstatus-ppublish', 'pubmed-pubstatus-revised', 'pubmed-pubstatus-aheadofprint', 'pubmed-pubstatus-retracted', 'pubmed-pubstatus-ecollection', 'pubmed-pubstatus-pmc', 'pubmed-pubstatus-pmcr', 'pubmed-pubstatus-pubmed', 'pubmed-pubstatus-pubmedr', 'pubmed-pubstatus-premedline', 'pubmed-pubstatus-medline', 'pubmed-pubstatus-medliner', 'pubmed-pubstatus-entrez', 'pubmed-pubstatus-pmc-release', 'medline-completed', 'medline-in-process', 'medline-pubmed-not-medline', 'medline-in-data-review', 'medline-publisher', 'medline-medline', 'medline-oldmedline', 'pubmed-publication-status-ppublish', 'pubmed-publication-status-epublish', 'pubmed-publication-status-aheadofprint']}, 'type'=>'CodeableConcept', 'path'=>'Citation.currentState', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-status-type'}},
        'statusDate' => {'type'=>'Citation::StatusDate', 'path'=>'Citation.statusDate', 'min'=>0, 'max'=>Float::INFINITY},
        'relatesTo' => {'type'=>'Citation::RelatesTo', 'path'=>'Citation.relatesTo', 'min'=>0, 'max'=>Float::INFINITY},
        'citedArtifact' => {'type'=>'Citation::CitedArtifact', 'path'=>'Citation.citedArtifact', 'min'=>0, 'max'=>1}
      }

      class Summary < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Summary.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Summary._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Summary.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Summary.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'style' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/citation-summary-style'=>['vancouver', 'ama11', 'apa7', 'apa6', 'asa6', 'mla8', 'cochrane', 'elsevier-harvard', 'nature', 'acs', 'chicago-a-17', 'chicago-b-17', 'ieee', 'comppub']}, 'type'=>'CodeableConcept', 'path'=>'Summary.style', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-summary-style'}},
          'text' => {'type'=>'markdown', 'path'=>'Summary.text', 'min'=>1, 'max'=>1},
          '_text' => {'type'=>'Element', 'path'=>'Summary._text', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :style             # 0-1 CodeableConcept
        attr_accessor :text              # 1-1 markdown
        attr_accessor :_text             # 0-1 Element
      end

      class Classification < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Classification.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Classification._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Classification.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Classification.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/citation-classification-type'=>['citation-source', 'medline-owner', 'fevir-platform-use']}, 'type'=>'CodeableConcept', 'path'=>'Classification.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-classification-type'}},
          'classifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/citation-artifact-classifier'=>['webpage', 'D016428', 'D016422', 'D016420', 'D016425', 'executable-app', 'D000076942', 'D019991', 'D001877', 'D064886', '68059040', 'audio', 'image', 'machine-code', 'protocol', 'fhir-resource', 'Print', 'Print-Electronic', 'Electronic', 'Electronic-Print', 'Electronic-eCollection', 'medline-base', 'common-share', 'project-specific']}, 'type'=>'CodeableConcept', 'path'=>'Classification.classifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-artifact-classifier'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :classifier        # 0-* [ CodeableConcept ]
      end

      class StatusDate < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'StatusDate.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'StatusDate._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'StatusDate.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'StatusDate.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'activity' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/citation-status-type'=>['pubmed-pubstatus-received', 'pubmed-pubstatus-accepted', 'pubmed-pubstatus-epublish', 'pubmed-pubstatus-ppublish', 'pubmed-pubstatus-revised', 'pubmed-pubstatus-aheadofprint', 'pubmed-pubstatus-retracted', 'pubmed-pubstatus-ecollection', 'pubmed-pubstatus-pmc', 'pubmed-pubstatus-pmcr', 'pubmed-pubstatus-pubmed', 'pubmed-pubstatus-pubmedr', 'pubmed-pubstatus-premedline', 'pubmed-pubstatus-medline', 'pubmed-pubstatus-medliner', 'pubmed-pubstatus-entrez', 'pubmed-pubstatus-pmc-release', 'medline-completed', 'medline-in-process', 'medline-pubmed-not-medline', 'medline-in-data-review', 'medline-publisher', 'medline-medline', 'medline-oldmedline', 'pubmed-publication-status-ppublish', 'pubmed-publication-status-epublish', 'pubmed-publication-status-aheadofprint']}, 'type'=>'CodeableConcept', 'path'=>'StatusDate.activity', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-status-type'}},
          'actual' => {'type'=>'boolean', 'path'=>'StatusDate.actual', 'min'=>0, 'max'=>1},
          '_actual' => {'type'=>'Element', 'path'=>'StatusDate._actual', 'min'=>0, 'max'=>1},
          'period' => {'type'=>'Period', 'path'=>'StatusDate.period', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :activity          # 1-1 CodeableConcept
        attr_accessor :actual            # 0-1 boolean
        attr_accessor :_actual           # 0-1 Element
        attr_accessor :period            # 1-1 Period
      end

      class RelatesTo < FHIR::Model
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
          'target' => ['uri', 'Identifier', 'Reference', 'Attachment']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'RelatesTo.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'RelatesTo._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'RelatesTo.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'RelatesTo.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'relationshipType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/artifact-relationship-type'=>['replaces', 'amends', 'appends', 'transforms', 'replaced-with', 'amended-with', 'appended-with', 'transformed-with', 'derived-from', 'transformed-into', 'composed-of', 'part-of', 'supports', 'supported-with', 'depends-on', 'similar-to', 'cites', 'cited-by', 'retracts', 'retracted-by', 'comments-on', 'comment-in', 'corrects', 'correction-in']}, 'type'=>'CodeableConcept', 'path'=>'RelatesTo.relationshipType', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/artifact-relationship-type'}},
          'targetClassifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/citation-artifact-classifier'=>['webpage', 'D016428', 'D016422', 'D016420', 'D016425', 'executable-app', 'D000076942', 'D019991', 'D001877', 'D064886', '68059040', 'audio', 'image', 'machine-code', 'protocol', 'fhir-resource', 'Print', 'Print-Electronic', 'Electronic', 'Electronic-Print', 'Electronic-eCollection', 'medline-base', 'common-share', 'project-specific']}, 'type'=>'CodeableConcept', 'path'=>'RelatesTo.targetClassifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-artifact-classifier'}},
          'targetUri' => {'type'=>'uri', 'path'=>'RelatesTo.target[x]', 'min'=>1, 'max'=>1},
          '_targetUri' => {'type'=>'Element', 'path'=>'RelatesTo.target[x]', 'min'=>0, 'max'=>1},
          'targetIdentifier' => {'type'=>'Identifier', 'path'=>'RelatesTo.target[x]', 'min'=>1, 'max'=>1},
          'targetReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'RelatesTo.target[x]', 'min'=>1, 'max'=>1},
          'targetAttachment' => {'type'=>'Attachment', 'path'=>'RelatesTo.target[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :relationshipType  # 1-1 CodeableConcept
        attr_accessor :targetClassifier  # 0-* [ CodeableConcept ]
        attr_accessor :targetUri         # 1-1 uri
        attr_accessor :_targetUri        # 0-1 Element
        attr_accessor :targetIdentifier  # 1-1 Identifier
        attr_accessor :targetReference   # 1-1 Reference(Resource)
        attr_accessor :targetAttachment  # 1-1 Attachment
      end

      class CitedArtifact < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'CitedArtifact.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'CitedArtifact._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'CitedArtifact.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'CitedArtifact.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'CitedArtifact.identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'relatedIdentifier' => {'type'=>'Identifier', 'path'=>'CitedArtifact.relatedIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
          'dateAccessed' => {'type'=>'dateTime', 'path'=>'CitedArtifact.dateAccessed', 'min'=>0, 'max'=>1},
          '_dateAccessed' => {'type'=>'Element', 'path'=>'CitedArtifact._dateAccessed', 'min'=>0, 'max'=>1},
          'version' => {'type'=>'Citation::CitedArtifact::Version', 'path'=>'CitedArtifact.version', 'min'=>0, 'max'=>1},
          'currentState' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/cited-artifact-status-type'=>['created', 'submitted', 'withdrawn', 'pre-review', 'under-review', 'post-review-pre-published', 'rejected', 'published-early-form', 'published-final-form', 'accepted', 'archived', 'retracted', 'draft', 'active', 'approved']}, 'type'=>'CodeableConcept', 'path'=>'CitedArtifact.currentState', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-artifact-status-type'}},
          'statusDate' => {'type'=>'Citation::CitedArtifact::StatusDate', 'path'=>'CitedArtifact.statusDate', 'min'=>0, 'max'=>Float::INFINITY},
          'title' => {'type'=>'Citation::CitedArtifact::Title', 'path'=>'CitedArtifact.title', 'min'=>0, 'max'=>Float::INFINITY},
          'abstract' => {'type'=>'Citation::CitedArtifact::Abstract', 'path'=>'CitedArtifact.abstract', 'min'=>0, 'max'=>Float::INFINITY},
          'part' => {'type'=>'Citation::CitedArtifact::Part', 'path'=>'CitedArtifact.part', 'min'=>0, 'max'=>1},
          'relatesTo' => {'type'=>'Citation::CitedArtifact::RelatesTo', 'path'=>'CitedArtifact.relatesTo', 'min'=>0, 'max'=>Float::INFINITY},
          'publicationForm' => {'type'=>'Citation::CitedArtifact::PublicationForm', 'path'=>'CitedArtifact.publicationForm', 'min'=>0, 'max'=>Float::INFINITY},
          'webLocation' => {'type'=>'Citation::CitedArtifact::WebLocation', 'path'=>'CitedArtifact.webLocation', 'min'=>0, 'max'=>Float::INFINITY},
          'classification' => {'type'=>'Citation::CitedArtifact::Classification', 'path'=>'CitedArtifact.classification', 'min'=>0, 'max'=>Float::INFINITY},
          'contributorship' => {'type'=>'Citation::CitedArtifact::Contributorship', 'path'=>'CitedArtifact.contributorship', 'min'=>0, 'max'=>1},
          'note' => {'type'=>'Annotation', 'path'=>'CitedArtifact.note', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Version < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Version.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Version._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Version.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Version.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'value' => {'type'=>'string', 'path'=>'Version.value', 'min'=>1, 'max'=>1},
            '_value' => {'type'=>'Element', 'path'=>'Version._value', 'min'=>0, 'max'=>1},
            'baseCitation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Citation'], 'type'=>'Reference', 'path'=>'Version.baseCitation', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :value             # 1-1 string
          attr_accessor :_value            # 0-1 Element
          attr_accessor :baseCitation      # 0-1 Reference(Citation)
        end

        class StatusDate < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'StatusDate.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'StatusDate._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'StatusDate.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'StatusDate.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'activity' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/cited-artifact-status-type'=>['created', 'submitted', 'withdrawn', 'pre-review', 'under-review', 'post-review-pre-published', 'rejected', 'published-early-form', 'published-final-form', 'accepted', 'archived', 'retracted', 'draft', 'active', 'approved']}, 'type'=>'CodeableConcept', 'path'=>'StatusDate.activity', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-artifact-status-type'}},
            'actual' => {'type'=>'boolean', 'path'=>'StatusDate.actual', 'min'=>0, 'max'=>1},
            '_actual' => {'type'=>'Element', 'path'=>'StatusDate._actual', 'min'=>0, 'max'=>1},
            'period' => {'type'=>'Period', 'path'=>'StatusDate.period', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :activity          # 1-1 CodeableConcept
          attr_accessor :actual            # 0-1 boolean
          attr_accessor :_actual           # 0-1 Element
          attr_accessor :period            # 1-1 Period
        end

        class Title < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Title.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Title._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Title.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Title.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/title-type'=>['primary', 'official', 'scientific', 'plain-language', 'subtitle', 'short-title', 'acronym', 'earlier-title', 'language', 'autotranslated', 'human-use', 'machine-use', 'duplicate-uid']}, 'type'=>'CodeableConcept', 'path'=>'Title.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/title-type'}},
            'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'CodeableConcept', 'path'=>'Title.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
            'text' => {'type'=>'markdown', 'path'=>'Title.text', 'min'=>1, 'max'=>1},
            '_text' => {'type'=>'Element', 'path'=>'Title._text', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-* [ CodeableConcept ]
          attr_accessor :language          # 0-1 CodeableConcept
          attr_accessor :text              # 1-1 markdown
          attr_accessor :_text             # 0-1 Element
        end

        class Abstract < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Abstract.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Abstract._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Abstract.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Abstract.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/cited-artifact-abstract-type'=>['primary-human-use', 'primary-machine-use', 'truncated', 'short-abstract', 'long-abstract', 'plain-language', 'different-publisher', 'language', 'autotranslated', 'duplicate-pmid', 'earlier-abstract']}, 'type'=>'CodeableConcept', 'path'=>'Abstract.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-artifact-abstract-type'}},
            'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'CodeableConcept', 'path'=>'Abstract.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
            'text' => {'type'=>'markdown', 'path'=>'Abstract.text', 'min'=>1, 'max'=>1},
            '_text' => {'type'=>'Element', 'path'=>'Abstract._text', 'min'=>0, 'max'=>1},
            'copyright' => {'type'=>'markdown', 'path'=>'Abstract.copyright', 'min'=>0, 'max'=>1},
            '_copyright' => {'type'=>'Element', 'path'=>'Abstract._copyright', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :language          # 0-1 CodeableConcept
          attr_accessor :text              # 1-1 markdown
          attr_accessor :_text             # 0-1 Element
          attr_accessor :copyright         # 0-1 markdown
          attr_accessor :_copyright        # 0-1 Element
        end

        class Part < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Part.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Part._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Part.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Part.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/cited-artifact-part-type'=>['pages', 'sections', 'paragraphs', 'lines', 'tables', 'figures', 'supplement', 'supplement-subpart', 'article-set']}, 'type'=>'CodeableConcept', 'path'=>'Part.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-artifact-part-type'}},
            'value' => {'type'=>'string', 'path'=>'Part.value', 'min'=>0, 'max'=>1},
            '_value' => {'type'=>'Element', 'path'=>'Part._value', 'min'=>0, 'max'=>1},
            'baseCitation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Citation'], 'type'=>'Reference', 'path'=>'Part.baseCitation', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :value             # 0-1 string
          attr_accessor :_value            # 0-1 Element
          attr_accessor :baseCitation      # 0-1 Reference(Citation)
        end

        class RelatesTo < FHIR::Model
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
            'target' => ['uri', 'Identifier', 'Reference', 'Attachment']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'RelatesTo.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'RelatesTo._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'RelatesTo.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'RelatesTo.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'relationshipType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/artifact-relationship-type'=>['replaces', 'amends', 'appends', 'transforms', 'replaced-with', 'amended-with', 'appended-with', 'transformed-with', 'derived-from', 'transformed-into', 'composed-of', 'part-of', 'supports', 'supported-with', 'depends-on', 'similar-to', 'cites', 'cited-by', 'retracts', 'retracted-by', 'comments-on', 'comment-in', 'corrects', 'correction-in']}, 'type'=>'CodeableConcept', 'path'=>'RelatesTo.relationshipType', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/artifact-relationship-type'}},
            'targetClassifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/citation-artifact-classifier'=>['webpage', 'D016428', 'D016422', 'D016420', 'D016425', 'executable-app', 'D000076942', 'D019991', 'D001877', 'D064886', '68059040', 'audio', 'image', 'machine-code', 'protocol', 'fhir-resource', 'Print', 'Print-Electronic', 'Electronic', 'Electronic-Print', 'Electronic-eCollection', 'medline-base', 'common-share', 'project-specific']}, 'type'=>'CodeableConcept', 'path'=>'RelatesTo.targetClassifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-artifact-classifier'}},
            'targetUri' => {'type'=>'uri', 'path'=>'RelatesTo.target[x]', 'min'=>1, 'max'=>1},
            '_targetUri' => {'type'=>'Element', 'path'=>'RelatesTo.target[x]', 'min'=>0, 'max'=>1},
            'targetIdentifier' => {'type'=>'Identifier', 'path'=>'RelatesTo.target[x]', 'min'=>1, 'max'=>1},
            'targetReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'RelatesTo.target[x]', 'min'=>1, 'max'=>1},
            'targetAttachment' => {'type'=>'Attachment', 'path'=>'RelatesTo.target[x]', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :relationshipType  # 1-1 CodeableConcept
          attr_accessor :targetClassifier  # 0-* [ CodeableConcept ]
          attr_accessor :targetUri         # 1-1 uri
          attr_accessor :_targetUri        # 0-1 Element
          attr_accessor :targetIdentifier  # 1-1 Identifier
          attr_accessor :targetReference   # 1-1 Reference(Resource)
          attr_accessor :targetAttachment  # 1-1 Attachment
        end

        class PublicationForm < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'PublicationForm.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'PublicationForm._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'PublicationForm.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'PublicationForm.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'publishedIn' => {'type'=>'Citation::CitedArtifact::PublicationForm::PublishedIn', 'path'=>'PublicationForm.publishedIn', 'min'=>0, 'max'=>1},
            'periodicRelease' => {'type'=>'Citation::CitedArtifact::PublicationForm::PeriodicRelease', 'path'=>'PublicationForm.periodicRelease', 'min'=>0, 'max'=>1},
            'articleDate' => {'type'=>'dateTime', 'path'=>'PublicationForm.articleDate', 'min'=>0, 'max'=>1},
            '_articleDate' => {'type'=>'Element', 'path'=>'PublicationForm._articleDate', 'min'=>0, 'max'=>1},
            'lastRevisionDate' => {'type'=>'dateTime', 'path'=>'PublicationForm.lastRevisionDate', 'min'=>0, 'max'=>1},
            '_lastRevisionDate' => {'type'=>'Element', 'path'=>'PublicationForm._lastRevisionDate', 'min'=>0, 'max'=>1},
            'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'CodeableConcept', 'path'=>'PublicationForm.language', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
            'accessionNumber' => {'type'=>'string', 'path'=>'PublicationForm.accessionNumber', 'min'=>0, 'max'=>1},
            '_accessionNumber' => {'type'=>'Element', 'path'=>'PublicationForm._accessionNumber', 'min'=>0, 'max'=>1},
            'pageString' => {'type'=>'string', 'path'=>'PublicationForm.pageString', 'min'=>0, 'max'=>1},
            '_pageString' => {'type'=>'Element', 'path'=>'PublicationForm._pageString', 'min'=>0, 'max'=>1},
            'firstPage' => {'type'=>'string', 'path'=>'PublicationForm.firstPage', 'min'=>0, 'max'=>1},
            '_firstPage' => {'type'=>'Element', 'path'=>'PublicationForm._firstPage', 'min'=>0, 'max'=>1},
            'lastPage' => {'type'=>'string', 'path'=>'PublicationForm.lastPage', 'min'=>0, 'max'=>1},
            '_lastPage' => {'type'=>'Element', 'path'=>'PublicationForm._lastPage', 'min'=>0, 'max'=>1},
            'pageCount' => {'type'=>'string', 'path'=>'PublicationForm.pageCount', 'min'=>0, 'max'=>1},
            '_pageCount' => {'type'=>'Element', 'path'=>'PublicationForm._pageCount', 'min'=>0, 'max'=>1},
            'copyright' => {'type'=>'markdown', 'path'=>'PublicationForm.copyright', 'min'=>0, 'max'=>1},
            '_copyright' => {'type'=>'Element', 'path'=>'PublicationForm._copyright', 'min'=>0, 'max'=>1}
          }

          class PublishedIn < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'PublishedIn.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'PublishedIn._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'PublishedIn.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'PublishedIn.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/published-in-type'=>['D020492', 'D019991', 'D001877', 'D064886']}, 'type'=>'CodeableConcept', 'path'=>'PublishedIn.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/published-in-type'}},
              'identifier' => {'type'=>'Identifier', 'path'=>'PublishedIn.identifier', 'min'=>0, 'max'=>Float::INFINITY},
              'title' => {'type'=>'string', 'path'=>'PublishedIn.title', 'min'=>0, 'max'=>1},
              '_title' => {'type'=>'Element', 'path'=>'PublishedIn._title', 'min'=>0, 'max'=>1},
              'publisher' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'PublishedIn.publisher', 'min'=>0, 'max'=>1},
              'publisherLocation' => {'type'=>'string', 'path'=>'PublishedIn.publisherLocation', 'min'=>0, 'max'=>1},
              '_publisherLocation' => {'type'=>'Element', 'path'=>'PublishedIn._publisherLocation', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                 # 0-1 string
            attr_accessor :_id                # 0-1 Element
            attr_accessor :extension          # 0-* [ Extension ]
            attr_accessor :modifierExtension  # 0-* [ Extension ]
            attr_accessor :type               # 0-1 CodeableConcept
            attr_accessor :identifier         # 0-* [ Identifier ]
            attr_accessor :title              # 0-1 string
            attr_accessor :_title             # 0-1 Element
            attr_accessor :publisher          # 0-1 Reference(Organization)
            attr_accessor :publisherLocation  # 0-1 string
            attr_accessor :_publisherLocation # 0-1 Element
          end

          class PeriodicRelease < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'PeriodicRelease.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'PeriodicRelease._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'PeriodicRelease.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'PeriodicRelease.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'citedMedium' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/cited-medium'=>['internet', 'print', 'offline-digital-storage', 'internet-without-issue', 'print-without-issue', 'offline-digital-storage-without-issue']}, 'type'=>'CodeableConcept', 'path'=>'PeriodicRelease.citedMedium', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-medium'}},
              'volume' => {'type'=>'string', 'path'=>'PeriodicRelease.volume', 'min'=>0, 'max'=>1},
              '_volume' => {'type'=>'Element', 'path'=>'PeriodicRelease._volume', 'min'=>0, 'max'=>1},
              'issue' => {'type'=>'string', 'path'=>'PeriodicRelease.issue', 'min'=>0, 'max'=>1},
              '_issue' => {'type'=>'Element', 'path'=>'PeriodicRelease._issue', 'min'=>0, 'max'=>1},
              'dateOfPublication' => {'type'=>'Citation::CitedArtifact::PublicationForm::PeriodicRelease::DateOfPublication', 'path'=>'PeriodicRelease.dateOfPublication', 'min'=>0, 'max'=>1}
            }

            class DateOfPublication < FHIR::Model
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
                'id' => {'type'=>'string', 'path'=>'DateOfPublication.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'DateOfPublication._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'DateOfPublication.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'DateOfPublication.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'date' => {'type'=>'date', 'path'=>'DateOfPublication.date', 'min'=>0, 'max'=>1},
                '_date' => {'type'=>'Element', 'path'=>'DateOfPublication._date', 'min'=>0, 'max'=>1},
                'year' => {'type'=>'string', 'path'=>'DateOfPublication.year', 'min'=>0, 'max'=>1},
                '_year' => {'type'=>'Element', 'path'=>'DateOfPublication._year', 'min'=>0, 'max'=>1},
                'month' => {'type'=>'string', 'path'=>'DateOfPublication.month', 'min'=>0, 'max'=>1},
                '_month' => {'type'=>'Element', 'path'=>'DateOfPublication._month', 'min'=>0, 'max'=>1},
                'day' => {'type'=>'string', 'path'=>'DateOfPublication.day', 'min'=>0, 'max'=>1},
                '_day' => {'type'=>'Element', 'path'=>'DateOfPublication._day', 'min'=>0, 'max'=>1},
                'season' => {'type'=>'string', 'path'=>'DateOfPublication.season', 'min'=>0, 'max'=>1},
                '_season' => {'type'=>'Element', 'path'=>'DateOfPublication._season', 'min'=>0, 'max'=>1},
                'text' => {'type'=>'string', 'path'=>'DateOfPublication.text', 'min'=>0, 'max'=>1},
                '_text' => {'type'=>'Element', 'path'=>'DateOfPublication._text', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :date              # 0-1 date
              attr_accessor :_date             # 0-1 Element
              attr_accessor :year              # 0-1 string
              attr_accessor :_year             # 0-1 Element
              attr_accessor :month             # 0-1 string
              attr_accessor :_month            # 0-1 Element
              attr_accessor :day               # 0-1 string
              attr_accessor :_day              # 0-1 Element
              attr_accessor :season            # 0-1 string
              attr_accessor :_season           # 0-1 Element
              attr_accessor :text              # 0-1 string
              attr_accessor :_text             # 0-1 Element
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :citedMedium       # 0-1 CodeableConcept
            attr_accessor :volume            # 0-1 string
            attr_accessor :_volume           # 0-1 Element
            attr_accessor :issue             # 0-1 string
            attr_accessor :_issue            # 0-1 Element
            attr_accessor :dateOfPublication # 0-1 Citation::CitedArtifact::PublicationForm::PeriodicRelease::DateOfPublication
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :publishedIn       # 0-1 Citation::CitedArtifact::PublicationForm::PublishedIn
          attr_accessor :periodicRelease   # 0-1 Citation::CitedArtifact::PublicationForm::PeriodicRelease
          attr_accessor :articleDate       # 0-1 dateTime
          attr_accessor :_articleDate      # 0-1 Element
          attr_accessor :lastRevisionDate  # 0-1 dateTime
          attr_accessor :_lastRevisionDate # 0-1 Element
          attr_accessor :language          # 0-* [ CodeableConcept ]
          attr_accessor :accessionNumber   # 0-1 string
          attr_accessor :_accessionNumber  # 0-1 Element
          attr_accessor :pageString        # 0-1 string
          attr_accessor :_pageString       # 0-1 Element
          attr_accessor :firstPage         # 0-1 string
          attr_accessor :_firstPage        # 0-1 Element
          attr_accessor :lastPage          # 0-1 string
          attr_accessor :_lastPage         # 0-1 Element
          attr_accessor :pageCount         # 0-1 string
          attr_accessor :_pageCount        # 0-1 Element
          attr_accessor :copyright         # 0-1 markdown
          attr_accessor :_copyright        # 0-1 Element
        end

        class WebLocation < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'WebLocation.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'WebLocation._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'WebLocation.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'WebLocation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/article-url-type'=>['abstract', 'abstract-version', 'doi-based', 'full-text', 'full-text-version', 'pdf', 'pdf-version', 'webpage', 'not-specified', 'json', 'json-version', 'xml', 'xml-version', 'supplement', 'supplementary-file-directory', 'compressed-file']}, 'type'=>'CodeableConcept', 'path'=>'WebLocation.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/article-url-type'}},
            'url' => {'type'=>'uri', 'path'=>'WebLocation.url', 'min'=>0, 'max'=>1},
            '_url' => {'type'=>'Element', 'path'=>'WebLocation._url', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :url               # 0-1 uri
          attr_accessor :_url              # 0-1 Element
        end

        class Classification < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Classification.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Classification._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Classification.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Classification.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/cited-artifact-classification-type'=>['publication-type', 'mesh-heading', 'supplemental-mesh-protocol', 'supplemental-mesh-disease', 'supplemental-mesh-organism', 'keyword', 'citation-subset', 'chemical', 'publishing-model', 'knowledge-artifact-type', 'coverage']}, 'type'=>'CodeableConcept', 'path'=>'Classification.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-artifact-classification-type'}},
            'classifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/citation-artifact-classifier'=>['webpage', 'D016428', 'D016422', 'D016420', 'D016425', 'executable-app', 'D000076942', 'D019991', 'D001877', 'D064886', '68059040', 'audio', 'image', 'machine-code', 'protocol', 'fhir-resource', 'Print', 'Print-Electronic', 'Electronic', 'Electronic-Print', 'Electronic-eCollection', 'medline-base', 'common-share', 'project-specific']}, 'type'=>'CodeableConcept', 'path'=>'Classification.classifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-artifact-classifier'}},
            'whoClassified' => {'type'=>'Citation::CitedArtifact::Classification::WhoClassified', 'path'=>'Classification.whoClassified', 'min'=>0, 'max'=>1}
          }

          class WhoClassified < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'WhoClassified.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'WhoClassified._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'WhoClassified.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'WhoClassified.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'person' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Person', 'http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'WhoClassified.person', 'min'=>0, 'max'=>1},
              'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'WhoClassified.organization', 'min'=>0, 'max'=>1},
              'publisher' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'WhoClassified.publisher', 'min'=>0, 'max'=>1},
              'classifierCopyright' => {'type'=>'string', 'path'=>'WhoClassified.classifierCopyright', 'min'=>0, 'max'=>1},
              '_classifierCopyright' => {'type'=>'Element', 'path'=>'WhoClassified._classifierCopyright', 'min'=>0, 'max'=>1},
              'freeToShare' => {'type'=>'boolean', 'path'=>'WhoClassified.freeToShare', 'min'=>0, 'max'=>1},
              '_freeToShare' => {'type'=>'Element', 'path'=>'WhoClassified._freeToShare', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                   # 0-1 string
            attr_accessor :_id                  # 0-1 Element
            attr_accessor :extension            # 0-* [ Extension ]
            attr_accessor :modifierExtension    # 0-* [ Extension ]
            attr_accessor :person               # 0-1 Reference(Person|Practitioner)
            attr_accessor :organization         # 0-1 Reference(Organization)
            attr_accessor :publisher            # 0-1 Reference(Organization)
            attr_accessor :classifierCopyright  # 0-1 string
            attr_accessor :_classifierCopyright # 0-1 Element
            attr_accessor :freeToShare          # 0-1 boolean
            attr_accessor :_freeToShare         # 0-1 Element
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :classifier        # 0-* [ CodeableConcept ]
          attr_accessor :whoClassified     # 0-1 Citation::CitedArtifact::Classification::WhoClassified
        end

        class Contributorship < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Contributorship.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Contributorship._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Contributorship.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Contributorship.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'complete' => {'type'=>'boolean', 'path'=>'Contributorship.complete', 'min'=>0, 'max'=>1},
            '_complete' => {'type'=>'Element', 'path'=>'Contributorship._complete', 'min'=>0, 'max'=>1},
            'entry' => {'type'=>'Citation::CitedArtifact::Contributorship::Entry', 'path'=>'Contributorship.entry', 'min'=>0, 'max'=>Float::INFINITY},
            'summary' => {'type'=>'Citation::CitedArtifact::Contributorship::Summary', 'path'=>'Contributorship.summary', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Entry < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Entry.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Entry._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Entry.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Entry.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'name' => {'type'=>'HumanName', 'path'=>'Entry.name', 'min'=>0, 'max'=>1},
              'initials' => {'type'=>'string', 'path'=>'Entry.initials', 'min'=>0, 'max'=>1},
              '_initials' => {'type'=>'Element', 'path'=>'Entry._initials', 'min'=>0, 'max'=>1},
              'collectiveName' => {'type'=>'string', 'path'=>'Entry.collectiveName', 'min'=>0, 'max'=>1},
              '_collectiveName' => {'type'=>'Element', 'path'=>'Entry._collectiveName', 'min'=>0, 'max'=>1},
              'identifier' => {'type'=>'Identifier', 'path'=>'Entry.identifier', 'min'=>0, 'max'=>Float::INFINITY},
              'affiliationInfo' => {'type'=>'Citation::CitedArtifact::Contributorship::Entry::AffiliationInfo', 'path'=>'Entry.affiliationInfo', 'min'=>0, 'max'=>Float::INFINITY},
              'address' => {'type'=>'Address', 'path'=>'Entry.address', 'min'=>0, 'max'=>Float::INFINITY},
              'telecom' => {'type'=>'ContactPoint', 'path'=>'Entry.telecom', 'min'=>0, 'max'=>Float::INFINITY},
              'contributionType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/artifact-contribution-type'=>['conceptualization', 'data-curation', 'formal-analysis', 'funding-acquisition', 'investigation', 'methodology', 'project-administration', 'resources', 'software', 'supervision', 'validation', 'visualization', 'writing-original-draft', 'writing-review-editing']}, 'type'=>'CodeableConcept', 'path'=>'Entry.contributionType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/artifact-contribution-type'}},
              'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contributor-role'=>['publisher', 'author', 'reviewer', 'endorser', 'editor', 'informant', 'funder']}, 'type'=>'CodeableConcept', 'path'=>'Entry.role', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contributor-role'}},
              'contributionInstance' => {'type'=>'Citation::CitedArtifact::Contributorship::Entry::ContributionInstance', 'path'=>'Entry.contributionInstance', 'min'=>0, 'max'=>Float::INFINITY},
              'correspondingContact' => {'type'=>'boolean', 'path'=>'Entry.correspondingContact', 'min'=>0, 'max'=>1},
              '_correspondingContact' => {'type'=>'Element', 'path'=>'Entry._correspondingContact', 'min'=>0, 'max'=>1},
              'listOrder' => {'type'=>'positiveInt', 'path'=>'Entry.listOrder', 'min'=>0, 'max'=>1},
              '_listOrder' => {'type'=>'Element', 'path'=>'Entry._listOrder', 'min'=>0, 'max'=>1}
            }

            class AffiliationInfo < FHIR::Model
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
                'id' => {'type'=>'string', 'path'=>'AffiliationInfo.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'AffiliationInfo._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'AffiliationInfo.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'AffiliationInfo.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'affiliation' => {'type'=>'string', 'path'=>'AffiliationInfo.affiliation', 'min'=>0, 'max'=>1},
                '_affiliation' => {'type'=>'Element', 'path'=>'AffiliationInfo._affiliation', 'min'=>0, 'max'=>1},
                'role' => {'type'=>'string', 'path'=>'AffiliationInfo.role', 'min'=>0, 'max'=>1},
                '_role' => {'type'=>'Element', 'path'=>'AffiliationInfo._role', 'min'=>0, 'max'=>1},
                'identifier' => {'type'=>'Identifier', 'path'=>'AffiliationInfo.identifier', 'min'=>0, 'max'=>Float::INFINITY}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :affiliation       # 0-1 string
              attr_accessor :_affiliation      # 0-1 Element
              attr_accessor :role              # 0-1 string
              attr_accessor :_role             # 0-1 Element
              attr_accessor :identifier        # 0-* [ Identifier ]
            end

            class ContributionInstance < FHIR::Model
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
                'id' => {'type'=>'string', 'path'=>'ContributionInstance.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'ContributionInstance._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'ContributionInstance.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'ContributionInstance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/artifact-contribution-instance-type'=>['reviewed', 'approved', 'edited']}, 'type'=>'CodeableConcept', 'path'=>'ContributionInstance.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/artifact-contribution-instance-type'}},
                'time' => {'type'=>'dateTime', 'path'=>'ContributionInstance.time', 'min'=>0, 'max'=>1},
                '_time' => {'type'=>'Element', 'path'=>'ContributionInstance._time', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :type              # 1-1 CodeableConcept
              attr_accessor :time              # 0-1 dateTime
              attr_accessor :_time             # 0-1 Element
            end

            attr_accessor :id                    # 0-1 string
            attr_accessor :_id                   # 0-1 Element
            attr_accessor :extension             # 0-* [ Extension ]
            attr_accessor :modifierExtension     # 0-* [ Extension ]
            attr_accessor :name                  # 0-1 HumanName
            attr_accessor :initials              # 0-1 string
            attr_accessor :_initials             # 0-1 Element
            attr_accessor :collectiveName        # 0-1 string
            attr_accessor :_collectiveName       # 0-1 Element
            attr_accessor :identifier            # 0-* [ Identifier ]
            attr_accessor :affiliationInfo       # 0-* [ Citation::CitedArtifact::Contributorship::Entry::AffiliationInfo ]
            attr_accessor :address               # 0-* [ Address ]
            attr_accessor :telecom               # 0-* [ ContactPoint ]
            attr_accessor :contributionType      # 0-* [ CodeableConcept ]
            attr_accessor :role                  # 0-1 CodeableConcept
            attr_accessor :contributionInstance  # 0-* [ Citation::CitedArtifact::Contributorship::Entry::ContributionInstance ]
            attr_accessor :correspondingContact  # 0-1 boolean
            attr_accessor :_correspondingContact # 0-1 Element
            attr_accessor :listOrder             # 0-1 positiveInt
            attr_accessor :_listOrder            # 0-1 Element
          end

          class Summary < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Summary.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Summary._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Summary.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Summary.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contributor-summary-type'=>['author-string', 'contributorship-list', 'contributorship-statement', 'acknowledgement-list', 'acknowledgment-statement', 'funding-statement', 'competing-interests-statement']}, 'type'=>'CodeableConcept', 'path'=>'Summary.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contributor-summary-type'}},
              'style' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contributor-summary-style'=>['a1full', 'a1init', 'a3full', 'a3init', 'a6full', 'a6init', 'aallfull', 'aallfullwithand', 'aallfullwithampersand', 'aallinit', 'aallinitwithand', 'aallinitwithampersand', 'contr-full-by-person', 'contr-init-by-person', 'contr-full-by-contr', 'contr-init-by-contr']}, 'type'=>'CodeableConcept', 'path'=>'Summary.style', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contributor-summary-style'}},
              'source' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contributor-summary-source'=>['publisher-data', 'article-copy', 'citation-manager', 'custom']}, 'type'=>'CodeableConcept', 'path'=>'Summary.source', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contributor-summary-source'}},
              'value' => {'type'=>'markdown', 'path'=>'Summary.value', 'min'=>1, 'max'=>1},
              '_value' => {'type'=>'Element', 'path'=>'Summary._value', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :type              # 0-1 CodeableConcept
            attr_accessor :style             # 0-1 CodeableConcept
            attr_accessor :source            # 0-1 CodeableConcept
            attr_accessor :value             # 1-1 markdown
            attr_accessor :_value            # 0-1 Element
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :complete          # 0-1 boolean
          attr_accessor :_complete         # 0-1 Element
          attr_accessor :entry             # 0-* [ Citation::CitedArtifact::Contributorship::Entry ]
          attr_accessor :summary           # 0-* [ Citation::CitedArtifact::Contributorship::Summary ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-* [ Identifier ]
        attr_accessor :relatedIdentifier # 0-* [ Identifier ]
        attr_accessor :dateAccessed      # 0-1 dateTime
        attr_accessor :_dateAccessed     # 0-1 Element
        attr_accessor :version           # 0-1 Citation::CitedArtifact::Version
        attr_accessor :currentState      # 0-* [ CodeableConcept ]
        attr_accessor :statusDate        # 0-* [ Citation::CitedArtifact::StatusDate ]
        attr_accessor :title             # 0-* [ Citation::CitedArtifact::Title ]
        attr_accessor :abstract          # 0-* [ Citation::CitedArtifact::Abstract ]
        attr_accessor :part              # 0-1 Citation::CitedArtifact::Part
        attr_accessor :relatesTo         # 0-* [ Citation::CitedArtifact::RelatesTo ]
        attr_accessor :publicationForm   # 0-* [ Citation::CitedArtifact::PublicationForm ]
        attr_accessor :webLocation       # 0-* [ Citation::CitedArtifact::WebLocation ]
        attr_accessor :classification    # 0-* [ Citation::CitedArtifact::Classification ]
        attr_accessor :contributorship   # 0-1 Citation::CitedArtifact::Contributorship
        attr_accessor :note              # 0-* [ Annotation ]
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
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :_purpose          # 0-1 Element
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :approvalDate      # 0-1 date
      attr_accessor :_approvalDate     # 0-1 Element
      attr_accessor :lastReviewDate    # 0-1 date
      attr_accessor :_lastReviewDate   # 0-1 Element
      attr_accessor :effectivePeriod   # 0-1 Period
      attr_accessor :author            # 0-* [ ContactDetail ]
      attr_accessor :editor            # 0-* [ ContactDetail ]
      attr_accessor :reviewer          # 0-* [ ContactDetail ]
      attr_accessor :endorser          # 0-* [ ContactDetail ]
      attr_accessor :summary           # 0-* [ Citation::Summary ]
      attr_accessor :classification    # 0-* [ Citation::Classification ]
      attr_accessor :note              # 0-* [ Annotation ]
      attr_accessor :currentState      # 0-* [ CodeableConcept ]
      attr_accessor :statusDate        # 0-* [ Citation::StatusDate ]
      attr_accessor :relatesTo         # 0-* [ Citation::RelatesTo ]
      attr_accessor :citedArtifact     # 0-1 Citation::CitedArtifact

      def resourceType
        'Citation'
      end
    end
  end
end