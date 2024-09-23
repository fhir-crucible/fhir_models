module FHIR
  module R4B
    class AdministrableProductDefinition < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['device', 'dose-form', 'form-of', 'identifier', 'ingredient', 'manufactured-item', 'route', 'target-species']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'AdministrableProductDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'AdministrableProductDefinition._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'AdministrableProductDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'AdministrableProductDefinition.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'AdministrableProductDefinition._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'AdministrableProductDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'AdministrableProductDefinition._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'AdministrableProductDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'AdministrableProductDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'AdministrableProductDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'AdministrableProductDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'AdministrableProductDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'AdministrableProductDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'AdministrableProductDefinition._status', 'min'=>0, 'max'=>1},
        'formOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductDefinition'], 'type'=>'Reference', 'path'=>'AdministrableProductDefinition.formOf', 'min'=>0, 'max'=>Float::INFINITY},
        'administrableDoseForm' => {'valid_codes'=>{'http://hl7.org/fhir/administrable-dose-form'=>['100000073362', '100000073363', '100000073364', '100000073365', '100000073367', '100000073368', '100000073369', '100000073370', '100000073371', '100000073372', '100000073373', '100000073374', '100000073375', '100000073376', '100000073377', '100000073378', '100000073379', '100000073380', '100000073642', '100000073643', '100000073644', '100000073645', '100000073646', '100000073647', '100000073648', '100000073649', '100000073650', '100000073652', '100000073653', '100000073654', '100000073655', '100000073656', '100000073657', '100000073658', '100000073659', '100000073660', '100000073661', '100000073662', '100000073663', '100000073664', '100000073665', '100000073666', '100000073667', '100000073668', '100000073669', '100000073670', '100000073671', '100000073672', '100000073673', '100000073674', '100000073675', '100000073676', '100000073677', '100000073678', '100000073679', '100000073680', '100000073681', '100000073682', '100000073683', '100000073684', '100000073685', '100000073686', '100000073687', '100000073688', '100000073689', '100000073690', '100000073691', '100000073692', '100000073693', '100000073694', '100000073695', '100000073696', '100000073697', '100000073698', '100000073699', '100000073700', '100000073701', '100000073702', '100000073703', '100000073704', '100000073705', '100000073706', '100000073707', '100000073708', '100000073709', '100000073710', '100000073711', '100000073712', '100000073713', '100000073714', '100000073715', '100000073716', '100000073717', '100000073718', '100000073719', '100000073720', '100000073721', '100000073722', '100000073723', '100000073724', '100000073725', '100000073726', '100000073727', '100000073728', '100000073729', '100000073730', '100000073731', '100000073732', '100000073733', '100000073734', '100000073735', '100000073736', '100000073737', '100000073738', '100000073739', '100000073740', '100000073741', '100000073742', '100000073743', '100000073744', '100000073745', '100000073746', '100000073747', '100000073748', '100000073749', '100000073750', '100000073751', '100000073752', '100000073753', '100000073754', '100000073755', '100000073756', '100000073757', '100000073758', '100000073759', '100000073760', '100000073761', '100000073762', '100000073763', '100000073764', '100000073765', '100000073766', '100000073767', '100000073768', '100000073769', '100000073770', '100000073771', '100000073772', '100000073773', '100000073775', '100000073776', '100000073777', '100000073778', '100000073779', '100000073780', '100000073782', '100000073783', '100000073784', '100000073785', '100000073786', '100000073787', '100000073788', '100000073789', '100000073790', '100000073791', '100000073792', '100000073793', '100000073794', '100000073795', '100000073796', '100000073797', '100000073798', '100000073799', '100000073800', '100000073802', '100000073803', '100000073804', '100000073805', '100000073806', '100000073807', '100000073808', '100000073809', '100000073810', '100000073811', '100000073812', '100000073813', '100000073814', '100000073815', '100000073816', '100000073817', '100000073818', '100000073819', '100000073820', '100000073821', '100000073822', '100000073823', '100000073824', '100000073825', '100000073826', '100000073827', '100000073863']}, 'type'=>'CodeableConcept', 'path'=>'AdministrableProductDefinition.administrableDoseForm', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/administrable-dose-form'}},
        'unitOfPresentation' => {'valid_codes'=>{'http://hl7.org/fhir/unit-of-presentation'=>['200000002108', '200000002109', '200000002110', '200000002111', '200000002112', '200000002113', '200000002114', '200000002115', '200000002116', '200000002117', '200000002118', '200000002119', '200000002120', '200000002121', '200000002122', '200000002123', '200000002124', '200000002125', '200000002126', '200000002127', '200000002128', '200000002129', '200000002130', '200000002131', '200000002132', '200000002133', '200000002134', '200000002135', '200000002136', '200000002137', '200000002138', '200000002139', '200000002140', '200000002141', '200000002142', '200000002143', '200000002144', '200000002145', '200000002146', '200000002147', '200000002148', '200000002149', '200000002150', '200000002151', '200000002152', '200000002153', '200000002154', '200000002155', '200000002156', '200000002157', '200000002158', '200000002159', '200000002163', '200000002164', '200000002165', '200000002166']}, 'type'=>'CodeableConcept', 'path'=>'AdministrableProductDefinition.unitOfPresentation', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/unit-of-presentation'}},
        'producedFrom' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ManufacturedItemDefinition'], 'type'=>'Reference', 'path'=>'AdministrableProductDefinition.producedFrom', 'min'=>0, 'max'=>Float::INFINITY},
        'ingredient' => {'type'=>'CodeableConcept', 'path'=>'AdministrableProductDefinition.ingredient', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-codes'}},
        'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceDefinition'], 'type'=>'Reference', 'path'=>'AdministrableProductDefinition.device', 'min'=>0, 'max'=>1},
        'property' => {'type'=>'AdministrableProductDefinition::Property', 'path'=>'AdministrableProductDefinition.property', 'min'=>0, 'max'=>Float::INFINITY},
        'routeOfAdministration' => {'type'=>'AdministrableProductDefinition::RouteOfAdministration', 'path'=>'AdministrableProductDefinition.routeOfAdministration', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Property < FHIR::Model
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
          'value' => ['CodeableConcept', 'Quantity', 'date', 'boolean', 'Attachment']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Property.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Property._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Property.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Property.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Property.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/product-characteristic-codes'}},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          'valueDate' => {'type'=>'date', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          '_valueDate' => {'type'=>'Element', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          '_valueBoolean' => {'type'=>'Element', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'CodeableConcept', 'path'=>'Property.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :_id                  # 0-1 Element
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :type                 # 1-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 0-1 CodeableConcept
        attr_accessor :valueQuantity        # 0-1 Quantity
        attr_accessor :valueDate            # 0-1 date
        attr_accessor :_valueDate           # 0-1 Element
        attr_accessor :valueBoolean         # 0-1 boolean
        attr_accessor :_valueBoolean        # 0-1 Element
        attr_accessor :valueAttachment      # 0-1 Attachment
        attr_accessor :status               # 0-1 CodeableConcept
      end

      class RouteOfAdministration < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'RouteOfAdministration.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'RouteOfAdministration._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'RouteOfAdministration.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'RouteOfAdministration.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://snomed.info/sct'=>['284009009', '6064005', '10547007', '12130007', '16857009', '26643006', '34206005', '37161004', '37737002', '37839007', '38239002', '45890007', '46713006', '47625008', '54471007', '54485002', '58100008', '60213007', '62226000', '72607000', '78421000', '90028008', '127490009', '127491008', '127492001', '372449004', '372450004', '372451000', '372452007', '372453002', '372454008', '372457001', '372458006', '372459003', '372460008', '372461007', '372462000', '372463005', '372464004', '372465003', '372466002', '372467006', '372468001', '372469009', '372470005', '372471009', '372472002', '372473007', '372474001', '372475000', '372476004', '404815008', '404818005', '404819002', '404820008', '416174007', '417070009', '417255000', '417950001', '417985001', '417989007', '418091004', '418114005', '418133000', '418136008', '418162004', '418204005', '418287000', '418321004', '418331006', '418401004', '418418000', '418441008', '418511008', '418586008', '418608002', '418664002', '418722009', '418730005', '418743005', '418813001', '418821007', '418851001', '418877009', '418887008', '418892005', '418947002', '418987007', '419021003', '419165009', '419231003', '419243002', '419320008', '419396008', '419601003', '419631009', '419684008', '419762003', '419778001', '419810008', '419874009', '419894000', '419954003', '419993007', '420047004', '420163009', '420168000', '420185003', '420201002', '420204005', '420218003', '420254004', '420287000', '420719007', '428191002', '429817007', '445752009', '445754005', '445755006', '445756007', '445767008', '445768003', '445769006', '445771006', '445913005', '445941009', '446105004', '446407004', '446435000', '446442000', '446540005', '447026006', '447052000', '447080003', '447081004', '447121004', '447122006', '447227007', '447229005', '447694001', '447964005', '448077001', '448491004', '448492006', '448598008', '697971008', '711360002', '711378007', '714743009', '718329006', '764723001', '766790006', '1611000175109', '58731000052100', '58751000052109', '58761000052107', '58771000052103', '58811000052103', '58821000052106', '58831000052108']}, 'type'=>'CodeableConcept', 'path'=>'RouteOfAdministration.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/route-codes'}},
          'firstDose' => {'type'=>'Quantity', 'path'=>'RouteOfAdministration.firstDose', 'min'=>0, 'max'=>1},
          'maxSingleDose' => {'type'=>'Quantity', 'path'=>'RouteOfAdministration.maxSingleDose', 'min'=>0, 'max'=>1},
          'maxDosePerDay' => {'type'=>'Quantity', 'path'=>'RouteOfAdministration.maxDosePerDay', 'min'=>0, 'max'=>1},
          'maxDosePerTreatmentPeriod' => {'type'=>'Ratio', 'path'=>'RouteOfAdministration.maxDosePerTreatmentPeriod', 'min'=>0, 'max'=>1},
          'maxTreatmentPeriod' => {'type'=>'Duration', 'path'=>'RouteOfAdministration.maxTreatmentPeriod', 'min'=>0, 'max'=>1},
          'targetSpecies' => {'type'=>'AdministrableProductDefinition::RouteOfAdministration::TargetSpecies', 'path'=>'RouteOfAdministration.targetSpecies', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class TargetSpecies < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'TargetSpecies.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'TargetSpecies._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'TargetSpecies.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'TargetSpecies.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://hl7.org/fhir/target-species'=>['100000108874', '100000108875', '100000108876', '100000108877', '100000108878', '100000108879', '100000108880', '100000108881', '100000108882', '100000108883', '100000108884', '100000108885', '100000108886', '100000108887', '100000108888', '100000108889', '100000108890', '100000108891', '100000108892', '100000108893', '100000108894', '100000108895', '100000108896', '100000108897', '100000108898', '100000108899', '100000108900', '100000108901', '100000108902', '100000108903', '100000108904', '100000108905', '100000108906', '100000108907', '100000108908', '100000108909', '100000108910', '100000108911', '100000108912', '100000108913', '100000108914', '100000108915', '100000108916', '100000108917', '100000108918', '100000108919', '100000108920', '100000108921', '100000108922', '100000108923', '100000108924', '100000108925', '100000108926', '100000108927', '100000108928', '100000108929', '100000108930', '100000108931', '100000108932', '100000108933', '100000108934', '100000108935', '100000108936', '100000108937', '100000108938', '100000108939', '100000108940', '100000108941', '100000108942', '100000108943', '100000108944', '100000108945', '100000108946', '100000108947', '100000108948', '100000108949', '100000108950', '100000108951', '100000108952', '100000108953', '100000108954', '100000108955', '100000108956', '100000108957', '100000108958', '100000108959', '100000108960', '100000108961', '100000108962', '100000108963', '100000108964', '100000108965', '100000108966', '100000108967', '100000108968', '100000108969', '100000108970', '100000108971', '100000108972', '100000108973', '100000108974', '100000108975', '100000108976', '100000108977', '100000108978', '100000108979', '100000108980', '100000108981', '100000108982', '100000108983', '100000108984', '100000108985', '100000108986', '100000108987', '100000108988', '100000108989', '100000108990', '100000108991', '100000108992', '100000108993', '100000108994', '100000108995', '100000108996', '100000108997', '100000108998', '100000108999', '100000109000', '100000109001', '100000109002', '100000109003', '100000109004', '100000109005', '100000109006', '100000109007', '100000109008', '100000109009', '100000109010', '100000109011', '100000109012', '100000109013', '100000109014', '100000109015', '100000109016', '100000109017', '100000109018', '100000109019', '100000109020', '100000109021', '100000109022', '100000109023', '100000109024', '100000109025', '100000109026', '100000109027', '100000109028', '100000109029', '100000109030', '100000109031', '100000109032', '100000109033', '100000109034', '100000109035', '100000109036', '100000109037', '100000109038', '100000109039', '100000109040', '100000109041', '100000109042', '100000109043', '100000109044', '100000109045', '100000109046', '100000109047', '100000109048', '100000109049', '100000109050', '100000109051', '100000109052', '100000109053', '100000109054', '100000109055', '100000109056', '100000109057', '100000109058', '100000109059', '100000109060', '100000109061', '100000109062', '100000109063', '100000109064', '100000109065', '100000109066', '100000109067', '100000109068', '100000109069', '100000109070', '100000109071', '100000109072', '100000109073']}, 'type'=>'CodeableConcept', 'path'=>'TargetSpecies.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/target-species'}},
            'withdrawalPeriod' => {'type'=>'AdministrableProductDefinition::RouteOfAdministration::TargetSpecies::WithdrawalPeriod', 'path'=>'TargetSpecies.withdrawalPeriod', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class WithdrawalPeriod < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'WithdrawalPeriod.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'WithdrawalPeriod._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'WithdrawalPeriod.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'WithdrawalPeriod.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'tissue' => {'valid_codes'=>{'http://hl7.org/fhir/animal-tissue-type'=>['100000072091', '100000072092', '100000072093', '100000072094', '100000072095', '100000072096', '100000072104', '100000072105', '100000072106', '100000072107', '100000072108', '100000072109', '100000111053', '100000111054', '100000111055', '100000111056', '100000111057', '100000111058', '100000111059', '100000111060', '100000111061', '100000111062', '100000111063', '100000111064', '100000111065', '100000111066', '100000111067', '100000111068', '100000111069', '100000111070', '100000111071', '100000111072', '100000111073', '100000111074', '100000111075', '100000111076', '100000111077', '100000111078', '100000111079', '100000111080', '100000111081', '100000111082', '100000111083', '100000111084', '100000111085', '100000111086', '100000111087', '100000111088', '100000111089', '100000111090', '100000111091', '100000111092', '100000111093', '100000111094', '100000111095', '100000111096', '100000111097', '100000111098', '100000111099', '100000111100', '100000111101', '100000111102', '100000111103', '100000111104', '100000111105', '100000111106', '100000111107', '100000111108', '100000111109', '100000111110', '100000111111', '100000111112', '100000111113', '100000111114', '100000111115', '100000111116', '100000111117', '100000111118', '100000111119', '100000111120', '100000111121', '100000111122', '100000111123', '100000111124', '100000111125', '100000111126', '100000111127', '100000111128', '100000111129', '100000111130', '100000111131', '100000111132', '100000111133', '100000111134', '100000111135', '100000111136', '100000111137', '100000111138', '100000111139', '100000111140', '100000111141', '100000111142', '100000111143', '100000111144', '100000111145', '100000111146', '100000111147', '100000111148', '100000111149', '100000111150', '100000111151', '100000111152', '100000111153', '100000111154', '100000111155', '100000111156', '100000111157', '100000111158', '100000111159', '100000111160', '100000111161', '100000111162', '100000111163', '100000111164', '100000125717', '100000136180', '100000136181', '100000136182', '100000136183', '100000136184', '100000136185', '100000136186', '100000136187', '100000136188', '100000136189', '100000136190', '100000136191', '100000136192', '100000136193', '100000136194', '100000136195', '100000136196', '100000136197', '100000136198', '100000136199', '100000136200', '100000136201', '100000136202', '100000136203', '100000136204', '100000136205', '100000136206', '100000136207', '100000136208', '100000136209', '100000136210', '100000136211', '100000136212', '100000136213', '100000136214', '100000136215', '100000136216', '100000136217', '100000136218', '100000136219', '100000136220', '100000136221', '100000136222', '100000136223', '100000136224', '100000136225', '100000136226', '100000136227', '100000136228', '100000136229', '100000136230', '100000136231', '100000136232', '100000136233', '100000136234', '100000136235', '100000136236', '100000136237', '100000136247', '100000136248', '100000136554', '100000136555', '100000136556', '100000142485']}, 'type'=>'CodeableConcept', 'path'=>'WithdrawalPeriod.tissue', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/animal-tissue-type'}},
              'value' => {'type'=>'Quantity', 'path'=>'WithdrawalPeriod.value', 'min'=>1, 'max'=>1},
              'supportingInformation' => {'type'=>'string', 'path'=>'WithdrawalPeriod.supportingInformation', 'min'=>0, 'max'=>1},
              '_supportingInformation' => {'type'=>'Element', 'path'=>'WithdrawalPeriod._supportingInformation', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                     # 0-1 string
            attr_accessor :_id                    # 0-1 Element
            attr_accessor :extension              # 0-* [ Extension ]
            attr_accessor :modifierExtension      # 0-* [ Extension ]
            attr_accessor :tissue                 # 1-1 CodeableConcept
            attr_accessor :value                  # 1-1 Quantity
            attr_accessor :supportingInformation  # 0-1 string
            attr_accessor :_supportingInformation # 0-1 Element
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 CodeableConcept
          attr_accessor :withdrawalPeriod  # 0-* [ AdministrableProductDefinition::RouteOfAdministration::TargetSpecies::WithdrawalPeriod ]
        end

        attr_accessor :id                        # 0-1 string
        attr_accessor :_id                       # 0-1 Element
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :code                      # 1-1 CodeableConcept
        attr_accessor :firstDose                 # 0-1 Quantity
        attr_accessor :maxSingleDose             # 0-1 Quantity
        attr_accessor :maxDosePerDay             # 0-1 Quantity
        attr_accessor :maxDosePerTreatmentPeriod # 0-1 Ratio
        attr_accessor :maxTreatmentPeriod        # 0-1 Duration
        attr_accessor :targetSpecies             # 0-* [ AdministrableProductDefinition::RouteOfAdministration::TargetSpecies ]
      end

      attr_accessor :id                    # 0-1 id
      attr_accessor :_id                   # 0-1 Element
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :_implicitRules        # 0-1 Element
      attr_accessor :language              # 0-1 code
      attr_accessor :_language             # 0-1 Element
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :identifier            # 0-* [ Identifier ]
      attr_accessor :status                # 1-1 code
      attr_accessor :_status               # 0-1 Element
      attr_accessor :formOf                # 0-* [ Reference(MedicinalProductDefinition) ]
      attr_accessor :administrableDoseForm # 0-1 CodeableConcept
      attr_accessor :unitOfPresentation    # 0-1 CodeableConcept
      attr_accessor :producedFrom          # 0-* [ Reference(ManufacturedItemDefinition) ]
      attr_accessor :ingredient            # 0-* [ CodeableConcept ]
      attr_accessor :device                # 0-1 Reference(DeviceDefinition)
      attr_accessor :property              # 0-* [ AdministrableProductDefinition::Property ]
      attr_accessor :routeOfAdministration # 1-* [ AdministrableProductDefinition::RouteOfAdministration ]

      def resourceType
        'AdministrableProductDefinition'
      end
    end
  end
end