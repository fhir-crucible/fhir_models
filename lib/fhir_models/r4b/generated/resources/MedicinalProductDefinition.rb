module FHIR
  module R4B
    class MedicinalProductDefinition < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['characteristic', 'characteristic-type', 'contact', 'domain', 'identifier', 'ingredient', 'master-file', 'name', 'name-language', 'product-classification', 'status', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MedicinalProductDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MedicinalProductDefinition._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MedicinalProductDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MedicinalProductDefinition.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MedicinalProductDefinition._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MedicinalProductDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MedicinalProductDefinition._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MedicinalProductDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MedicinalProductDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MedicinalProductDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MedicinalProductDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'MedicinalProductDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-type'=>['MedicinalProduct', 'InvestigationalProduct']}, 'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-type'}},
        'domain' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-domain'=>['Human', 'Veterinary', 'HumanAndVeterinary']}, 'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.domain', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-domain'}},
        'version' => {'type'=>'string', 'path'=>'MedicinalProductDefinition.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'MedicinalProductDefinition._version', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'statusDate' => {'type'=>'dateTime', 'path'=>'MedicinalProductDefinition.statusDate', 'min'=>0, 'max'=>1},
        '_statusDate' => {'type'=>'Element', 'path'=>'MedicinalProductDefinition._statusDate', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'markdown', 'path'=>'MedicinalProductDefinition.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'MedicinalProductDefinition._description', 'min'=>0, 'max'=>1},
        'combinedPharmaceuticalDoseForm' => {'valid_codes'=>{'http://hl7.org/fhir/combined-dose-form'=>['100000073366', '100000073651', '100000073774', '100000073781', '100000073801', '100000073860', '100000073868', '100000073869', '100000073884', '100000073891', '100000073892', '100000073941', '100000073972', '100000073973', '100000073974', '100000073975', '100000073987', '100000073988', '100000073989', '100000073990', '100000073999', '100000074015', '100000074016', '100000074017', '100000074018', '100000074030', '100000074031', '100000074032', '100000074048', '100000074051', '100000074053', '100000074056', '100000074057', '100000074061', '100000074064', '100000075580', '100000075584', '100000075587', '100000116137', '100000116141', '100000116155', '100000116160', '100000116172', '100000116173', '100000116174', '100000116175', '100000116176', '100000116177', '100000116179', '100000125746', '100000125747', '100000125777', '100000136318', '100000136325', '100000136558', '100000136560', '100000136907', '100000143502', '100000143546', '100000143552', '100000156068', '100000157796', '100000164467', '100000169997', '100000170588', '100000171127', '100000171193', '100000171238', '100000171935', '100000174065', '200000002161', '200000002287', '200000004201', '200000004819', '200000004820', '200000005547', '200000010382']}, 'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.combinedPharmaceuticalDoseForm', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/combined-dose-form'}},
        'route' => {'valid_codes'=>{'http://snomed.info/sct'=>['284009009', '6064005', '10547007', '12130007', '16857009', '26643006', '34206005', '37161004', '37737002', '37839007', '38239002', '45890007', '46713006', '47625008', '54471007', '54485002', '58100008', '60213007', '62226000', '72607000', '78421000', '90028008', '127490009', '127491008', '127492001', '372449004', '372450004', '372451000', '372452007', '372453002', '372454008', '372457001', '372458006', '372459003', '372460008', '372461007', '372462000', '372463005', '372464004', '372465003', '372466002', '372467006', '372468001', '372469009', '372470005', '372471009', '372472002', '372473007', '372474001', '372475000', '372476004', '404815008', '404818005', '404819002', '404820008', '416174007', '417070009', '417255000', '417950001', '417985001', '417989007', '418091004', '418114005', '418133000', '418136008', '418162004', '418204005', '418287000', '418321004', '418331006', '418401004', '418418000', '418441008', '418511008', '418586008', '418608002', '418664002', '418722009', '418730005', '418743005', '418813001', '418821007', '418851001', '418877009', '418887008', '418892005', '418947002', '418987007', '419021003', '419165009', '419231003', '419243002', '419320008', '419396008', '419601003', '419631009', '419684008', '419762003', '419778001', '419810008', '419874009', '419894000', '419954003', '419993007', '420047004', '420163009', '420168000', '420185003', '420201002', '420204005', '420218003', '420254004', '420287000', '420719007', '428191002', '429817007', '445752009', '445754005', '445755006', '445756007', '445767008', '445768003', '445769006', '445771006', '445913005', '445941009', '446105004', '446407004', '446435000', '446442000', '446540005', '447026006', '447052000', '447080003', '447081004', '447121004', '447122006', '447227007', '447229005', '447694001', '447964005', '448077001', '448491004', '448492006', '448598008', '697971008', '711360002', '711378007', '714743009', '718329006', '764723001', '766790006', '1611000175109', '58731000052100', '58751000052109', '58761000052107', '58771000052103', '58811000052103', '58821000052106', '58831000052108']}, 'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.route', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/route-codes'}},
        'indication' => {'type'=>'markdown', 'path'=>'MedicinalProductDefinition.indication', 'min'=>0, 'max'=>1},
        '_indication' => {'type'=>'Element', 'path'=>'MedicinalProductDefinition._indication', 'min'=>0, 'max'=>1},
        'legalStatusOfSupply' => {'valid_codes'=>{'http://hl7.org/fhir/legal-status-of-supply'=>['100000072076', '100000072077', '100000072078', '100000072079', '100000072084', '100000072085', '100000072086', '100000157313']}, 'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.legalStatusOfSupply', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/legal-status-of-supply'}},
        'additionalMonitoringIndicator' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-additional-monitoring'=>['BlackTriangleMonitoring']}, 'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.additionalMonitoringIndicator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-additional-monitoring'}},
        'specialMeasures' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-special-measures'=>['Post-authorisationStudies']}, 'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.specialMeasures', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-special-measures'}},
        'pediatricUseIndicator' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-pediatric-use'=>['InUtero', 'PretermNewborn', 'TermNewborn', 'Infants', 'Children', 'Adolescents', 'Adults', 'Elderly', 'Neonate', 'PediatricPopulation', 'All', 'Prepubertal', 'AdultsAndElderly', 'PubertalAndPostpubertal']}, 'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.pediatricUseIndicator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-pediatric-use'}},
        'classification' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.classification', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/product-classification-codes'}},
        'marketingStatus' => {'type'=>'MarketingStatus', 'path'=>'MedicinalProductDefinition.marketingStatus', 'min'=>0, 'max'=>Float::INFINITY},
        'packagedMedicinalProduct' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-package-type'=>['100000073490', '100000073491', '100000073492', '100000073493', '100000073494', '100000073495', '100000073496', '100000073497', '100000073498', '100000073547', '100000073563', '100000143555']}, 'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.packagedMedicinalProduct', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-package-type'}},
        'ingredient' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductDefinition.ingredient', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-codes'}},
        'impurity' => {'type'=>'CodeableReference', 'path'=>'MedicinalProductDefinition.impurity', 'min'=>0, 'max'=>Float::INFINITY},
        'attachedDocument' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'MedicinalProductDefinition.attachedDocument', 'min'=>0, 'max'=>Float::INFINITY},
        'masterFile' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'MedicinalProductDefinition.masterFile', 'min'=>0, 'max'=>Float::INFINITY},
        'contact' => {'type'=>'MedicinalProductDefinition::Contact', 'path'=>'MedicinalProductDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'clinicalTrial' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ResearchStudy'], 'type'=>'Reference', 'path'=>'MedicinalProductDefinition.clinicalTrial', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://snomed.info/sct'=>['763158003', '169008', '211009', '302007', '439007', '544002', '796001', '847003', '922004', '1039008', '1148001', '1182007', '1206000', '1222004', '1389007', '1434005', '1528001', '1552008', '1594006', '1758005', '1842003', '1878008', '1887004', '1982006', '2016004', '2183004', '2190009', '2497003', '2571007', '2596005', '2679000', '2949005', '3037004', '3127006', '3334000', '3814009', '3822002', '4126008', '4194004', '4219002', '4220008', '4382004', '4704002', '4865009', '4937008', '5067008', '5478006', '5606003', '5720001', '5737008', '5776009', '5786005', '5797005', '5975000', '6028009', '6067003', '6071000', '6102009', '6116004', '6232005', '6247001', '6259002', '6369005', '6425004', '6526001', '6625006', '6716006', '6960003', '6985007', '7092007', '7140000', '7168001', '7235000', '7292004', '7336002', '7561000', '7577004', '7624002', '7836006', '7947003', '7959004', '8028001', '8109005', '8163008', '8348002', '8372007', '8416000', '8658008', '8661009', '8692006', '8696009', '9190005', '9268004', '9500005', '9542007', '9690006', '9745007', '9778000', '9944001', '10099000', '10135005', '10312003', '10422008', '10504007', '10515002', '10555000', '10632007', '10712001', '10756001', '10784006', '11402001', '11430001', '11563006', '11719000', '11783005', '11796006', '11841005', '11847009', '11959009', '12096000', '12236006', '12335007', '12369008', '12436009', '12495006', '12512008', '12559001', '12839006', '13132007', '13252002', '13414000', '13432000', '13512003', '13525006', '13565005', '13592004', '13664004', '13790009', '13800009', '13813003', '13929005', '13936006', '13965000', '14103001', '14170004', '14601000', '14706000', '14728000', '14814001', '14816004', '15222008', '15375005', '15383004', '15432003', '15772006', '15857002', '16031005', '16037009', '16047007', '16131008', '16403005', '16602005', '16787005', '16791000', '16832004', '16858004', '16867004', '16970001', '16977003', '17308007', '17386008', '17554004', '17558001', '17600005', '17805003', '17859000', '17893001', '18002004', '18125000', '18335001', '18340009', '18381001', '18548003', '18679008', '18811003', '18914005', '18952006', '19194001', '19225000', '19232009', '19261005', '19403009', '19405002', '19581007', '19583005', '19630009', '19768003', '19841008', '20091003', '20201001', '20237006', '20320002', '20577002', '20865003', '21069002', '21159006', '21691008', '21701005', '21767006', '21986005', '22091006', '22198003', '22274004', '22474002', '22587006', '22657006', '22672005', '22696000', '22969001', '23079006', '23222006', '23532003', '23827009', '23888001', '24036003', '24450004', '24504000', '24866006', '25014009', '25076002', '25085002', '25142008', '25246002', '25398003', '25419009', '25673006', '25860005', '25995007', '26122009', '26124005', '26244009', '26303005', '26370007', '26458009', '26462003', '26503009', '26523005', '26548008', '26574002', '26580005', '26736008', '26800000', '26842003', '27035007', '27196008', '27242001', '27479000', '27518004', '27638005', '27658006', '27754002', '27867009', '28149003', '28235004', '28410007', '28415002', '28426008', '28506006', '28748001', '28841002', '28906000', '29058003', '29089004', '29121001', '29129004', '29156002', '29175007', '29439004', '29620001', '29840005', '29877002', '29896003', '30010009', '30125007', '30306003', '30317002', '30427009', '30466001', '30492008', '30729008', '30761007', '30964009', '30988006', '31087008', '31231007', '31305008', '31306009', '31684002', '31690003', '31692006', '31865003', '31872002', '32249005', '32313007', '32462006', '32474005', '32583002', '32647002', '32653002', '32792001', '32823007', '32955006', '32960005', '33124007', '33219003', '33231001', '33252009', '33378002', '33588000', '33589008', '33664007', '33675006', '33682005', '33815001', '34012005', '34217006', '34364009', '34393009', '34462007', '34599009', '34693000', '34731007', '34816007', '34833000', '34929006', '35035001', '35063004', '35282000', '35300007', '35324004', '35392005', '35476001', '35531004', '35768004', '35967000', '36068003', '36113004', '36218003', '36236003', '36391008', '36537006', '36594001', '36621009', '36642006', '36893000', '36909007', '37084008', '37146000', '37306000', '37400007', '37628007', '37803001', '38076006', '38166006', '38231004', '38268001', '38314008', '38413003', '38578004', '38900001', '39064002', '39124003', '39128000', '39142008', '39359008', '39487003', '39516004', '39608003', '39707000', '39860005', '39939003', '40232005', '40339003', '40429005', '40430000', '40556005', '40562000', '40589005', '40648001', '40820003', '40877002', '40905005', '40974005', '40999006', '41001009', '41015006', '41147003', '41193000', '41324009', '41365009', '41367001', '41399007', '41470001', '41493007', '41549009', '41985001', '42082003', '42098005', '42271003', '42348003', '42444000', '42514000', '42638008', '42714002', '42720001', '43343000', '43533002', '43684009', '43753001', '43879000', '43927002', '44175000', '44418001', '44658005', '44731005', '44790008', '44798001', '44938006', '44990002', '45218006', '45311002', '45313004', '45680002', '45844004', '45888006', '46009007', '46063005', '46123006', '46436003', '46479001', '46532003', '46547007', '46576005', '46709004', '46741005', '46913003', '47065008', '47120002', '47124006', '47140009', '47331002', '47527007', '47602007', '47898004', '48174005', '48256008', '48279009', '48351000', '48546005', '48603004', '48614001', '48647005', '48698004', '48836000', '48875009', '48899009', '49019002', '49157004', '49267000', '49299006', '49485009', '49577002', '49617001', '49669006', '49688004', '49694007', '49705006', '49802003', '49953001', '50094009', '50256004', '50318003', '50335004', '50520001', '50841004', '50868004', '51013009', '51073002', '51126006', '51132001', '51326002', '51334008', '51361008', '51752005', '51758009', '51908007', '51992002', '52017007', '52108005', '52215008', '52388000', '52423008', '52883001', '52896000', '53009005', '53480001', '53584007', '53640004', '53641000', '53691001', '53793005', '53800008', '53848009', '54142000', '54344006', '54391004', '54406003', '54541002', '54544005', '54577009', '54705000', '54765002', '54824008', '54882005', '54887004', '54972005', '54982006', '55015008', '55217007', '55432002', '55556000', '55673009', '55745002', '55830003', '55867006', '55889005', '56014002', '56032002', '56059005', '56123002', '56230001', '56234005', '56480005', '56549003', '56602009', '56615000', '56928005', '56934003', '57002000', '57066004', '57191001', '57263002', '57376006', '57538001', '57616006', '57670008', '57752001', '57811004', '57819002', '57845006', '57853003', '57893000', '57952007', '58050004', '58098008', '58360000', '58467001', '58502006', '58760003', '58805000', '58883005', '58892008', '58905004', '58944007', '59057006', '59187003', '59240002', '59255006', '59270007', '59456005', '59589008', '59594008', '59751001', '59941008', '59953007', '60149003', '60169008', '60468008', '60533005', '60541005', '60682004', '60731009', '60881009', '60978003', '61020000', '61093008', '61132004', '61181002', '61408004', '61457001', '61621000', '61623002', '61651006', '61862008', '61946003', '62051009', '62288001', '62294009', '62529008', '62560008', '62782004', '63094006', '63136007', '63318000', '63470003', '63639004', '63682003', '63758001', '63822004', '64083002', '64115004', '64127001', '64240003', '64349004', '64462001', '64558005', '64851009', '64878006', '65020006', '65026000', '65041000', '65092008', '65484006', '65502005', '65505007', '65627005', '65823007', '65884003', '65965000', '66094001', '66125007', '66261008', '66349002', '66441000', '66492008', '66493003', '66602007', '66742008', '66859009', '66860004', '66919007', '66971004', '67213005', '67423003', '67440007', '67507000', '67735003', '67891001', '67939000', '68088000', '68206008', '68208009', '68395000', '68398003', '68402007', '68407001', '68422006', '68424007', '68444001', '68490009', '68622003', '68702006', '68774008', '68887009', '68892006', '69107004', '69204002', '69236009', '69242008', '69331001', '69431002', '69576000', '69708003', '69879000', '69918003', '69967001', '70047000', '70254000', '70343008', '70379000', '70460002', '70702006', '70776005', '70841003', '70864001', '70934008', '71289008', '71451001', '71453003', '71455005', '71462001', '71516007', '71584004', '71634000', '71699007', '71724000', '71731001', '71759000', '71770007', '71798005', '71837009', '72312007', '72416006', '72623000', '72824008', '72870001', '72924009', '72968006', '73074003', '73093001', '73133000', '73170009', '73212002', '73277004', '73454001', '73572009', '73647000', '73756003', '73763003', '73805002', '73949004', '73986003', '74022005', '74065006', '74074008', '74213004', '74226000', '74470007', '74480006', '74575000', '74583006', '74632002', '74674007', '74771007', '74782004', '74798006', '74819009', '75029008', '75203002', '75429004', '75501004', '75661008', '75927008', '75959001', '75969007', '76058001', '76155001', '76286000', '76289007', '76385003', '76390000', '76591000', '76696004', '76759004', '76962009', '77035009', '77048008', '77237006', '77390008', '77398001', '77549006', '77731008', '77750008', '77856005', '77885004', '77898008', '78025001', '78174002', '78379001', '78449007', '78507004', '78542000', '78684000', '78700004', '78983008', '79129001', '79138004', '79221007', '79225003', '79305004', '79332009', '79356008', '79440004', '79543000', '79736009', '79873000', '80024007', '80127003', '80165005', '80229008', '80311000', '80399002', '80618000', '80732005', '80802008', '80834004', '80870001', '80906007', '81073007', '81088002', '81219009', '81252003', '81335000', '81457006', '81583003', '81609008', '81646007', '81728006', '81759008', '81839001', '81947000', '82133001', '82156005', '82165003', '82166002', '82240008', '82264009', '82290007', '82312001', '82573000', '82746003', '82804004', '82896009', '82951001', '83085007', '83179003', '83192000', '83201006', '83288003', '83490000', '83532008', '83692001', '83973001', '83999008', '84078002', '84737005', '84812008', '84844007', '84951002', '84986000', '85063003', '85272000', '85343003', '85354008', '85408000', '85417000', '85429009', '85468002', '85507008', '85591001', '85990009', '86066003', '86080005', '86085000', '86131002', '86162003', '86308005', '86337009', '86389004', '86536001', '86647004', '86906004', '86939001', '86977007', '87233003', '87285001', '87395005', '87567009', '87586001', '87617007', '87652004', '87881000', '88134000', '88226000', '88279005', '88519001', '88566002', '88870000', '88997008', '89018006', '89029005', '89045007', '89092006', '89132005', '89192008', '89265009', '89435001', '89466007', '89505005', '89626004', '89664002', '89692007', '89695009', '89785009', '90000002', '90017009', '90332006', '90346006', '90356005', '90370005', '90426002', '90614001', '90659009', '90704004', '90802006', '90882008', '91107009', '91135008', '91143003', '91169009', '91307002', '91339009', '91376007', '91435002', '91452003', '91479004', '91667005', '96011002', '96014005', '96015006', '96018008', '96020006', '96023008', '96029007', '96034006', '96038009', '96044008', '96047001', '96049003', '96051004', '96052006', '96053001', '96054007', '96055008', '96062004', '96063009', '96064003', '96065002', '96067005', '96072001', '96073006', '96077007', '96081007', '96084004', '96086002', '96087006', '96088001', '96090000', '96091001', '96093003', '96097002', '96099004', '96103009', '96107005', '96108000', '96119002', '96138006', '96144005', '96149000', '96169005', '96183007', '96185000', '96191003', '96195007', '96196008', '96199001', '96200003', '96209002', '96213009', '96220002', '96221003', '96231005', '96233008', '96234002', '96236000', '96237009', '96246003', '96247007', '96252002', '96278006', '96280000', '96281001', '96284009', '96298001', '96299009', '96300001', '96301002', '96302009', '96304005', '96305006']}, 'type'=>'Coding', 'path'=>'MedicinalProductDefinition.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medication-codes'}},
        'name' => {'type'=>'MedicinalProductDefinition::Name', 'path'=>'MedicinalProductDefinition.name', 'min'=>1, 'max'=>Float::INFINITY},
        'crossReference' => {'type'=>'MedicinalProductDefinition::CrossReference', 'path'=>'MedicinalProductDefinition.crossReference', 'min'=>0, 'max'=>Float::INFINITY},
        'operation' => {'type'=>'MedicinalProductDefinition::Operation', 'path'=>'MedicinalProductDefinition.operation', 'min'=>0, 'max'=>Float::INFINITY},
        'characteristic' => {'type'=>'MedicinalProductDefinition::Characteristic', 'path'=>'MedicinalProductDefinition.characteristic', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Contact < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Contact.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Contact._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Contact.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Contact.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-contact-type'=>['ProposedMAH', 'ProcedureContactDuring', 'ProcedureContactAfter', 'QPPV', 'PVEnquiries']}, 'type'=>'CodeableConcept', 'path'=>'Contact.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-contact-type'}},
          'contact' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'Contact.contact', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :contact           # 1-1 Reference(Organization|PractitionerRole)
      end

      class Name < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Name.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Name._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Name.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Name.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'productName' => {'type'=>'string', 'path'=>'Name.productName', 'min'=>1, 'max'=>1},
          '_productName' => {'type'=>'Element', 'path'=>'Name._productName', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-name-type'=>['BAN', 'INN', 'INNM', 'pINN', 'rINN']}, 'type'=>'CodeableConcept', 'path'=>'Name.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-name-type'}},
          'namePart' => {'type'=>'MedicinalProductDefinition::Name::NamePart', 'path'=>'Name.namePart', 'min'=>0, 'max'=>Float::INFINITY},
          'countryLanguage' => {'type'=>'MedicinalProductDefinition::Name::CountryLanguage', 'path'=>'Name.countryLanguage', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class NamePart < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'NamePart.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'NamePart._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'NamePart.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'NamePart.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'part' => {'type'=>'string', 'path'=>'NamePart.part', 'min'=>1, 'max'=>1},
            '_part' => {'type'=>'Element', 'path'=>'NamePart._part', 'min'=>0, 'max'=>1},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-name-part-type'=>['FullName', 'InventedNamePart', 'ScientificNamePart', 'StrengthPart', 'DoseFormPart', 'FormulationPart', 'IntendedUsePart', 'PopulationPart', 'ContainerPart', 'DevicePart', 'TrademarkOrCompanyPart', 'TimeOrPeriodPart', 'FlavorPart', 'DelimiterPart', 'LegacyNamePart', 'SpeciesNamePart']}, 'type'=>'CodeableConcept', 'path'=>'NamePart.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-name-part-type'}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :part              # 1-1 string
          attr_accessor :_part             # 0-1 Element
          attr_accessor :type              # 1-1 CodeableConcept
        end

        class CountryLanguage < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'CountryLanguage.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'CountryLanguage._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'CountryLanguage.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'CountryLanguage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'country' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894']}, 'type'=>'CodeableConcept', 'path'=>'CountryLanguage.country', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/country'}},
            'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AD-03', 'AD-07', 'AD-04', 'AD-05', 'AD-02', 'AD-06', 'AD-08', 'AE-RK', 'AE-SH', 'AE-FU', 'AE-DU', 'AE-AZ', 'AE-UQ', 'AE-AJ', 'AF-BAM', 'AF-KAB', 'AF-KAP', 'AF-KHO', 'AF-KNR', 'AF-KAN', 'AF-LOG', 'AF-PIA', 'AF-SAM', 'AF-URU', 'AF-BDS', 'AF-FYB', 'AF-JOW', 'AF-KDZ', 'AF-LAG', 'AF-NIM', 'AF-BGL', 'AF-FRA', 'AF-HEL', 'AF-PKA', 'AF-SAR', 'AF-BDG', 'AF-GHA', 'AF-PAN', 'AF-TAK', 'AF-WAR', 'AF-BAL', 'AF-GHO', 'AF-DAY', 'AF-HER', 'AF-NAN', 'AF-NUR', 'AF-PAR', 'AF-ZAB', 'AG-03', 'AG-06', 'AG-10', 'AG-07', 'AG-08', 'AG-05', 'AG-04', 'AG-11', 'AL-11', 'AL-12', 'AL-03', 'AL-09', 'AL-01', 'AL-02', 'AL-08', 'AL-10', 'AL-05', 'AL-06', 'AL-07', 'AL-04', 'AM-AG', 'AM-AV', 'AM-KT', 'AM-GR', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-LO', 'AM-ER', 'AM-VD', 'AM-AR', 'AO-CAB', 'AO-CCU', 'AO-ZAI', 'AO-LNO', 'AO-LSU', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-CNO', 'AO-HUI', 'AO-LUA', 'AO-MAL', 'AO-BGO', 'AO-BGU', 'AO-CNN', 'AO-CUS', 'AO-HUA', 'AO-BIE', 'AR-N', 'AR-S', 'AR-Z', 'AR-A', 'AR-C', 'AR-F', 'AR-B', 'AR-G', 'AR-H', 'AR-P', 'AR-X', 'AR-J', 'AR-T', 'AR-E', 'AR-K', 'AR-V', 'AR-W', 'AR-U', 'AR-D', 'AR-L', 'AR-M', 'AR-Q', 'AR-R', 'AR-Y', 'AT-3', 'AT-4', 'AT-5', 'AT-8', 'AT-1', 'AT-7', 'AT-2', 'AT-6', 'AT-9', 'AU-NT', 'AU-QLD', 'AU-TAS', 'AU-ACT', 'AU-NSW', 'AU-SA', 'AU-WA', 'AU-VIC', 'AZ-ABS', 'AZ-BA', 'AZ-BAL', 'AZ-BAR', 'AZ-GOY', 'AZ-MAS', 'AZ-SKR', 'AZ-SR', 'AZ-XA', 'AZ-XIZ', 'AZ-AGC', 'AZ-AGU', 'AZ-BIL', 'AZ-GA', 'AZ-QAB', 'AZ-SMX', 'AZ-XAC', 'AZ-YAR', 'AZ-ZAN', 'AZ-AGA', 'AZ-FUZ', 'AZ-GAD', 'AZ-LAC', 'AZ-QAX', 'AZ-AGM', 'AZ-DAS', 'AZ-GYG', 'AZ-LA', 'AZ-LAN', 'AZ-OGU', 'AZ-QBA', 'AZ-QUS', 'AZ-SAB', 'AZ-CAB', 'AZ-KUR', 'AZ-SAL', 'AZ-SBN', 'AZ-SM', 'AZ-UCA', 'AZ-XCI', 'AZ-YEV', 'AZ-AGS', 'AZ-AST', 'AZ-BEY', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-LER', 'AZ-MI', 'AZ-NEF', 'AZ-NX', 'AZ-QAZ', 'AZ-SAK', 'AZ-SAT', 'AZ-TAR', 'AZ-XVD', 'AZ-CAL', 'AZ-KAL', 'AZ-QOB', 'AZ-SIY', 'AZ-SUS', 'AZ-ZAQ', 'AZ-ZAR', 'AZ-GOR', 'AZ-NA', 'AZ-QBI', 'AZ-SA', 'AZ-SMI', 'AZ-TOV', 'AZ-YE', 'BA-BRC', 'BA-BIH', 'BA-SRP', 'BB-03', 'BB-05', 'BB-02', 'BB-10', 'BB-11', 'BB-08', 'BB-04', 'BB-09', 'BB-01', 'BB-06', 'BB-07', 'BD-B', 'BD-H', 'BD-A', 'BD-C', 'BD-D', 'BD-E', 'BD-F', 'BD-G', 'BE-WAL', 'BE-BRU', 'BE-VLG', 'BF-05', 'BF-01', 'BF-10', 'BF-02', 'BF-03', 'BF-04', 'BF-06', 'BF-07', 'BF-08', 'BF-09', 'BF-11', 'BF-12', 'BF-13', 'BG-04', 'BG-09', 'BG-15', 'BG-16', 'BG-28', 'BG-13', 'BG-18', 'BG-21', 'BG-22', 'BG-27', 'BG-02', 'BG-14', 'BG-19', 'BG-25', 'BG-03', 'BG-24', 'BG-01', 'BG-10', 'BG-12', 'BG-20', 'BG-23', 'BG-11', 'BG-17', 'BG-05', 'BG-06', 'BG-07', 'BG-08', 'BG-26', 'BH-14', 'BH-13', 'BH-15', 'BH-17', 'BI-BM', 'BI-KR', 'BI-MY', 'BI-KI', 'BI-BR', 'BI-CI', 'BI-GI', 'BI-MA', 'BI-MU', 'BI-NG', 'BI-RY', 'BI-KY', 'BI-MW', 'BI-CA', 'BI-BL', 'BI-RT', 'BI-RM', 'BI-BB', 'BJ-AK', 'BJ-CO', 'BJ-BO', 'BJ-OU', 'BJ-LI', 'BJ-AQ', 'BJ-MO', 'BJ-AL', 'BJ-DO', 'BJ-KO', 'BJ-PL', 'BJ-ZO', 'BN-BM', 'BN-BE', 'BN-TE', 'BN-TU', 'BO-C', 'BO-L', 'BO-B', 'BO-O', 'BO-S', 'BO-P', 'BO-T', 'BO-H', 'BO-N', 'BQ-BO', 'BQ-SA', 'BQ-SE', 'BR-AC', 'BR-AM', 'BR-CE', 'BR-RR', 'BR-GO', 'BR-MG', 'BR-ES', 'BR-AP', 'BR-BA', 'BR-MS', 'BR-PR', 'BR-RN', 'BR-MT', 'BR-PB', 'BR-PE', 'BR-RJ', 'BR-RO', 'BR-SC', 'BR-SP', 'BR-AL', 'BR-DF', 'BR-MA', 'BR-PA', 'BR-PI', 'BR-RS', 'BR-SE', 'BR-TO', 'BS-CO', 'BS-EG', 'BS-HI', 'BS-MI', 'BS-SS', 'BS-SW', 'BS-AK', 'BS-LI', 'BS-BY', 'BS-FP', 'BS-NS', 'BS-RC', 'BS-SO', 'BS-CE', 'BS-CI', 'BS-CS', 'BS-EX', 'BS-IN', 'BS-MC', 'BS-SA', 'BS-GC', 'BS-MG', 'BS-WG', 'BS-BI', 'BS-BP', 'BS-NE', 'BS-NO', 'BS-SE', 'BS-CK', 'BS-HT', 'BS-RI', 'BT-42', 'BT-45', 'BT-12', 'BT-23', 'BT-24', 'BT-21', 'BT-33', 'BT-34', 'BT-31', 'BT-14', 'BT-15', 'BT-44', 'BT-TY', 'BT-13', 'BT-41', 'BT-GA', 'BT-22', 'BT-32', 'BT-43', 'BT-11', 'BW-KL', 'BW-GH', 'BW-NW', 'BW-SO', 'BW-KW', 'BW-CH', 'BW-LO', 'BW-SP', 'BW-JW', 'BW-ST', 'BW-FR', 'BW-GA', 'BW-KG', 'BW-CE', 'BW-SE', 'BW-NE', 'BY-VI', 'BY-BR', 'BY-HM', 'BY-HO', 'BY-HR', 'BY-MI', 'BY-MA', 'BZ-OW', 'BZ-CZL', 'BZ-SC', 'BZ-TOL', 'BZ-BZ', 'BZ-CY', 'CA-BC', 'CA-MB', 'CA-NB', 'CA-SK', 'CA-AB', 'CA-ON', 'CA-YT', 'CA-NT', 'CA-NU', 'CA-NL', 'CA-PE', 'CA-NS', 'CA-QC', 'CD-EQ', 'CD-BC', 'CD-SK', 'CD-NK', 'CD-KE', 'CD-KN', 'CD-BU', 'CD-HK', 'CD-HL', 'CD-HU', 'CD-IT', 'CD-KS', 'CD-KC', 'CD-KG', 'CD-KL', 'CD-LO', 'CD-LU', 'CD-MN', 'CD-MO', 'CD-NU', 'CD-SA', 'CD-SU', 'CD-TA', 'CD-TO', 'CD-TU', 'CD-MA', 'CF-HM', 'CF-HS', 'CF-LB', 'CF-AC', 'CF-KB', 'CF-BB', 'CF-MP', 'CF-HK', 'CF-KG', 'CF-MB', 'CF-NM', 'CF-SE', 'CF-VK', 'CF-BGF', 'CF-OP', 'CF-UK', 'CF-BK', 'CG-9', 'CG-15', 'CG-5', 'CG-11', 'CG-BZV', 'CG-16', 'CG-12', 'CG-13', 'CG-7', 'CG-14', 'CG-2', 'CG-8', 'CH-JU', 'CH-LU', 'CH-SO', 'CH-TG', 'CH-BS', 'CH-SZ', 'CH-ZG', 'CH-AG', 'CH-BE', 'CH-FR', 'CH-NE', 'CH-OW', 'CH-TI', 'CH-VD', 'CH-AR', 'CH-GE', 'CH-GL', 'CH-SG', 'CH-GR', 'CH-NW', 'CH-SH', 'CH-ZH', 'CH-AI', 'CH-VS', 'CH-BL', 'CH-UR', 'CI-AB', 'CI-YM', 'CI-BS', 'CI-CM', 'CI-DN', 'CI-GD', 'CI-LC', 'CI-LG', 'CI-MG', 'CI-SM', 'CI-SV', 'CI-VB', 'CI-WR', 'CI-ZZ', 'CL-AN', 'CL-RM', 'CL-TA', 'CL-BI', 'CL-AP', 'CL-AT', 'CL-LL', 'CL-LR', 'CL-ML', 'CL-AR', 'CL-LI', 'CL-AI', 'CL-VS', 'CL-CO', 'CL-MA', 'CM-NW', 'CM-OU', 'CM-AD', 'CM-LT', 'CM-NO', 'CM-CE', 'CM-EN', 'CM-ES', 'CM-SU', 'CM-SW', 'CN-NM', 'CN-GX', 'CN-XZ', 'CN-NX', 'CN-XJ', 'CN-BJ', 'CN-TJ', 'CN-SH', 'CN-CQ', 'CN-HE', 'CN-SX', 'CN-LN', 'CN-JL', 'CN-HL', 'CN-ZJ', 'CN-AH', 'CN-FJ', 'CN-JX', 'CN-SD', 'CN-HA', 'CN-HB', 'CN-HN', 'CN-GD', 'CN-HI', 'CN-SC', 'CN-GZ', 'CN-YN', 'CN-SN', 'CN-GS', 'CN-QH', 'CN-TW', 'CN-HK', 'CN-MO', 'CN-JS', 'CO-BOL', 'CO-MAG', 'CO-MET', 'CO-PUT', 'CO-VID', 'CO-AMA', 'CO-CAL', 'CO-CAU', 'CO-CES', 'CO-DC', 'CO-LAG', 'CO-ARA', 'CO-NSA', 'CO-TOL', 'CO-VAC', 'CO-GUV', 'CO-HUI', 'CO-SUC', 'CO-CAS', 'CO-CHO', 'CO-GUA', 'CO-QUI', 'CO-RIS', 'CO-SAN', 'CO-VAU', 'CO-ANT', 'CO-ATL', 'CO-COR', 'CO-SAP', 'CO-BOY', 'CO-CAQ', 'CO-CUN', 'CO-NAR', 'CR-H', 'CR-L', 'CR-G', 'CR-P', 'CR-A', 'CR-C', 'CR-SJ', 'CU-03', 'CU-07', 'CU-12', 'CU-05', 'CU-11', 'CU-08', 'CU-09', 'CU-10', 'CU-13', 'CU-15', 'CU-16', 'CU-01', 'CU-14', 'CU-99', 'CU-04', 'CU-06', 'CV-B', 'CV-S', 'CY-03', 'CY-06', 'CY-01', 'CY-04', 'CY-05', 'CY-02', 'CZ-42', 'CZ-63', 'CZ-72', 'CZ-31', 'CZ-64', 'CZ-41', 'CZ-52', 'CZ-51', 'CZ-80', 'CZ-71', 'CZ-53', 'CZ-32', 'CZ-20', 'CZ-10', 'DE-BW', 'DE-MV', 'DE-NW', 'DE-SL', 'DE-TH', 'DE-ST', 'DE-HH', 'DE-BB', 'DE-BE', 'DE-BY', 'DE-HB', 'DE-HE', 'DE-NI', 'DE-SH', 'DE-RP', 'DE-SN', 'DJ-OB', 'DJ-AR', 'DJ-DI', 'DJ-DJ', 'DJ-AS', 'DJ-TA', 'DK-82', 'DK-85', 'DK-81', 'DK-84', 'DK-83', 'DM-06', 'DM-08', 'DM-09', 'DM-03', 'DM-02', 'DM-11', 'DM-04', 'DM-10', 'DM-05', 'DM-07', 'DO-33', 'DO-34', 'DO-35', 'DO-36', 'DO-37', 'DO-38', 'DO-39', 'DO-40', 'DO-41', 'DO-42', 'DZ-06', 'DZ-11', 'DZ-13', 'DZ-27', 'DZ-40', 'DZ-03', 'DZ-09', 'DZ-14', 'DZ-15', 'DZ-19', 'DZ-20', 'DZ-35', 'DZ-41', 'DZ-42', 'DZ-44', 'DZ-02', 'DZ-04', 'DZ-05', 'DZ-23', 'DZ-39', 'DZ-01', 'DZ-08', 'DZ-16', 'DZ-28', 'DZ-31', 'DZ-07', 'DZ-24', 'DZ-33', 'DZ-36', 'DZ-38', 'DZ-45', 'DZ-10', 'DZ-21', 'DZ-25', 'DZ-32', 'DZ-43', 'DZ-46', 'DZ-48', 'DZ-17', 'DZ-18', 'DZ-22', 'DZ-30', 'DZ-47', 'DZ-12', 'DZ-26', 'DZ-29', 'DZ-34', 'DZ-37', 'EC-E', 'EC-G', 'EC-X', 'EC-Y', 'EC-A', 'EC-D', 'EC-L', 'EC-O', 'EC-SE', 'EC-Z', 'EC-H', 'EC-SD', 'EC-I', 'EC-M', 'EC-P', 'EC-W', 'EC-C', 'EC-F', 'EC-S', 'EC-U', 'EC-N', 'EC-T', 'EC-B', 'EC-R', 'EE-78', 'EE-49', 'EE-51', 'EE-70', 'EE-84', 'EE-37', 'EE-44', 'EE-57', 'EE-59', 'EE-67', 'EE-74', 'EE-82', 'EE-86', 'EE-65', 'EE-39', 'EG-AST', 'EG-BNS', 'EG-C', 'EG-FYM', 'EG-PTS', 'EG-DT', 'EG-GZ', 'EG-IS', 'EG-SHG', 'EG-BA', 'EG-KB', 'EG-SHR', 'EG-DK', 'EG-LX', 'EG-SIN', 'EG-WAD', 'EG-GH', 'EG-KN', 'EG-MNF', 'EG-SUZ', 'EG-BH', 'EG-MT', 'EG-ALX', 'EG-ASN', 'EG-JS', 'EG-KFS', 'EG-MN', 'ER-GB', 'ER-MA', 'ER-SK', 'ER-DK', 'ER-DU', 'ER-AN', 'ES-CB', 'ES-MC', 'ES-AR', 'ES-AS', 'ES-CE', 'ES-GA', 'ES-RI', 'ES-VC', 'ES-CT', 'ES-IB', 'ES-CM', 'ES-EX', 'ES-MD', 'ES-ML', 'ES-CL', 'ES-CN', 'ES-NC', 'ES-AN', 'ES-PV', 'ET-BE', 'ET-HA', 'ET-SO', 'ET-DD', 'ET-GA', 'ET-AM', 'ET-AA', 'ET-AF', 'ET-OR', 'ET-TI', 'ET-SN', 'FI-06', 'FI-08', 'FI-13', 'FI-18', 'FI-01', 'FI-15', 'FI-14', 'FI-04', 'FI-07', 'FI-09', 'FI-11', 'FI-12', 'FI-19', 'FI-17', 'FI-03', 'FI-05', 'FI-10', 'FI-02', 'FI-16', 'FJ-R', 'FJ-W', 'FJ-N', 'FJ-E', 'FJ-C', 'FM-TRK', 'FM-PNI', 'FM-KSA', 'FM-YAP', 'FR-CP', 'FR-MF', 'FR-NC', 'FR-PM', 'FR-TF', 'FR-WF', 'FR-ARA', 'FR-BFC', 'FR-BRE', 'FR-CVL', 'FR-COR', 'FR-GES', 'FR-HDF', 'FR-IDF', 'FR-NOR', 'FR-NAQ', 'FR-OCC', 'FR-PDL', 'FR-PAC', 'FR-GUA', 'FR-LRE', 'FR-MAY', 'FR-GF', 'FR-MQ', 'FR-BL', 'FR-PF', 'GA-1', 'GA-6', 'GA-7', 'GA-8', 'GA-2', 'GA-4', 'GA-9', 'GA-3', 'GA-5', 'GB-GBN', 'GB-SCT', 'GB-EAW', 'GB-ENG', 'GB-WLS', 'GB-NIR', 'GB-UKM', 'GD-10', 'GD-02', 'GD-05', 'GD-01', 'GD-03', 'GD-06', 'GD-04', 'GE-SK', 'GE-IM', 'GE-SJ', 'GE-GU', 'GE-RL', 'GE-TB', 'GE-KA', 'GE-KK', 'GE-AB', 'GE-AJ', 'GE-MM', 'GE-SZ', 'GH-EP', 'GH-CP', 'GH-NP', 'GH-BA', 'GH-TV', 'GH-UW', 'GH-AH', 'GH-AA', 'GH-UE', 'GH-WP', 'GL-KU', 'GL-SM', 'GL-QA', 'GL-QE', 'GM-M', 'GM-U', 'GM-W', 'GM-L', 'GM-B', 'GM-N', 'GN-M', 'GN-C', 'GN-K', 'GN-L', 'GN-B', 'GN-F', 'GN-D', 'GN-N', 'GQ-I', 'GQ-C', 'GR-H', 'GR-A', 'GR-B', 'GR-F', 'GR-69', 'GR-E', 'GR-K', 'GR-I'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'type'=>'CodeableConcept', 'path'=>'CountryLanguage.jurisdiction', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
            'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'CodeableConcept', 'path'=>'CountryLanguage.language', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :country           # 1-1 CodeableConcept
          attr_accessor :jurisdiction      # 0-1 CodeableConcept
          attr_accessor :language          # 1-1 CodeableConcept
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :productName       # 1-1 string
        attr_accessor :_productName      # 0-1 Element
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :namePart          # 0-* [ MedicinalProductDefinition::Name::NamePart ]
        attr_accessor :countryLanguage   # 0-* [ MedicinalProductDefinition::Name::CountryLanguage ]
      end

      class CrossReference < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'CrossReference.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'CrossReference._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'CrossReference.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'CrossReference.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'product' => {'type'=>'CodeableReference', 'path'=>'CrossReference.product', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-cross-reference-type'=>['InvestigationalProduct', 'VirtualProduct', 'ActualProduct', 'BrandedProduct', 'GenericProduct', 'Parallel']}, 'type'=>'CodeableConcept', 'path'=>'CrossReference.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-cross-reference-type'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :product           # 1-1 CodeableReference
        attr_accessor :type              # 0-1 CodeableConcept
      end

      class Operation < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Operation.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Operation._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Operation.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Operation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableReference', 'path'=>'Operation.type', 'min'=>0, 'max'=>1},
          'effectiveDate' => {'type'=>'Period', 'path'=>'Operation.effectiveDate', 'min'=>0, 'max'=>1},
          'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Operation.organization', 'min'=>0, 'max'=>Float::INFINITY},
          'confidentialityIndicator' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-confidentiality'=>['CommerciallySensitive', 'NotCommerciallySensitive']}, 'type'=>'CodeableConcept', 'path'=>'Operation.confidentialityIndicator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-confidentiality'}}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :_id                      # 0-1 Element
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :type                     # 0-1 CodeableReference
        attr_accessor :effectiveDate            # 0-1 Period
        attr_accessor :organization             # 0-* [ Reference(Organization) ]
        attr_accessor :confidentialityIndicator # 0-1 CodeableConcept
      end

      class Characteristic < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Characteristic.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Characteristic._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Characteristic.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Characteristic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/product-characteristic-codes'}},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.value[x]', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Characteristic.value[x]', 'min'=>0, 'max'=>1},
          'valueDate' => {'type'=>'date', 'path'=>'Characteristic.value[x]', 'min'=>0, 'max'=>1},
          '_valueDate' => {'type'=>'Element', 'path'=>'Characteristic.value[x]', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Characteristic.value[x]', 'min'=>0, 'max'=>1},
          '_valueBoolean' => {'type'=>'Element', 'path'=>'Characteristic.value[x]', 'min'=>0, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'Characteristic.value[x]', 'min'=>0, 'max'=>1}
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
      end

      attr_accessor :id                             # 0-1 id
      attr_accessor :_id                            # 0-1 Element
      attr_accessor :meta                           # 0-1 Meta
      attr_accessor :implicitRules                  # 0-1 uri
      attr_accessor :_implicitRules                 # 0-1 Element
      attr_accessor :language                       # 0-1 code
      attr_accessor :_language                      # 0-1 Element
      attr_accessor :text                           # 0-1 Narrative
      attr_accessor :contained                      # 0-* [ Resource ]
      attr_accessor :extension                      # 0-* [ Extension ]
      attr_accessor :modifierExtension              # 0-* [ Extension ]
      attr_accessor :identifier                     # 0-* [ Identifier ]
      attr_accessor :type                           # 0-1 CodeableConcept
      attr_accessor :domain                         # 0-1 CodeableConcept
      attr_accessor :version                        # 0-1 string
      attr_accessor :_version                       # 0-1 Element
      attr_accessor :status                         # 0-1 CodeableConcept
      attr_accessor :statusDate                     # 0-1 dateTime
      attr_accessor :_statusDate                    # 0-1 Element
      attr_accessor :description                    # 0-1 markdown
      attr_accessor :_description                   # 0-1 Element
      attr_accessor :combinedPharmaceuticalDoseForm # 0-1 CodeableConcept
      attr_accessor :route                          # 0-* [ CodeableConcept ]
      attr_accessor :indication                     # 0-1 markdown
      attr_accessor :_indication                    # 0-1 Element
      attr_accessor :legalStatusOfSupply            # 0-1 CodeableConcept
      attr_accessor :additionalMonitoringIndicator  # 0-1 CodeableConcept
      attr_accessor :specialMeasures                # 0-* [ CodeableConcept ]
      attr_accessor :pediatricUseIndicator          # 0-1 CodeableConcept
      attr_accessor :classification                 # 0-* [ CodeableConcept ]
      attr_accessor :marketingStatus                # 0-* [ MarketingStatus ]
      attr_accessor :packagedMedicinalProduct       # 0-* [ CodeableConcept ]
      attr_accessor :ingredient                     # 0-* [ CodeableConcept ]
      attr_accessor :impurity                       # 0-* [ CodeableReference ]
      attr_accessor :attachedDocument               # 0-* [ Reference(DocumentReference) ]
      attr_accessor :masterFile                     # 0-* [ Reference(DocumentReference) ]
      attr_accessor :contact                        # 0-* [ MedicinalProductDefinition::Contact ]
      attr_accessor :clinicalTrial                  # 0-* [ Reference(ResearchStudy) ]
      attr_accessor :code                           # 0-* [ Coding ]
      attr_accessor :name                           # 1-* [ MedicinalProductDefinition::Name ]
      attr_accessor :crossReference                 # 0-* [ MedicinalProductDefinition::CrossReference ]
      attr_accessor :operation                      # 0-* [ MedicinalProductDefinition::Operation ]
      attr_accessor :characteristic                 # 0-* [ MedicinalProductDefinition::Characteristic ]

      def resourceType
        'MedicinalProductDefinition'
      end
    end
  end
end