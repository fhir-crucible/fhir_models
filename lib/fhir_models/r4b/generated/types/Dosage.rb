module FHIR
  module R4B
    class Dosage < FHIR::Model
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
        'asNeeded' => ['boolean', 'CodeableConcept']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Dosage.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Dosage.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Dosage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'sequence' => {'type'=>'integer', 'path'=>'Dosage.sequence', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'string', 'path'=>'Dosage.text', 'min'=>0, 'max'=>1},
        'additionalInstruction' => {'valid_codes'=>{'http://snomed.info/sct'=>['419492006', '311501008', '311504000', '417929005', '417980006', '417995008', '418071006', '418194009', '418281004', '418443006', '418521000', '418577003', '418637003', '418639000', '418693002', '418849000', '418850000', '418914006', '418954008', '418991002', '419111009', '419115000', '419303009', '419437002', '419439004', '419444006', '419473009', '419529008', '419822006', '419974005', '420003005', '420082003', '420110001', '420162004', '420652005', '421484000', '421769005', '421984009', '422327006', '428579001', '717154004']}, 'type'=>'CodeableConcept', 'path'=>'Dosage.additionalInstruction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/additional-instruction-codes'}},
        'patientInstruction' => {'type'=>'string', 'path'=>'Dosage.patientInstruction', 'min'=>0, 'max'=>1},
        'timing' => {'type'=>'Timing', 'path'=>'Dosage.timing', 'min'=>0, 'max'=>1},
        'asNeededBoolean' => {'type'=>'boolean', 'path'=>'Dosage.asNeeded[x]', 'min'=>0, 'max'=>1},
        'asNeededCodeableConcept' => {'valid_codes'=>{'http://snomed.info/sct'=>['404684003', '109006', '122003', '127009', '129007', '134006', '140004', '144008', '147001', '150003', '151004', '162004', '165002', '168000', '171008', '172001', '175004', '177007', '179005', '181007', '183005', '184004', '188001', '192008', '193003', '195005', '198007', '199004', '208008', '216004', '219006', '222008', '223003', '228007', '241006', '242004', '253005', '257006', '264008', '276008', '279001', '281004', '282006', '290006', '292003', '297009', '299007', '303002', '308006', '310008', '313005', '317006', '320003', '324007', '330007', '335002', '341009', '349006', '355001', '357009', '359007', '360002', '364006', '366008', '368009', '369001', '378007', '382009', '383004', '385006', '387003', '398002', '407000', '408005', '409002', '426008', '431005', '437009', '440009', '442001', '443006', '447007', '450005', '452002', '460001', '467003', '470004', '479003', '486006', '488007', '490008', '496002', '504009', '517007', '518002', '520004', '527001', '536002', '539009', '547009', '548004', '554003', '555002', '563001', '568005', '586008', '590005', '596004', '599006', '600009', '607007', '610000', '613003', '615005', '616006', '626004', '631002', '640003', '643001', '646009', '649002', '651003', '652005', '655007', '658009', '664002', '666000', '675003', '682004', '701003', '703000', '714002', '715001', '718004', '733007', '734001', '736004', '750009', '755004', '756003', '758002', '775008', '776009', '781000', '786005', '787001', '788006', '792004', '799008', '801006', '805002', '811004', '813001', '815008', '816009', '818005', '825003', '827006', '832007', '834008', '841002', '842009', '843004', '844005', '845006', '849000', '857002', '862001', '865004', '871005', '874002', '875001', '888003', '890002', '899001', '903008', '904002', '908004', '919001', '928000', '931004', '932006', '934007', '943003', '961007', '962000', '964004', '965003', '975000', '978003', '981008', '984000', '987007', '991002', '998008', '1003002', '1020003', '1023001', '1027000', '1031006', '1033009', '1034003', '1038000', '1045000', '1046004', '1051005', '1055001', '1059007', '1070000', '1073003', '1074009', '1077002', '1079004', '1085006', '1089000', '1102005', '1107004', '1108009', '1111005', '1112003', '1116000', '1124005', '1125006', '1126007', '1131009', '1134001', '1135000', '1139006', '1140008', '1141007', '1145003', '1150009', '1151008', '1152001', '1155004', '1168007', '1184008', '1194003', '1196001', '1197005', '1201005', '1207009', '1208004', '1212005', '1214006', '1232006', '1239002', '1240000', '1259003', '1261007', '1264004', '1271009', '1280009', '1282001', '1284000', '1286003', '1287007', '1297003', '1308001', '1310004', '1317001', '1318006', '1323006', '1332008', '1335005', '1343000', '1345007', '1351002', '1356007', '1361009', '1363007', '1367008', '1370007', '1372004', '1376001', '1378000', '1380006', '1383008', '1384002', '1386000', '1387009', '1388004', '1393001', '1395008', '1402001', '1412008', '1415005', '1418007', '1419004', '1426004', '1447000', '1469007', '1474004', '1475003', '1478001', '1479009', '1482004', '1486001', '1488000', '1489008', '1492007', '1493002', '1499003', '1512006', '1515008', '1518005', '1519002', '1521007', '1523005', '1525003', '1531000', '1532007', '1534008', '1538006', '1539003', '1542009', '1544005', '1551001', '1556006', '1563006', '1567007', '1588003', '1592005', '1593000', '1606009', '1608005', '1639007', '1647007', '1648002', '1654001', '1657008', '1658003', '1663004', '1667003', '1670004', '1671000', '1674008', '1679003', '1682008', '1685005', '1686006', '1694004', '1698001', '1703007', '1705000', '1708003', '1714005', '1717003', '1723008', '1724002', '1734006', '1735007', '1739001', '1742007', '1744008', '1748006', '1755008', '1761006', '1763009', '1767005', '1769008', '1771008', '1776003', '1777007', '1778002', '1779005', '1794009', '1816003', '1821000', '1822007', '1824008', '1826005', '1828006', '1829003', '1833005', '1835003', '1837006', '1845001', '1847009', '1848004', '1852004', '1855002', '1856001', '1857005', '1860003', '1865008', '1869002', '1881003', '1892002', '1896004', '1897008', '1899006', '1903004', '1908008', '1909000', '1922008', '1926006', '1939005', '1943009', '1953005', '1954004', '1955003', '1959009', '1961000', '1963002', '1965009', '1967001', '1973000', '1977004', '1979001', '1980003', '1981004', '1989002', '2004005', '2012002', '2024009', '2028007', '2032001', '2036003', '2040007', '2041006', '2043009', '2055003', '2058001', '2061000', '2065009', '2066005', '2070002', '2073000', '2087000', '2089002', '2091005', '2094002', '2102007', '2107001', '2109003', '2114004', '2116002', '2120003', '2121004', '2128005', '2129002', '2132004', '2134003', '2136001', '2138000', '2145000', '2149006', '2158004', '2167004', '2169001', '2170000', '2176006', '2177002', '2186007', '2198002', '2202000', '2204004', '2213002', '2216005', '2217001', '2219003', '2224000', '2228002', '2229005', '2231001', '2237002', '2239004', '2241003', '2243000', '2245007', '2251002', '2256007', '2261009', '2268003', '2284002', '2295008', '2296009', '2301009', '2303007', '2304001', '2307008', '2308003', '2312009', '2314005', '2326000', '2339001', '2341000', '2351004', '2355008', '2359002', '2365002', '2366001', '2367005', '2374000', '2385003', '2388001', '2390000', '2391001', '2396006', '2398007', '2403008', '2415007', '2418009', '2419001', '2420007', '2432006', '2435008', '2437000', '2438005', '2439002', '2443003', '2452007', '2463005', '2469009', '2471009', '2472002', '2473007', '2477008', '2492009', '2495006', '2496007', '2506003', '2513003', '2518007', '2521009', '2523007', '2526004', '2528003', '2532009', '2534005', '2538008', '2541004', '2554006', '2556008', '2560006', '2562003', '2576002', '2581006', '2582004', '2583009', '2584003', '2585002', '2589008', '2591000', '2593002', '2602008', '2606006', '2615004', '2618002', '2622007', '2624008', '2625009', '2630008', '2634004', '2638001', '2640006', '2651006', '2655002', '2657005', '2663001', '2665008', '2683000', '2689001', '2694001', '2704003', '2707005', '2713001', '2724004', '2725003', '2733002', '2736005', '2740001', '2749000', '2751001', '2761008', '2764000', '2770006', '2772003', '2775001', '2776000', '2782002', '2783007', '2786004', '2790002', '2805007', '2806008', '2807004', '2808009', '2815001', '2816000', '2818004', '2819007', '2825006', '2828008', '2829000', '2835000', '2836004', '2838003', '2850009', '2853006', '2856003', '2858002', '2884008', '2893009', '2897005', '2899008', '2901004', '2902006', '2904007', '2910007', '2912004', '2917005', '2918000', '2919008', '2929001', '2935001', '2946003', '2951009', '2955000', '2965006', '2967003', '2973002', '2978006', '2981001', '2989004', '2990008', '2992000', '2994004', '2999009', '3002002', '3004001', '3006004', '3009006', '3013004', '3014005', '3018008', '3019000', '3021005', '3023008', '3032005', '3033000', '3038009', '3044008', '3053001', '3059002', '3067005', '3071008', '3072001', '3073006', '3084004', '3089009', '3094009', '3095005', '3097002', '3098007', '3109008', '3110003', '3119002', '3129009', '3135009', '3140001', '3144005', '3158007', '3160009', '3163006', '3168002', '3185000', '3199001', '3200003', '3208005', '3214003', '3217005', '3218000', '3219008', '3228009', '3229001', '3230006', '3238004', '3239007', '3253007', '3254001', '3259006', '3261002', '3263004', '3272007', '3274008', '3275009', '3276005', '3277001', '3282008', '3283003', '3286006', '3289004', '3291007', '3298001', '3303004', '3304005', '3305006', '3308008', '3310005', '3321001', '3323003', '3327002', '3331008', '3344003', '3345002', '3355003', '3358001', '3368006', '3376008', '3381004', '3387000', '3391005', '3398004', '3415004', '3419005', '3421000', '3424008', '3426005', '3427001', '3434004', '3439009', '3441005', '3446000', '3449007', '3456001', '3458000', '3461004', '3464007', '3468005', '3469002', '3472009', '3474005', '3480002', '3482005', '3483000', '3487004', '3500002', '3502005', '3503000', '3506008', '3507004', '3511005', '3514002', '3519007', '3528008', '3529000', '3530005', '3531009', '3533007', '3539006', '3542000', '3544004', '3545003', '3548001', '3549009', '3558002', '3560000', '3570003', '3571004', '3577000', '3585009', '3586005', '3589003', '3590007', '3591006', '3598000', '3611003', '3633001', '3634007', '3639002', '3640000', '3641001', '3642008', '3644009', '3649004', '3650004', '3652007', '3657001', '3662000', '3677008', '3680009', '3681008', '3696007', '3699000', '3703002', '3704008', '3705009', '3716002', '3720003', '3723001', '3733009', '3738000', '3744001', '3747008', '3750006', '3751005', '3752003', '3754002', '3755001', '3756000', '3759007', '3760002', '3762005', '3763000', '3783004', '3797007', '3798002', '3815005', '3820005', '3827008', '3830001', '3841004', '3845008', '3855007', '3885002', '3886001', '3899003', '3900008', '3902000', '3903005', '3908001', '3909009', '3913002', '3914008', '3928002', '3939004', '3944006', '3947004', '3950001', '3951002', '3972004', '3975002', '3978000', '3987009', '3993001', '3999002', '4003003', '4006006', '4009004', '4016003', '4017007', '4022007', '4026005', '4030008', '4038001', '4039009', '4040006', '4041005', '4046000', '4062006', '4063001', '4069002', '4070001', '4075006', '4082005', '4088009', '4089001', '4103001', '4106009', '4107000', '4113009', '4120002', '4124006', '4127004', '4129001', '4135001', '4136000', '4142001', '4160001', '4168008', '4170004', '4174008', '4175009', '4178006', '4181001', '4183003', '4184009', '4195003', '4197006', '4199009', '4208000', '4210003', '4223005', '4224004', '4225003', '4229009', '4232007', '4237001', '4240001', '4241002', '4242009', '4248008', '4249000', '4260009', '4262001', '4264000', '4269005', '4273008', '4275001', '4278004', '4283007', '4287008', '4294006', '4300009', '4301008', '4306003', '4307007', '4313003', '4316006', '4320005', '4324001', '4325000', '4338008', '4340003', '4349002', '4354006', '4356008', '4359001', '4364002', '4367009', '4373005', '4374004', '4381006', '4386001', '4390004', '4397001', '4399003', '4403007', '4406004', '4409006', '4410001', '4412009', '4414005', '4416007', '4418008', '4426000', '4434006', '4439001', '4441000', '4445009', '4448006', '4451004', '4461006', '4463009', '4464003', '4465002', '4468000', '4470009', '4473006', '4477007', '4478002', '4481007', '4483005', '4490000', '4494009', '4495005', '4499004', '4501007', '4506002', '4510004', '4512007', '4519003', '4522001', '4523006', '4526003', '4528002', '4529005', '4530000', '4547004', '4550001', '4554005', '4556007', '4557003', '4559000', '4565000', '4568003', '4575002', '4576001', '4586000', '4592006', '4598005', '4602007', '4619009', '4633009', '4637005', '4639008', '4641009', '4645000', '4646004', '4654002', '4659007', '4661003', '4665007', '4667004', '4669001', '4673003', '4676006', '4688008']}, 'type'=>'CodeableConcept', 'path'=>'Dosage.asNeeded[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medication-as-needed-reason'}},
        'site' => {'valid_codes'=>{'http://snomed.info/sct'=>['91723000', '106004', '107008', '108003', '110001', '111002', '116007', '124002', '149003', '155008', '167005', '202009', '205006', '206007', '221001', '227002', '233006', '235004', '246001', '247005', '251007', '256002', '263002', '266005', '272005', '273000', '283001', '284007', '289002', '301000', '311007', '315003', '318001', '344001', '345000', '356000', '393006', '402006', '405008', '414003', '422005', '446003', '457008', '461002', '464005', '465006', '471000', '480000', '485005', '528006', '552004', '565008', '582005', '587004', '589001', '595000', '608002', '621009', '635006', '650002', '660006', '661005', '667009', '688000', '691000', '692007', '723004', '774007', '790007', '798000', '808000', '809008', '823005', '830004', '836005', '885000', '895007', '917004', '921006', '947002', '955009', '976004', '996007', '1005009', '1012000', '1015003', '1028005', '1030007', '1063000', '1075005', '1076006', '1086007', '1087003', '1092001', '1099005', '1101003', '1106008', '1110006', '1122009', '1136004', '1159005', '1172006', '1173001', '1174007', '1193009', '1216008', '1231004', '1236009', '1243003', '1246006', '1263005', '1277008', '1307006', '1311000', '1350001', '1353004', '1403006', '1425000', '1439000', '1441004', '1456008', '1467009', '1484003', '1490004', '1502004', '1511004', '1516009', '1527006', '1537001', '1541002', '1562001', '1580005', '1581009', '1584001', '1600003', '1605008', '1610007', '1611006', '1617005', '1620002', '1626008', '1627004', '1630006', '1631005', '1650005', '1655000', '1659006', '1684009', '1706004', '1707008', '1711002', '1716007', '1721005', '1729007', '1732005', '1765002', '1780008', '1781007', '1797002', '1818002', '1825009', '1832000', '1840006', '1849007', '1853009', '1874005', '1893007', '1895000', '1902009', '1910005', '1918003', '1927002', '1992003', '1997009', '2010005', '2020000', '2031008', '2033006', '2044003', '2048000', '2049008', '2059009', '2071003', '2076008', '2083001', '2095001', '2123001', '2150006', '2156000', '2160002', '2175005', '2182009', '2192001', '2205003', '2209009', '2236006', '2246008', '2255006', '2292006', '2302002', '2305000', '2306004', '2327009', '2330002', '2332005', '2334006', '2349003', '2372001', '2383005', '2389009', '2395005', '2397002', '2400006', '2402003', '2421006', '2433001', '2436009', '2453002', '2454008', '2484000', '2489005', '2499000', '2502001', '2504000', '2510000', '2539000', '2543001', '2550002', '2577006', '2579009', '2592007', '2600000', '2620004', '2639009', '2653009', '2666009', '2672009', '2675006', '2681003', '2682005', '2686008', '2687004', '2695000', '2703009', '2712006', '2718005', '2726002', '2730004', '2739003', '2741002', '2746007', '2748008', '2759004', '2771005', '2789006', '2792005', '2803000', '2810006', '2812003', '2824005', '2826007', '2830005', '2839006', '2841007', '2845003', '2848001', '2855004', '2861001', '2894003', '2905008', '2909002', '2920002', '2922005', '2923000', '2954001', '2969000', '2979003', '2986006', '2998001', '3003007', '3008003', '3028004', '3039001', '3042007', '3054007', '3055008', '3056009', '3057000', '3058005', '3062004', '3068000', '3081007', '3093003', '3100007', '3113001', '3117000', '3118005', '3120008', '3134008', '3138006', '3153003', '3156006', '3159004', '3169005', '3178004', '3194006', '3198009', '3215002', '3222005', '3227004', '3236000', '3243006', '3255000', '3262009', '3279003', '3295003', '3301002', '3302009', '3315000', '3332001', '3336003', '3341006', '3350008', '3362007', '3366005', '3370002', '3374006', '3377004', '3382006', '3383001', '3394002', '3395001', '3396000', '3400000', '3409004', '3417007', '3438001', '3444002', '3447009', '3460003', '3462006', '3471002', '3478008', '3481003', '3488009', '3490005', '3524005', '3538003', '3541007', '3553006', '3556003', '3563003', '3572006', '3578005', '3582007', '3584008', '3594003', '3608004', '3609007', '3646006', '3663005', '3665003', '3670005', '3711007', '3743007', '3761003', '3766008', '3785006', '3788008', '3789000', '3810000', '3838008', '3860006', '3865001', '3867009', '3876002', '3877006', '3910004', '3916005', '3924000', '3931001', '3935005', '3937002', '3954005', '3956007', '3959000', '3960005', '3964001', '3966004', '3977005', '3984002', '3989007', '4015004', '4019005', '4029003', '4061004', '4066009', '4072009', '4081003', '4093007', '4111006', '4117005', '4121003', '4146003', '4148002', '4150005', '4158003', '4159006', '4180000', '4193005', '4205002', '4212006', '4215008', '4247003', '4258007', '4268002', '4276000', '4281009', '4295007', '4303006', '4312008', '4317002', '4328003', '4335006', '4352005', '4358009', '4360006', '4369007', '4371007', '4375003', '4377006', '4394008', '4402002', '4419000', '4421005', '4430002', '4432005', '4442007', '4486002', '4524000', '4527007', '4537002', '4548009', '4549001', '4566004', '4573009', '4578000', '4583008', '4588004', '4596009', '4603002', '4606005', '4621004', '4624007', '4647008', '4651005', '4658004', '4677002', '4703008', '4717004', '4718009', '4743003', '4755009', '4759003', '4766002', '4768001', '4774001', '4775000', '4799000', '4810005', '4812002', '4828007', '4840007', '4843009', '4861000', '4866005', '4870002', '4871003', '4881004', '4888005', '4897009', '4905007', '4906008', '4924005', '4942000', '4954000', '4956003', '4958002', '5001007', '5023006', '5026003', '5046008', '5068003', '5069006', '5076001', '5115006', '5122003', '5128004', '5140004', '5192008', '5194009', '5195005', '5204005', '5213007', '5225005', '5228007', '5229004', '5261000', '5272005', '5279001', '5296000', '5324007', '5329002', '5336001', '5347008', '5362005', '5366008', '5379004', '5382009', '5394000', '5398002', '5403001', '5421003', '5427004', '5458003', '5459006', '5491007', '5493005', '5498001', '5520004', '5538001', '5544002', '5560003', '5564007', '5574005', '5580002', '5597008', '5611001', '5625000', '5627008', '5633004', '5643001', '5644007', '5653000', '5665001', '5668004', '5677006', '5682004', '5696005', '5697001', '5709001', '5713008', '5717009', '5718004', '5727003', '5742000', '5751008', '5769004', '5780004', '5798000', '5802004', '5814007', '5815008', '5816009', '5825003', '5828001', '5847003', '5854009', '5868002', '5872003', '5881009', '5882002', '5889006', '5890002', '5893000', '5898009', '5923009', '5926001', '5928000', '5942008', '5943003', '5944009', '5948007', '5951000', '5953002', '5976004', '5979006', '5996007', '6001004', '6004007', '6006009', '6009002', '6014003', '6023000', '6032003', '6046003', '6050005', '6059006', '6062009', '6073002', '6074008', '6076005', '6104005', '6105006', '6110005', '6216007', '6217003', '6229007', '6253001', '6268000', '6269008', '6279005', '6317000', '6325003', '6326002', '6335009', '6359004', '6371005', '6375001', '6392005', '6404004', '6413002', '6417001', '6423006', '6424000', '6445007', '6448009', '6450001', '6472004', '6504002', '6511003', '6530003', '6533001', '6538005', '6541001', '6544009', '6550004', '6551000', '6553002', '6564004', '6566002', '6572002', '6598008', '6606008', '6608009', '6620001', '6623004', '6633007', '6643005', '6646002', '6649009', '6651008', '6684008', '6685009', '6711001', '6720005', '6731002', '6739000', '6742006', '6750002', '6757004', '6787005', '6789008', '6799003', '6805009', '6820003', '6828005', '6829002', '6834003', '6841009', '6844001', '6850006', '6864006', '6866008', '6871001', '6894000', '6902008', '6905005', '6912001', '6914000', '6921000', '6930008', '6944002', '6969002', '6975006', '6981003', '6987004', '6989001', '6991009', '7035006', '7050002', '7067009', '7076002', '7083009', '7090004', '7091000', '7099003', '7117004', '7121006', '7148007', '7149004', '7154008', '7160008', '7167006', '7173007', '7188002', '7192009', '7227003', '7234001', '7242000', '7275008', '7295002', '7296001', '7311008', '7344002', '7345001', '7362006', '7376007', '7378008', '7384006', '7404008', '7435002', '7471001', '7477002', '7480001', '7494000', '7498002', '7507003', '7524009', '7532001', '7554004', '7566005', '7569003', '7591005', '7597009', '7605000', '7610001', '7629007', '7651004', '7652006', '7657000', '7658005', '7697002', '7712004', '7726008', '7736000', '7742001', '7748002', '7755000', '7756004', '7764005', '7769000', '7783003', '7820009', '7829005', '7832008', '7835005', '7840002', '7841003', '7844006', '7851002', '7854005', '7872004', '7874003', '7880006', '7884002', '7885001', '7892006', '7896009', '7911004', '7925003', '7936005', '7944005', '7954009', '7967007', '7986004', '7991003', '7999001', '8001006', '8012006', '8017000', '8024004', '8039003', '8040001', '8045006', '8057002', '8059004', '8067007', '8068002', '8079007', '8091003', '8100009', '8111001', '8112008', '8119004', '8128003', '8133004', '8157004', '8158009', '8159001', '8160006', '8161005', '8165001', '8205005', '8225009', '8242003', '8251006', '8264007', '8265008', '8266009', '8289001', '8292002', '8314003', '8334002', '8356004', '8369000', '8373002', '8387002', '8389004', '8412003', '8415001', '8454000', '8464009', '8482007', '8483002', '8496001', '8523001', '8546004', '8556000', '8559007', '8560002', '8580001', '8595004', '8598002', '8600008', '8603005', '8604004', '8608001', '8617001', '8623006', '8629005', '8640002', '8668003', '8671006', '8677005', '8688004', '8695008', '8710005', '8711009', '8714001', '8752000', '8775007', '8784007', '8810002', '8814006', '8815007', '8820007', '8821006', '8827005', '8839002', '8845005', '8850004', '8854008', '8862000', '8873007', '8887007', '8892009', '8894005', '8897003', '8907008', '8910001', '8911002', '8928004', '8931003', '8935007', '8942007', '8965002', '8966001', '8983005', '8988001', '8993003', '9000002', '9003000', '9018004', '9040008', '9055004', '9073001', '9081000', '9086005', '9089003', '9108007', '9127001', '9156001', '9181003', '9185007', '9186008', '9188009', '9208002', '9212008', '9229006', '9231002', '9240003', '9242006', '9258009', '9261005', '9262003', '9284003', '9290004', '9305001', '9317004', '9320007', '9321006', '9325002', '9332006', '9348007', '9379006', '9380009', '9384000', '9390001', '9432007', '9438006', '9454009', '9455005', '9475001', '9481009', '9490002', '9498009', '9502002', '9512009', '9535007', '9558005', '9566001', '9568000', '9596006', '9609000', '9625005', '9642004', '9646001', '9654004', '9659009', '9662007', '9668006', '9677004', '9683001', '9684007', '9708001', '9736006', '9743000', '9758008', '9770007', '9775002', '9779008', '9783008', '9791004', '9796009', '9813009', '9825007', '9837009', '9840009', '9841008', '9846003', '9847007', '9849005', '9870004', '9875009', '9878006', '9880000', '9881001', '9891007', '9898001', '9951005', '9968009', '9970000', '9976006', '9994000', '9999005', '10013000', '10024003', '10025002', '10026001', '10036009', '10042008', '10047002', '10052007', '10056005', '10062000', '10119003', '10124000', '10134009', '10141003', '10145007', '10148009', '10149001', '10151002', '10167008', '10176001', '10200004', '10208006', '10209003', '10245000']}, 'type'=>'CodeableConcept', 'path'=>'Dosage.site', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/approach-site-codes'}},
        'route' => {'valid_codes'=>{'http://snomed.info/sct'=>['284009009', '6064005', '10547007', '12130007', '16857009', '26643006', '34206005', '37161004', '37737002', '37839007', '38239002', '45890007', '46713006', '47625008', '54471007', '54485002', '58100008', '60213007', '62226000', '72607000', '78421000', '90028008', '127490009', '127491008', '127492001', '372449004', '372450004', '372451000', '372452007', '372453002', '372454008', '372457001', '372458006', '372459003', '372460008', '372461007', '372462000', '372463005', '372464004', '372465003', '372466002', '372467006', '372468001', '372469009', '372470005', '372471009', '372472002', '372473007', '372474001', '372475000', '372476004', '404815008', '404818005', '404819002', '404820008', '416174007', '417070009', '417255000', '417950001', '417985001', '417989007', '418091004', '418114005', '418133000', '418136008', '418162004', '418204005', '418287000', '418321004', '418331006', '418401004', '418418000', '418441008', '418511008', '418586008', '418608002', '418664002', '418722009', '418730005', '418743005', '418813001', '418821007', '418851001', '418877009', '418887008', '418892005', '418947002', '418987007', '419021003', '419165009', '419231003', '419243002', '419320008', '419396008', '419601003', '419631009', '419684008', '419762003', '419778001', '419810008', '419874009', '419894000', '419954003', '419993007', '420047004', '420163009', '420168000', '420185003', '420201002', '420204005', '420218003', '420254004', '420287000', '420719007', '428191002', '429817007', '445752009', '445754005', '445755006', '445756007', '445767008', '445768003', '445769006', '445771006', '445913005', '445941009', '446105004', '446407004', '446435000', '446442000', '446540005', '447026006', '447052000', '447080003', '447081004', '447121004', '447122006', '447227007', '447229005', '447694001', '447964005', '448077001', '448491004', '448492006', '448598008', '697971008', '711360002', '711378007', '714743009', '718329006', '764723001', '766790006', '1611000175109', '58731000052100', '58751000052109', '58761000052107', '58771000052103', '58811000052103', '58821000052106', '58831000052108']}, 'type'=>'CodeableConcept', 'path'=>'Dosage.route', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/route-codes'}},
        'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://snomed.info/sct'=>['422096002', '417924000', '418283001', '419385000', '419582001', '419652001', '419747000', '420045007', '420246001', '420247005', '420295001', '420341009', '420360002', '420484009', '420503003', '420561004', '420604000', '420606003', '420620005', '420652005', '420771004', '420806001', '420883007', '420942008', '420974001', '421035004', '421066005', '421067001', '421134003', '421139008', '421206002', '421257003', '421286000', '421298005', '421399004', '421463005', '421484000', '421521009', '421538008', '421548005', '421612001', '421682005', '421718005', '421723005', '421769005', '421803000', '421805007', '421829000', '421832002', '421939007', '421984009', '421994004', '422033008', '422106007', '422114001', '422145002', '422152000', '422219000', '422327006', '769364006', '769407000', '769408005', '769409002', '769410007']}, 'type'=>'CodeableConcept', 'path'=>'Dosage.method', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/administration-method-codes'}},
        'doseAndRate' => {'type'=>'Dosage::DoseAndRate', 'path'=>'Dosage.doseAndRate', 'min'=>0, 'max'=>Float::INFINITY},
        'maxDosePerPeriod' => {'type'=>'Ratio', 'path'=>'Dosage.maxDosePerPeriod', 'min'=>0, 'max'=>1},
        'maxDosePerAdministration' => {'type'=>'Quantity', 'path'=>'Dosage.maxDosePerAdministration', 'min'=>0, 'max'=>1},
        'maxDosePerLifetime' => {'type'=>'Quantity', 'path'=>'Dosage.maxDosePerLifetime', 'min'=>0, 'max'=>1}
      }

      class DoseAndRate < FHIR::Model
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
          'dose' => ['Range', 'Quantity'],
          'rate' => ['Ratio', 'Range', 'Quantity']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'DoseAndRate.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'DoseAndRate.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/dose-rate-type'=>['calculated', 'ordered']}, 'type'=>'CodeableConcept', 'path'=>'DoseAndRate.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/dose-rate-type'}},
          'doseRange' => {'type'=>'Range', 'path'=>'DoseAndRate.dose[x]', 'min'=>0, 'max'=>1},
          'doseQuantity' => {'type'=>'Quantity', 'path'=>'DoseAndRate.dose[x]', 'min'=>0, 'max'=>1},
          'rateRatio' => {'type'=>'Ratio', 'path'=>'DoseAndRate.rate[x]', 'min'=>0, 'max'=>1},
          'rateRange' => {'type'=>'Range', 'path'=>'DoseAndRate.rate[x]', 'min'=>0, 'max'=>1},
          'rateQuantity' => {'type'=>'Quantity', 'path'=>'DoseAndRate.rate[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id           # 0-1 string
        attr_accessor :extension    # 0-* [ Extension ]
        attr_accessor :type         # 0-1 CodeableConcept
        attr_accessor :doseRange    # 0-1 Range
        attr_accessor :doseQuantity # 0-1 Quantity
        attr_accessor :rateRatio    # 0-1 Ratio
        attr_accessor :rateRange    # 0-1 Range
        attr_accessor :rateQuantity # 0-1 Quantity
      end

      attr_accessor :id                       # 0-1 string
      attr_accessor :extension                # 0-* [ Extension ]
      attr_accessor :modifierExtension        # 0-* [ Extension ]
      attr_accessor :sequence                 # 0-1 integer
      attr_accessor :text                     # 0-1 string
      attr_accessor :additionalInstruction    # 0-* [ CodeableConcept ]
      attr_accessor :patientInstruction       # 0-1 string
      attr_accessor :timing                   # 0-1 Timing
      attr_accessor :asNeededBoolean          # 0-1 boolean
      attr_accessor :asNeededCodeableConcept  # 0-1 CodeableConcept
      attr_accessor :site                     # 0-1 CodeableConcept
      attr_accessor :route                    # 0-1 CodeableConcept
      attr_accessor :local_method             # 0-1 CodeableConcept
      attr_accessor :doseAndRate              # 0-* [ Dosage::DoseAndRate ]
      attr_accessor :maxDosePerPeriod         # 0-1 Ratio
      attr_accessor :maxDosePerAdministration # 0-1 Quantity
      attr_accessor :maxDosePerLifetime       # 0-1 Quantity
    end
  end
end