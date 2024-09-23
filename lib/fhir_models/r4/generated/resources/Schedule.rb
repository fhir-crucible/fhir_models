module FHIR
  module R4
    class Schedule < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['active', 'actor', 'date', 'identifier', 'service-category', 'service-type', 'specialty']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Schedule.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Schedule._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Schedule.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Schedule.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Schedule._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Schedule.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Schedule._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Schedule.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Schedule.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Schedule.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Schedule.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Schedule.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'type'=>'boolean', 'path'=>'Schedule.active', 'min'=>0, 'max'=>1},
        '_active' => {'type'=>'Element', 'path'=>'Schedule._active', 'min'=>0, 'max'=>1},
        'serviceCategory' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/service-category'=>['1', '2', '34', '3', '4', '5', '6', '7', '8', '36', '9', '10', '11', '12', '13', '14', '15', '16', '17', '35', '18', '19', '20', '21', '22', '38', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '37', '33']}, 'type'=>'CodeableConcept', 'path'=>'Schedule.serviceCategory', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-category'}},
        'serviceType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/service-type'=>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255', '256', '257', '258', '259', '260', '261', '262', '263', '264', '265', '266', '267', '268', '269', '270', '271', '272', '273', '274', '275', '276', '277', '278', '279', '280', '281', '282', '283', '284', '285', '286', '287', '288', '289', '290', '291', '292', '293', '294', '295', '296', '297', '298', '299', '300', '301', '302', '303', '304', '305', '306', '307', '308', '309', '310', '311', '312', '313', '314', '315', '316', '317', '318', '319', '320', '321', '322', '323', '324', '325', '326', '327', '328', '330', '331', '332', '333', '334', '335', '336', '337', '338', '339', '340', '341', '342', '343', '344', '345', '346', '347', '348', '349', '350', '351', '352', '353', '354', '355', '356', '357', '358', '359', '360', '361', '362', '364', '365', '366', '367', '368', '369', '370', '371', '372', '373', '374', '375', '376', '377', '378', '379', '380', '381', '382', '383', '384', '385', '386', '387', '388', '389', '390', '391', '392', '393', '394', '395', '396', '397', '398', '399', '400', '401', '402', '403', '404', '405', '406', '407', '408', '409', '410', '411', '412', '413', '414', '415', '416', '417', '418', '419', '420', '421', '422', '423', '424', '425', '426', '427', '428', '429', '430', '431', '432', '433', '434', '435', '436', '437', '438', '439', '440', '441', '442', '443', '444', '445', '446', '447', '448', '449', '450', '451', '452', '453', '454', '455', '456', '457', '458', '459', '460', '461', '462', '463', '464', '465', '466', '467', '468', '469', '470', '471', '472', '473', '474', '475', '476', '477', '478', '479', '480', '481', '482', '483', '484', '485', '486', '488', '489', '490', '491', '492', '493', '494', '495', '496', '497', '498', '500', '501', '502', '503', '504', '505', '506', '507', '508', '509', '510', '513', '514', '530', '531', '532', '533', '534', '535', '536', '537', '538', '539', '540', '541', '542', '543', '544', '545', '546', '547', '548', '550', '551', '552', '553', '554', '555', '556', '557', '558', '559', '560', '561', '562', '563', '564', '565', '566', '567', '568', '569', '570', '571', '572', '573', '574', '575', '576', '577', '580', '581', '582', '583', '584', '585', '589', '590', '591', '593', '599', '600', '601', '602', '603', '604', '605', '606', '607', '608', '609', '610', '611', '612', '613', '614', '615', '616', '617', '618', '619', '620', '621', '622', '623', '624', '625', '626', '627', '628', '629']}, 'type'=>'CodeableConcept', 'path'=>'Schedule.serviceType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-type'}},
        'specialty' => {'valid_codes'=>{'http://snomed.info/sct'=>['408467006', '394577000', '394578005', '421661004', '408462000', '394579002', '394804000', '394580004', '394803006', '408480009', '408454008', '394809005', '394592004', '394600006', '394601005', '394581000', '408478003', '394812008', '408444009', '394582007', '408475000', '410005002', '394583002', '419772000', '394584008', '408443003', '394802001', '394915009', '394814009', '394808002', '394811001', '408446006', '394586005', '394916005', '408472002', '394597005', '394598000', '394807007', '419192003', '408468001', '394593009', '394813003', '410001006', '394589003', '394591006', '394599008', '394649004', '408470005', '394585009', '394821009', '422191005', '394594003', '416304004', '418960008', '394882004', '394806003', '394588006', '408459003', '394607009', '419610006', '418058008', '420208008', '418652005', '418535003', '418862001', '419365004', '418002000', '419983000', '419170002', '419472004', '394539006', '420112009', '409968004', '394587001', '394913002', '408440000', '418112009', '419815003', '394914008', '408455009', '394602003', '408447002', '394810000', '408450004', '408476004', '408469009', '408466002', '408471009', '408464004', '408441001', '408465003', '394605001', '394608004', '408461007', '408460008', '394606000', '408449004', '418018006', '394604002', '394609007', '408474001', '394610002', '394611003', '408477008', '394801008', '408463005', '419321007', '394576009', '394590007', '409967009', '408448007', '419043006', '394612005', '394733009', '394732004']}, 'type'=>'CodeableConcept', 'path'=>'Schedule.specialty', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/c80-practice-codes'}},
        'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Schedule.actor', 'min'=>1, 'max'=>Float::INFINITY},
        'planningHorizon' => {'type'=>'Period', 'path'=>'Schedule.planningHorizon', 'min'=>0, 'max'=>1},
        'comment' => {'type'=>'string', 'path'=>'Schedule.comment', 'min'=>0, 'max'=>1},
        '_comment' => {'type'=>'Element', 'path'=>'Schedule._comment', 'min'=>0, 'max'=>1}
      }

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
      attr_accessor :active            # 0-1 boolean
      attr_accessor :_active           # 0-1 Element
      attr_accessor :serviceCategory   # 0-* [ CodeableConcept ]
      attr_accessor :serviceType       # 0-* [ CodeableConcept ]
      attr_accessor :specialty         # 0-* [ CodeableConcept ]
      attr_accessor :actor             # 1-* [ Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Device|HealthcareService|Location) ]
      attr_accessor :planningHorizon   # 0-1 Period
      attr_accessor :comment           # 0-1 string
      attr_accessor :_comment          # 0-1 Element

      def resourceType
        'Schedule'
      end
    end
  end
  Schedule = FHIR::R4::Schedule
end