module FHIR
  module R4B
    class BiologicallyDerivedProduct < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'BiologicallyDerivedProduct.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'BiologicallyDerivedProduct.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'BiologicallyDerivedProduct.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'BiologicallyDerivedProduct.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'BiologicallyDerivedProduct.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'BiologicallyDerivedProduct.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'BiologicallyDerivedProduct.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'BiologicallyDerivedProduct.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'BiologicallyDerivedProduct.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'productCategory' => {'valid_codes'=>{'http://hl7.org/fhir/product-category'=>['organ', 'tissue', 'fluid', 'cells', 'biologicalAgent']}, 'type'=>'code', 'path'=>'BiologicallyDerivedProduct.productCategory', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/product-category'}},
        'productCode' => {'type'=>'CodeableConcept', 'path'=>'BiologicallyDerivedProduct.productCode', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/product-status'=>['available', 'unavailable']}, 'type'=>'code', 'path'=>'BiologicallyDerivedProduct.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/product-status'}},
        'request' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'type'=>'Reference', 'path'=>'BiologicallyDerivedProduct.request', 'min'=>0, 'max'=>Float::INFINITY},
        'quantity' => {'type'=>'integer', 'path'=>'BiologicallyDerivedProduct.quantity', 'min'=>0, 'max'=>1},
        'parent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct'], 'type'=>'Reference', 'path'=>'BiologicallyDerivedProduct.parent', 'min'=>0, 'max'=>Float::INFINITY},
        'collection' => {'type'=>'BiologicallyDerivedProduct::Collection', 'path'=>'BiologicallyDerivedProduct.collection', 'min'=>0, 'max'=>1},
        'processing' => {'type'=>'BiologicallyDerivedProduct::Processing', 'path'=>'BiologicallyDerivedProduct.processing', 'min'=>0, 'max'=>Float::INFINITY},
        'manipulation' => {'type'=>'BiologicallyDerivedProduct::Manipulation', 'path'=>'BiologicallyDerivedProduct.manipulation', 'min'=>0, 'max'=>1},
        'storage' => {'type'=>'BiologicallyDerivedProduct::Storage', 'path'=>'BiologicallyDerivedProduct.storage', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Collection < FHIR::Model
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
          'collected' => ['dateTime', 'Period']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Collection.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Collection.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Collection.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'collector' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'Collection.collector', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Collection.source', 'min'=>0, 'max'=>1},
          'collectedDateTime' => {'type'=>'dateTime', 'path'=>'Collection.collected[x]', 'min'=>0, 'max'=>1},
          'collectedPeriod' => {'type'=>'Period', 'path'=>'Collection.collected[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :collector         # 0-1 Reference(Practitioner|PractitionerRole)
        attr_accessor :source            # 0-1 Reference(Patient|Organization)
        attr_accessor :collectedDateTime # 0-1 dateTime
        attr_accessor :collectedPeriod   # 0-1 Period
      end

      class Processing < FHIR::Model
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
          'time' => ['dateTime', 'Period']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Processing.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Processing.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Processing.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Processing.description', 'min'=>0, 'max'=>1},
          'procedure' => {'valid_codes'=>{'http://snomed.info/sct'=>['71388002', '104001', '115006', '119000', '121005', '128004', '133000', '135007', '142007', '146005', '153001', '160007', '166001', '170009', '174000', '176003', '189009', '197002', '230009', '243009', '245002', '262007', '267001', '285008', '294002', '295001', '306005', '316002', '334003', '342002', '346004', '348003', '351005', '352003', '374009', '388008', '389000', '401004', '406009', '417005', '435001', '445004', '456004', '459006', '463004', '468008', '474008', '489004', '493005', '494004', '497006', '531007', '533005', '535003', '540006', '543008', '545001', '549007', '550007', '559008', '574005', '617002', '618007', '625000', '628003', '629006', '633004', '637003', '642006', '645008', '647000', '657004', '665001', '670008', '671007', '673005', '674004', '676002', '680007', '687005', '695009', '697001', '710006', '712003', '722009', '726007', '730005', '741007', '746002', '753006', '754000', '759005', '762008', '764009', '767002', '789003', '791006', '807005', '814007', '817000', '831000', '851001', '853003', '867007', '870006', '879007', '881009', '893000', '897004', '910002', '911003', '913000', '926001', '935008', '941001', '948007', '951000', '956005', '967006', '969009', '971009', '1001000', '1008006', '1019009', '1021004', '1029002', '1032004', '1035002', '1036001', '1041009', '1043007', '1044001', '1048003', '1054002', '1071001', '1084005', '1093006', '1103000', '1104006', '1115001', '1119007', '1121002', '1127003', '1133007', '1163003', '1176009', '1181000', '1186005', '1198000', '1209007', '1225002', '1227005', '1235008', '1237000', '1238005', '1251000', '1253002', '1258006', '1266002', '1267006', '1278003', '1279006', '1292009', '1299000', '1315009', '1316005', '1324000', '1327007', '1328002', '1329005', '1337002', '1339004', '1352009', '1358008', '1366004', '1385001', '1390003', '1398005', '1399002', '1407007', '1410000', '1411001', '1413003', '1414009', '1417002', '1431002', '1440003', '1449002', '1453000', '1455007', '1457004', '1494008', '1500007', '1501006', '1505002', '1529009', '1533002', '1550000', '1555005', '1559004', '1576000', '1578004', '1583007', '1585000', '1596008', '1597004', '1614003', '1615002', '1616001', '1636000', '1638004', '1640009', '1645004', '1651009', '1653007', '1669000', '1677001', '1678006', '1680000', '1683003', '1689004', '1691007', '1699009', '1702002', '1704001', '1709006', '1712009', '1713004', '1730002', '1746005', '1747001', '1753001', '1757000', '1759002', '1770009', '1774000', '1775004', '1784004', '1787006', '1788001', '1801001', '1805005', '1811008', '1813006', '1820004', '1830008', '1836002', '1844002', '1854003', '1859008', '1861004', '1862006', '1866009', '1868005', '1870001', '1871002', '1872009', '1876007', '1879000', '1889001', '1907003', '1917008', '1924009', '1950008', '1958001', '1966005', '1983001', '1995001', '1999007', '2002009', '2021001', '2051007', '2054004', '2067001', '2069003', '2078009', '2079001', '2080003', '2098004', '2115003', '2119009', '2127000', '2137005', '2153008', '2161003', '2164006', '2166008', '2171001', '2178007', '2181002', '2188008', '2193006', '2196003', '2199005', '2214008', '2220009', '2225004', '2234009', '2242005', '2244006', '2250001', '2252009', '2266004', '2267008', '2270007', '2276001', '2278000', '2279008', '2290003', '2315006', '2318008', '2321005', '2322003', '2337004', '2344008', '2347001', '2364003', '2371008', '2373006', '2382000', '2386002', '2393003', '2406000', '2407009', '2408004', '2409007', '2425002', '2442008', '2448007', '2455009', '2457001', '2458006', '2459003', '2474001', '2475000', '2480009', '2486003', '2488002', '2494005', '2498008', '2507007', '2508002', '2514009', '2517002', '2530001', '2531002', '2535006', '2536007', '2547000', '2552005', '2564002', '2566000', '2567009', '2580007', '2598006', '2601001', '2607002', '2613006', '2614000', '2616003', '2619005', '2629003', '2632000', '2642003', '2643008', '2644002', '2645001', '2646000', '2658000', '2659008', '2668005', '2670001', '2673004', '2677003', '2690005', '2693007', '2696004', '2697008', '2716009', '2722000', '2731000', '2732007', '2737001', '2742009', '2743004', '2745006', '2752008', '2780005', '2794006', '2802005', '2811005', '2813008', '2837008', '2842000', '2843005', '2847006', '2851008', '2854000', '2857007', '2866006', '2875008', '2885009', '2891006', '2898000', '2903001', '2908005', '2914003', '2915002', '2933008', '2945004', '2947007', '2960001', '2968008', '2970004', '2971000', '2977001', '3001009', '3010001', '3016007', '3025001', '3026000', '3029007', '3041000', '3047001', '3060007', '3061006', '3063009', '3075004', '3078002', '3083005', '3088001', '3090000', '3112006', '3116009', '3130004', '3133002', '3137001', '3143004', '3162001', '3164000', '3165004', '3166003', '3177009', '3183007', '3186004', '3190002', '3204007', '3241008', '3249005', '3256004', '3257008', '3258003', '3268008', '3270004', '3278006', '3287002', '3320000', '3324009', '3326006', '3328007', '3333006', '3338002', '3352000', '3357006', '3360004', '3390006', '3399007', '3407002', '3413006', '3418002', '3432000', '3443008', '3450007', '3457005', '3479000', '3498003', '3499006', '3509001', '3512003', '3515001', '3517009', '3518004', '3527003', '3546002', '3559005', '3562008', '3564009', '3575008', '3580004', '3605001', '3607009', '3620007', '3625002', '3651000', '3654008', '3659003', '3664004', '3666002', '3669009', '3673007', '3683006', '3686003', '3688002', '3690001', '3691002', '3697003', '3700004', '3701000', '3713005', '3717006', '3735002', '3740005', '3748003', '3749006', '3758004', '3770000', '3778007', '3780001', '3784005', '3786007', '3787003', '3794000', '3796003', '3799005', '3802001', '3819004', '3826004', '3828003', '3831002', '3843001', '3858009', '3861005', '3862003', '3864002', '3880007', '3881006', '3887005', '3889008', '3891000', '3895009', '3907006', '3911000', '3915009', '3917001', '3918006', '3926003', '3929005', '3936006', '3938007', '3942005', '3955006', '3957003', '3963007', '3967008', '3968003', '3969006', '3971006', '3980006', '3981005', '3985001', '3991004', '3998005', '4007002', '4008007', '4027001', '4034004', '4035003', '4036002', '4037006', '4044002', '4045001', '4052004', '4064007', '4068005', '4083000', '4084006', '4090005', '4094001', '4102006', '4114003', '4116001', '4119008', '4134002', '4139007', '4143006', '4149005', '4154001', '4165006', '4176005', '4192000', '4213001', '4214007', '4226002', '4252008', '4263006', '4266003', '4285000', '4293000', '4304000', '4319004', '4321009', '4323007', '4331002', '4333004', '4336007', '4337003', '4339000', '4341004', '4344007', '4348005', '4350002', '4363008', '4365001', '4380007', '4387005', '4388000', '4407008', '4411002', '4420006', '4424002', '4436008', '4438009', '4443002', '4447001', '4449003', '4450003', '4455008', '4457000', '4466001', '4467005', '4475004', '4487006', '4489009', '4503005', '4504004', '4505003', '4507006', '4511000', '4516005', '4520009', '4525004', '4533003', '4535005', '4539004', '4542005', '4544006', '4558008', '4563007', '4570007', '4579008', '4581005', '4585001', '4587009', '4593001', '4594007', '4613005', '4625008', '4626009', '4636001', '4640005', '4642002', '4660002', '4670000', '4671001', '4691008', '4692001', '4694000', '4699005', '4701005', '4707009', '4712005', '4713000', '4719001', '4727005', '4734007', '4737000', '4756005', '4758006', '4764004', '4765003', '4770005', '4772002', '4784000', '4804005', '4811009', '4815000', '4820000', '4827002', '4829004', '4847005', '4849008', '4862007', '4877004', '4891005', '4895001', '4902005', '4903000', '4904006', '4914002', '4929000', '4930005', '4934001', '4957007', '4966006', '4970003', '4974007', '4976009', '4987001', '4992004', '4993009', '5016005', '5019003', '5021008', '5022001', '5025004', '5032008', '5048009', '5055006', '5057003', '5065000', '5091004', '5105000', '5110001', '5113004', '5119000', '5121005', '5123008', '5130002', '5131003', '5135007', '5147001', '5151004', '5154007', '5161006', '5162004', '5165002', '5176003', '5182000', '5184004', '5186002', '5190000', '5191001', '5212002', '5216004', '5233006', '5243009', '5245002', '5246001', '5264008', '5267001', '5270002', '5273000', '5282006', '5290006', '5298004', '5304008', '5316002', '5317006', '5326009', '5328005', '5337005', '5338000', '5342002', '5348003', '5357009', '5373003', '5384005', '5391008', '5393006', '5402006', '5407000', '5415002', '5419008', '5422005', '5429001', '5431005', '5433008', '5446003', '5447007', '5452002', '5456004', '5457008', '5460001', '5479003', '5486006', '5489004', '5506006', '5517007', '5521000', '5536002', '5545001', '5551006', '5556001', '5570001', '5571002', '5572009', '5586008', '5608002', '5616006', '5621009', '5632009', '5636007', '5638008', '5648005', '5651003', '5663008', '5669007', '5671007', '5687005', '5690004', '5694008', '5721002', '5722009', '5726007', '5728008', '5731009', '5733007', '5738003', '5745003', '5760000', '5777000', '5781000', '5785009', '5787001', '5789003', '5796001', '5806001', '5807005', '5809008', '5812006', '5818005', '5821007', '5823005', '5832007', '5845006', '5857002', '5865004', '5870006', '5880005', '5892005', '5894006', '5897004', '5902003', '5925002', '5930003', '5947002', '5961007', '5966002', '5971009', '5983006', '5986003', '5992009', '5995006', '5997003', '5998008', '6005008', '6007000', '6019008', '6025007', '6026008', '6029001', '6035001', '6063004', '6069000', '6082008', '6092000', '6100001', '6108008', '6119006', '6125005', '6126006', '6127002', '6130009', '6133006', '6143009', '6146001', '6148000', '6157006', '6159009', '6161000', '6164008', '6166005', '6177004', '6187000', '6188005', '6189002', '6190006', '6195001', '6198004', '6200005', '6205000', '6213004', '6221005', '6225001', '6226000', '6227009', '6231003', '6238009', '6240004', '6255008', '6271008', '6274000', '6286002', '6289009', '6295005', '6307005', '6309008', '6319002', '6337001', '6339003', '6343004', '6353003', '6354009', '6355005', '6358007', '6361008', '6363006', '6370006', '6384001', '6385000', '6388003', '6396008', '6397004', '6399001', '6402000', '6403005', '6419003', '6433003', '6434009', '6438007', '6439004', '6443000', '6444006', '6465000', '6466004', '6470007', '6473009', '6480006', '6486000', '6487009', '6491004', '6499002', '6502003', '6506000', '6519001', '6521006', '6527005', '6535008', '6536009', '6543003', '6547002', '6555009', '6556005', '6562000', '6563005', '6567006', '6568001', '6585004', '6589005', '6601003', '6614002', '6615001', '6622009', '6634001', '6639006', '6650009', '6656003', '6657007', '6658002', '6661001', '6668007', '6670003', '6682007', '6689003', '6690007', '6704000', '6708002', '6712008', '6719004', '6722002', '6726004', '6727008', '6728003', '6732009', '6737003', '6745008', '6748005', '6759001', '6760006', '6763008', '6774004', '6776002', '6778001', '6779009', '6782004', '6794008', '6801000', '6812000', '6818001', '6832004']}, 'type'=>'CodeableConcept', 'path'=>'Processing.procedure', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/procedure-code'}},
          'additive' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Substance'], 'type'=>'Reference', 'path'=>'Processing.additive', 'min'=>0, 'max'=>1},
          'timeDateTime' => {'type'=>'dateTime', 'path'=>'Processing.time[x]', 'min'=>0, 'max'=>1},
          'timePeriod' => {'type'=>'Period', 'path'=>'Processing.time[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 0-1 string
        attr_accessor :procedure         # 0-1 CodeableConcept
        attr_accessor :additive          # 0-1 Reference(Substance)
        attr_accessor :timeDateTime      # 0-1 dateTime
        attr_accessor :timePeriod        # 0-1 Period
      end

      class Manipulation < FHIR::Model
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
          'time' => ['dateTime', 'Period']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Manipulation.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Manipulation.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Manipulation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Manipulation.description', 'min'=>0, 'max'=>1},
          'timeDateTime' => {'type'=>'dateTime', 'path'=>'Manipulation.time[x]', 'min'=>0, 'max'=>1},
          'timePeriod' => {'type'=>'Period', 'path'=>'Manipulation.time[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 0-1 string
        attr_accessor :timeDateTime      # 0-1 dateTime
        attr_accessor :timePeriod        # 0-1 Period
      end

      class Storage < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Storage.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Storage.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Storage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Storage.description', 'min'=>0, 'max'=>1},
          'temperature' => {'type'=>'decimal', 'path'=>'Storage.temperature', 'min'=>0, 'max'=>1},
          'scale' => {'valid_codes'=>{'http://hl7.org/fhir/product-storage-scale'=>['farenheit', 'celsius', 'kelvin']}, 'type'=>'code', 'path'=>'Storage.scale', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/product-storage-scale'}},
          'duration' => {'type'=>'Period', 'path'=>'Storage.duration', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 0-1 string
        attr_accessor :temperature       # 0-1 decimal
        attr_accessor :scale             # 0-1 code
        attr_accessor :duration          # 0-1 Period
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
      attr_accessor :productCategory   # 0-1 code
      attr_accessor :productCode       # 0-1 CodeableConcept
      attr_accessor :status            # 0-1 code
      attr_accessor :request           # 0-* [ Reference(ServiceRequest) ]
      attr_accessor :quantity          # 0-1 integer
      attr_accessor :parent            # 0-* [ Reference(BiologicallyDerivedProduct) ]
      attr_accessor :collection        # 0-1 BiologicallyDerivedProduct::Collection
      attr_accessor :processing        # 0-* [ BiologicallyDerivedProduct::Processing ]
      attr_accessor :manipulation      # 0-1 BiologicallyDerivedProduct::Manipulation
      attr_accessor :storage           # 0-* [ BiologicallyDerivedProduct::Storage ]

      def resourceType
        'BiologicallyDerivedProduct'
      end
    end
  end
end