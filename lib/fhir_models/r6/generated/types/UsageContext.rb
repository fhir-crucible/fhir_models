module FHIR
  module R6
    class UsageContext < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'value' => ['CodeableConcept', 'Quantity', 'Range', 'Reference']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'UsageContext.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'UsageContext.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/usage-context-type'=>['gender', 'age', 'focus', 'user', 'workflow', 'task', 'venue', 'species', 'program', 'jurisdiction']}, 'type'=>'Coding', 'path'=>'UsageContext.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/usage-context-type'}},
        'valueCodeableConcept' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0265'=>['AMB', 'PSY', 'PPS', 'REH', 'PRE', 'ISO', 'OBG', 'PIN', 'INT', 'SUR', 'PSI', 'EDI', 'CAR', 'NBI', 'CCR', 'PED', 'EMR', 'OBS', 'WIC', 'PHY', 'ALC', 'FPC', 'CHI', 'CAN', 'NAT', 'OTH'], 'http://snomed.info/sct'=>['394733009', '394537008', '394538003', '394578005', '394579002', '394580004', '394582007', '394583002', '394584008', '394589003', '394591006', '394593009', '394600006', '394601005', '394602003', '394649004', '394802001', '394803006', '394804000', '394805004', '394806003', '394807007', '394808002', '394809005', '394810000', '394811001', '394813003', '408439002', '408440000', '408442008', '408445005', '408447002', '408448007', '408450004', '408459003', '408472002', '408475000', '408478003', '408480009', '409967009', '409968004', '410001006', '410005002', '416304004', '417887005', '418002000', '418058008', '418112009', '418535003', '418652005', '418862001', '419043006', '419170002', '419192003', '419215006', '419365004', '419472004', '419610006', '419677000', '419772000', '419917007', '419983000', '420112009', '420208008', '445715009', '715184008', '718359001', '722138006', '722166003', '722204007', '722414000', '786454007', '788415003', '1251543009', '1251544003', '1251545002', '1251546001', '1251549008', '1251551007', '1251552000', '1251553005', '1255984008', '1259218001', '1259219009', '1259224007', '23861000087105', '23881000087104', '23921000087107', '23931000087109', '23961000087102', '23971000087106', '23981000087108', '23991000087105', '24251000087109', '24311000087103', '24361000087101', '25931000087108', '25991000087109', '26001000087108', '26041000087106', '26081000087101', '28351000087106', '28551000087103', '387961004', '101009', '112009', '117003', '118008', '132005', '173006', '194009', '201002', '207003', '209000', '218003', '226006', '229004', '234000', '260004', '268006', '275007', '277004', '305009', '332004', '338000', '347008', '350006', '376006', '381002', '386007', '390009', '399005', '404007', '410007', '411006', '416001', '421003', '423000', '428009', '451009', '453007', '466007', '502008', '516003', '537006', '546000', '562006', '564007', '572009', '573004', '579000', '592002', '598003', '644007', '653000', '679009', '689008', '706008', '708009', '719007', '725006', '740008', '744004', '763003', '769004', '778005', '782007', '833002', '846007', '848008', '854009', '861008', '864000', '868002', '869005', '872003', '887008', '898009', '927005', '929008', '946006', '952007', '958006', '997003', '1014004', '1053008', '1064006', '1067004', '1082009', '1095004', '1109001', '1142000', '1147006', '1153006', '1154000', '1158002', '1161001', '1162008'], 'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'type'=>'CodeableConcept', 'path'=>'UsageContext.value[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/use-context'}},
        'valueQuantity' => {'type'=>'Quantity', 'path'=>'UsageContext.value[x]', 'min'=>1, 'max'=>1},
        'valueRange' => {'type'=>'Range', 'path'=>'UsageContext.value[x]', 'min'=>1, 'max'=>1},
        'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/PlanDefinition', 'http://hl7.org/fhir/StructureDefinition/ResearchStudy', 'http://hl7.org/fhir/StructureDefinition/InsurancePlan', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'UsageContext.value[x]', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id                   # 0-1 string
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :code                 # 1-1 Coding
      attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
      attr_accessor :valueQuantity        # 1-1 Quantity
      attr_accessor :valueRange           # 1-1 Range
      attr_accessor :valueReference       # 1-1 Reference(PlanDefinition|ResearchStudy|InsurancePlan|HealthcareService|Group|Location|Organization)
    end
  end
end