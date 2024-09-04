module FHIR
  module R4B
    class Medication < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def fhir_version_string
        'R4B'
      end

      def versioned_fhir_module
        FHIR::R4B
      end

      SEARCH_PARAMS = ['code', 'expiration-date', 'form', 'identifier', 'ingredient', 'ingredient-code', 'lot-number', 'manufacturer', 'status']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Medication.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Medication.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Medication.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Medication.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'Medication.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Medication.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Medication.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Medication.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Medication.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://snomed.info/sct'=>['763158003', '169008', '211009', '302007', '439007', '544002', '796001', '847003', '922004', '1039008', '1148001', '1182007', '1206000', '1222004', '1389007', '1434005', '1528001', '1552008', '1594006', '1758005', '1842003', '1878008', '1887004', '1982006', '2016004', '2183004', '2190009', '2497003', '2571007', '2596005', '2679000', '2949005', '3037004', '3127006', '3334000', '3814009', '3822002', '4126008', '4194004', '4219002', '4220008', '4382004', '4704002', '4865009', '4937008', '5067008', '5478006', '5606003', '5720001', '5737008', '5776009', '5786005', '5797005', '5975000', '6028009', '6067003', '6071000', '6102009', '6116004', '6232005', '6247001', '6259002', '6369005', '6425004', '6526001', '6625006', '6716006', '6960003', '6985007', '7092007', '7140000', '7168001', '7235000', '7292004', '7336002', '7561000', '7577004', '7624002', '7836006', '7947003', '7959004', '8028001', '8109005', '8163008', '8348002', '8372007', '8416000', '8658008', '8661009', '8692006', '8696009', '9190005', '9268004', '9500005', '9542007', '9690006', '9745007', '9778000', '9944001', '10099000', '10135005', '10312003', '10422008', '10504007', '10515002', '10555000', '10632007', '10712001', '10756001', '10784006', '11402001', '11430001', '11563006', '11719000', '11783005', '11796006', '11841005', '11847009', '11959009', '12096000', '12236006', '12335007', '12369008', '12436009', '12495006', '12512008', '12559001', '12839006', '13132007', '13252002', '13414000', '13432000', '13512003', '13525006', '13565005', '13592004', '13664004', '13790009', '13800009', '13813003', '13929005', '13936006', '13965000', '14103001', '14170004', '14601000', '14706000', '14728000', '14814001', '14816004', '15222008', '15375005', '15383004', '15432003', '15772006', '15857002', '16031005', '16037009', '16047007', '16131008', '16403005', '16602005', '16787005', '16791000', '16832004', '16858004', '16867004', '16970001', '16977003', '17308007', '17386008', '17554004', '17558001', '17600005', '17805003', '17859000', '17893001', '18002004', '18125000', '18335001', '18340009', '18381001', '18548003', '18679008', '18811003', '18914005', '18952006', '19194001', '19225000', '19232009', '19261005', '19403009', '19405002', '19581007', '19583005', '19630009', '19768003', '19841008', '20091003', '20201001', '20237006', '20320002', '20577002', '20865003', '21069002', '21159006', '21691008', '21701005', '21767006', '21986005', '22091006', '22198003', '22274004', '22474002', '22587006', '22657006', '22672005', '22696000', '22969001', '23079006', '23222006', '23532003', '23827009', '23888001', '24036003', '24450004', '24504000', '24866006', '25014009', '25076002', '25085002', '25142008', '25246002', '25398003', '25419009', '25673006', '25860005', '25995007', '26122009', '26124005', '26244009', '26303005', '26370007', '26458009', '26462003', '26503009', '26523005', '26548008', '26574002', '26580005', '26736008', '26800000', '26842003', '27035007', '27196008', '27242001', '27479000', '27518004', '27638005', '27658006', '27754002', '27867009', '28149003', '28235004', '28410007', '28415002', '28426008', '28506006', '28748001', '28841002', '28906000', '29058003', '29089004', '29121001', '29129004', '29156002', '29175007', '29439004', '29620001', '29840005', '29877002', '29896003', '30010009', '30125007', '30306003', '30317002', '30427009', '30466001', '30492008', '30729008', '30761007', '30964009', '30988006', '31087008', '31231007', '31305008', '31306009', '31684002', '31690003', '31692006', '31865003', '31872002', '32249005', '32313007', '32462006', '32474005', '32583002', '32647002', '32653002', '32792001', '32823007', '32955006', '32960005', '33124007', '33219003', '33231001', '33252009', '33378002', '33588000', '33589008', '33664007', '33675006', '33682005', '33815001', '34012005', '34217006', '34364009', '34393009', '34462007', '34599009', '34693000', '34731007', '34816007', '34833000', '34929006', '35035001', '35063004', '35282000', '35300007', '35324004', '35392005', '35476001', '35531004', '35768004', '35967000', '36068003', '36113004', '36218003', '36236003', '36391008', '36537006', '36594001', '36621009', '36642006', '36893000', '36909007', '37084008', '37146000', '37306000', '37400007', '37628007', '37803001', '38076006', '38166006', '38231004', '38268001', '38314008', '38413003', '38578004', '38900001', '39064002', '39124003', '39128000', '39142008', '39359008', '39487003', '39516004', '39608003', '39707000', '39860005', '39939003', '40232005', '40339003', '40429005', '40430000', '40556005', '40562000', '40589005', '40648001', '40820003', '40877002', '40905005', '40974005', '40999006', '41001009', '41015006', '41147003', '41193000', '41324009', '41365009', '41367001', '41399007', '41470001', '41493007', '41549009', '41985001', '42082003', '42098005', '42271003', '42348003', '42444000', '42514000', '42638008', '42714002', '42720001', '43343000', '43533002', '43684009', '43753001', '43879000', '43927002', '44175000', '44418001', '44658005', '44731005', '44790008', '44798001', '44938006', '44990002', '45218006', '45311002', '45313004', '45680002', '45844004', '45888006', '46009007', '46063005', '46123006', '46436003', '46479001', '46532003', '46547007', '46576005', '46709004', '46741005', '46913003', '47065008', '47120002', '47124006', '47140009', '47331002', '47527007', '47602007', '47898004', '48174005', '48256008', '48279009', '48351000', '48546005', '48603004', '48614001', '48647005', '48698004', '48836000', '48875009', '48899009', '49019002', '49157004', '49267000', '49299006', '49485009', '49577002', '49617001', '49669006', '49688004', '49694007', '49705006', '49802003', '49953001', '50094009', '50256004', '50318003', '50335004', '50520001', '50841004', '50868004', '51013009', '51073002', '51126006', '51132001', '51326002', '51334008', '51361008', '51752005', '51758009', '51908007', '51992002', '52017007', '52108005', '52215008', '52388000', '52423008', '52883001', '52896000', '53009005', '53480001', '53584007', '53640004', '53641000', '53691001', '53793005', '53800008', '53848009', '54142000', '54344006', '54391004', '54406003', '54541002', '54544005', '54577009', '54705000', '54765002', '54824008', '54882005', '54887004', '54972005', '54982006', '55015008', '55217007', '55432002', '55556000', '55673009', '55745002', '55830003', '55867006', '55889005', '56014002', '56032002', '56059005', '56123002', '56230001', '56234005', '56480005', '56549003', '56602009', '56615000', '56928005', '56934003', '57002000', '57066004', '57191001', '57263002', '57376006', '57538001', '57616006', '57670008', '57752001', '57811004', '57819002', '57845006', '57853003', '57893000', '57952007', '58050004', '58098008', '58360000', '58467001', '58502006', '58760003', '58805000', '58883005', '58892008', '58905004', '58944007', '59057006', '59187003', '59240002', '59255006', '59270007', '59456005', '59589008', '59594008', '59751001', '59941008', '59953007', '60149003', '60169008', '60468008', '60533005', '60541005', '60682004', '60731009', '60881009', '60978003', '61020000', '61093008', '61132004', '61181002', '61408004', '61457001', '61621000', '61623002', '61651006', '61862008', '61946003', '62051009', '62288001', '62294009', '62529008', '62560008', '62782004', '63094006', '63136007', '63318000', '63470003', '63639004', '63682003', '63758001', '63822004', '64083002', '64115004', '64127001', '64240003', '64349004', '64462001', '64558005', '64851009', '64878006', '65020006', '65026000', '65041000', '65092008', '65484006', '65502005', '65505007', '65627005', '65823007', '65884003', '65965000', '66094001', '66125007', '66261008', '66349002', '66441000', '66492008', '66493003', '66602007', '66742008', '66859009', '66860004', '66919007', '66971004', '67213005', '67423003', '67440007', '67507000', '67735003', '67891001', '67939000', '68088000', '68206008', '68208009', '68395000', '68398003', '68402007', '68407001', '68422006', '68424007', '68444001', '68490009', '68622003', '68702006', '68774008', '68887009', '68892006', '69107004', '69204002', '69236009', '69242008', '69331001', '69431002', '69576000', '69708003', '69879000', '69918003', '69967001', '70047000', '70254000', '70343008', '70379000', '70460002', '70702006', '70776005', '70841003', '70864001', '70934008', '71289008', '71451001', '71453003', '71455005', '71462001', '71516007', '71584004', '71634000', '71699007', '71724000', '71731001', '71759000', '71770007', '71798005', '71837009', '72312007', '72416006', '72623000', '72824008', '72870001', '72924009', '72968006', '73074003', '73093001', '73133000', '73170009', '73212002', '73277004', '73454001', '73572009', '73647000', '73756003', '73763003', '73805002', '73949004', '73986003', '74022005', '74065006', '74074008', '74213004', '74226000', '74470007', '74480006', '74575000', '74583006', '74632002', '74674007', '74771007', '74782004', '74798006', '74819009', '75029008', '75203002', '75429004', '75501004', '75661008', '75927008', '75959001', '75969007', '76058001', '76155001', '76286000', '76289007', '76385003', '76390000', '76591000', '76696004', '76759004', '76962009', '77035009', '77048008', '77237006', '77390008', '77398001', '77549006', '77731008', '77750008', '77856005', '77885004', '77898008', '78025001', '78174002', '78379001', '78449007', '78507004', '78542000', '78684000', '78700004', '78983008', '79129001', '79138004', '79221007', '79225003', '79305004', '79332009', '79356008', '79440004', '79543000', '79736009', '79873000', '80024007', '80127003', '80165005', '80229008', '80311000', '80399002', '80618000', '80732005', '80802008', '80834004', '80870001', '80906007', '81073007', '81088002', '81219009', '81252003', '81335000', '81457006', '81583003', '81609008', '81646007', '81728006', '81759008', '81839001', '81947000', '82133001', '82156005', '82165003', '82166002', '82240008', '82264009', '82290007', '82312001', '82573000', '82746003', '82804004', '82896009', '82951001', '83085007', '83179003', '83192000', '83201006', '83288003', '83490000', '83532008', '83692001', '83973001', '83999008', '84078002', '84737005', '84812008', '84844007', '84951002', '84986000', '85063003', '85272000', '85343003', '85354008', '85408000', '85417000', '85429009', '85468002', '85507008', '85591001', '85990009', '86066003', '86080005', '86085000', '86131002', '86162003', '86308005', '86337009', '86389004', '86536001', '86647004', '86906004', '86939001', '86977007', '87233003', '87285001', '87395005', '87567009', '87586001', '87617007', '87652004', '87881000', '88134000', '88226000', '88279005', '88519001', '88566002', '88870000', '88997008', '89018006', '89029005', '89045007', '89092006', '89132005', '89192008', '89265009', '89435001', '89466007', '89505005', '89626004', '89664002', '89692007', '89695009', '89785009', '90000002', '90017009', '90332006', '90346006', '90356005', '90370005', '90426002', '90614001', '90659009', '90704004', '90802006', '90882008', '91107009', '91135008', '91143003', '91169009', '91307002', '91339009', '91376007', '91435002', '91452003', '91479004', '91667005', '96011002', '96014005', '96015006', '96018008', '96020006', '96023008', '96029007', '96034006', '96038009', '96044008', '96047001', '96049003', '96051004', '96052006', '96053001', '96054007', '96055008', '96062004', '96063009', '96064003', '96065002', '96067005', '96072001', '96073006', '96077007', '96081007', '96084004', '96086002', '96087006', '96088001', '96090000', '96091001', '96093003', '96097002', '96099004', '96103009', '96107005', '96108000', '96119002', '96138006', '96144005', '96149000', '96169005', '96183007', '96185000', '96191003', '96195007', '96196008', '96199001', '96200003', '96209002', '96213009', '96220002', '96221003', '96231005', '96233008', '96234002', '96236000', '96237009', '96246003', '96247007', '96252002', '96278006', '96280000', '96281001', '96284009', '96298001', '96299009', '96300001', '96301002', '96302009', '96304005', '96305006']}, 'type'=>'CodeableConcept', 'path'=>'Medication.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medication-codes'}},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/medication-status'=>['active', 'inactive', 'entered-in-error']}, 'type'=>'code', 'path'=>'Medication.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/medication-status'}},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Medication.manufacturer', 'min'=>0, 'max'=>1},
        'form' => {'valid_codes'=>{'http://snomed.info/sct'=>['736542009', '66076007', '70409003', '385018001', '385019009', '385020003', '385021004', '385023001', '385024007', '385025008', '385026009', '385027000', '385028005', '385029002', '385032004', '385033009', '385034003', '385038000', '385039008', '385041009', '385044001', '385045000', '385046004', '385047008', '385052003', '385053008', '385054002', '385059007', '385060002', '385061003', '385062005', '385063000', '385065007', '385070000', '385071001', '385072008', '385073003', '385074009', '385077002', '385078007', '385079004', '385081002', '385082009', '385084005', '385085006', '385086007', '385088008', '385089000', '385090009', '385091008', '385094000', '385095004', '385096003', '385102005', '385103000', '385105007', '385106008', '385108009', '385110006', '385111005', '385112003', '385113008', '385114002', '385118004', '385119007', '385121002', '385122009', '385123004', '385124005', '385125006', '385128008', '385130005', '385132002', '385133007', '385134001', '385135000', '385136004', '385137008', '385138003', '385139006', '385140008', '385141007', '385142000', '385143005', '385147006', '385148001', '385149009', '385150009', '385151008', '385152001', '385153006', '385154000', '385155004', '385156003', '385157007', '385158002', '385159005', '385160000', '385162008', '385163003', '385164009', '385165005', '385166006', '385167002', '385168007', '385170003', '385171004', '385172006', '385173001', '385175008', '385176009', '385177000', '385178005', '385179002', '385182007', '385183002', '385184008', '385185009', '385187001', '385188006', '385189003', '385191006', '385192004', '385193009', '385195002', '385196001', '385198000', '385199008', '385200006', '385201005', '385202003', '385204002', '385205001', '385206000', '385207009', '385211003', '385212005', '385213000', '385214006', '385215007', '385217004', '385219001', '385220007', '385221006', '385223009', '385224003', '385229008', '385242008', '385245005', '385246006', '385247002', '385248007', '385250004', '385251000', '385258006', '385259003', '385260008', '385268001', '385273007', '385276004', '385277008', '385278003', '385279006', '385280009', '385282001', '385287007', '385289005', '385290001', '385292009', '414951009', '420253005', '420283001', '420292003', '420293008', '420378007', '420407000', '420430006', '420450005', '420509004', '420536002', '420540006', '420631002', '420636007', '420641004', '420656008', '420692007', '420705007', '420736004', '420767002', '420873008', '420891003', '420901005', '420929008', '421026006', '421056002', '421155001', '421221008', '421300005', '421338009', '421343002', '421366001', '421382000', '421425002', '421427005', '421446006', '421535006', '421620004', '421628006', '421637006', '421701006', '421713001', '421716009', '421752008', '421765004', '421857007', '421873001', '421943006', '421949005', '422060001', '422068008', '422080000', '422085005', '422201009', '422264003', '422336005', '422353003', '424552006', '425753008', '425965000', '426823003', '427129005', '442015005', '443424002', '447050008', '447079001', '719200003', '739147005', '739148000', '739371005', '739372003', '739662008', '740548000', '740575007', '740596000', '745991000', '746008008', '761845009', '761899004', '761900009', '761901008', '761905004', '761906003', '761907007', '762064002', '762065001', '762071007', '762072000', '762893001', '762895008', '763340003', '763445009', '763446005', '763484004', '763485003', '763819006', '763820000', '763823003', '763852000', '764296002', '764297006', '764378009', '764446000', '764477003', '764478008', '764485007', '764486008', '764499006', '764501003', '764671009', '764770000', '764772008', '764773003', '764774009', '764776006', '764780001', '764787003', '764788008', '764792001', '764798002', '764799005', '764802001', '764803006', '764842006', '764843001', '765056003', '765061001', '765062008', '765064009', '765065005', '765163001', '765164007', '765166009', '765167000', '765367006', '766233005', '766234004', '766964003', '767059009', '769000008', '769115006', '769120006', '770109000', '772805002', '772806001', '782648001', '783748000', '783749008', '784575004', '784576003', '785898006', '785899003', '785908001', '785910004', '840614006', '840651000']}, 'type'=>'CodeableConcept', 'path'=>'Medication.form', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medication-form-codes'}},
        'amount' => {'type'=>'Ratio', 'path'=>'Medication.amount', 'min'=>0, 'max'=>1},
        'ingredient' => {'type'=>'Medication::Ingredient', 'path'=>'Medication.ingredient', 'min'=>0, 'max'=>Float::INFINITY},
        'batch' => {'type'=>'Medication::Batch', 'path'=>'Medication.batch', 'min'=>0, 'max'=>1}
      }

      class Ingredient < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def fhir_version_string
          'R4B'
        end

        def versioned_fhir_module
          FHIR::R4B
        end

        MULTIPLE_TYPES = {
          'item' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Ingredient.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Ingredient.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Ingredient.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'itemCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Ingredient.item[x]', 'min'=>1, 'max'=>1},
          'itemReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Medication'], 'type'=>'Reference', 'path'=>'Ingredient.item[x]', 'min'=>1, 'max'=>1},
          'isActive' => {'type'=>'boolean', 'path'=>'Ingredient.isActive', 'min'=>0, 'max'=>1},
          'strength' => {'type'=>'Ratio', 'path'=>'Ingredient.strength', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :itemCodeableConcept # 1-1 CodeableConcept
        attr_accessor :itemReference       # 1-1 Reference(Substance|Medication)
        attr_accessor :isActive            # 0-1 boolean
        attr_accessor :strength            # 0-1 Ratio
      end

      class Batch < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def fhir_version_string
          'R4B'
        end

        def versioned_fhir_module
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Batch.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Batch.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Batch.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'lotNumber' => {'type'=>'string', 'path'=>'Batch.lotNumber', 'min'=>0, 'max'=>1},
          'expirationDate' => {'type'=>'dateTime', 'path'=>'Batch.expirationDate', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :lotNumber         # 0-1 string
        attr_accessor :expirationDate    # 0-1 dateTime
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
      attr_accessor :code              # 0-1 CodeableConcept
      attr_accessor :status            # 0-1 code
      attr_accessor :manufacturer      # 0-1 Reference(Organization)
      attr_accessor :form              # 0-1 CodeableConcept
      attr_accessor :amount            # 0-1 Ratio
      attr_accessor :ingredient        # 0-* [ Medication::Ingredient ]
      attr_accessor :batch             # 0-1 Medication::Batch

      def resourceType
        'Medication'
      end
    end
  end
end