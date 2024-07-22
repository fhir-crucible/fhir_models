module FHIR
  module R4
    class BodyStructure < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['identifier', 'location', 'morphology', 'patient']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'BodyStructure.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'BodyStructure.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'BodyStructure.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'BodyStructure.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'BodyStructure.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'BodyStructure.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'BodyStructure.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'BodyStructure.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'BodyStructure.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'type'=>'boolean', 'path'=>'BodyStructure.active', 'min'=>0, 'max'=>1},
        'morphology' => {'valid_codes'=>{'http://snomed.info/sct'=>['145009', '161006', '182000', '232001', '255003', '259009', '328005', '339008', '354002', '367004', '394000', '419008', '420002', '487002', '511008', '575006', '605004', '738003', '803009', '810003', '835009', '856006', '900006', '915007', '985004', '988002', '999000', '1040005', '1129000', '1138003', '1188006', '1338007', '1443001', '1454006', '1513001', '1522000', '1561008', '1586004', '1623000', '1736008', '1752006', '1791001', '1806006', '1929004', '1996000', '2014001', '2019006', '2026006', '2052000', '2092003', '2097009', '2099007', '2122006', '2142002', '2218006', '2221008', '2227007', '2232008', '2289007', '2348006', '2412005', '2424003', '2464004', '2483006', '2559001', '2570008', '2710003', '2734008', '2735009', '2763006', '2784001', '2881000', '2952002', '2953007', '2954001', '2962009', '2985005', '3102004', '3139003', '3172003', '3313007', '3380003', '3404009', '3416003', '3612005', '3645005', '3679006', '3821009', '3833004', '3839000', '3875003', '3898006', '4000000', '4023002', '4079000', '4118000', '4125007', '4147007', '4196002', '4205002', '4230004', '4305004', '4392007', '4476003', '4484004', '4513002', '4532008', '4538007', '4541003', '4553004', '4584002', '4590003', '4618001', '4631006', '4684005', '4686007', '4720007', '4797003', '4830009', '4857006', '4876008', '4916000', '4919007', '4935000', '4947006', '4950009', '4977000', '5008001', '5014008', '5052009', '5178002', '5183005', '5188001', '5237007', '5242004', '5244003', '5257006', '5314004', '5356000', '5399005', '5409002', '5468008', '5480000', '5600009', '5640003', '5658009', '5688000', '5734001', '5755004', '5770003', '5804003', '5843004', '5849000', '5862001', '5901005', '5909007', '5958006', '5960008', '5974001', '5978003', '6078006', '6081001', '6120000', '6151007', '6219000', '6223008', '6250003', '6266001', '6320008', '6379007', '6381009', '6406002', '6437002', '6492006', '6574001', '6579006', '6582001', '6609001', '6641007', '6660000', '6780007', '6842002', '6855001', '6920004', '7003006', '7010000', '7055007', '7078001', '7094008', '7244004', '7300000', '7313006', '7372009', '7429002', '7643002', '7744000', '7796002', '7828002', '7841003', '7894007', '7905002', '7906001', '7939003', '8005002', '8070006', '8097004', '8120005', '8129006', '8145008', '8210009', '8241005', '8276007', '8309002', '8360001', '8566008', '8573003', '8664001', '8723003', '8734000', '8804002', '8819001', '8833001', '8855009', '8934006', '8978002', '9001003', '9088006', '9098000', '9138001', '9155002', '9187004', '9196004', '9235006', '9240003', '9266000', '9287005', '9294008', '9324003', '9395006', '9435009', '9436005', '9499001', '9546005', '9550003', '9618003', '9656002', '9671003', '9688005', '9729005', '9751002', '9767008', '9795008', '9801004', '9805008', '9816001', '9831005', '9903002', '9971001', '10060008', '10069009', '10115009', '10122001', '10146008', '10219009', '10288008', '10291008', '10376009', '10403004', '10438002', '10445002', '10505008', '10636005', '10637001', '10639003', '10690002', '10705005', '10873006', '11063000', '11071001', '11073003', '11080001', '11099005', '11108009', '11117009', '11182007', '11211003', '11224003', '11284000', '11467009', '11506001', '11514007', '11528001', '11556006', '11585000', '11607000', '11639007', '11650005', '11671000', '11704001', '11793003', '11854003', '11858000', '11884006', '11889001', '11904005', '11908008', '12060004', '12143007', '12167004', '12169001', '12170000', '12191008', '12205003', '12222001', '12302002', '12323008', '12354007', '12393003', '12400006', '12402003', '12404002', '12478003', '12535006', '12540003', '12560006', '12582004', '12583009', '12622007', '12690005', '12747003', '12794006', '12835000', '12856003', '12933008', '12943006', '12944000', '12973002', '13018008', '13062004', '13071008', '13129009', '13136005', '13238004', '13321001', '13331008', '13467000', '13485007', '13583002', '13593009', '13599008', '13705009', '13713005', '13810000', '13814009', '13875003', '13901007', '13908001', '13924000', '14093007', '14156004', '14166007', '14212006', '14217000', '14269005', '14317002', '14350002', '14391000', '14442007', '14494009', '14537002', '14696003', '14737000', '14797003', '14799000', '14847005', '14889002', '14912003', '14962008', '14990007', '15074003', '15112009', '15176003', '15304008', '15418000', '15486006', '15498001', '15503003', '15519005', '15524008', '15556001', '15588009', '15619004', '15674004', '15690004', '15702005', '15897004', '15904002', '15937000', '15949004', '15960008', '15967006', '15988002', '16080000', '16090008', '16104005', '16107003', '16163002', '16189002', '16190006', '16216007', '16255008', '16277007', '16301006', '16479008', '16483008', '16566002', '16578003', '16640008', '16740003', '16741004', '16759001', '16822006', '16893006', '16974005', '16980002', '17015005', '17201003', '17264009', '17289003', '17302008', '17307002', '17351006', '17372009', '17474009', '17569003', '17665002', '17672001', '17684004', '17734002', '17781001', '17788007', '17815009', '17930004', '17941002', '17968002', '18016009', '18021007', '18048008', '18064000', '18072003', '18105004', '18115005', '18126004', '18130001', '18174004', '18189008', '18203003', '18295000', '18334002', '18348002', '18365006', '18450009', '18465005', '18498000', '18568009', '18588008', '18655006', '18680006', '18695008', '18727002', '18765009', '18799007', '18802003', '18854008', '18861007', '18915006', '18958005', '18977007', '19010006', '19071004', '19104009', '19128006', '19130008', '19134004', '19137006', '19227008', '19316008', '19329008', '19340000', '19365003', '19380009', '19436005', '19438006', '19453003', '19467007', '19504001', '19561006', '19571008', '19607003', '19614001', '19633006', '19643009', '19651007', '19665009', '19668006', '19669003', '19672005', '19685008', '19756007', '19795008', '19836000', '19897006', '19906005', '19909003', '19921004', '19928005', '19929002', '19940005', '19952003', '19988008', '20012006', '20092005', '20108002', '20131002', '20175003', '20182004', '20194008', '20256001', '20351009', '20365006', '20369000', '20380000', '20456003', '20462008', '20464009', '20473001', '20589000', '20601007', '20667008', '20700001', '20717008', '20741006', '20774006', '20776008', '20810002', '20829008', '20893004', '20894005', '20946005', '20955008', '20985003', '21008007', '21046000', '21103001', '21109002', '21119008', '21135001', '21139007', '21181001', '21326004', '21386001', '21390004', '21396005', '21444008', '21453001', '21465002', '21589007', '21708004', '21718009', '21720007', '21758006', '21912003', '21925006', '21930005', '21947006', '21964009', '21968007', '21971004', '21980004', '21997005', '22024005', '22036004', '22039006', '22084008', '22116003', '22197008', '22217002', '22222002', '22257004', '22287005', '22303008', '22331004', '22333001', '22341001', '22427006', '22483007', '22517003', '22524002', '22640007', '22641006', '22687000', '22694002', '22725004', '22858003', '22984005', '22995004', '23041001', '23048007', '23108001', '23109009', '23255001', '23280001', '23286007', '23290009', '23305007', '23345003', '23382007', '23444003', '23482006', '23521003', '23539007', '23583003', '23596002', '23604003', '23620008', '23730008', '23756001', '23839001', '23844008', '23870009', '23990004', '24007003', '24016004', '24017008', '24018003', '24045002', '24072005', '24183004', '24216005', '24244006', '24253004', '24283008', '24327009', '24373006', '24389009', '24398007', '24421006', '24481008', '24482001', '24505004', '24531002', '24551003', '24582004', '24604009', '24645001', '24653009', '24726002', '24734008', '24762001', '24804006', '24811005', '24815001', '24827003', '24887001', '25006003', '25063008', '25081006', '25088000', '25154008', '25169009', '25190001', '25201003', '25239006', '25283002', '25295002', '25322007', '25324008', '25370001', '25371002', '25393007', '25499005', '25603007', '25624002', '25655008', '25659002', '25672001', '25694009', '25723000', '25733008', '25751009', '25774008', '25840002', '25845007', '25874003', '25889007', '25910003', '25979007', '26019009', '26036001', '26138003', '26209007', '26211003', '26246006', '26269009', '26310004', '26317001', '26325004', '26344006', '26372004', '26396009', '26496005', '26514007', '26545006', '26577009', '26638004', '26696002', '26713004', '26727009', '26735007', '26751004', '26759002', '26810009', '26819005', '26845001', '26860003', '26888009', '26927002', '26996000', '27006004', '27058005', '27078002', '27090000', '27092008', '27159004', '27230006', '27266007', '27313007', '27317008', '27325005', '27329004', '27367001', '27391005', '27461004', '27510006', '27515001', '27551008', '27580004', '27605001', '27721004', '27799005', '27809005', '27849002', '27876002', '27881006', '27890004', '27925004', '27952009', '28047004', '28054005', '28087009', '28126000', '28146005', '28173006', '28208008', '28218003', '28237007', '28307001', '28325008', '28351005', '28543008', '28558000', '28569002', '28655007', '28727003', '28733007', '28781000', '28789003', '28831000', '28836005', '28852008', '28878004', '28899001', '28941001', '28950004', '28953002', '28960008', '29020002', '29144003', '29185008', '29209006', '29370006', '29463007', '29483008', '29696001', '29771007', '29792007', '29856000', '29996004', '30098003', '30156004', '30213001', '30217000', '30285000', '30289006', '30301008', '30321009', '30383009', '30386001', '30419000', '30425001', '30469008', '30494009', '30543000', '30546008', '30566004', '30619009', '30649006', '30651005', '30685006', '30691008', '30695004', '30699005', '30713000', '30727005', '30771009', '30812002', '30867001', '30891005', '30902005', '30924005', '30938003', '30962008', '31040001', '31069005', '31092005', '31098009', '31104000', '31113003', '31131002', '31186001', '31279000', '31296004', '31313009', '31390008', '31396002', '31470003', '31478005', '31511007', '31590009', '31593006', '31653004', '31671006', '31739005', '31765009', '31794002', '31807009', '31830003', '31883006', '31980008', '31986002', '32008003', '32037004', '32048006', '32071008', '32140001', '32224006', '32272007', '32274008', '32280000', '32288007', '32296002', '32322008', '32408007', '32416003', '32434004', '32456001', '32512003', '32525006', '32651000', '32693004', '32776006', '32837003', '32844007', '32884003', '32913002', '32915009', '32968003', '33059009', '33080003', '33125008', '33170000', '33176006', '33178007', '33196003', '33288004', '33359002', '33377007', '33385003', '33387006', '33408004', '33429008', '33475000', '33593002', '33681003', '33851008', '33872006', '33873001', '33889003', '33929001', '33940009', '34058006', '34064004', '34081008', '34087007', '34110004', '34248003', '34277002', '34305007', '34337008', '34344004', '34360000', '34418003', '34419006', '34493008', '34494002', '34550005', '34603009', '34636005', '34717007', '34720004', '34785007', '34807008', '34823008', '34882000', '34941004', '35013009', '35073002', '35232005', '35262004', '35287006', '35327006', '35336005', '35453004', '35506000', '35562000', '35566002', '35601003', '35662008', '35696001', '35701008', '35712008', '35714009', '35718007', '35787005', '35813005', '35828005', '35851005', '35872008', '35917007', '35933005', '35944002', '35992002', '36024000', '36060005', '36087009', '36161006', '36191001', '36195005', '36207003', '36223003', '36279001', '36310008', '36318001', '36373003', '36390009', '36468008', '36475009', '36504009', '36560003', '36639000', '36721002', '36731009', '36741007', '36818005', '36839003', '36850000', '36949004', '37039006', '37058002', '37068007', '37095002', '37138001', '37159008', '37205004', '37206003', '37257004', '37258009', '37266000', '37279009', '37291000']}, 'type'=>'CodeableConcept', 'path'=>'BodyStructure.morphology', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/bodystructure-code'}},
        'location' => {'valid_codes'=>{'http://snomed.info/sct'=>['106004', '107008', '108003', '110001', '111002', '116007', '124002', '149003', '155008', '167005', '202009', '205006', '206007', '221001', '227002', '233006', '235004', '246001', '247005', '251007', '256002', '263002', '266005', '272005', '273000', '283001', '284007', '289002', '301000', '311007', '315003', '318001', '344001', '345000', '356000', '393006', '402006', '405008', '414003', '420002', '422005', '446003', '457008', '461002', '464005', '465006', '471000', '480000', '485005', '528006', '552004', '565008', '582005', '587004', '589001', '595000', '608002', '621009', '635006', '650002', '660006', '661005', '667009', '688000', '691000', '692007', '723004', '774007', '790007', '798000', '808000', '809008', '823005', '830004', '836005', '885000', '895007', '917004', '921006', '947002', '955009', '976004', '996007', '1005009', '1012000', '1015003', '1028005', '1030007', '1063000', '1075005', '1076006', '1086007', '1087003', '1092001', '1099005', '1101003', '1106008', '1110006', '1122009', '1136004', '1159005', '1172006', '1173001', '1174007', '1193009', '1216008', '1231004', '1236009', '1243003', '1246006', '1263005', '1277008', '1307006', '1311000', '1350001', '1353004', '1403006', '1425000', '1439000', '1441004', '1456008', '1467009', '1484003', '1490004', '1502004', '1511004', '1516009', '1527006', '1537001', '1541002', '1562001', '1569005', '1580005', '1581009', '1584001', '1600003', '1605008', '1610007', '1611006', '1617005', '1620002', '1626008', '1627004', '1630006', '1631005', '1650005', '1655000', '1659006', '1684009', '1706004', '1707008', '1711002', '1716007', '1721005', '1729007', '1732005', '1765002', '1780008', '1781007', '1797002', '1818002', '1825009', '1832000', '1840006', '1849007', '1853009', '1874005', '1893007', '1895000', '1902009', '1910005', '1918003', '1927002', '1992003', '1997009', '2010005', '2020000', '2031008', '2033006', '2044003', '2048000', '2049008', '2059009', '2071003', '2076008', '2083001', '2095001', '2123001', '2150006', '2156000', '2160002', '2175005', '2182009', '2192001', '2205003', '2209009', '2236006', '2246008', '2255006', '2285001', '2292006', '2302002', '2305000', '2306004', '2327009', '2330002', '2332005', '2334006', '2349003', '2372001', '2383005', '2389009', '2395005', '2397002', '2400006', '2402003', '2421006', '2433001', '2436009', '2453002', '2454008', '2484000', '2489005', '2499000', '2502001', '2504000', '2510000', '2539000', '2543001', '2550002', '2577006', '2579009', '2592007', '2600000', '2620004', '2639009', '2653009', '2666009', '2672009', '2675006', '2681003', '2682005', '2686008', '2687004', '2695000', '2703009', '2712006', '2718005', '2726002', '2730004', '2739003', '2741002', '2746007', '2748008', '2759004', '2771005', '2789006', '2792005', '2803000', '2810006', '2812003', '2824005', '2826007', '2830005', '2839006', '2841007', '2845003', '2848001', '2855004', '2861001', '2894003', '2905008', '2909002', '2920002', '2922005', '2923000', '2954001', '2969000', '2979003', '2986006', '2998001', '3003007', '3008003', '3028004', '3039001', '3042007', '3054007', '3055008', '3056009', '3057000', '3058005', '3062004', '3068000', '3081007', '3093003', '3100007', '3113001', '3117000', '3118005', '3120008', '3134008', '3138006', '3153003', '3156006', '3159004', '3169005', '3178004', '3194006', '3198009', '3215002', '3222005', '3227004', '3236000', '3243006', '3255000', '3262009', '3279003', '3295003', '3301002', '3302009', '3315000', '3332001', '3336003', '3341006', '3350008', '3362007', '3366005', '3370002', '3374006', '3377004', '3382006', '3383001', '3394002', '3395001', '3396000', '3400000', '3409004', '3417007', '3438001', '3444002', '3447009', '3460003', '3462006', '3471002', '3478008', '3481003', '3488009', '3490005', '3524005', '3538003', '3541007', '3553006', '3556003', '3563003', '3572006', '3578005', '3582007', '3584008', '3594003', '3608004', '3609007', '3646006', '3663005', '3665003', '3670005', '3711007', '3743007', '3761003', '3766008', '3785006', '3788008', '3789000', '3810000', '3838008', '3860006', '3865001', '3867009', '3876002', '3877006', '3910004', '3916005', '3924000', '3931001', '3935005', '3937002', '3954005', '3956007', '3959000', '3960005', '3964001', '3966004', '3977005', '3984002', '3989007', '4015004', '4019005', '4029003', '4061004', '4066009', '4072009', '4081003', '4093007', '4111006', '4117005', '4121003', '4146003', '4148002', '4150005', '4158003', '4159006', '4180000', '4193005', '4205002', '4212006', '4215008', '4247003', '4258007', '4268002', '4276000', '4281009', '4295007', '4303006', '4312008', '4317002', '4328003', '4335006', '4352005', '4358009', '4360006', '4369007', '4371007', '4375003', '4377006', '4394008', '4402002', '4419000', '4421005', '4430002', '4432005', '4442007', '4486002', '4524000', '4527007', '4537002', '4548009', '4549001', '4566004', '4573009', '4578000', '4583008', '4588004', '4596009', '4603002', '4606005', '4621004', '4624007', '4647008', '4651005', '4658004', '4677002', '4703008', '4717004', '4718009', '4743003', '4755009', '4759003', '4766002', '4768001', '4774001', '4775000', '4799000', '4810005', '4812002', '4828007', '4840007', '4843009', '4861000', '4866005', '4870002', '4871003', '4881004', '4888005', '4897009', '4905007', '4906008', '4924005', '4942000', '4954000', '4956003', '4958002', '5001007', '5023006', '5026003', '5046008', '5068003', '5069006', '5076001', '5115006', '5122003', '5128004', '5140004', '5192008', '5194009', '5195005', '5204005', '5213007', '5225005', '5228007', '5229004', '5261000', '5272005', '5279001', '5296000', '5324007', '5329002', '5336001', '5347008', '5362005', '5366008', '5379004', '5382009', '5394000', '5398002', '5403001', '5421003', '5427004', '5458003', '5459006', '5491007', '5493005', '5498001', '5501001', '5520004', '5538001', '5542003', '5544002', '5560003', '5564007', '5574005', '5580002', '5597008', '5611001', '5625000', '5627008', '5633004', '5643001', '5644007', '5653000', '5665001', '5668004', '5677006', '5682004', '5696005', '5697001', '5709001', '5713008', '5717009', '5718004', '5727003', '5742000', '5751008', '5769004', '5780004', '5798000', '5802004', '5814007', '5815008', '5816009', '5825003', '5828001', '5847003', '5854009', '5868002', '5872003', '5881009', '5882002', '5889006', '5890002', '5893000', '5898009', '5923009', '5926001', '5928000', '5942008', '5943003', '5944009', '5948007', '5951000', '5953002', '5976004', '5979006', '5996007', '6001004', '6004007', '6006009', '6009002', '6013009', '6014003', '6023000', '6032003', '6046003', '6050005', '6059006', '6062009', '6073002', '6074008', '6076005', '6104005', '6105006', '6110005', '6194002', '6216007', '6217003', '6229007', '6253001', '6268000', '6269008', '6279005', '6317000', '6325003', '6326002', '6335009', '6359004', '6371005', '6375001', '6392005', '6404004', '6413002', '6417001', '6423006', '6424000', '6445007', '6448009', '6450001', '6472004', '6504002', '6511003', '6530003', '6533001', '6538005', '6541001', '6544009', '6550004', '6551000', '6553002', '6564004', '6566002', '6572002', '6598008', '6606008', '6608009', '6620001', '6623004', '6633007', '6643005', '6646002', '6649009', '6651008', '6684008', '6685009', '6711001', '6720005', '6731002', '6739000', '6742006', '6750002', '6757004', '6787005', '6789008', '6799003', '6805009', '6820003', '6828005', '6829002', '6834003', '6841009', '6844001', '6850006', '6864006', '6866008', '6871001', '6894000', '6902008', '6905005', '6912001', '6914000', '6921000', '6930008', '6944002', '6969002', '6975006', '6981003', '6987004', '6989001', '6991009', '7035006', '7050002', '7067009', '7076002', '7083009', '7090004', '7091000', '7099003', '7117004', '7121006', '7148007', '7149004', '7154008', '7160008', '7167006', '7173007', '7188002', '7192009', '7227003', '7234001', '7242000', '7275008', '7295002', '7296001', '7311008', '7344002', '7345001', '7347009', '7362006', '7376007', '7378008', '7384006', '7404008', '7435002', '7471001', '7477002', '7480001', '7494000', '7498002', '7507003', '7524009', '7532001', '7554004', '7566005', '7569003', '7591005', '7597009', '7605000', '7610001', '7629007', '7651004', '7652006', '7657000', '7658005', '7697002', '7712004', '7726008', '7736000', '7742001', '7748002', '7755000', '7756004', '7764005', '7769000', '7783003', '7820009', '7829005', '7832008', '7835005', '7840002', '7841003', '7844006', '7851002', '7854005', '7872004', '7874003', '7880006', '7884002', '7885001', '7892006', '7896009', '7911004', '7925003', '7936005', '7944005', '7954009', '7967007', '7986004', '7991003', '7999001', '8001006', '8012006', '8017000', '8024004', '8039003', '8040001', '8045006', '8057002', '8059004', '8067007', '8068002', '8079007', '8091003', '8100009', '8111001', '8112008', '8119004', '8128003', '8133004', '8157004', '8158009', '8159001', '8160006', '8161005', '8165001', '8205005', '8225009', '8242003', '8251006', '8264007', '8265008', '8266009', '8279000', '8289001', '8292002', '8314003', '8334002', '8356004', '8361002', '8369000', '8373002', '8387002', '8389004', '8412003', '8415001', '8454000', '8464009', '8482007', '8483002', '8496001', '8523001', '8546004', '8556000', '8559007', '8560002', '8568009', '8580001', '8595004', '8598002', '8600008', '8603005', '8604004', '8608001', '8617001', '8623006', '8629005', '8640002', '8668003', '8671006', '8677005', '8688004', '8695008', '8710005', '8711009', '8714001', '8752000', '8770002', '8775007', '8784007', '8810002', '8814006', '8815007', '8820007', '8821006', '8827005', '8839002', '8845005', '8850004', '8854008', '8862000', '8873007', '8887007', '8892009', '8894005', '8897003', '8907008', '8910001', '8911002', '8928004', '8931003', '8935007', '8942007', '8965002', '8966001', '8983005', '8988001', '8993003', '9000002', '9003000', '9018004', '9040008', '9055004', '9073001', '9081000', '9086005', '9089003', '9108007', '9127001', '9156001', '9181003', '9185007', '9186008', '9188009', '9208002', '9212008', '9229006', '9231002', '9240003', '9242006', '9258009', '9261005', '9262003', '9284003', '9290004', '9305001', '9317004', '9320007', '9321006', '9325002', '9332006', '9348007', '9379006', '9380009', '9384000', '9390001', '9432007', '9438006', '9454009', '9455005', '9475001', '9481009', '9490002', '9498009', '9502002', '9512009', '9535007', '9558005', '9566001', '9568000', '9596006', '9609000', '9625005', '9642004', '9646001', '9654004', '9659009', '9662007', '9668006', '9677004', '9683001', '9684007', '9708001', '9732008', '9736006', '9743000', '9758008', '9770007', '9775002', '9779008', '9783008', '9791004', '9796009', '9813009', '9825007', '9837009', '9840009', '9841008', '9846003', '9847007', '9849005', '9870004', '9875009', '9878006', '9880000', '9881001', '9891007', '9898001', '9951005', '9968009', '9970000', '9976006', '9994000', '9999005', '10013000', '10024003', '10025002', '10026001', '10036009', '10042008', '10047002', '10052007', '10056005', '10062000', '10119003', '10124000']}, 'type'=>'CodeableConcept', 'path'=>'BodyStructure.location', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/body-site'}},
        'locationQualifier' => {'valid_codes'=>{'http://snomed.info/sct'=>['419161000', '419465000', '51440002', '261183002', '261122009', '255561001', '49370004', '264217000', '261089000', '255551008', '351726001', '352730000']}, 'type'=>'CodeableConcept', 'path'=>'BodyStructure.locationQualifier', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/bodystructure-relative-location'}},
        'description' => {'type'=>'string', 'path'=>'BodyStructure.description', 'min'=>0, 'max'=>1},
        'image' => {'type'=>'Attachment', 'path'=>'BodyStructure.image', 'min'=>0, 'max'=>Float::INFINITY},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'BodyStructure.patient', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :active            # 0-1 boolean
      attr_accessor :morphology        # 0-1 CodeableConcept
      attr_accessor :location          # 0-1 CodeableConcept
      attr_accessor :locationQualifier # 0-* [ CodeableConcept ]
      attr_accessor :description       # 0-1 string
      attr_accessor :image             # 0-* [ Attachment ]
      attr_accessor :patient           # 1-1 Reference(Patient)

      def resourceType
        'BodyStructure'
      end
    end
  end
  BodyStructure = FHIR::R4::BodyStructure
end