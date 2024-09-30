module FHIR
  module R5
    class DeviceMetric < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['category', 'device', 'identifier', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'DeviceMetric.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'DeviceMetric.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'DeviceMetric.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'DeviceMetric.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'DeviceMetric.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'DeviceMetric.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'DeviceMetric.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'DeviceMetric.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'DeviceMetric.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '128', '129', '130', '255', '256', '258', '514', '1024', '65537', '65538', '65539', '65540', '65541', '65542', '65543', '65544', '65545', '65546', '65552', '65553', '65554', '65555', '65556', '65557', '65558', '65559', '65560', '65564', '65568', '65569', '65570', '65571', '65572', '65573', '65574', '65575', '65576', '65577', '65578', '65579', '65580', '65581', '65582', '65583', '65584', '65585', '65586', '65587', '65588', '65589', '65590', '65597', '65598', '65599', '65600', '65601', '65602', '65603', '65604', '65605', '65606', '65608', '65609', '65610', '65611', '65612', '65613', '65614', '65615', '65616', '66817', '66818', '67073', '67074', '67075', '67076', '67077', '67078', '67585', '67586', '67587', '67588', '67589', '67590', '67591', '67592', '67593', '67594', '67595', '67596', '67598', '67599', '67600', '67601', '67603', '67604', '67605', '67606', '67607', '67608', '67609', '67610', '67611', '67612', '67613', '67614', '68162', '68163', '67841', '67842', '67843', '67844', '67845', '67846', '67847', '67848', '67850', '67851', '67852', '67853', '67854', '67855', '67856', '67857', '67858', '67859', '67860', '67861', '67862', '67863', '67864', '67865', '67866', '67867', '67868', '67869', '67870', '67871', '67872', '67873', '67874', '67875', '67876', '67877', '67878', '67879', '67880', '67881', '67882', '67883', '67884', '67885', '67886', '67887', '67888', '67889', '67890', '67891', '67892', '67893', '67894', '67895', '67896', '67897', '67898', '67899', '67900', '67901', '67902', '67903', '67904', '67905', '67906', '67907', '67908', '67909', '67910', '67911', '67912', '67914', '67915', '67917', '67918', '67919', '67920', '67921', '67922', '67923', '67924', '67925', '67926', '67927', '67928', '67929', '67930', '67931', '67932', '67933', '67934', '67935', '67936', '67937', '67938', '67939', '67940', '67941', '67942', '67943', '67944', '67945', '67946', '67947', '67948', '67949', '67950', '67951', '67952', '67953', '67954', '67955', '67956', '67957', '67958', '67960', '67961', '67962', '67963', '67964', '67965', '67966', '67967', '67968', '67969', '67970', '67971', '67972', '67973', '67974', '67975', '67976', '67978', '67979', '67980', '67981', '67982', '67983', '67984', '67985', '67986', '67987', '67988', '67989', '67990', '67991', '67992', '67993', '67994', '67995', '67996', '67997', '67998', '67999', '68000', '68001', '68002', '68003', '68004', '68005', '68006', '68007', '68008', '68012', '68013', '68014', '68015', '68016', '68017', '68018', '68019', '68020', '68021', '68022', '68023', '68024', '68025', '68026', '68027', '68028', '68029', '68030', '68031', '68032', '68033', '68034', '68035', '68036', '68037', '68038', '68039', '68040', '68041', '68042', '68043', '68044', '68045', '68046', '68047', '68048', '68049', '68050', '68051', '68052', '68053', '68054', '68055', '68056', '68057', '68058', '68059', '68060', '68061', '68062', '68063', '68064', '68065', '68066', '68067', '68068', '68070', '68071', '68072', '68073', '68074', '68075', '68076', '68078', '68079', '68080', '68081', '68082', '68083', '68084', '68085', '68086', '68087', '68088', '68089', '68090', '68091', '68092', '68093', '68094', '68096', '68097', '68100', '68101', '68103', '68104', '68105', '68106', '68107', '68108', '68109', '68110', '68111', '68112', '68113', '68114', '68115', '68116', '68117', '68118', '68119', '68120', '68121', '68122', '68123', '68124', '68125', '68126', '68127', '68128', '68129', '68130', '68131', '68132', '68133', '68134', '68136', '68137', '68138', '68139', '68140', '68141', '68142', '68143', '68144', '68145', '68146', '68147', '68148', '68149', '68150', '68151', '68152', '68153', '68154', '68155', '68156', '68157', '68158', '68159', '68160', '68161', '68609', '68610', '68611', '68612', '68613', '68614', '68615', '68616', '68617', '68618', '68619', '68620', '68621', '68622', '68623', '68624', '68625', '68626', '68627', '68628', '68629', '68630', '68631', '68632', '68633', '68634', '68864', '68865', '68866', '68867', '68868', '68869', '68870', '68871', '68872', '68873', '68874', '68875', '68876', '68877', '68878', '68879', '68880', '68881', '68882', '68883', '68884', '68885', '68886', '68887', '68888', '68889', '68890', '68891', '69632', '69633', '69634', '69635', '69636', '69637', '69638', '69639', '69640', '69641', '69642', '69643', '69644', '69645', '69646', '69647', '69648', '69649', '69650', '69651', '69652', '69653', '69654', '69655', '69656', '69657', '69658', '69659', '69660', '69661', '69662', '69663', '69664', '69665', '69666', '69667', '69668', '69669', '69670', '69671', '69672', '69673', '69674', '69675', '69676', '69677', '69678', '69679', '69680', '69681', '69682', '69683', '69684', '69685', '69686', '69687', '69688', '69689', '69690', '69691', '69692', '69693', '69694', '69695', '69696', '69697', '69698', '69699', '69700', '69701', '69702', '69703', '69704', '69705', '69706', '69707', '69708', '69709', '69710', '69711', '69712', '69713', '69714', '69715', '69716', '69717', '69718', '69719', '69720', '69721', '69722', '69723', '69724', '69725', '69726', '69727', '69728', '69729', '69730', '69731', '69732', '69733', '69734', '69735', '69736', '69737', '69738', '69739', '69740', '69741', '69742', '69743', '69744', '69745', '69746', '69747', '69748', '69749', '69750', '69751', '69752', '69753', '69754', '69755', '69756', '69757', '69758', '69759', '69760', '69761', '69762', '69763', '69764', '69765', '69766', '69767', '69768', '69769', '69770', '69771', '69772', '69773', '69774', '69775', '69776', '69777', '69778', '69779', '69780', '69781', '69782', '69783', '69784', '69785', '69786', '69787', '69788', '69789', '69790', '69791', '69792', '69793', '69794', '69795', '69796', '69797', '69798', '69799', '69800', '69801', '69802', '69803', '69804', '69805', '69806', '69807', '69808', '69809', '69810', '69811', '69812', '69813', '69814', '69815', '69816', '69817', '69818', '69819', '69820', '69821', '69822', '69823', '69824', '69825', '69826', '69827', '69828', '69829', '69830', '69831', '69832', '69833', '69834', '69835', '69836', '69837', '69838', '69839', '69840', '69841', '69842', '69843', '69844', '69845', '69846', '69847', '69848', '69849', '69850', '69851', '69852', '69853', '69854', '69855', '69856', '69857', '69858', '69859', '69860', '69861', '69862', '69863', '69864', '69865', '69866', '69867', '69868', '69869', '69870', '69871', '69872', '69873', '69874', '69875', '69876', '69877', '69878', '69879', '69880', '69881', '69882', '69883', '69884', '69885', '69886', '69887', '69888', '69889', '69890', '69891', '69892', '69893', '69894', '69895', '69896', '69897', '69898', '69899', '69900', '69901', '69902', '69903', '69904', '69905', '69906', '69907', '69908', '69909', '69910', '69911', '69912', '69913', '69914', '69915', '69916', '69917', '69918', '69919', '69920', '69921', '69922', '69923', '69924', '69925', '69926', '69927', '69928', '69929', '69930', '69931', '69932', '69933', '69934', '69935', '69936', '69937', '69938', '69939', '69940', '69941', '69942', '69943', '69944', '69945', '69946', '69947', '69948', '69949', '69950', '69951', '69952', '69953', '69954', '69955', '69956', '69957', '69958', '69959', '69960', '69961', '69962', '69963', '69964', '69965', '69966', '69967', '69968', '69969', '69970', '69971', '69972', '69973', '69974', '69975', '69976', '69977', '69978', '69979', '69980', '69981', '69982', '69983', '69984', '69985', '69986', '69987', '69988', '69989', '69990', '69991', '69992', '69993', '69994', '69995', '69996', '69997', '69998', '69999', '70000', '70001', '70002', '70003', '70004', '70005', '70006', '70007', '70008', '70009', '70010', '70011', '70012', '70013', '70014', '70015', '70016', '70017', '70018', '70019', '70020', '70021', '70022', '70023', '70024', '70025', '70026', '70027', '70028', '70029', '70030', '70031', '70032', '70033', '70034', '70035', '70036', '70037', '70038', '70039', '70040', '70041', '70042', '70043', '70044', '70045', '70046', '70047', '70656', '70657', '70658', '70659', '70660', '70661', '70662', '70663', '70664', '70665', '70666', '70667', '70668', '70669', '70670', '70671', '70672', '70673', '70674', '70675', '70676', '70677', '70678', '70679', '70680', '70681', '70682', '70683', '70684', '70685', '70686', '70687', '70688', '70689', '70690', '70691', '70692', '70693', '70694', '70695', '70696', '70697', '70698', '70699', '70700', '70701', '70702', '70703', '70704', '70705', '70706', '70707', '70708', '70709', '70710', '70711', '70712', '70713', '70714', '70715', '70716', '70717', '70718', '70719', '70720', '70721', '70722', '70723', '70724', '70725', '70726', '70727', '70728', '70729', '70730', '70731', '70732', '70733', '70734', '70735', '70736', '70737', '70738', '70739', '70740', '70741', '70742', '70743', '70744', '70745', '70746', '70747', '70748', '70749', '70750', '70751', '70752', '70753', '70754', '70755', '70756', '70757', '70758', '70759']}, 'type'=>'CodeableConcept', 'path'=>'DeviceMetric.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/devicemetric-type'}},
        'unit' => {'type'=>'CodeableConcept', 'path'=>'DeviceMetric.unit', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/ucum-units'}},
        'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DeviceMetric.device', 'min'=>1, 'max'=>1},
        'operationalStatus' => {'valid_codes'=>{'http://hl7.org/fhir/metric-operational-status'=>['on', 'off', 'standby', 'entered-in-error']}, 'type'=>'code', 'path'=>'DeviceMetric.operationalStatus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-operational-status'}},
        'color' => {'valid_codes'=>{'http://hl7.org/fhir/color-names'=>['aliceblue', 'antiquewhite', 'aqua', 'aquamarine', 'azure', 'beige', 'bisque', 'black', 'blanchedalmond', 'blue', 'blueviolet', 'brown', 'burlywood', 'cadetblue', 'chartreuse', 'chocolate', 'coral', 'cornflowerblue', 'cornsilk', 'crimson', 'cyan', 'darkblue', 'darkcyan', 'darkgoldenrod', 'darkgray', 'darkgreen', 'darkgrey', 'darkkhaki', 'darkmagenta', 'darkolivegreen', 'darkorange', 'darkorchid', 'darkred', 'darksalmon', 'darkseagreen', 'darkslateblue', 'darkslategray', 'darkslategrey', 'darkturquoise', 'darkviolet', 'deeppink', 'deepskyblue', 'dimgray', 'dimgrey', 'dodgerblue', 'firebrick', 'floralwhite', 'forestgreen', 'fuchsia', 'gainsboro', 'ghostwhite', 'gold', 'goldenrod', 'gray', 'green', 'greenyellow', 'grey', 'honeydew', 'hotpink', 'indianred', 'indigo', 'ivory', 'khaki', 'lavender', 'lavenderblush', 'lawngreen', 'lemonchiffon', 'lightblue', 'lightcoral', 'lightcyan', 'lightgoldenrodyellow', 'lightgray', 'lightgreen', 'lightgrey', 'lightpink', 'lightsalmon', 'lightseagreen', 'lightskyblue', 'lightslategray', 'lightslategrey', 'lightsteelblue', 'lightyellow', 'lime', 'limegreen', 'linen', 'magenta', 'maroon', 'mediumaquamarine', 'mediumblue', 'mediumorchid', 'mediumpurple', 'mediumseagreen', 'mediumslateblue', 'mediumspringgreen', 'mediumturquoise', 'mediumvioletred', 'midnightblue', 'mintcream', 'mistyrose', 'moccasin', 'navajowhite', 'navy', 'oldlace', 'olive', 'olivedrab', 'orange', 'orangered', 'orchid', 'palegoldenrod', 'palegreen', 'paleturquoise', 'palevioletred', 'papayawhip', 'peachpuff', 'peru', 'pink', 'plum', 'powderblue', 'purple', 'rebeccapurple', 'red', 'rosybrown', 'royalblue', 'saddlebrown', 'salmon', 'sandybrown', 'seagreen', 'seashell', 'sienna', 'silver', 'skyblue', 'slateblue', 'slategray', 'slategrey', 'snow', 'springgreen', 'steelblue', 'tan', 'teal', 'thistle', 'tomato', 'turquoise', 'violet', 'wheat', 'white', 'whitesmoke', 'yellow', 'yellowgreen']}, 'type'=>'code', 'path'=>'DeviceMetric.color', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/color-codes'}},
        'category' => {'valid_codes'=>{'http://hl7.org/fhir/metric-category'=>['measurement', 'setting', 'calculation', 'unspecified']}, 'type'=>'code', 'path'=>'DeviceMetric.category', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-category'}},
        'measurementFrequency' => {'type'=>'Quantity', 'path'=>'DeviceMetric.measurementFrequency', 'min'=>0, 'max'=>1},
        'calibration' => {'type'=>'DeviceMetric::Calibration', 'path'=>'DeviceMetric.calibration', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Calibration < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Calibration.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Calibration.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Calibration.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/metric-calibration-type'=>['unspecified', 'offset', 'gain', 'two-point']}, 'type'=>'code', 'path'=>'Calibration.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-calibration-type'}},
          'state' => {'valid_codes'=>{'http://hl7.org/fhir/metric-calibration-state'=>['not-calibrated', 'calibration-required', 'calibrated', 'unspecified']}, 'type'=>'code', 'path'=>'Calibration.state', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-calibration-state'}},
          'time' => {'type'=>'instant', 'path'=>'Calibration.time', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 code
        attr_accessor :state             # 0-1 code
        attr_accessor :time              # 0-1 instant
      end

      attr_accessor :id                   # 0-1 id
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :language             # 0-1 code
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-* [ Identifier ]
      attr_accessor :type                 # 1-1 CodeableConcept
      attr_accessor :unit                 # 0-1 CodeableConcept
      attr_accessor :device               # 1-1 Reference(Device)
      attr_accessor :operationalStatus    # 0-1 code
      attr_accessor :color                # 0-1 code
      attr_accessor :category             # 1-1 code
      attr_accessor :measurementFrequency # 0-1 Quantity
      attr_accessor :calibration          # 0-* [ DeviceMetric::Calibration ]

      def resourceType
        'DeviceMetric'
      end
    end
  end
end