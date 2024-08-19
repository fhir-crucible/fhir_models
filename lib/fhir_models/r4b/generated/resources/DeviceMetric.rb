module FHIR
  module R4B
    class DeviceMetric < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['category', 'identifier', 'parent', 'source', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'DeviceMetric.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'DeviceMetric.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'DeviceMetric.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'DeviceMetric.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'DeviceMetric.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'DeviceMetric.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'DeviceMetric.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'DeviceMetric.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'DeviceMetric.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['131072', '131073', '131074', '131075', '131076', '131077', '131078', '131079', '131080', '131081', '131082', '131083', '131084', '131085', '131086', '131087', '131088', '131089', '131090', '131091', '131092', '131093', '131094', '131095', '131096', '131097', '131098', '131099', '131100', '131101', '131102', '131103', '131104', '131105', '131106', '131107', '131108', '131109', '131110', '131111', '131112', '131113', '131114', '131115', '131116', '131117', '131118', '131119', '131120', '131121', '131122', '131123', '131124', '131125', '131126', '131127', '131128', '131129', '131130', '131131', '131132', '131133', '131134', '131135', '131136', '131137', '131138', '131139', '131140', '131141', '131142', '131143', '131144', '131145', '131146', '131147', '131148', '131149', '131150', '131151', '131152', '131153', '131154', '131155', '131156', '131157', '131158', '131159', '131160', '131161', '131162', '131163', '131164', '131165', '131166', '131167', '131168', '131169', '131170', '131171', '131172', '131173', '131174', '131175', '131176', '131177', '131178', '131179', '131180', '131181', '131182', '131183', '131184', '131185', '131186', '131187', '131188', '131328', '131329', '131330', '131331', '131332', '131333', '131334', '131335', '131336', '131344', '131345', '131346', '131349', '131350', '131351', '131389', '131390', '131391', '131392', '131394', '131395', '131403', '131404', '131405', '131406', '131407', '131408', '131409', '131410', '131411', '131412', '131413', '131415', '131416', '131840', '131841', '131842', '131843', '131844', '131845', '131846', '131847', '131848', '131873', '131874', '131875', '131876', '131877', '131878', '131901', '131902', '131903', '131904', '131927', '131931', '131932', '131937', '131971', '131972', '131973', '132096', '132352', '132608', '132864', '133120', '133376', '133632', '133888', '134144', '134400', '134656', '134912', '135168', '135424', '135680', '135936', '136192', '136448', '136960', '137216', '137472', '137728', '137984', '138240', '138496', '138752', '139008', '139264', '139520', '139776', '140032', '140288', '140544', '140800', '141056', '141312', '141568', '141824', '142080', '142336', '142592', '142848', '143104', '143360', '143616', '143872', '144128', '144384', '144640', '144896', '145152', '145408', '145664', '145920', '146176', '146952', '146956', '146960', '146964', '146968', '147076', '147080', '147084', '147088', '147092', '147096', '147100', '147104', '147200', '147204', '147208', '147212', '147216', '147220', '147228', '147232', '147236', '147240', '147241', '147244', '147248', '147252', '147256', '147260', '147264', '147268', '147272', '147276', '147280', '147284', '147288', '147292', '147296', '147304', '147308', '147312', '147316', '147320', '147324', '147328', '147332', '147336', '147340', '147344', '147348', '147352', '147356', '147360', '147364', '147368', '147372', '147376', '147380', '147384', '147388', '147392', '147396', '147400', '147404', '147408', '147412', '147456', '147458', '147459', '147460', '147461', '147462', '147463', '147464', '147465', '147466', '147467', '147468', '147469', '147470', '147471', '147472', '147473', '147474', '147475', '147476', '147477', '147478', '147479', '147480', '147481', '147482', '147483', '147484', '147485', '147486', '147487', '147488', '147489', '147490', '147519', '147520', '147527', '147528', '147536', '147537', '147543', '147544', '147545', '147551', '147552', '147560', '147568', '147576', '147584', '147585', '147591', '147592', '147593', '147600', '147608', '147616', '147624', '147625', '147626', '147627', '147628', '147631', '147632', '147640', '147648', '147649', '147656', '147664', '147665', '147672', '147680', '147688', '147696', '147704', '147720', '147728', '147736', '147744', '147752', '147760', '147768', '147776', '147784', '147792', '147800', '147808', '147816', '147824', '147832', '147840', '147841', '147842', '147844', '147848', '147850', '147856', '147864', '147872', '147880', '147888', '147896', '147904', '147912', '147920', '147928', '147936', '147937', '147944', '147960', '147968', '147976', '147977', '147983', '147984', '147992', '147993', '148000', '148001', '148002', '148003', '148004', '148008', '148016', '148024', '148032', '148040', '148048', '148056', '148057', '148063', '148064', '148065', '148066', '148067', '148068', '148072', '148080', '148088', '148096', '148097', '148104', '148105', '148112', '148113', '148120', '148128', '148129', '148136', '148144', '148152', '148160', '148168', '148176', '148184', '148192', '148200', '148201', '148208', '148216', '148224', '148232', '148240', '148248', '148256', '148264', '148272', '148280', '148296', '148304', '148312', '148320', '148328', '148336', '148344', '148352', '148360', '148368', '148376', '148384', '148392', '148400', '148408', '148416', '148424', '148432', '148440', '148464', '148488', '148496', '148504', '148512', '148520', '148528', '148568', '148576', '148584', '148592', '148600', '148608', '148624', '148631', '148632', '148640', '148648', '148656', '148664', '148672', '148680', '148688', '148696', '148704', '148712', '148720', '148728', '148729', '148736', '148743', '148744', '148751', '148752', '148759', '148760', '148767', '148776', '148783', '149072', '149073', '149074', '149075', '149076', '149077', '149078', '149504', '149514', '149520', '149522', '149528', '149530', '149536', '149538', '149544', '149546', '149552', '149553', '149554', '149555', '149556', '149557', '149560', '149561', '149562', '149563', '149564', '149565', '149760', '149764', '149765', '149766', '149767', '149768', '149772', '150016', '150017', '150018', '150019', '150020', '150021', '150022', '150023', '150024', '150025', '150026', '150027', '150028', '150029', '150030', '150031', '150032', '150033', '150034', '150035', '150036', '150037', '150038', '150039', '150040', '150042', '150044', '150045', '150046', '150047', '150052', '150056', '150057', '150058', '150059', '150060', '150064', '150065', '150066', '150067', '150068', '150069', '150070', '150071', '150076', '150077', '150078', '150079', '150080', '150084', '150085', '150086', '150087', '150088', '150089', '150090', '150091', '150092', '150094', '150096', '150098', '150100', '150101', '150102', '150103', '150104', '150105', '150106', '150107', '150108', '150112', '150113', '150114', '150115', '150116', '150117', '150118', '150119', '150120', '150121', '150122', '150123', '150124', '150125', '150126', '150127', '150128', '150129', '150130', '150131', '150132', '150133', '150134', '150135', '150136', '150137', '150138', '150139', '150140', '150141', '150142', '150143', '150144', '150146', '150149', '150154', '150272', '150276', '150280', '150284', '150296', '150300', '150301', '150302', '150303', '150304', '150308', '150312', '150316', '150320', '150324', '150328', '150332', '150336', '150340', '150344', '150348', '150352', '150356', '150364', '150368', '150372', '150376', '150380', '150388', '150392', '150396', '150404', '150408', '150412', '150416', '150420', '150428', '150432', '150436', '150440', '150444', '150448', '150452', '150456', '150460', '150464', '150468', '150472', '150476', '150480', '150484', '150488', '150492', '150496', '150500', '150502', '150504', '150508', '150512', '150516', '150520', '150524', '150528', '150532', '150536', '150539', '150540', '150541', '150544', '150547', '150548', '150549', '150552', '150555', '150556', '150557', '150560', '150563', '150564', '150565', '150568', '150572', '150576', '150580', '150581', '150582', '150583', '150584', '150585', '150586', '150587', '150588', '150589', '150590', '150591', '150604', '150605', '150612', '150613', '150614', '150615', '150616', '150617', '150618', '150619', '150620', '150621', '150622', '150623', '150624', '150625', '150626', '150627', '150628', '150629', '150630', '150631', '150632', '150633', '150634', '150635', '150636', '150637', '150638', '150639', '150640', '150641', '150642', '150643', '150644', '150645', '150646', '150647', '150648', '150649', '150650', '150651', '150652', '150653', '150654', '150655', '150656', '150657', '150658', '150659', '150660', '150661', '150662', '150663', '150664', '150665', '150666', '150667', '150668', '150669', '150670', '150671', '150672', '150673', '150674', '150675', '150676', '150677', '150678', '150679', '150680', '150681', '150682', '150683', '150684', '150685', '151552', '151553', '151555', '151556', '151557', '151560', '151562', '151568', '151569', '151570', '151571', '151572', '151573', '151576', '151577', '151578', '151579', '151580', '151581', '151584', '151585', '151586', '151587', '151588', '151589', '151592', '151593', '151594', '151595', '151596', '151597', '151600', '151601', '151602', '151603', '151604', '151605', '151608', '151609', '151610', '151611', '151612', '151613', '151616', '151617', '151618', '151619', '151620', '151621', '151624', '151625', '151626', '151627', '151628', '151629', '151632', '151633', '151634', '151635', '151636', '151637', '151640', '151641', '151642', '151643', '151644', '151645', '151648', '151649', '151650', '151651', '151652', '151653', '151656', '151657', '151658', '151659', '151660', '151661', '151664', '151665', '151666', '151667', '151668', '151669', '151672', '151673', '151674', '151675', '151676', '151677', '151680', '151681', '151682', '151683', '151684', '151685', '151686', '151687', '151688', '151689', '151690', '151691', '151692', '151693', '151694', '151695', '151696', '151697', '151698', '151699', '151700', '151701', '151702', '151703', '151708', '151709', '151710', '151711', '151712', '151713', '151714', '151715', '151716', '151717', '151718', '151719', '151720', '151721', '151722', '151723', '151724', '151725', '151726', '151727', '151728', '151729', '151730', '151731', '151732', '151733', '151734', '151735', '151736', '151737', '151738', '151739', '151740', '151741', '151742', '151743', '151744', '151745', '151746', '151747', '151748', '151749', '151750', '151751', '151752', '151753', '151754', '151755', '151756']}, 'type'=>'CodeableConcept', 'path'=>'DeviceMetric.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/devicemetric-type'}},
        'unit' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['131072', '131073', '131074', '131075', '131076', '131077', '131078', '131079', '131080', '131081', '131082', '131083', '131084', '131085', '131086', '131087', '131088', '131089', '131090', '131091', '131092', '131093', '131094', '131095', '131096', '131097', '131098', '131099', '131100', '131101', '131102', '131103', '131104', '131105', '131106', '131107', '131108', '131109', '131110', '131111', '131112', '131113', '131114', '131115', '131116', '131117', '131118', '131119', '131120', '131121', '131122', '131123', '131124', '131125', '131126', '131127', '131128', '131129', '131130', '131131', '131132', '131133', '131134', '131135', '131136', '131137', '131138', '131139', '131140', '131141', '131142', '131143', '131144', '131145', '131146', '131147', '131148', '131149', '131150', '131151', '131152', '131153', '131154', '131155', '131156', '131157', '131158', '131159', '131160', '131161', '131162', '131163', '131164', '131165', '131166', '131167', '131168', '131169', '131170', '131171', '131172', '131173', '131174', '131175', '131176', '131177', '131178', '131179', '131180', '131181', '131182', '131183', '131184', '131185', '131186', '131187', '131188', '131328', '131329', '131330', '131331', '131332', '131333', '131334', '131335', '131336', '131344', '131345', '131346', '131349', '131350', '131351', '131389', '131390', '131391', '131392', '131394', '131395', '131403', '131404', '131405', '131406', '131407', '131408', '131409', '131410', '131411', '131412', '131413', '131415', '131416', '131840', '131841', '131842', '131843', '131844', '131845', '131846', '131847', '131848', '131873', '131874', '131875', '131876', '131877', '131878', '131901', '131902', '131903', '131904', '131927', '131931', '131932', '131937', '131971', '131972', '131973', '132096', '132352', '132608', '132864', '133120', '133376', '133632', '133888', '134144', '134400', '134656', '134912', '135168', '135424', '135680', '135936', '136192', '136448', '136960', '137216', '137472', '137728', '137984', '138240', '138496', '138752', '139008', '139264', '139520', '139776', '140032', '140288', '140544', '140800', '141056', '141312', '141568', '141824', '142080', '142336', '142592', '142848', '143104', '143360', '143616', '143872', '144128', '144384', '144640', '144896', '145152', '145408', '145664', '145920', '146176', '146952', '146956', '146960', '146964', '146968', '147076', '147080', '147084', '147088', '147092', '147096', '147100', '147104', '147200', '147204', '147208', '147212', '147216', '147220', '147228', '147232', '147236', '147240', '147241', '147244', '147248', '147252', '147256', '147260', '147264', '147268', '147272', '147276', '147280', '147284', '147288', '147292', '147296', '147304', '147308', '147312', '147316', '147320', '147324', '147328', '147332', '147336', '147340', '147344', '147348', '147352', '147356', '147360', '147364', '147368', '147372', '147376', '147380', '147384', '147388', '147392', '147396', '147400', '147404', '147408', '147412', '147456', '147458', '147459', '147460', '147461', '147462', '147463', '147464', '147465', '147466', '147467', '147468', '147469', '147470', '147471', '147472', '147473', '147474', '147475', '147476', '147477', '147478', '147479', '147480', '147481', '147482', '147483', '147484', '147485', '147486', '147487', '147488', '147489', '147490', '147519', '147520', '147527', '147528', '147536', '147537', '147543', '147544', '147545', '147551', '147552', '147560', '147568', '147576', '147584', '147585', '147591', '147592', '147593', '147600', '147608', '147616', '147624', '147625', '147626', '147627', '147628', '147631', '147632', '147640', '147648', '147649', '147656', '147664', '147665', '147672', '147680', '147688', '147696', '147704', '147720', '147728', '147736', '147744', '147752', '147760', '147768', '147776', '147784', '147792', '147800', '147808', '147816', '147824', '147832', '147840', '147841', '147842', '147844', '147848', '147850', '147856', '147864', '147872', '147880', '147888', '147896', '147904', '147912', '147920', '147928', '147936', '147937', '147944', '147960', '147968', '147976', '147977', '147983', '147984', '147992', '147993', '148000', '148001', '148002', '148003', '148004', '148008', '148016', '148024', '148032', '148040', '148048', '148056', '148057', '148063', '148064', '148065', '148066', '148067', '148068', '148072', '148080', '148088', '148096', '148097', '148104', '148105', '148112', '148113', '148120', '148128', '148129', '148136', '148144', '148152', '148160', '148168', '148176', '148184', '148192', '148200', '148201', '148208', '148216', '148224', '148232', '148240', '148248', '148256', '148264', '148272', '148280', '148296', '148304', '148312', '148320', '148328', '148336', '148344', '148352', '148360', '148368', '148376', '148384', '148392', '148400', '148408', '148416', '148424', '148432', '148440', '148464', '148488', '148496', '148504', '148512', '148520', '148528', '148568', '148576', '148584', '148592', '148600', '148608', '148624', '148631', '148632', '148640', '148648', '148656', '148664', '148672', '148680', '148688', '148696', '148704', '148712', '148720', '148728', '148729', '148736', '148743', '148744', '148751', '148752', '148759', '148760', '148767', '148776', '148783', '149072', '149073', '149074', '149075', '149076', '149077', '149078', '149504', '149514', '149520', '149522', '149528', '149530', '149536', '149538', '149544', '149546', '149552', '149553', '149554', '149555', '149556', '149557', '149560', '149561', '149562', '149563', '149564', '149565', '149760', '149764', '149765', '149766', '149767', '149768', '149772', '150016', '150017', '150018', '150019', '150020', '150021', '150022', '150023', '150024', '150025', '150026', '150027', '150028', '150029', '150030', '150031', '150032', '150033', '150034', '150035', '150036', '150037', '150038', '150039', '150040', '150042', '150044', '150045', '150046', '150047', '150052', '150056', '150057', '150058', '150059', '150060', '150064', '150065', '150066', '150067', '150068', '150069', '150070', '150071', '150076', '150077', '150078', '150079', '150080', '150084', '150085', '150086', '150087', '150088', '150089', '150090', '150091', '150092', '150094', '150096', '150098', '150100', '150101', '150102', '150103', '150104', '150105', '150106', '150107', '150108', '150112', '150113', '150114', '150115', '150116', '150117', '150118', '150119', '150120', '150121', '150122', '150123', '150124', '150125', '150126', '150127', '150128', '150129', '150130', '150131', '150132', '150133', '150134', '150135', '150136', '150137', '150138', '150139', '150140', '150141', '150142', '150143', '150144', '150146', '150149', '150154', '150272', '150276', '150280', '150284', '150296', '150300', '150301', '150302', '150303', '150304', '150308', '150312', '150316', '150320', '150324', '150328', '150332', '150336', '150340', '150344', '150348', '150352', '150356', '150364', '150368', '150372', '150376', '150380', '150388', '150392', '150396', '150404', '150408', '150412', '150416', '150420', '150428', '150432', '150436', '150440', '150444', '150448', '150452', '150456', '150460', '150464', '150468', '150472', '150476', '150480', '150484', '150488', '150492', '150496', '150500', '150502', '150504', '150508', '150512', '150516', '150520', '150524', '150528', '150532', '150536', '150539', '150540', '150541', '150544', '150547', '150548', '150549', '150552', '150555', '150556', '150557', '150560', '150563', '150564', '150565', '150568', '150572', '150576', '150580', '150581', '150582', '150583', '150584', '150585', '150586', '150587', '150588', '150589', '150590', '150591', '150604', '150605', '150612', '150613', '150614', '150615', '150616', '150617', '150618', '150619', '150620', '150621', '150622', '150623', '150624', '150625', '150626', '150627', '150628', '150629', '150630', '150631', '150632', '150633', '150634', '150635', '150636', '150637', '150638', '150639', '150640', '150641', '150642', '150643', '150644', '150645', '150646', '150647', '150648', '150649', '150650', '150651', '150652', '150653', '150654', '150655', '150656', '150657', '150658', '150659', '150660', '150661', '150662', '150663', '150664', '150665', '150666', '150667', '150668', '150669', '150670', '150671', '150672', '150673', '150674', '150675', '150676', '150677', '150678', '150679', '150680', '150681', '150682', '150683', '150684', '150685', '151552', '151553', '151555', '151556', '151557', '151560', '151562', '151568', '151569', '151570', '151571', '151572', '151573', '151576', '151577', '151578', '151579', '151580', '151581', '151584', '151585', '151586', '151587', '151588', '151589', '151592', '151593', '151594', '151595', '151596', '151597', '151600', '151601', '151602', '151603', '151604', '151605', '151608', '151609', '151610', '151611', '151612', '151613', '151616', '151617', '151618', '151619', '151620', '151621', '151624', '151625', '151626', '151627', '151628', '151629', '151632', '151633', '151634', '151635', '151636', '151637', '151640', '151641', '151642', '151643', '151644', '151645', '151648', '151649', '151650', '151651', '151652', '151653', '151656', '151657', '151658', '151659', '151660', '151661', '151664', '151665', '151666', '151667', '151668', '151669', '151672', '151673', '151674', '151675', '151676', '151677', '151680', '151681', '151682', '151683', '151684', '151685', '151686', '151687', '151688', '151689', '151690', '151691', '151692', '151693', '151694', '151695', '151696', '151697', '151698', '151699', '151700', '151701', '151702', '151703', '151708', '151709', '151710', '151711', '151712', '151713', '151714', '151715', '151716', '151717', '151718', '151719', '151720', '151721', '151722', '151723', '151724', '151725', '151726', '151727', '151728', '151729', '151730', '151731', '151732', '151733', '151734', '151735', '151736', '151737', '151738', '151739', '151740', '151741', '151742', '151743', '151744', '151745', '151746', '151747', '151748', '151749', '151750', '151751', '151752', '151753', '151754', '151755', '151756']}, 'type'=>'CodeableConcept', 'path'=>'DeviceMetric.unit', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/devicemetric-type'}},
        'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DeviceMetric.source', 'min'=>0, 'max'=>1},
        'parent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DeviceMetric.parent', 'min'=>0, 'max'=>1},
        'operationalStatus' => {'valid_codes'=>{'http://hl7.org/fhir/metric-operational-status'=>['on', 'off', 'standby', 'entered-in-error']}, 'type'=>'code', 'path'=>'DeviceMetric.operationalStatus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-operational-status'}},
        'color' => {'valid_codes'=>{'http://hl7.org/fhir/metric-color'=>['black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white']}, 'type'=>'code', 'path'=>'DeviceMetric.color', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-color'}},
        'category' => {'valid_codes'=>{'http://hl7.org/fhir/metric-category'=>['measurement', 'setting', 'calculation', 'unspecified']}, 'type'=>'code', 'path'=>'DeviceMetric.category', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-category'}},
        'measurementPeriod' => {'type'=>'Timing', 'path'=>'DeviceMetric.measurementPeriod', 'min'=>0, 'max'=>1},
        'calibration' => {'type'=>'DeviceMetric::Calibration', 'path'=>'DeviceMetric.calibration', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Calibration < FHIR::Model
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

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :type              # 1-1 CodeableConcept
      attr_accessor :unit              # 0-1 CodeableConcept
      attr_accessor :source            # 0-1 Reference(Device)
      attr_accessor :parent            # 0-1 Reference(Device)
      attr_accessor :operationalStatus # 0-1 code
      attr_accessor :color             # 0-1 code
      attr_accessor :category          # 1-1 code
      attr_accessor :measurementPeriod # 0-1 Timing
      attr_accessor :calibration       # 0-* [ DeviceMetric::Calibration ]

      def resourceType
        'DeviceMetric'
      end
    end
  end
end