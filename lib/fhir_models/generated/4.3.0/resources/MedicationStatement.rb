module FHIR
  module R4B
    class MedicationStatement < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'medication' => ['CodeableConcept', 'Reference'],
        'effective' => ['dateTime', 'Period']
      }
      SEARCH_PARAMS = ['category', 'code', 'context', 'effective', 'identifier', 'medication', 'part-of', 'patient', 'source', 'status', 'subject']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MedicationStatement.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MedicationStatement.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MedicationStatement.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MedicationStatement.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'MedicationStatement.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MedicationStatement.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MedicationStatement.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MedicationStatement.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'MedicationStatement.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'type'=>'Reference', 'path'=>'MedicationStatement.basedOn', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicationAdministration', 'http://hl7.org/fhir/StructureDefinition/MedicationDispense', 'http://hl7.org/fhir/StructureDefinition/MedicationStatement', 'http://hl7.org/fhir/StructureDefinition/Procedure', 'http://hl7.org/fhir/StructureDefinition/Observation'], 'type'=>'Reference', 'path'=>'MedicationStatement.partOf', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/medication-statement-status'=>['active', 'completed', 'entered-in-error', 'intended', 'stopped', 'on-hold', 'unknown', 'not-taken']}, 'type'=>'code', 'path'=>'MedicationStatement.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/medication-statement-status'}},
        'statusReason' => {'valid_codes'=>{'http://snomed.info/sct'=>['266710000', '182862001', '182863006', '182864000', '182865004', '182868002', '182869005', '182870006', '182871005', '182872003', '182873008', '182874002', '266711001', '275929009', '410684002', '134390006', '134397009', '135794007', '135795008', '135796009', '135798005', '135799002', '135800003', '135801004', '135803001', '161646004', '161647008', '161648003', '161649006', '161650006', '161652003', '161653008', '170622002', '170624001', '170688000', '170689008', '170821007', '170826002', '170919001', '170954008', '170955009', '170958006', '182834008', '182840001', '182841002', '182842009', '182843004', '182844005', '182845006', '182846007', '274512008', '309841001', '312451002', '315023008', '315062004', '315364008', '390914001', '391158008', '391159000', '394888000', '394987009', '395006008', '395007004', '395008009', '395009001', '401084003', '401244004', '407572003', '408339001', '408354007', '408355008', '412782003', '413555000', '413558003', '413559006', '413560001', '416404000', '417576009', '430279008', '438553004', '439631004', '440935004', '440991005', '441195008', '441196009', '441899004', '473151000', '698428006', '698449007', '698459008', '698460003', '698468005', '698758004', '699008007', '699137009', '700110004', '700384008', '702542006', '703989007', '703991004', '703996009', '703997000', '703999002', '704000000', '704033005', '704047009', '707298000', '708000007', '710159007', '710814002', '710815001', '710816000', '710817009', '711149003', '711150003', '711370000', '711436000', '712985002', '720971004', '721872002', '722480002', '736004008', '736006005', '736799004', '763323007', '764639002', '787928003', '787930001', '840596001', '840597005', '840598000', '7611000175100', '21651000175103', '21681000175107', '53081000119101', '61251000119108', '61261000119105', '69521000119101', '98001000119105', '106511000119106', '106521000119104', '106571000119103', '106581000119100', '106631000119102', '106691000119103', '106701000119103', '113481000119108', '113521000119108', '113531000119106', '113541000119102', '117431000119101', '118901000119102', '118911000119104', '118921000119106', '118931000119109', '122621000119109', '123971000119106', '123981000119109', '126951000119109', '127721000119100', '130721000119103', '131531000119103', '133621000119103', '134651000119108', '134671000119104', '139181000119106', '140301000119107', '140561000119102', '150881000119107', '328941000119101', '329061000119105', '329071000119104', '347841000119106', '11012701000119107', '11012741000119109', '12384021000119106', '15625371000119108', '15625411000119109', '15625451000119105', '15929341000119102', '15929381000119107', '15929421000119103', '15929461000119108', '15929581000119100', '16234971000119108', '16526761000119100', '16659291000119100', '16755631000119109', '16755671000119107', '16772161000119102', '16772201000119107', '16863441000119108', '16863481000119103', '70732231000132107']}, 'type'=>'CodeableConcept', 'path'=>'MedicationStatement.statusReason', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/reason-medication-status-codes'}},
        'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/medication-statement-category'=>['inpatient', 'outpatient', 'community', 'patientspecified']}, 'type'=>'CodeableConcept', 'path'=>'MedicationStatement.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/medication-statement-category'}},
        'medicationCodeableConcept' => {'valid_codes'=>{'http://snomed.info/sct'=>['763158003', '169008', '211009', '302007', '439007', '544002', '796001', '847003', '922004', '1039008', '1148001', '1182007', '1206000', '1222004', '1389007', '1434005', '1528001', '1552008', '1594006', '1758005', '1842003', '1878008', '1887004', '1982006', '2016004', '2183004', '2190009', '2497003', '2571007', '2596005', '2679000', '2949005', '3037004', '3127006', '3334000', '3814009', '3822002', '4126008', '4194004', '4219002', '4220008', '4382004', '4704002', '4865009', '4937008', '5067008', '5478006', '5606003', '5720001', '5737008', '5776009', '5786005', '5797005', '5975000', '6028009', '6067003', '6071000', '6102009', '6116004', '6232005', '6247001', '6259002', '6369005', '6425004', '6526001', '6625006', '6716006', '6960003', '6985007', '7092007', '7140000', '7168001', '7235000', '7292004', '7336002', '7561000', '7577004', '7624002', '7836006', '7947003', '7959004', '8028001', '8109005', '8163008', '8348002', '8372007', '8416000', '8658008', '8661009', '8692006', '8696009', '9190005', '9268004', '9500005', '9542007', '9690006', '9745007', '9778000', '9944001', '10099000', '10135005', '10312003', '10422008', '10504007', '10515002', '10555000', '10632007', '10712001', '10756001', '10784006', '11402001', '11430001', '11563006', '11719000', '11783005', '11796006', '11841005', '11847009', '11959009', '12096000', '12236006', '12335007', '12369008', '12436009', '12495006', '12512008', '12559001', '12839006', '13132007', '13252002', '13414000', '13432000', '13512003', '13525006', '13565005', '13592004', '13664004', '13790009', '13800009', '13813003', '13929005', '13936006', '13965000', '14103001', '14170004', '14601000', '14706000', '14728000', '14814001', '14816004', '15222008', '15375005', '15383004', '15432003', '15772006', '15857002', '16031005', '16037009', '16047007', '16131008', '16403005', '16602005', '16787005', '16791000', '16832004', '16858004', '16867004', '16970001', '16977003', '17308007', '17386008', '17554004', '17558001', '17600005', '17805003', '17859000', '17893001', '18002004', '18125000', '18335001', '18340009', '18381001', '18548003', '18679008', '18811003', '18914005', '18952006', '19194001', '19225000', '19232009', '19261005', '19403009', '19405002', '19581007', '19583005', '19630009', '19768003', '19841008', '20091003', '20201001', '20237006', '20320002', '20577002', '20865003', '21069002', '21159006', '21691008', '21701005', '21767006', '21986005', '22091006', '22198003', '22274004', '22474002', '22587006', '22657006', '22672005', '22696000', '22969001', '23079006', '23222006', '23532003', '23827009', '23888001', '24036003', '24450004', '24504000', '24866006', '25014009', '25076002', '25085002', '25142008', '25246002', '25398003', '25419009', '25673006', '25860005', '25995007', '26122009', '26124005', '26244009', '26303005', '26370007', '26458009', '26462003', '26503009', '26523005', '26548008', '26574002', '26580005', '26736008', '26800000', '26842003', '27035007', '27196008', '27242001', '27479000', '27518004', '27638005', '27658006', '27754002', '27867009', '28149003', '28235004', '28410007', '28415002', '28426008', '28506006', '28748001', '28841002', '28906000', '29058003', '29089004', '29121001', '29129004', '29156002', '29175007', '29439004', '29620001', '29840005', '29877002', '29896003', '30010009', '30125007', '30306003', '30317002', '30427009', '30466001', '30492008', '30729008', '30761007', '30964009', '30988006', '31087008', '31231007', '31305008', '31306009', '31684002', '31690003', '31692006', '31865003', '31872002', '32249005', '32313007', '32462006', '32474005', '32583002', '32647002', '32653002', '32792001', '32823007', '32955006', '32960005', '33124007', '33219003', '33231001', '33252009', '33378002', '33588000', '33589008', '33664007', '33675006', '33682005', '33815001', '34012005', '34217006', '34364009', '34393009', '34462007', '34599009', '34693000', '34731007', '34816007', '34833000', '34929006', '35035001', '35063004', '35282000', '35300007', '35324004', '35392005', '35476001', '35531004', '35768004', '35967000', '36068003', '36113004', '36218003', '36236003', '36391008', '36537006', '36594001', '36621009', '36642006', '36893000', '36909007', '37084008', '37146000', '37306000', '37400007', '37628007', '37803001', '38076006', '38166006', '38231004', '38268001', '38314008', '38413003', '38578004', '38900001', '39064002', '39124003', '39128000', '39142008', '39359008', '39487003', '39516004', '39608003', '39707000', '39860005', '39939003', '40232005', '40339003', '40429005', '40430000', '40556005', '40562000', '40589005', '40648001', '40820003', '40877002', '40905005', '40974005', '40999006', '41001009', '41015006', '41147003', '41193000', '41324009', '41365009', '41367001', '41399007', '41470001', '41493007', '41549009', '41985001', '42082003', '42098005', '42271003', '42348003', '42444000', '42514000', '42638008', '42714002', '42720001', '43343000', '43533002', '43684009', '43753001', '43879000', '43927002', '44175000', '44418001', '44658005', '44731005', '44790008', '44798001', '44938006', '44990002', '45218006', '45311002', '45313004', '45680002', '45844004', '45888006', '46009007', '46063005', '46123006', '46436003', '46479001', '46532003', '46547007', '46576005', '46709004', '46741005', '46913003', '47065008', '47120002', '47124006', '47140009', '47331002', '47527007', '47602007', '47898004', '48174005', '48256008', '48279009', '48351000', '48546005', '48603004', '48614001', '48647005', '48698004', '48836000', '48875009', '48899009', '49019002', '49157004', '49267000', '49299006', '49485009', '49577002', '49617001', '49669006', '49688004', '49694007', '49705006', '49802003', '49953001', '50094009', '50256004', '50318003', '50335004', '50520001', '50841004', '50868004', '51013009', '51073002', '51126006', '51132001', '51326002', '51334008', '51361008', '51752005', '51758009', '51908007', '51992002', '52017007', '52108005', '52215008', '52388000', '52423008', '52883001', '52896000', '53009005', '53480001', '53584007', '53640004', '53641000', '53691001', '53793005', '53800008', '53848009', '54142000', '54344006', '54391004', '54406003', '54541002', '54544005', '54577009', '54705000', '54765002', '54824008', '54882005', '54887004', '54972005', '54982006', '55015008', '55217007', '55432002', '55556000', '55673009', '55745002', '55830003', '55867006', '55889005', '56014002', '56032002', '56059005', '56123002', '56230001', '56234005', '56480005', '56549003', '56602009', '56615000', '56928005', '56934003', '57002000', '57066004', '57191001', '57263002', '57376006', '57538001', '57616006', '57670008', '57752001', '57811004', '57819002', '57845006', '57853003', '57893000', '57952007', '58050004', '58098008', '58360000', '58467001', '58502006', '58760003', '58805000', '58883005', '58892008', '58905004', '58944007', '59057006', '59187003', '59240002', '59255006', '59270007', '59456005', '59589008', '59594008', '59751001', '59941008', '59953007', '60149003', '60169008', '60468008', '60533005', '60541005', '60682004', '60731009', '60881009', '60978003', '61020000', '61093008', '61132004', '61181002', '61408004', '61457001', '61621000', '61623002', '61651006', '61862008', '61946003', '62051009', '62288001', '62294009', '62529008', '62560008', '62782004', '63094006', '63136007', '63318000', '63470003', '63639004', '63682003', '63758001', '63822004', '64083002', '64115004', '64127001', '64240003', '64349004', '64462001', '64558005', '64851009', '64878006', '65020006', '65026000', '65041000', '65092008', '65484006', '65502005', '65505007', '65627005', '65823007', '65884003', '65965000', '66094001', '66125007', '66261008', '66349002', '66441000', '66492008', '66493003', '66602007', '66742008', '66859009', '66860004', '66919007', '66971004', '67213005', '67423003', '67440007', '67507000', '67735003', '67891001', '67939000', '68088000', '68206008', '68208009', '68395000', '68398003', '68402007', '68407001', '68422006', '68424007', '68444001', '68490009', '68622003', '68702006', '68774008', '68887009', '68892006', '69107004', '69204002', '69236009', '69242008', '69331001', '69431002', '69576000', '69708003', '69879000', '69918003', '69967001', '70047000', '70254000', '70343008', '70379000', '70460002', '70702006', '70776005', '70841003', '70864001', '70934008', '71289008', '71451001', '71453003', '71455005', '71462001', '71516007', '71584004', '71634000', '71699007', '71724000', '71731001', '71759000', '71770007', '71798005', '71837009', '72312007', '72416006', '72623000', '72824008', '72870001', '72924009', '72968006', '73074003', '73093001', '73133000', '73170009', '73212002', '73277004', '73454001', '73572009', '73647000', '73756003', '73763003', '73805002', '73949004', '73986003', '74022005', '74065006', '74074008', '74213004', '74226000', '74470007', '74480006', '74575000', '74583006', '74632002', '74674007', '74771007', '74782004', '74798006', '74819009', '75029008', '75203002', '75429004', '75501004', '75661008', '75927008', '75959001', '75969007', '76058001', '76155001', '76286000', '76289007', '76385003', '76390000', '76591000', '76696004', '76759004', '76962009', '77035009', '77048008', '77237006', '77390008', '77398001', '77549006', '77731008', '77750008', '77856005', '77885004', '77898008', '78025001', '78174002', '78379001', '78449007', '78507004', '78542000', '78684000', '78700004', '78983008', '79129001', '79138004', '79221007', '79225003', '79305004', '79332009', '79356008', '79440004', '79543000', '79736009', '79873000', '80024007', '80127003', '80165005', '80229008', '80311000', '80399002', '80618000', '80732005', '80802008', '80834004', '80870001', '80906007', '81073007', '81088002', '81219009', '81252003', '81335000', '81457006', '81583003', '81609008', '81646007', '81728006', '81759008', '81839001', '81947000', '82133001', '82156005', '82165003', '82166002', '82240008', '82264009', '82290007', '82312001', '82573000', '82746003', '82804004', '82896009', '82951001', '83085007', '83179003', '83192000', '83201006', '83288003', '83490000', '83532008', '83692001', '83973001', '83999008', '84078002', '84737005', '84812008', '84844007', '84951002', '84986000', '85063003', '85272000', '85343003', '85354008', '85408000', '85417000', '85429009', '85468002', '85507008', '85591001', '85990009', '86066003', '86080005', '86085000', '86131002', '86162003', '86308005', '86337009', '86389004', '86536001', '86647004', '86906004', '86939001', '86977007', '87233003', '87285001', '87395005', '87567009', '87586001', '87617007', '87652004', '87881000', '88134000', '88226000', '88279005', '88519001', '88566002', '88870000', '88997008', '89018006', '89029005', '89045007', '89092006', '89132005', '89192008', '89265009', '89435001', '89466007', '89505005', '89626004', '89664002', '89692007', '89695009', '89785009', '90000002', '90017009', '90332006', '90346006', '90356005', '90370005', '90426002', '90614001', '90659009', '90704004', '90802006', '90882008', '91107009', '91135008', '91143003', '91169009', '91307002', '91339009', '91376007', '91435002', '91452003', '91479004', '91667005', '96011002', '96014005', '96015006', '96018008', '96020006', '96023008', '96029007', '96034006', '96038009', '96044008', '96047001', '96049003', '96051004', '96052006', '96053001', '96054007', '96055008', '96062004', '96063009', '96064003', '96065002', '96067005', '96072001', '96073006', '96077007', '96081007', '96084004', '96086002', '96087006', '96088001', '96090000', '96091001', '96093003', '96097002', '96099004', '96103009', '96107005', '96108000', '96119002', '96138006', '96144005', '96149000', '96169005', '96183007', '96185000', '96191003', '96195007', '96196008', '96199001', '96200003', '96209002', '96213009', '96220002', '96221003', '96231005', '96233008', '96234002', '96236000', '96237009', '96246003', '96247007', '96252002', '96278006', '96280000', '96281001', '96284009', '96298001', '96299009', '96300001', '96301002', '96302009', '96304005', '96305006']}, 'type'=>'CodeableConcept', 'path'=>'MedicationStatement.medication[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medication-codes'}},
        'medicationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication'], 'type'=>'Reference', 'path'=>'MedicationStatement.medication[x]', 'min'=>1, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'MedicationStatement.subject', 'min'=>1, 'max'=>1},
        'context' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'type'=>'Reference', 'path'=>'MedicationStatement.context', 'min'=>0, 'max'=>1},
        'effectiveDateTime' => {'type'=>'dateTime', 'path'=>'MedicationStatement.effective[x]', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'MedicationStatement.effective[x]', 'min'=>0, 'max'=>1},
        'dateAsserted' => {'type'=>'dateTime', 'path'=>'MedicationStatement.dateAsserted', 'min'=>0, 'max'=>1},
        'informationSource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'MedicationStatement.informationSource', 'min'=>0, 'max'=>1},
        'derivedFrom' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'MedicationStatement.derivedFrom', 'min'=>0, 'max'=>Float::INFINITY},
        'reasonCode' => {'valid_codes'=>{'http://snomed.info/sct'=>['404684003', '109006', '122003', '127009', '129007', '134006', '140004', '144008', '147001', '150003', '151004', '162004', '165002', '168000', '171008', '172001', '175004', '177007', '179005', '181007', '183005', '184004', '188001', '192008', '193003', '195005', '198007', '199004', '208008', '216004', '219006', '222008', '223003', '228007', '241006', '242004', '253005', '257006', '264008', '276008', '279001', '281004', '282006', '290006', '292003', '297009', '299007', '303002', '308006', '310008', '313005', '317006', '320003', '324007', '330007', '335002', '341009', '349006', '355001', '357009', '359007', '360002', '364006', '366008', '368009', '369001', '378007', '382009', '383004', '385006', '387003', '398002', '407000', '408005', '409002', '426008', '431005', '437009', '440009', '442001', '443006', '447007', '450005', '452002', '460001', '467003', '470004', '479003', '486006', '488007', '490008', '496002', '504009', '517007', '518002', '520004', '527001', '536002', '539009', '547009', '548004', '554003', '555002', '563001', '568005', '586008', '590005', '596004', '599006', '600009', '607007', '610000', '613003', '615005', '616006', '626004', '631002', '640003', '643001', '646009', '649002', '651003', '652005', '655007', '658009', '664002', '666000', '675003', '682004', '701003', '703000', '714002', '715001', '718004', '733007', '734001', '736004', '750009', '755004', '756003', '758002', '775008', '776009', '781000', '786005', '787001', '788006', '792004', '799008', '801006', '805002', '811004', '813001', '815008', '816009', '818005', '825003', '827006', '832007', '834008', '841002', '842009', '843004', '844005', '845006', '849000', '857002', '862001', '865004', '871005', '874002', '875001', '888003', '890002', '899001', '903008', '904002', '908004', '919001', '928000', '931004', '932006', '934007', '943003', '961007', '962000', '964004', '965003', '975000', '978003', '981008', '984000', '987007', '991002', '998008', '1003002', '1020003', '1023001', '1027000', '1031006', '1033009', '1034003', '1038000', '1045000', '1046004', '1051005', '1055001', '1059007', '1070000', '1073003', '1074009', '1077002', '1079004', '1085006', '1089000', '1102005', '1107004', '1108009', '1111005', '1112003', '1116000', '1124005', '1125006', '1126007', '1131009', '1134001', '1135000', '1139006', '1140008', '1141007', '1145003', '1150009', '1151008', '1152001', '1155004', '1168007', '1184008', '1194003', '1196001', '1197005', '1201005', '1207009', '1208004', '1212005', '1214006', '1232006', '1239002', '1240000', '1259003', '1261007', '1264004', '1271009', '1280009', '1282001', '1284000', '1286003', '1287007', '1297003', '1308001', '1310004', '1317001', '1318006', '1323006', '1332008', '1335005', '1343000', '1345007', '1351002', '1356007', '1361009', '1363007', '1367008', '1370007', '1372004', '1376001', '1378000', '1380006', '1383008', '1384002', '1386000', '1387009', '1388004', '1393001', '1395008', '1402001', '1412008', '1415005', '1418007', '1419004', '1426004', '1447000', '1469007', '1474004', '1475003', '1478001', '1479009', '1482004', '1486001', '1488000', '1489008', '1492007', '1493002', '1499003', '1512006', '1515008', '1518005', '1519002', '1521007', '1523005', '1525003', '1531000', '1532007', '1534008', '1538006', '1539003', '1542009', '1544005', '1551001', '1556006', '1563006', '1567007', '1588003', '1592005', '1593000', '1606009', '1608005', '1639007', '1647007', '1648002', '1654001', '1657008', '1658003', '1663004', '1667003', '1670004', '1671000', '1674008', '1679003', '1682008', '1685005', '1686006', '1694004', '1698001', '1703007', '1705000', '1708003', '1714005', '1717003', '1723008', '1724002', '1734006', '1735007', '1739001', '1742007', '1744008', '1748006', '1755008', '1761006', '1763009', '1767005', '1769008', '1771008', '1776003', '1777007', '1778002', '1779005', '1794009', '1816003', '1821000', '1822007', '1824008', '1826005', '1828006', '1829003', '1833005', '1835003', '1837006', '1845001', '1847009', '1848004', '1852004', '1855002', '1856001', '1857005', '1860003', '1865008', '1869002', '1881003', '1892002', '1896004', '1897008', '1899006', '1903004', '1908008', '1909000', '1922008', '1926006', '1939005', '1943009', '1953005', '1954004', '1955003', '1959009', '1961000', '1963002', '1965009', '1967001', '1973000', '1977004', '1979001', '1980003', '1981004', '1989002', '2004005', '2012002', '2024009', '2028007', '2032001', '2036003', '2040007', '2041006', '2043009', '2055003', '2058001', '2061000', '2065009', '2066005', '2070002', '2073000', '2087000', '2089002', '2091005', '2094002', '2102007', '2107001', '2109003', '2114004', '2116002', '2120003', '2121004', '2128005', '2129002', '2132004', '2134003', '2136001', '2138000', '2145000', '2149006', '2158004', '2167004', '2169001', '2170000', '2176006', '2177002', '2186007', '2198002', '2202000', '2204004', '2213002', '2216005', '2217001', '2219003', '2224000', '2228002', '2229005', '2231001', '2237002', '2239004', '2241003', '2243000', '2245007', '2251002', '2256007', '2261009', '2268003', '2284002', '2295008', '2296009', '2301009', '2303007', '2304001', '2307008', '2308003', '2312009', '2314005', '2326000', '2339001', '2341000', '2351004', '2355008', '2359002', '2365002', '2366001', '2367005', '2374000', '2385003', '2388001', '2390000', '2391001', '2396006', '2398007', '2403008', '2415007', '2418009', '2419001', '2420007', '2432006', '2435008', '2437000', '2438005', '2439002', '2443003', '2452007', '2463005', '2469009', '2471009', '2472002', '2473007', '2477008', '2492009', '2495006', '2496007', '2506003', '2513003', '2518007', '2521009', '2523007', '2526004', '2528003', '2532009', '2534005', '2538008', '2541004', '2554006', '2556008', '2560006', '2562003', '2576002', '2581006', '2582004', '2583009', '2584003', '2585002', '2589008', '2591000', '2593002', '2602008', '2606006', '2615004', '2618002', '2622007', '2624008', '2625009', '2630008', '2634004', '2638001', '2640006', '2651006', '2655002', '2657005', '2663001', '2665008', '2683000', '2689001', '2694001', '2704003', '2707005', '2713001', '2724004', '2725003', '2733002', '2736005', '2740001', '2749000', '2751001', '2761008', '2764000', '2770006', '2772003', '2775001', '2776000', '2782002', '2783007', '2786004', '2790002', '2805007', '2806008', '2807004', '2808009', '2815001', '2816000', '2818004', '2819007', '2825006', '2828008', '2829000', '2835000', '2836004', '2838003', '2850009', '2853006', '2856003', '2858002', '2884008', '2893009', '2897005', '2899008', '2901004', '2902006', '2904007', '2910007', '2912004', '2917005', '2918000', '2919008', '2929001', '2935001', '2946003', '2951009', '2955000', '2965006', '2967003', '2973002', '2978006', '2981001', '2989004', '2990008', '2992000', '2994004', '2999009', '3002002', '3004001', '3006004', '3009006', '3013004', '3014005', '3018008', '3019000', '3021005', '3023008', '3032005', '3033000', '3038009', '3044008', '3053001', '3059002', '3067005', '3071008', '3072001', '3073006', '3084004', '3089009', '3094009', '3095005', '3097002', '3098007', '3109008', '3110003', '3119002', '3129009', '3135009', '3140001', '3144005', '3158007', '3160009', '3163006', '3168002', '3185000', '3199001', '3200003', '3208005', '3214003', '3217005', '3218000', '3219008', '3228009', '3229001', '3230006', '3238004', '3239007', '3253007', '3254001', '3259006', '3261002', '3263004', '3272007', '3274008', '3275009', '3276005', '3277001', '3282008', '3283003', '3286006', '3289004', '3291007', '3298001', '3303004', '3304005', '3305006', '3308008', '3310005', '3321001', '3323003', '3327002', '3331008', '3344003', '3345002', '3355003', '3358001', '3368006', '3376008', '3381004', '3387000', '3391005', '3398004', '3415004', '3419005', '3421000', '3424008', '3426005', '3427001', '3434004', '3439009', '3441005', '3446000', '3449007', '3456001', '3458000', '3461004', '3464007', '3468005', '3469002', '3472009', '3474005', '3480002', '3482005', '3483000', '3487004', '3500002', '3502005', '3503000', '3506008', '3507004', '3511005', '3514002', '3519007', '3528008', '3529000', '3530005', '3531009', '3533007', '3539006', '3542000', '3544004', '3545003', '3548001', '3549009', '3558002', '3560000', '3570003', '3571004', '3577000', '3585009', '3586005', '3589003', '3590007', '3591006', '3598000', '3611003', '3633001', '3634007', '3639002', '3640000', '3641001', '3642008', '3644009', '3649004', '3650004', '3652007', '3657001', '3662000', '3677008', '3680009', '3681008', '3696007', '3699000', '3703002', '3704008', '3705009', '3716002', '3720003', '3723001', '3733009', '3738000', '3744001', '3747008', '3750006', '3751005', '3752003', '3754002', '3755001', '3756000', '3759007', '3760002', '3762005', '3763000', '3783004', '3797007', '3798002', '3815005', '3820005', '3827008', '3830001', '3841004', '3845008', '3855007', '3885002', '3886001', '3899003', '3900008', '3902000', '3903005', '3908001', '3909009', '3913002', '3914008', '3928002', '3939004', '3944006', '3947004', '3950001', '3951002', '3972004', '3975002', '3978000', '3987009', '3993001', '3999002', '4003003', '4006006', '4009004', '4016003', '4017007', '4022007', '4026005', '4030008', '4038001', '4039009', '4040006', '4041005', '4046000', '4062006', '4063001', '4069002', '4070001', '4075006', '4082005', '4088009', '4089001', '4103001', '4106009', '4107000', '4113009', '4120002', '4124006', '4127004', '4129001', '4135001', '4136000', '4142001', '4160001', '4168008', '4170004', '4174008', '4175009', '4178006', '4181001', '4183003', '4184009', '4195003', '4197006', '4199009', '4208000', '4210003', '4223005', '4224004', '4225003', '4229009', '4232007', '4237001', '4240001', '4241002', '4242009', '4248008', '4249000', '4260009', '4262001', '4264000', '4269005', '4273008', '4275001', '4278004', '4283007', '4287008', '4294006', '4300009', '4301008', '4306003', '4307007', '4313003', '4316006', '4320005', '4324001', '4325000', '4338008', '4340003', '4349002', '4354006', '4356008', '4359001', '4364002', '4367009', '4373005', '4374004', '4381006', '4386001', '4390004', '4397001', '4399003', '4403007', '4406004', '4409006', '4410001', '4412009', '4414005', '4416007', '4418008', '4426000', '4434006', '4439001', '4441000', '4445009', '4448006', '4451004', '4461006', '4463009', '4464003', '4465002', '4468000', '4470009', '4473006', '4477007', '4478002', '4481007', '4483005', '4490000', '4494009', '4495005', '4499004', '4501007', '4506002', '4510004', '4512007', '4519003', '4522001', '4523006', '4526003', '4528002', '4529005', '4530000', '4547004', '4550001', '4554005', '4556007', '4557003', '4559000', '4565000', '4568003', '4575002', '4576001', '4586000', '4592006', '4598005', '4602007', '4619009', '4633009', '4637005', '4639008', '4641009', '4645000', '4646004', '4654002', '4659007', '4661003', '4665007', '4667004', '4669001', '4673003', '4676006', '4688008', '160245001']}, 'type'=>'CodeableConcept', 'path'=>'MedicationStatement.reasonCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/condition-code'}},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport'], 'type'=>'Reference', 'path'=>'MedicationStatement.reasonReference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'type'=>'Annotation', 'path'=>'MedicationStatement.note', 'min'=>0, 'max'=>Float::INFINITY},
        'dosage' => {'type'=>'Dosage', 'path'=>'MedicationStatement.dosage', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                        # 0-1 id
      attr_accessor :meta                      # 0-1 Meta
      attr_accessor :implicitRules             # 0-1 uri
      attr_accessor :language                  # 0-1 code
      attr_accessor :text                      # 0-1 Narrative
      attr_accessor :contained                 # 0-* [ Resource ]
      attr_accessor :extension                 # 0-* [ Extension ]
      attr_accessor :modifierExtension         # 0-* [ Extension ]
      attr_accessor :identifier                # 0-* [ Identifier ]
      attr_accessor :basedOn                   # 0-* [ Reference(MedicationRequest|CarePlan|ServiceRequest) ]
      attr_accessor :partOf                    # 0-* [ Reference(MedicationAdministration|MedicationDispense|MedicationStatement|Procedure|Observation) ]
      attr_accessor :status                    # 1-1 code
      attr_accessor :statusReason              # 0-* [ CodeableConcept ]
      attr_accessor :category                  # 0-1 CodeableConcept
      attr_accessor :medicationCodeableConcept # 1-1 CodeableConcept
      attr_accessor :medicationReference       # 1-1 Reference(Medication)
      attr_accessor :subject                   # 1-1 Reference(Patient|Group)
      attr_accessor :context                   # 0-1 Reference(Encounter|EpisodeOfCare)
      attr_accessor :effectiveDateTime         # 0-1 dateTime
      attr_accessor :effectivePeriod           # 0-1 Period
      attr_accessor :dateAsserted              # 0-1 dateTime
      attr_accessor :informationSource         # 0-1 Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Organization)
      attr_accessor :derivedFrom               # 0-* [ Reference(Resource) ]
      attr_accessor :reasonCode                # 0-* [ CodeableConcept ]
      attr_accessor :reasonReference           # 0-* [ Reference(Condition|Observation|DiagnosticReport) ]
      attr_accessor :note                      # 0-* [ Annotation ]
      attr_accessor :dosage                    # 0-* [ Dosage ]

      def resourceType
        'MedicationStatement'
      end
    end
  end
end