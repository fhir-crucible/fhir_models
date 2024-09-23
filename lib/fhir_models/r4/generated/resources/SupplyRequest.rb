module FHIR
  module R4
    class SupplyRequest < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      MULTIPLE_TYPES = {
        'item' => ['CodeableConcept', 'Reference'],
        'occurrence' => ['dateTime', 'Period', 'Timing']
      }
      SEARCH_PARAMS = ['category', 'date', 'identifier', 'requester', 'status', 'subject', 'supplier']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'SupplyRequest.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'SupplyRequest._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SupplyRequest.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SupplyRequest.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'SupplyRequest._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SupplyRequest.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'SupplyRequest._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'SupplyRequest.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SupplyRequest.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SupplyRequest.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SupplyRequest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'SupplyRequest.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/supplyrequest-status'=>['draft', 'active', 'suspended', 'cancelled', 'completed', 'entered-in-error', 'unknown']}, 'type'=>'code', 'path'=>'SupplyRequest.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/supplyrequest-status'}},
        '_status' => {'type'=>'Element', 'path'=>'SupplyRequest._status', 'min'=>0, 'max'=>1},
        'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/supply-kind'=>['central', 'nonstock']}, 'type'=>'CodeableConcept', 'path'=>'SupplyRequest.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/supplyrequest-kind'}},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'type'=>'code', 'path'=>'SupplyRequest.priority', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        '_priority' => {'type'=>'Element', 'path'=>'SupplyRequest._priority', 'min'=>0, 'max'=>1},
        'itemCodeableConcept' => {'valid_codes'=>{'http://snomed.info/sct'=>['102002', '120006', '125001', '126000', '130002', '131003', '159002', '164003', '178002', '186002', '187006', '200001', '217008', '231008', '238002', '261000', '296000', '322006', '327000', '329002', '336001', '340005', '363000', '370000', '371001', '377002', '392001', '395004', '412004', '424006', '425007', '432003', '438004', '462009', '472007', '476005', '498001', '501001', '505005', '506006', '515004', '519005', '521000', '529003', '538001', '566009', '576007', '578008', '584006', '585007', '591009', '593007', '594001', '597008', '604000', '611001', '620005', '648005', '662003', '668004', '683009', '686001', '693002', '698006', '699003', '704006', '732002', '735000', '747006', '773001', '785009', '804003', '819002', '850000', '859004', '860009', '873008', '876000', '877009', '889006', '896008', '905001', '923009', '925002', '963005', '974001', '979006', '993004', '1002007', '1010008', '1018001', '1025008', '1047008', '1050006', '1057009', '1065007', '1080001', '1091008', '1097007', '1105007', '1113008', '1137008', '1149009', '1160000', '1166006', '1169004', '1171004', '1185009', '1189003', '1190007', '1219001', '1223009', '1244009', '1248007', '1269009', '1272002', '1273007', '1313002', '1319003', '1320009', '1325004', '1331001', '1334009', '1336006', '1341003', '1346008', '1355006', '1368003', '1371006', '1373009', '1381005', '1394007', '1396009', '1405004', '1408002', '1416006', '1450002', '1466000', '1471007', '1472000', '1476002', '1477006', '1496005', '1506001', '1517000', '1530004', '1535009', '1536005', '1540001', '1545006', '1557002', '1565004', '1575001', '1603001', '1607000', '1609002', '1634002', '1649005', '1656004', '1660001', '1668008', '1672007', '1673002', '1675009', '1676005', '1681001', '1696002', '1701009', '1710001', '1726000', '1727009', '1740004', '1764003', '1768000', '1786002', '1793003', '1795005', '1798007', '1799004', '1823002', '1827001', '1886008', '1904005', '1914001', '1916004', '1940007', '1944003', '1956002', '1971003', '1975007', '1978009', '1985008', '1991005', '2000001', '2006007', '2008008', '2009000', '2017008', '2027002', '2029004', '2038002', '2039005', '2050008', '2064008', '2082006', '2085008', '2088005', '2096000', '2100004', '2101000', '2125008', '2130007', '2141009', '2147008', '2151005', '2154002', '2159007', '2163000', '2168009', '2179004', '2189000', '2194000', '2195004', '2197007', '2201007', '2208001', '2212007', '2215009', '2240002', '2249001', '2254005', '2260005', '2262002', '2264001', '2309006', '2311002', '2329007', '2331003', '2338009', '2343002', '2346005', '2354007', '2358005', '2369008', '2370009', '2376003', '2384004', '2404002', '2405001', '2414006', '2430003', '2431004', '2441001', '2444009', '2450004', '2462000', '2466002', '2500009', '2509005', '2516006', '2522002', '2529006', '2537003', '2568004', '2573005', '2575003', '2595009', '2597001', '2611008', '2637006', '2648004', '2649007', '2660003', '2671002', '2674005', '2676007', '2678008', '2680002', '2698003', '2705002', '2706001', '2719002', '2721007', '2728001', '2753003', '2754009', '2765004', '2778004', '2796008', '2799001', '2823004', '2832002', '2846002', '2869004', '2878005', '2880004', '2883002', '2913009', '2916001', '2925007', '2927004', '2938004', '2942001', '2950005', '2958003', '2964005', '2974008', '2988007', '2991007', '2995003', '3027009', '3031003', '3040004', '3045009', '3052006', '3066001', '3070009', '3087006', '3107005', '3108000', '3131000', '3136005', '3142009', '3145006', '3150000', '3151001', '3155005', '3161008', '3167007', '3187008', '3193000', '3197004', '3209002', '3212004', '3225007', '3232003', '3271000', '3273002', '3300001', '3318003', '3325005', '3339005', '3340007', '3342004', '3346001', '3378009', '3379001', '3392003', '3405005', '3411008', '3437006', '3440006', '3455002', '3463001', '3465008', '3466009', '3492002', '3493007', '3495000', '3501003', '3523004', '3532002', '3555004', '3579002', '3581000', '3587001', '3588006', '3592004', '3597005', '3601005', '3602003', '3610002', '3617004', '3648007', '3655009', '3672002', '3684000', '3689005', '3692009', '3693004', '3702007', '3710008', '3718001', '3726009', '3727000', '3730007', '3737005', '3742002', '3757009', '3771001', '3775005', '3776006', '3792001', '3793006', '3800009', '3807007', '3811001', '3812008', '3816006', '3823007', '3829006', '3834005', '3836007', '3844007', '3848005', '3849002', '3854006', '3874004', '3892007', '3896005', '3897001', '3906002', '3920009', '3930000', '3932008', '3941003', '3945007', '3958008', '3961009', '3976001', '3982003', '3983008', '3990003', '3994007', '4014000', '4024008', '4025009', '4043008', '4047009', '4048004', '4067000', '4076007', '4077003', '4080002', '4091009', '4097008', '4104007', '4105008', '4115002', '4137009', '4153007', '4167003', '4169000', '4177001', '4182008', '4188007', '4200007', '4201006', '4203009', '4207005', '4217000', '4218005', '4231000', '4239003', '4255005', '4289006', '4290002', '4314009', '4334005', '4342006', '4353000', '4355007', '4362003', '4370008', '4393002', '4401009', '4413004', '4422003', '4423008', '4425001', '4435007', '4437004', '4471008', '4479005', '4480008', '4509009', '4518006', '4534009', '4540002', '4546008', '4555006', '4560005', '4561009', '4564001', '4567008', '4582003', '4591004', '4610008', '4616002', '4629002', '4635002', '4643007', '4656000', '4674009', '4681002', '4693006', '4700006', '4706000', '4714006', '4728000', '4731004', '4732006', '4746006', '4761007', '4762000', '4777008', '4780009', '4786003', '4789005', '4793004', '4814001', '4824009', '4825005', '4831008', '4832001', '4833006', '4844003', '4864008', '4872005', '4878009', '4882006', '4889002', '4901003', '4925006', '4933007', '4940008', '4955004', '4962008', '4963003', '4965005', '4968007', '4986005', '5003005', '5004004', '5007006', '5024000', '5031001', '5040002', '5043000', '5045007', '5059000', '5060005', '5061009', '5064001', '5081005', '5086000', '5094007', '5098005', '5109006', '5142007', '5160007', '5163009', '5167005', '5172001', '5179005', '5200001', '5206007', '5220000', '5226006', '5250008', '5252000', '5253005', '5259009', '5289002', '5303002', '5305009', '5307001', '5312000', '5323001', '5330007', '5339008', '5340005', '5392001', '5395004', '5404007', '5405008', '5406009', '5420002', '5439007', '5442001', '5453007', '5471000', '5474008', '5477001', '5483003', '5504009', '5511008', '5513006', '5515004', '5533005', '5537006', '5540006', '5547009', '5548004', '5568005', '5573004', '5589001', '5590005', '5628003', '5629006', '5637003', '5641004', '5647000', '5656008', '5657004', '5659001', '5670008', '5681006', '5691000', '5692007', '5699003', '5700002', '5702005', '5704006', '5705007', '5739006', '5746002', '5757007', '5762008', '5764009', '5767002', '5774007', '5800007', '5813001', '5826002', '5827006', '5829009', '5830004', '5840001', '5858007', '5863006', '5896008', '5899001', '5907009', '5910002', '5915007', '5927005', '5931004', '5932006', '5950004', '5955009', '5977008', '5989005', '5991002', '6021003', '6038004', '6043006', '6044000', '6054001', '6056004', '6068008', '6083003', '6085005', '6088007', '6089004', '6091007', '6107003', '6109000', '6115000', '6135004', '6138002', '6162007', '6170002', '6172005', '6178009', '6179001', '6182006', '6197009', '6237004', '6249003', '6256009', '6257000', '6260007', '6261006', '6263009', '6264003', '6287006', '6291001', '6301006', '6310003', '6314007', '6333002', '6338006', '6356006', '6360009', '6367007', '6386004', '6394006', '6401007', '6409009', '6411000', '6422001', '6451002', '6455006', '6469006', '6478000', '6495008', '6507009', '6513000', '6516008', '6524003', '6529008', '6532006', '6590001', '6592009', '6602005', '6611005', '6612003', '6619007', '6642000', '6644004', '6671004', '6672006', '6699008', '6701008', '6702001', '6709005', '6710000', '6713003', '6717002', '6725000', '6730001', '6741004', '6755007', '6786001', '6790004', '6792007', '6808006', '6809003', '6814004', '6817006', '6826009', '6837005', '6854002', '6865007', '6873003', '6879004', '6881002', '6884005', '6890009', '6896003', '6910009', '6911008', '6916003', '6924008', '6925009', '6927001', '6937006', '6945001', '6952004', '6958000', '6961004', '6970001', '6973004', '6983000', '6992002', '6993007', '6999006', '7008002', '7018007', '7029006', '7030001', '7034005', '7045008', '7047000', '7049002', '7054006', '7056008', '7059001', '7061005', '7070008', '7084003', '7110002', '7120007', '7132006', '7139002', '7146006', '7152007', '7156005', '7158006', '7161007', '7179006', '7191002', '7208009', '7211005', '7237008', '7243005', '7269004', '7271004', '7280004', '7281000', '7284008', '7294003', '7302008', '7318002', '7321000', '7325009', '7327001', '7328006', '7330008', '7337006', '7348004', '7382005', '7401000', '7411007', '7427000', '7434003', '7446004', '7451005', '7460002', '7470000', '7489000', '7503004', '7509000', '7515000', '7537007', '7547005', '7549008', '7588005', '7608003', '7616007', '7648006', '7661006', '7670009', '7675004', '7679005', '7685003', '7696006', '7716001', '7737009', '7738004', '7761002', '7770004', '7774008', '7779003', '7785005', '7790008', '7791007', '7795003', '7801007', '7816005', '7834009', '7846008', '7848009', '7868003', '7879008', '7900007', '7904003', '7909008', '7924004', '7938006', '7945006', '7948008', '7953003', '7957002', '7961008', '7970006', '7974002', '7975001', '7979007', '7983007', '7985000', '7997004', '8000007', '8002004', '8025003', '8029009', '8030004', '8035009', '8048008', '8054009', '8055005', '8105004', '8108002', '8123007', '8132009', '8143001', '8153000', '8156008', '8164002', '8168004', '8179009', '8184003', '8190004', '8202008', '8203003', '8204009', '8222007', '8227001', '8230008', '8237006', '8252004', '8257005', '8261004', '8268005', '8270001', '8275006', '8295000', '8300003', '8310007', '8313009', '8340009', '8342001', '8343006', '8354001', '8355000', '8362009', '8365006', '8368008', '8376005', '8385005', '8397006', '8406008', '8429000', '8450009', '8452001', '8456003', '8460000', '8473001', '8474007', '8484008', '8485009', '8486005', '8487001', '8491006', '8492004', '8498000', '8507001', '8514004', '8520003', '8525008', '8529002', '8534003', '8537005', '8578007', '8591008', '8612007', '8620009', '8631001', '8653004', '8660005', '8687009', '8689007', '8701002', '8705006', '8731008', '8740007', '8761000', '8767001', '8785008', '8786009', '8795001', '8817004', '8818009', '8822004', '8830003', '8836009', '8844009', '8858006', '8865003', '8878003', '8882001', '8886003', '8908003', '8914005', '8919000', '8926000', '8945009', '8953001', '8963009', '8969008', '8977007', '8982000', '8987006', '8991001', '9010006', '9013008', '9021002', '9024005', '9045003', '9052001', '9054000', '9103003', '9110009', '9125009', '9159008', '9172009', '9174005', '9183000', '9189001', '9195000', '9197008', '9205004', '9220005', '9223007', '9234005', '9246009', '9253000', '9270008', '9271007', '156009', '210005', '271003', '287000', '291005', '641004', '678001', '739006', '793009', '882002', '972002', '989005', '994005', '995006', '1058004', '1066008', '1211003', '1333003', '1422002', '1579007', '1766001', '1941006', '1962007', '2248009', '2282003', '2287009', '2468001', '2478003', '2491002', '3024002', '3201004', '3319006', '3385008', '4408003', '4502000', '4632004', '4816004', '4841006', '4909001', '5041003', '5042005', '5159002', '5676002', '5679009', '6012004', '6097006', '6662008', '6806005', '6822006', '6919005', '6972009', '6982005', '7007007', '7402007', '7406005', '7473003', '7704007', '7733008', '7968002', '7971005', '8060009', '8118007', '8170008', '8384009', '8407004', '8434001', '8451008', '8615009', '8643000', '8682003', '9016000', '9017009', '9020001', '9096001', '9129003', '9149007', '9419002', '9458007', '9583005', '9611009', '9883003', '9916002', '10172004', '10244001', '10371004', '10507000', '10533008', '10826000', '10850003', '10906003', '11141007', '11158002', '11358008', '11987000', '12121004', '12150006', '12183004', '12198002', '12247004', '12561005', '12698003', '12953007', '13118005', '13219008', '13268008', '13288007', '13459008', '13764006', '13855007', '13905003', '14026005', '14069002', '14106009', '14108005', '14116001', '14208000', '14288003', '14294006', '14339000', '14364002', '14397001', '14423008', '14519003', '14548009', '14762000', '14789005', '15000008', '15237007', '15340005', '15447007', '15644007', '15869005', '15873008', '15922004', '16056004', '16127002', '16349000', '16417001', '16470007', '16497000', '16524003', '16540000', '16650009', '16916003', '17102003', '17107009', '17207004', '17306006', '17404008', '17472008', '18100009', '18151003', '18153000', '18411005', '18492004', '18666004', '18813000', '19257004', '19328000', '19443004', '19627002', '19762002', '19817005', '19892000', '19902007', '19923001', '19966008', '20032007', '20195009', '20235003', '20273004', '20359006', '20406008', '20428008', '20513005', '20568009', '20613002', '20861007', '20867006', '20873007', '20909006', '20997002', '21079000', '21249000', '21546008', '21735008', '21753002', '21812002', '21870002', '21944004', '22251003', '22283009', '22566001', '22662007', '22674006', '22679001', '22744006', '22852002', '23076004', '23228005', '23366006', '23562009', '23699001', '23785007', '23973005', '24073000', '24110008', '24174009', '24219003', '24230000', '24290003', '24402003', '24439002', '24470005', '24513003', '24561005', '24697008', '24761008', '24767007', '25005004', '25062003', '25139002', '25152007', '25510005', '25632005', '25680008', '25742001', '25851002', '25864001', '25923005', '25937001', '26128008', '26239002', '26334009', '26397000', '26412008', '26579007', '26719000', '26744008', '26882005', '27036008', '27042007', '27065002', '27091001', '27126002', '27229001', '27606000', '27676004', '27785006', '27812008', '27976001', '27991004', '28026003', '28422005', '28519005', '29292008', '29319002', '29339003', '29396008', '29873003', '30002008', '30012001', '30070001', '30115002', '30176005', '30234008', '30610008', '30661003', '30784000', '30926007', '30929000', '30968007', '31030004', '31031000', '31174004', '31209004', '31493009', '31791005', '31878003', '32033000', '32130004', '32356002', '32472009', '32476007', '32504006', '32634007', '32667006', '32711007', '32712000', '32871007', '33194000', '33336008', '33352006', '33388001', '33482001', '33686008', '33690005', '33802005', '33894003', '33918000', '34160005', '34164001', '34188004', '34234003', '34263000', '34362008', '34396001', '34759008', '34942006', '35018000', '35398009', '35593004', '35870000', '36011000', '36030000', '36365007', '36370000', '36531007', '36645008', '36761001', '36965003', '36977008', '37189001', '37270008', '37284003', '37299003', '37311003', '37347002', '37360008', '37503007', '37759000', '37823000', '37874008', '37953008', '38126007', '38141007', '38277008', '38472000', '38485002', '38548008', '38806006', '38862006', '38871002', '38988005', '39374005', '39590006', '39661006', '39690000', '39752002', '39768008', '39790008', '39802000', '39821008', '39849001', '39869006', '40188005', '40353003', '40388003', '40519001', '41157002', '41323003', '41338002', '41430008', '41456001', '41525006', '41684000', '42119000', '42152006', '42305009', '42380001', '42451009', '42716000', '42882002', '42974001', '43001000', '43192004', '43252007', '43423007', '43725001', '43734006', '43770009', '43983001', '44056008', '44396004', '44468009', '44492001', '44613004', '44668000', '44738004', '44806002', '44845007', '44907005', '44959004', '45633005', '45901004', '45984009', '46074001', '46160005', '46181005', '46265007', '46274009', '46299005', '46364009', '46440007', '46542001', '46625003', '46666003', '46880008', '46949002', '47006006', '47162009', '47326004', '47424002', '47528002', '47731004', '47734007', '47776004', '47793004', '47942000', '48066006', '48096001', '48240003', '48246009', '48295009', '48306000', '48473008', '48545009', '48822005', '48990009', '49062001', '49122002', '49133004', '49448001', '49623006', '49890001', '49980008', '50121007', '50268008', '50457005', '50483000', '50488009', '50833004', '50851003', '51016001', '51086006', '51287006', '51324004', '51685009', '51791000', '51832004', '51883004', '52065008', '52124006', '52161002', '52291003', '52325000', '52387005', '52495005', '52520009', '52537002', '52624007', '52773007', '52809000', '52893008', '53167006', '53177008', '53217009', '53350007', '53535004', '53639001', '53671008', '53680008', '53811000', '53977009', '53996008', '54234007', '54638004', '54752006', '54807002', '54953005', '55091003', '55121009', '55206006', '55216003', '55263001', '55287004', '55337009', '55567004', '55658008', '55674003', '55684002', '55964003', '55980008', '55986002', '56144002', '56353002', '56547001', '56667001', '56896002', '56961003', '57010004', '57118008', '57134006', '57295001', '57368009', '57395004', '57512001', '57730005', '58068001', '58153004', '58222006', '58253008', '58514003', '58824002', '58878002', '58938008', '59102007', '59127000', '59153008', '59160002', '59181002', '59402003', '59432006', '59647009', '59711004', '59746007', '59772003', '59782002', '59833007', '60054005', '60110001', '60150003', '60161006', '60185003', '60311007', '60320003', '60638008', '60773001', '60806001', '60957001', '60977008', '61119009', '61284002', '61330002', '61433001', '61512008', '61835000', '61968008', '61979003', '62193008', '62336005', '62495008', '62614002', '62980002', '63112008', '63173005', '63289001', '63336000', '63496001', '63548003', '63562005', '63619003', '63653004', '63797009', '63830003', '63839002', '63958005', '63995005', '64174005', '64223007', '64255007', '64565002', '64571008', '64867003', '64883003', '64973003', '64989000', '65053001', '65105002', '65268008', '65473004', '65493007', '65577000', '65818007', '65893002', '66113009', '66222000', '66373005', '66415006', '66435007', '66494009', '66567008', '67270000', '67387001', '67604003', '67651001', '67670006', '67777003', '67829007', '67920005', '67966000', '68080007', '68181008', '68183006', '68276009', '68325009', '68597009', '68685003', '68842005', '69670004', '69805005', '69861004', '69922008', '70080007', '70224005', '70300000', '70303003', '70453008', '70665002', '70793005', '70872004', '71384000', '71483007', '71545009', '71601002', '71667001', '71783008', '71948003', '72070000', '72125006', '72188006', '72259003', '72302000', '72506001', '72742007', '73027007', '73378007', '73534004', '73562006', '73571002', '73618007', '73878004', '73957001', '73985004', '74094004', '74108008', '74300007', '74444006', '74453004', '74566002', '74695002', '74812000', '74884005', '75075000', '75187009', '75192006', '75751006', '75780002', '75926004', '75963008', '75988000', '76091005', '76123001', '76428000', '76433001', '76664007', '76705002', '76757002', '76825006', '76937009', '77081009', '77264007', '77301004', '77444004', '77508006', '77541009', '77720000', '77755003', '77777004', '78279003', '78412001', '78489001', '78498003', '78641001', '78886001', '79051006', '79068005', '79218005', '79287008', '79401009', '79406004', '79438009', '79481007', '79593001', '79618001', '79641009', '79811009', '79834000', '79952001', '80278003', '80404000', '80519002', '80617005', '80664005', '80840006', '80853009', '80919006', '80950008', '81293006', '81317009', '81320001', '81381000', '81427002', '81826000', '81892008', '82192009', '82379000', '82449006', '82652006', '82657000', '82830000', '82879008', '82924004', '83059008', '83315005', '83320005', '83369007', '83517001', '83887000', '83903000', '83930005', '84023008', '84151001', '84330009', '84444002', '84546002', '84599008', '84610002', '84683006', '84756000', '85106006', '85329008', '85455005', '85590000', '85684007', '85935002', '86056006', '86118007', '86122002', '86174004', '86184003', '86407004', '86453006', '86572008', '86768006', '86816008', '86967005', '87088005', '87140005', '87405001', '87710003', '87717000', '87761008', '87851008', '87985005', '88063004', '88168006', '88208003', '88765001', '88959008', '89149003', '89236003', '89509004', '90003000', '90035000', '90082007', '90134004', '90277006', '90335008', '90412006', '90504001', '90748009', '90913005', '90948003', '90963000', '91032009', '91294003', '91318002', '91535004', '91537007', '91556002', '91582006', '91656009', '102303004', '102304005', '102305006', '102306007', '102307003', '102308008', '102309000', '102310005', '102311009', '102312002', '102313007', '102314001', '102315000', '102316004', '102317008', '102318003', '102319006', '102320000', '102321001', '102322008', '102323003', '102324009', '102325005', '102326006', '102327002', '102328007', '102329004', '102330009', '102331008', '102332001', '102333006', '102334000', '102335004', '102336003', '102337007', '102338002', '102339005', '102340007', '102341006', '102342004', '102344003', '102345002', '102346001', '102347005', '102348000', '102349008', '102350008', '102351007', '102352000', '102353005', '102354004', '102355003', '102356002', '102357006', '102358001', '102359009', '102360004', '102361000', '102362007', '102363002', '102364008', '102365009', '102366005', '102367001', '102368006', '102384007', '102385008', '102386009', '102387000', '102388005', '102389002', '102390006', '102391005', '102392003', '102402008', '102403003', '105784003', '105785002', '105787005', '105788000', '105789008', '105790004', '105791000', '105792007', '105793002', '105794008', '105797001', '105799003', '105800004', '105801000', '105802007', '105803002', '105809003', '108874005', '109184000', '109226007', '109227003', '109228008', '111041008', '111042001', '111043006', '111044000', '111045004', '111046003', '111047007', '111048002', '111050005', '111051009', '111052002', '111053007', '111054001', '111060001', '111062009', '115961006', '115962004', '116146000', '116204000', '116205004', '116206003', '116250002', '116251003', '118294000', '118295004', '118296003', '118297007', '118298002', '118299005', '118301003', '118302005', '118303000', '118304006', '118305007', '118306008', '118307004', '118308009', '118309001', '118310006', '118311005', '118312003', '118313008', '118314002', '118315001', '118316000', '118317009', '118318004', '118319007', '118320001', '118321002', '118322009', '118323004', '118324005', '118325006', '118326007', '118327003', '118328008', '118329000', '118330005', '118331009', '118332002', '118333007', '118334001', '118335000', '118336004', '118337008', '118338003', '118342000', '118343005', '118346002', '118347006', '118348001', '118349009', '118350009', '118351008', '118354000', '118355004', '118356003', '118357007', '118371004', '118372006', '118373001', '118374007', '118375008', '118376009', '118377000', '118378005', '118379002', '118380004', '118381000', '118382007', '118383002', '118384008', '118385009', '118386005', '118387001', '118388006', '118389003', '118390007', '118391006', '118392004', '118393009', '118394003', '118396001', '118397005', '118398000', '118399008', '118400001', '118401002']}, 'type'=>'CodeableConcept', 'path'=>'SupplyRequest.item[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/supply-item'}},
        'itemReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'SupplyRequest.item[x]', 'min'=>1, 'max'=>1},
        'quantity' => {'type'=>'Quantity', 'path'=>'SupplyRequest.quantity', 'min'=>1, 'max'=>1},
        'parameter' => {'type'=>'SupplyRequest::Parameter', 'path'=>'SupplyRequest.parameter', 'min'=>0, 'max'=>Float::INFINITY},
        'occurrenceDateTime' => {'type'=>'dateTime', 'path'=>'SupplyRequest.occurrence[x]', 'min'=>0, 'max'=>1},
        '_occurrenceDateTime' => {'type'=>'Element', 'path'=>'SupplyRequest.occurrence[x]', 'min'=>0, 'max'=>1},
        'occurrencePeriod' => {'type'=>'Period', 'path'=>'SupplyRequest.occurrence[x]', 'min'=>0, 'max'=>1},
        'occurrenceTiming' => {'type'=>'Timing', 'path'=>'SupplyRequest.occurrence[x]', 'min'=>0, 'max'=>1},
        'authoredOn' => {'type'=>'dateTime', 'path'=>'SupplyRequest.authoredOn', 'min'=>0, 'max'=>1},
        '_authoredOn' => {'type'=>'Element', 'path'=>'SupplyRequest._authoredOn', 'min'=>0, 'max'=>1},
        'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'SupplyRequest.requester', 'min'=>0, 'max'=>1},
        'supplier' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'type'=>'Reference', 'path'=>'SupplyRequest.supplier', 'min'=>0, 'max'=>Float::INFINITY},
        'reasonCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/supplyrequest-reason'=>['patient-care', 'ward-stock']}, 'type'=>'CodeableConcept', 'path'=>'SupplyRequest.reasonCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/supplyrequest-reason'}},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'SupplyRequest.reasonReference', 'min'=>0, 'max'=>Float::INFINITY},
        'deliverFrom' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'SupplyRequest.deliverFrom', 'min'=>0, 'max'=>1},
        'deliverTo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'SupplyRequest.deliverTo', 'min'=>0, 'max'=>1}
      }

      class Parameter < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4'
        end

        def module_version
          FHIR::R4
        end

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'Quantity', 'Range', 'boolean']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Parameter.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Parameter._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Parameter.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Parameter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'CodeableConcept', 'path'=>'Parameter.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueRange' => {'type'=>'Range', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueBoolean' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :_id                  # 0-1 Element
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :code                 # 0-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 0-1 CodeableConcept
        attr_accessor :valueQuantity        # 0-1 Quantity
        attr_accessor :valueRange           # 0-1 Range
        attr_accessor :valueBoolean         # 0-1 boolean
        attr_accessor :_valueBoolean        # 0-1 Element
      end

      attr_accessor :id                  # 0-1 id
      attr_accessor :_id                 # 0-1 Element
      attr_accessor :meta                # 0-1 Meta
      attr_accessor :implicitRules       # 0-1 uri
      attr_accessor :_implicitRules      # 0-1 Element
      attr_accessor :language            # 0-1 code
      attr_accessor :_language           # 0-1 Element
      attr_accessor :text                # 0-1 Narrative
      attr_accessor :contained           # 0-* [ Resource ]
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :identifier          # 0-* [ Identifier ]
      attr_accessor :status              # 0-1 code
      attr_accessor :_status             # 0-1 Element
      attr_accessor :category            # 0-1 CodeableConcept
      attr_accessor :priority            # 0-1 code
      attr_accessor :_priority           # 0-1 Element
      attr_accessor :itemCodeableConcept # 1-1 CodeableConcept
      attr_accessor :itemReference       # 1-1 Reference(Medication|Substance|Device)
      attr_accessor :quantity            # 1-1 Quantity
      attr_accessor :parameter           # 0-* [ SupplyRequest::Parameter ]
      attr_accessor :occurrenceDateTime  # 0-1 dateTime
      attr_accessor :_occurrenceDateTime # 0-1 Element
      attr_accessor :occurrencePeriod    # 0-1 Period
      attr_accessor :occurrenceTiming    # 0-1 Timing
      attr_accessor :authoredOn          # 0-1 dateTime
      attr_accessor :_authoredOn         # 0-1 Element
      attr_accessor :requester           # 0-1 Reference(Practitioner|PractitionerRole|Organization|Patient|RelatedPerson|Device)
      attr_accessor :supplier            # 0-* [ Reference(Organization|HealthcareService) ]
      attr_accessor :reasonCode          # 0-* [ CodeableConcept ]
      attr_accessor :reasonReference     # 0-* [ Reference(Condition|Observation|DiagnosticReport|DocumentReference) ]
      attr_accessor :deliverFrom         # 0-1 Reference(Organization|Location)
      attr_accessor :deliverTo           # 0-1 Reference(Organization|Location|Patient)

      def resourceType
        'SupplyRequest'
      end
    end
  end
  SupplyRequest = FHIR::R4::SupplyRequest
end