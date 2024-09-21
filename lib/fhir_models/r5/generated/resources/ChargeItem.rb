module FHIR
  module R5
    class ChargeItem < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'occurrence' => ['dateTime', 'Period', 'Timing']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ChargeItem.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ChargeItem.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ChargeItem.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'ChargeItem.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'ChargeItem.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ChargeItem.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ChargeItem.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ChargeItem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'ChargeItem.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'definitionUri' => {'type'=>'uri', 'path'=>'ChargeItem.definitionUri', 'min'=>0, 'max'=>Float::INFINITY},
        'definitionCanonical' => {'type'=>'canonical', 'path'=>'ChargeItem.definitionCanonical', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/chargeitem-status'=>['planned', 'billable', 'not-billable', 'aborted', 'billed', 'entered-in-error', 'unknown']}, 'type'=>'code', 'path'=>'ChargeItem.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/chargeitem-status'}},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ChargeItem'], 'type'=>'Reference', 'path'=>'ChargeItem.partOf', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/chargeitem-billingcodes'=>['1100', '1210', '1320']}, 'type'=>'CodeableConcept', 'path'=>'ChargeItem.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/chargeitem-billingcodes'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'ChargeItem.subject', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'ChargeItem.encounter', 'min'=>0, 'max'=>1},
        'occurrenceDateTime' => {'type'=>'dateTime', 'path'=>'ChargeItem.occurrence[x]', 'min'=>0, 'max'=>1},
        'occurrencePeriod' => {'type'=>'Period', 'path'=>'ChargeItem.occurrence[x]', 'min'=>0, 'max'=>1},
        'occurrenceTiming' => {'type'=>'Timing', 'path'=>'ChargeItem.occurrence[x]', 'min'=>0, 'max'=>1},
        'performer' => {'type'=>'ChargeItem::Performer', 'path'=>'ChargeItem.performer', 'min'=>0, 'max'=>Float::INFINITY},
        'performingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ChargeItem.performingOrganization', 'min'=>0, 'max'=>1},
        'requestingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ChargeItem.requestingOrganization', 'min'=>0, 'max'=>1},
        'costCenter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ChargeItem.costCenter', 'min'=>0, 'max'=>1},
        'quantity' => {'type'=>'Quantity', 'path'=>'ChargeItem.quantity', 'min'=>0, 'max'=>1},
        'bodysite' => {'valid_codes'=>{'http://snomed.info/sct'=>['53075003', '76986006', '65258003', '54333003', '10770001', '363670009', '371216008', '371219001', '371205001', '371203008', '371292009', '371255009', '371288002', '371284000', '67169006', '9677004', '46971007', '3134008', '71822005', '89221001', '90894004', '89995006', '15368009', '30980004', '38607000', '2979003', '19193007', '67411009', '81012005', '75772009', '67453005', '80144004', '6417001', '113225006', '22457002', '45879002', '122474001', '122475000', '69030007', '29850006', '442083009', '106004', '107008', '108003', '110001', '111002', '116007', '124002', '149003', '155008', '167005', '202009', '205006', '206007', '221001', '227002', '233006', '235004', '246001', '247005', '251007', '256002', '263002', '266005', '272005', '273000', '283001', '284007', '289002', '301000', '311007', '315003', '318001', '344001', '345000', '356000', '393006', '402006', '405008', '414003', '420002', '422005', '446003', '457008', '461002', '464005', '465006', '471000', '480000', '485005', '528006', '552004', '565008', '582005', '587004', '589001', '595000', '608002', '621009', '635006', '650002', '660006', '661005', '667009', '688000', '691000', '692007', '723004', '774007', '790007', '798000', '808000', '809008', '823005', '830004', '836005', '885000', '895007', '917004', '921006', '947002', '955009', '976004', '996007', '1005009', '1012000', '1015003', '1028005', '1030007', '1063000', '1075005', '1076006', '1086007', '1087003', '1092001', '1099005', '1101003', '1106008', '1110006', '1122009', '1136004', '1159005', '1172006', '1173001', '1174007', '1193009', '1216008', '1231004', '1236009', '1243003', '1246006', '1263005', '1277008', '1307006', '1311000', '1350001', '1353004', '1403006', '1425000', '1439000', '1441004', '1456008', '1467009', '1484003', '1490004', '1502004', '1511004', '1516009', '1527006', '1537001', '1541002', '1562001', '1580005', '1581009', '1584001', '1600003', '1605008', '1610007', '1611006', '1617005', '1620002', '1626008', '1627004', '1630006', '1631005', '1650005', '1655000', '1659006', '1684009', '1706004', '1707008', '1711002', '1716007', '1721005', '1729007', '1732005', '1765002', '1780008', '1781007', '1797002', '1818002', '1825009', '1832000', '1840006', '1849007', '1853009', '1874005', '1895000', '1902009', '1910005', '1918003', '1927002', '1992003', '1997009', '2010005', '2020000', '2031008', '2033006', '2044003', '2048000', '2049008', '2059009', '2071003', '2076008', '2083001', '2095001', '2123001', '2150006', '2156000', '2160002', '2175005', '2182009', '2192001', '2205003', '2209009', '2236006', '2246008', '2255006', '2292006', '2302002', '2305000', '2306004', '2327009', '2330002', '2332005', '2334006', '2349003', '2372001', '2383005', '2389009', '2395005', '2397002', '2400006', '2402003', '2421006', '2433001', '2436009', '2453002', '2454008', '2484000', '2489005', '2499000', '2502001', '2504000', '2510000', '2539000', '2543001', '2550002', '2577006', '2579009', '2592007', '2600000', '2620004', '2639009', '2653009', '2666009', '2672009', '2675006', '2681003', '2682005', '2686008', '2687004', '2695000', '2703009', '2712006', '2718005', '2726002', '2730004', '2739003', '2741002', '2746007', '2748008', '2759004', '2771005', '2789006', '2792005', '2803000', '2810006', '2812003', '2824005', '2826007', '2830005', '2839006', '2841007', '2845003', '2848001', '2855004', '2861001', '2894003', '2905008', '2909002', '2920002', '2922005', '2923000', '2969000', '2986006', '2998001', '3003007', '3008003', '3028004', '3039001', '3042007', '3054007', '3055008', '3056009', '3057000', '3058005', '3062004', '3068000', '3081007', '3093003', '3100007', '3113001', '3117000', '3118005', '3120008', '3138006', '3153003', '3156006', '3159004', '3169005', '3178004', '3194006', '3198009', '3215002', '3222005', '3227004', '3236000', '3243006', '3255000', '3262009', '3279003', '3295003', '3301002', '3302009', '3315000', '3332001', '3336003', '3341006', '3350008', '3362007', '3366005', '3370002', '3374006', '3377004', '3382006', '3383001', '3394002', '3395001', '3396000', '3400000', '3409004', '3417007', '3438001', '3444002', '3447009', '3460003', '3462006', '3471002', '3478008', '3481003', '3488009', '3490005', '3524005', '3538003', '3541007', '3553006', '3556003', '3563003', '3572006', '3578005', '3582007', '3584008', '3594003', '3608004', '3609007', '3646006', '3663005', '3665003', '3670005', '3711007', '3743007', '3761003', '3766008', '3785006', '3788008', '3789000', '3810000', '3838008', '3860006', '3865001', '3867009', '3876002', '3877006', '3910004', '3916005', '3924000', '3931001', '3935005', '3937002', '3954005', '3956007', '3959000', '3960005', '3964001', '3966004', '3977005', '3984002', '3989007', '4015004', '4019005', '4029003', '4061004', '4066009', '4072009', '4081003', '4093007', '4111006', '4117005', '4121003', '4146003', '4148002', '4150005', '4158003', '4159006', '4180000', '4193005', '4205002', '4212006', '4215008', '4247003', '4258007', '4276000', '4281009', '4295007', '4303006', '4312008', '4317002', '4328003', '4335006', '4352005', '4358009', '4360006', '4369007', '4371007', '4375003', '4377006', '4394008', '4402002', '4419000', '4421005', '4430002', '4432005', '4442007', '4486002', '4524000', '4527007', '4537002', '4548009', '4549001', '4566004', '4573009', '4578000', '4588004', '4596009', '4603002', '4606005', '4621004', '4624007', '4647008', '4651005', '4658004', '4677002', '4703008', '4717004', '4718009', '4743003', '4755009', '4759003', '4766002', '4768001', '4774001', '4775000', '4799000', '4810005', '4812002', '4828007', '4840007', '4843009', '4861000', '4866005', '4870002', '4871003', '4881004', '4888005', '4897009', '4905007', '4906008', '4924005', '4942000', '4954000', '4956003', '4958002', '5001007', '5023006', '5026003', '5046008', '5068003', '5069006', '5076001', '5115006', '5122003', '5128004', '5192008', '5194009', '5195005', '5204005', '5213007', '5225005', '5228007', '5229004', '5261000', '5272005', '5279001', '5296000', '5324007', '5329002', '5336001', '5347008', '5362005', '5366008', '5379004', '5382009', '5394000', '5398002', '5403001', '5421003', '5427004', '5458003', '5459006', '5491007', '5493005', '5498001', '5520004', '5538001', '5544002', '5560003', '5564007', '5574005', '5580002', '5597008', '5611001', '5625000', '5627008', '5633004', '5643001', '5644007', '5653000', '5665001', '5668004', '5682004', '5696005', '5697001', '5709001', '5713008', '5717009', '5718004', '5727003', '5742000', '5751008', '5769004', '5780004', '5798000', '5802004', '5814007', '5815008', '5816009', '5825003', '5828001', '5847003', '5854009', '5868002', '5872003', '5881009', '5882002', '5889006', '5890002', '5893000', '5898009', '5923009', '5926001', '5928000', '5942008', '5943003', '5944009', '5948007', '5951000', '5953002', '5976004', '5979006', '5996007', '6001004', '6004007', '6006009', '6009002', '6014003', '6023000', '6032003', '6046003', '6050005', '6059006', '6062009', '6073002', '6074008', '6076005', '6104005', '6105006', '6110005', '6216007', '6217003', '6229007', '6253001', '6268000', '6269008', '6279005', '6317000', '6325003', '6326002', '6335009', '6359004', '6371005', '6375001', '6392005', '6404004', '6413002', '6423006', '6424000', '6445007', '6448009', '6450001', '6472004', '6504002', '6511003', '6530003', '6533001', '6538005', '6541001', '6544009', '6550004', '6551000', '6553002', '6564004', '6566002', '6572002', '6598008', '6606008', '6608009', '6620001', '6623004', '6633007', '6643005', '6646002', '6649009', '6651008', '6684008', '6685009', '6711001', '6720005', '6731002', '6739000', '6742006', '6750002', '6757004', '6787005', '6789008', '6799003', '6805009', '6820003', '6828005', '6829002', '6834003', '6841009', '6844001', '6850006', '6864006', '6866008', '6871001', '6894000', '6902008', '6905005', '6912001', '6914000', '6921000', '6930008', '6944002', '6969002', '6975006', '6981003', '6987004', '6989001', '6991009', '7035006', '7050002', '7067009', '7076002', '7083009', '7091000', '7099003', '7117004', '7148007', '7149004', '7154008', '7160008', '7167006', '7173007', '7188002', '7192009', '7227003', '7234001', '7242000', '7295002', '7296001', '7311008', '7344002', '7345001', '7362006', '7376007', '7378008', '7384006', '7404008', '7435002', '7471001', '7477002', '7480001', '7494000', '7498002', '7507003', '7524009', '7532001', '7554004', '7566005', '7569003', '7591005', '7597009', '7605000', '7610001', '7629007', '7651004', '7652006', '7657000', '7658005', '7697002', '7712004', '7726008', '7736000', '7742001', '7748002', '7755000', '7756004', '7764005', '7769000', '7783003', '7820009', '7829005', '7832008', '7835005', '7840002', '7841003', '7844006', '7851002', '7854005', '7872004', '7874003', '7880006', '7884002', '7885001', '7892006', '7896009', '7911004', '7925003', '7936005', '7944005', '7954009', '7967007', '7986004', '7991003', '7999001', '8001006', '8012006', '8017000', '8024004', '8039003', '8040001', '8045006', '8057002', '8059004', '8067007', '8068002', '8079007', '8091003', '8100009', '8111001', '8112008', '8119004', '8128003', '8133004', '8157004', '8158009', '8159001', '8160006', '8161005', '8165001', '8205005', '8225009', '8242003', '8251006', '8264007', '8265008', '8266009', '8289001', '8292002', '8314003', '8334002', '8356004', '8369000', '8373002', '8387002', '8389004', '8412003', '8415001', '8454000', '8464009', '8482007', '8483002', '8496001', '8523001', '8546004', '8556000', '8559007', '8560002', '8580001', '8595004', '8598002', '8600008', '8603005', '8604004', '8608001', '8617001', '8623006', '8629005', '8640002', '8668003', '8671006', '8677005', '8688004', '8695008', '8710005', '8711009', '8714001', '8752000', '8775007', '8784007', '8810002', '8814006', '8815007', '8820007', '8821006', '8827005', '8839002', '8845005', '8850004', '8854008', '8862000', '8873007', '8887007', '8892009', '8894005', '8897003', '8907008', '8910001', '8911002', '8928004', '8931003', '8935007', '8942007', '8965002', '8966001', '8983005', '8988001', '8993003', '9000002', '9003000', '9018004', '9040008', '9055004', '9073001', '9081000', '9086005', '9089003', '9108007', '9127001', '9156001', '9185007', '9186008', '9188009', '9208002', '9212008', '9229006', '9231002', '9240003', '9242006', '9258009', '9261005', '9262003', '9284003', '9290004', '9305001', '9317004', '9320007', '9321006', '9325002', '9332006', '9348007', '9379006', '9380009', '9384000', '9390001', '9432007', '9438006', '9454009', '9455005', '9475001', '9481009', '9490002', '9498009', '9502002', '9512009', '9535007', '9558005', '9566001', '9568000', '9596006', '9609000', '9625005', '9642004', '9646001', '9654004', '9659009', '9662007', '9668006', '9683001', '9684007', '9708001', '9736006', '9743000', '9758008', '9770007', '9775002', '9779008', '9783008', '9791004', '9796009', '9813009', '9825007', '9837009', '9840009', '9841008', '9846003', '9847007', '9849005', '9870004', '9875009', '9878006', '9880000', '9881001', '9891007', '9898001', '9951005', '9968009', '9970000', '9976006', '9994000', '9999005', '10013000', '10024003', '10025002', '10026001', '10036009', '10042008', '10047002', '10052007', '10056005', '10062000', '10119003', '10124000', '10134009', '10141003', '10145007', '10148009', '10149001', '10151002', '10167008', '10176001', '10200004', '10208006', '10209003', '10245000', '10271001', '10293006', '10296003', '10299005', '10328008', '10339006', '10410005', '10415000', '10417008']}, 'type'=>'CodeableConcept', 'path'=>'ChargeItem.bodysite', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/body-site'}},
        'unitPriceComponent' => {'type'=>'MonetaryComponent', 'path'=>'ChargeItem.unitPriceComponent', 'min'=>0, 'max'=>1},
        'totalPriceComponent' => {'type'=>'MonetaryComponent', 'path'=>'ChargeItem.totalPriceComponent', 'min'=>0, 'max'=>1},
        'overrideReason' => {'type'=>'CodeableConcept', 'path'=>'ChargeItem.overrideReason', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'enterer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'ChargeItem.enterer', 'min'=>0, 'max'=>1},
        'enteredDate' => {'type'=>'dateTime', 'path'=>'ChargeItem.enteredDate', 'min'=>0, 'max'=>1},
        'reason' => {'valid_codes'=>{'http://hl7.org/fhir/sid/icd-10'=>['I', 'A00-A09', 'A00', 'A00.0', 'A00.1', 'A00.9', 'A01', 'A01.0', 'A01.1', 'A01.2', 'A01.3', 'A01.4', 'A02', 'A02.0', 'A02.1', 'A02.2', 'A02.8', 'A02.9', 'A03', 'A03.0', 'A03.1', 'A03.2', 'A03.3', 'A03.8', 'A03.9', 'A04', 'A04.0', 'A04.1', 'A04.2', 'A04.3', 'A04.4', 'A04.5', 'A04.6', 'A04.7', 'A04.8', 'A04.9', 'A05', 'A05.0', 'A05.1', 'A05.2', 'A05.3', 'A05.4', 'A05.8', 'A05.9', 'A06', 'A06.0', 'A06.1', 'A06.2', 'A06.3', 'A06.4', 'A06.5', 'A06.6', 'A06.7', 'A06.8', 'A06.9', 'A07', 'A07.0', 'A07.1', 'A07.2', 'A07.3', 'A07.8', 'A07.9', 'A08', 'A08.0', 'A08.1', 'A08.2', 'A08.3', 'A08.4', 'A08.5', 'A09', 'A09.0', 'A09.9', 'A15-A19', 'A15', 'A15.0', 'A15.1', 'A15.2', 'A15.3', 'A15.4', 'A15.5', 'A15.6', 'A15.7', 'A15.8', 'A15.9', 'A16', 'A16.0', 'A16.1', 'A16.2', 'A16.3', 'A16.4', 'A16.5', 'A16.7', 'A16.8', 'A16.9', 'A17', 'A17.0', 'A17.1', 'A17.8', 'A17.9', 'A18', 'A18.0', 'A18.1', 'A18.2', 'A18.3', 'A18.4', 'A18.5', 'A18.6', 'A18.7', 'A18.8', 'A19', 'A19.0', 'A19.1', 'A19.2', 'A19.8', 'A19.9', 'A20-A28', 'A20', 'A20.0', 'A20.1', 'A20.2', 'A20.3', 'A20.7', 'A20.8', 'A20.9', 'A21', 'A21.0', 'A21.1', 'A21.2', 'A21.3', 'A21.7', 'A21.8', 'A21.9', 'A22', 'A22.0', 'A22.1', 'A22.2', 'A22.7', 'A22.8', 'A22.9', 'A23', 'A23.0', 'A23.1', 'A23.2', 'A23.3', 'A23.8', 'A23.9', 'A24', 'A24.0', 'A24.1', 'A24.2', 'A24.3', 'A24.4', 'A25', 'A25.0', 'A25.1', 'A25.9', 'A26', 'A26.0', 'A26.7', 'A26.8', 'A26.9', 'A27', 'A27.0', 'A27.8', 'A27.9', 'A28', 'A28.0', 'A28.1', 'A28.2', 'A28.8', 'A28.9', 'A30-A49', 'A30', 'A30.0', 'A30.1', 'A30.2', 'A30.3', 'A30.4', 'A30.5', 'A30.8', 'A30.9', 'A31', 'A31.0', 'A31.1', 'A31.8', 'A31.9', 'A32', 'A32.0', 'A32.1', 'A32.7', 'A32.8', 'A32.9', 'A33', 'A34', 'A35', 'A36', 'A36.0', 'A36.1', 'A36.2', 'A36.3', 'A36.8', 'A36.9', 'A37', 'A37.0', 'A37.1', 'A37.8', 'A37.9', 'A38', 'A39', 'A39.0', 'A39.1', 'A39.2', 'A39.3', 'A39.4', 'A39.5', 'A39.8', 'A39.9', 'A40', 'A40.0', 'A40.1', 'A40.2', 'A40.3', 'A40.8', 'A40.9', 'A41', 'A41.0', 'A41.1', 'A41.2', 'A41.3', 'A41.4', 'A41.5', 'A41.8', 'A41.9', 'A42', 'A42.0', 'A42.1', 'A42.2', 'A42.7', 'A42.8', 'A42.9', 'A43', 'A43.0', 'A43.1', 'A43.8', 'A43.9', 'A44', 'A44.0', 'A44.1', 'A44.8', 'A44.9', 'A46', 'A48', 'A48.0', 'A48.1', 'A48.2', 'A48.3', 'A48.4', 'A48.8', 'A49', 'A49.0', 'A49.1', 'A49.2', 'A49.3', 'A49.8', 'A49.9', 'A50-A64', 'A50', 'A50.0', 'A50.1', 'A50.2', 'A50.3', 'A50.4', 'A50.5', 'A50.6', 'A50.7', 'A50.9', 'A51', 'A51.0', 'A51.1', 'A51.2', 'A51.3', 'A51.4', 'A51.5', 'A51.9', 'A52', 'A52.0', 'A52.1', 'A52.2', 'A52.3', 'A52.7', 'A52.8', 'A52.9', 'A53', 'A53.0', 'A53.9', 'A54', 'A54.0', 'A54.1', 'A54.2', 'A54.3', 'A54.4', 'A54.5', 'A54.6', 'A54.8', 'A54.9', 'A55', 'A56', 'A56.0', 'A56.1', 'A56.2', 'A56.3', 'A56.4', 'A56.8', 'A57', 'A58', 'A59', 'A59.0', 'A59.8', 'A59.9', 'A60', 'A60.0', 'A60.1', 'A60.9', 'A63', 'A63.0', 'A63.8', 'A64', 'A65-A69', 'A65', 'A66', 'A66.0', 'A66.1', 'A66.2', 'A66.3', 'A66.4', 'A66.5', 'A66.6', 'A66.7', 'A66.8', 'A66.9', 'A67', 'A67.0', 'A67.1', 'A67.2', 'A67.3', 'A67.9', 'A68', 'A68.0', 'A68.1', 'A68.9', 'A69', 'A69.0', 'A69.1', 'A69.2', 'A69.8', 'A69.9', 'A70-A74', 'A70', 'A71', 'A71.0', 'A71.1', 'A71.9', 'A74', 'A74.0', 'A74.8', 'A74.9', 'A75-A79', 'A75', 'A75.0', 'A75.1', 'A75.2', 'A75.3', 'A75.9', 'A77', 'A77.0', 'A77.1', 'A77.2', 'A77.3', 'A77.8', 'A77.9', 'A78', 'A79', 'A79.0', 'A79.1', 'A79.8', 'A79.9', 'A80-A89', 'A80', 'A80.0', 'A80.1', 'A80.2', 'A80.3', 'A80.4', 'A80.9', 'A81', 'A81.0', 'A81.1', 'A81.2', 'A81.8', 'A81.9', 'A82', 'A82.0', 'A82.1', 'A82.9', 'A83', 'A83.0', 'A83.1', 'A83.2', 'A83.3', 'A83.4', 'A83.5', 'A83.6', 'A83.8', 'A83.9', 'A84', 'A84.0', 'A84.1', 'A84.8', 'A84.9', 'A85', 'A85.0', 'A85.1', 'A85.2', 'A85.8', 'A86', 'A87', 'A87.0', 'A87.1', 'A87.2', 'A87.8', 'A87.9', 'A88', 'A88.0', 'A88.1', 'A88.8', 'A89', 'A92-A99', 'A92', 'A92.0', 'A92.1', 'A92.2', 'A92.3', 'A92.4', 'A92.5', 'A92.8', 'A92.9', 'A93', 'A93.0', 'A93.1', 'A93.2', 'A93.8', 'A94', 'A95', 'A95.0', 'A95.1', 'A95.9', 'A96', 'A96.0', 'A96.1', 'A96.2', 'A96.8', 'A96.9', 'A97', 'A97.0', 'A97.1', 'A97.2', 'A97.9', 'A98', 'A98.0', 'A98.1', 'A98.2', 'A98.3', 'A98.4', 'A98.5', 'A98.8', 'A99', 'B00-B09', 'B00', 'B00.0', 'B00.1', 'B00.2', 'B00.3', 'B00.4', 'B00.5', 'B00.7', 'B00.8', 'B00.9', 'B01', 'B01.0', 'B01.1', 'B01.2', 'B01.8', 'B01.9', 'B02', 'B02.0', 'B02.1', 'B02.2', 'B02.3', 'B02.7', 'B02.8', 'B02.9', 'B03', 'B04', 'B05', 'B05.0', 'B05.1', 'B05.2', 'B05.3', 'B05.4', 'B05.8', 'B05.9', 'B06', 'B06.0', 'B06.8', 'B06.9', 'B07', 'B08', 'B08.0', 'B08.1', 'B08.2', 'B08.3', 'B08.4', 'B08.5', 'B08.8', 'B09', 'B15-B19', 'B15', 'B15.0', 'B15.9', 'B16', 'B16.0', 'B16.1', 'B16.2', 'B16.9', 'B17', 'B17.0', 'B17.1', 'B17.2', 'B17.8', 'B17.9', 'B18', 'B18.0', 'B18.1', 'B18.2', 'B18.8', 'B18.9', 'B19', 'B19.0', 'B19.9', 'B20-B24', 'B20', 'B20.0', 'B20.1', 'B20.2', 'B20.3', 'B20.4', 'B20.5', 'B20.6', 'B20.7', 'B20.8', 'B20.9', 'B21', 'B21.0', 'B21.1', 'B21.2', 'B21.3', 'B21.7', 'B21.8', 'B21.9', 'B22', 'B22.0', 'B22.1', 'B22.2', 'B22.7', 'B23', 'B23.0', 'B23.1', 'B23.2', 'B23.8', 'B24', 'B25-B34', 'B25', 'B25.0', 'B25.1', 'B25.2', 'B25.8', 'B25.9', 'B26', 'B26.0', 'B26.1', 'B26.2', 'B26.3', 'B26.8', 'B26.9', 'B27', 'B27.0', 'B27.1', 'B27.8', 'B27.9', 'B30', 'B30.0', 'B30.1', 'B30.2', 'B30.3', 'B30.8', 'B30.9', 'B33', 'B33.0', 'B33.1', 'B33.2', 'B33.3', 'B33.4', 'B33.8', 'B34', 'B34.0', 'B34.1', 'B34.2', 'B34.3', 'B34.4', 'B34.8', 'B34.9', 'B35-B49', 'B35', 'B35.0', 'B35.1', 'B35.2', 'B35.3', 'B35.4', 'B35.5', 'B35.6', 'B35.8', 'B35.9', 'B36', 'B36.0', 'B36.1', 'B36.2', 'B36.3', 'B36.8', 'B36.9', 'B37', 'B37.0', 'B37.1', 'B37.2', 'B37.3', 'B37.4', 'B37.5', 'B37.6', 'B37.7', 'B37.8', 'B37.9', 'B38', 'B38.0', 'B38.1', 'B38.2', 'B38.3', 'B38.4', 'B38.7', 'B38.8', 'B38.9', 'B39', 'B39.0', 'B39.1', 'B39.2', 'B39.3', 'B39.4', 'B39.5', 'B39.9', 'B40', 'B40.0', 'B40.1', 'B40.2', 'B40.3', 'B40.7', 'B40.8', 'B40.9', 'B41', 'B41.0', 'B41.7', 'B41.8', 'B41.9', 'B42', 'B42.0', 'B42.1', 'B42.7', 'B42.8', 'B42.9', 'B43', 'B43.0', 'B43.1', 'B43.2', 'B43.8', 'B43.9', 'B44', 'B44.0', 'B44.1', 'B44.2', 'B44.7', 'B44.8', 'B44.9', 'B45', 'B45.0', 'B45.1', 'B45.2', 'B45.3', 'B45.7', 'B45.8', 'B45.9', 'B46', 'B46.0', 'B46.1', 'B46.2', 'B46.3', 'B46.4', 'B46.5', 'B46.8', 'B46.9', 'B47', 'B47.0', 'B47.1', 'B47.9', 'B48', 'B48.0', 'B48.1', 'B48.2', 'B48.3', 'B48.4', 'B48.5', 'B48.7', 'B48.8', 'B49', 'B50-B64', 'B50', 'B50.0', 'B50.8', 'B50.9', 'B51', 'B51.0', 'B51.8', 'B51.9', 'B52', 'B52.0', 'B52.8', 'B52.9', 'B53', 'B53.0', 'B53.1', 'B53.8', 'B54', 'B55', 'B55.0', 'B55.1', 'B55.2', 'B55.9', 'B56', 'B56.0', 'B56.1', 'B56.9', 'B57', 'B57.0', 'B57.1', 'B57.2', 'B57.3', 'B57.4', 'B57.5', 'B58', 'B58.0', 'B58.1', 'B58.2', 'B58.3', 'B58.8', 'B58.9', 'B60', 'B60.0', 'B60.1', 'B60.2', 'B60.8', 'B64', 'B65-B83', 'B65', 'B65.0', 'B65.1', 'B65.2', 'B65.3', 'B65.8', 'B65.9', 'B66', 'B66.0', 'B66.1', 'B66.2', 'B66.3', 'B66.4', 'B66.5', 'B66.8', 'B66.9', 'B67', 'B67.0', 'B67.1', 'B67.2', 'B67.3', 'B67.4', 'B67.5', 'B67.6', 'B67.7', 'B67.8', 'B67.9', 'B68', 'B68.0', 'B68.1', 'B68.9', 'B69', 'B69.0', 'B69.1', 'B69.8', 'B69.9', 'B70', 'B70.0', 'B70.1', 'B71', 'B71.0', 'B71.1', 'B71.8', 'B71.9', 'B72', 'B73', 'B74', 'B74.0', 'B74.1', 'B74.2', 'B74.3', 'B74.4', 'B74.8', 'B74.9', 'B75', 'B76', 'B76.0', 'B76.1', 'B76.8', 'B76.9', 'B77', 'B77.0', 'B77.8', 'B77.9', 'B78', 'B78.0', 'B78.1', 'B78.7', 'B78.9', 'B79', 'B80', 'B81', 'B81.0', 'B81.1', 'B81.2', 'B81.3', 'B81.4', 'B81.8', 'B82', 'B82.0', 'B82.9', 'B83', 'B83.0', 'B83.1', 'B83.2', 'B83.3', 'B83.4', 'B83.8', 'B83.9', 'B85-B89', 'B85', 'B85.0', 'B85.1', 'B85.2', 'B85.3', 'B85.4', 'B86', 'B87', 'B87.0', 'B87.1', 'B87.2', 'B87.3', 'B87.4', 'B87.8', 'B87.9', 'B88', 'B88.0', 'B88.1', 'B88.2', 'B88.3', 'B88.8', 'B88.9', 'B89', 'B90-B94', 'B90', 'B90.0', 'B90.1', 'B90.2', 'B90.8', 'B90.9', 'B91', 'B92', 'B94', 'B94.0', 'B94.1', 'B94.2', 'B94.8', 'B94.9', 'B95-B98', 'B95', 'B95.0', 'B95.1', 'B95.2', 'B95.3', 'B95.4', 'B95.5', 'B95.6', 'B95.7', 'B95.8', 'B96', 'B96.0', 'B96.1', 'B96.2', 'B96.3', 'B96.4', 'B96.5', 'B96.6', 'B96.7', 'B96.8', 'B97', 'B97.0', 'B97.1', 'B97.2', 'B97.3', 'B97.4', 'B97.5', 'B97.6', 'B97.7', 'B97.8', 'B98', 'B98.0', 'B98.1', 'B99-B99', 'B99', 'II', 'C00-C97', 'C00-C75', 'C00-C14', 'C00', 'C00.0', 'C00.1', 'C00.2', 'C00.3', 'C00.4', 'C00.5', 'C00.6', 'C00.8', 'C00.9', 'C01', 'C02', 'C02.0', 'C02.1', 'C02.2', 'C02.3', 'C02.4', 'C02.8', 'C02.9', 'C03', 'C03.0', 'C03.1', 'C03.9', 'C04', 'C04.0', 'C04.1', 'C04.8', 'C04.9', 'C05', 'C05.0', 'C05.1', 'C05.2', 'C05.8', 'C05.9', 'C06', 'C06.0', 'C06.1', 'C06.2', 'C06.8', 'C06.9', 'C07', 'C08', 'C08.0', 'C08.1', 'C08.8', 'C08.9', 'C09', 'C09.0', 'C09.1', 'C09.8', 'C09.9', 'C10', 'C10.0', 'C10.1']}, 'type'=>'CodeableConcept', 'path'=>'ChargeItem.reason', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/icd-10'}},
        'service' => {'type'=>'CodeableReference', 'path'=>'ChargeItem.service', 'min'=>0, 'max'=>Float::INFINITY},
        'product' => {'type'=>'CodeableReference', 'path'=>'ChargeItem.product', 'min'=>0, 'max'=>Float::INFINITY},
        'account' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Account'], 'type'=>'Reference', 'path'=>'ChargeItem.account', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'type'=>'Annotation', 'path'=>'ChargeItem.note', 'min'=>0, 'max'=>Float::INFINITY},
        'supportingInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'ChargeItem.supportingInformation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Performer < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Performer.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Performer.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Performer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'function' => {'valid_codes'=>{'http://snomed.info/sct'=>['223366009', '1421009', '3430008', '3842006', '4162009', '5275007', '6816002', '6868009', '8724009', '11661002', '11911009', '11935004', '13580004', '14698002', '17561000', '18803008', '18850004', '19244007', '20145008', '21365001', '21450003', '22515006', '22731001', '22983004', '23278007', '24430003', '24590004', '25961008', '26042002', '26369006', '28229004', '28411006', '28544002', '36682004', '37154003', '37504001', '39677007', '40127002', '40204001', '40570005', '41672002', '41904004', '43702002', '44652006', '45440000', '45544007', '45956004', '46255001', '48740002', '49203003', '49993003', '50149000', '54503009', '56397003', '56466003', '56542007', '56545009', '57654006', '59058001', '59169001', '59317003', '59944000', '60008001', '61207006', '61246008', '61345009', '61894003', '62247001', '63098009', '66476003', '66862007', '68867008', '68950000', '69280009', '71838004', '73265009', '75271001', '76166008', '76231001', '76899008', '78703002', '78729002', '79898004', '80409005', '80546007', '80584001', '80933006', '81464008', '82296001', '83273008', '83685006', '85733003', '88189002', '90201008', '90655003', '106289002', '106291005', '106292003', '106293008', '106294002', '106296000', '106330007', '158965000', '158966004', '158967008', '158968003', '158969006', '158971006', '158972004', '158973009', '158974003', '158975002', '158977005', '158978000', '158979008', '158980006', '158983008', '158984002', '158985001', '158986000', '158987009', '158988004', '158989007', '158990003', '158992006', '158993001', '158994007', '158995008', '158996009', '158997000', '158998005', '158999002', '159001001', '159002008', '159003003', '159004009', '159005005', '159006006', '159007002', '159010009', '159011008', '159012001', '159014000', '159016003', '159017007', '159018002', '159019005', '159021000', '159022007', '159025009', '159026005', '159027001', '159028006', '159033005', '159034004', '159035003', '159036002', '159037006', '159038001', '159039009', '159040006', '159041005', '159141008', '159972006', '160008000', '224529009', '224530004', '224531000', '224532007', '224533002', '224534008', '224535009', '224536005', '224537001', '224538006', '224540001', '224541002', '224542009', '224543004', '224544005', '224545006', '224546007', '224547003', '224548008', '224549000', '224550000', '224551001', '224552008', '224554009', '224555005', '224556006', '224557002', '224558007', '224559004', '224560009', '224562001', '224563006', '224564000', '224565004', '224566003', '224567007', '224569005', '224570006', '224571005', '224572003', '224573008', '224574002', '224575001', '224576000', '224577009', '224578004', '224579007', '224580005', '224581009', '224583007', '224584001', '224585000', '224586004', '224587008', '224588003', '224589006', '224590002', '224591003', '224592005', '224593000', '224594006', '224595007', '224596008', '224597004', '224598009', '224599001', '224600003', '224601004', '224602006', '224603001', '224604007', '224606009', '224607000', '224608005', '224609002', '224610007', '224614003', '224615002', '224620002', '224621003', '224622005', '224623000', '224624006', '224625007', '224626008', '224936003', '225726006', '225727002', '265937000', '265939002', '283875005', '302211009', '303124005', '303129000', '303133007', '303134001', '304291006', '304292004', '307988006', '308002005', '309294001', '309295000', '309296004', '309322005', '309323000', '309324006', '309326008', '309327004', '309328009', '309329001', '309330006', '309331005', '309332003', '309333008', '309334002', '309335001', '309336000', '309337009', '309338004', '309339007', '309340009', '309341008', '309342001', '309343006', '309345004', '309346003', '309347007', '309348002', '309349005', '309350005', '309351009', '309352002', '309353007', '309354001', '309355000', '309356004', '309357008', '309358003', '309359006', '309360001', '309361002', '309362009', '309363004', '309364005', '309366007', '309367003', '309368008', '309369000', '309371000', '309372007', '309373002', '309374008', '309375009', '309376005', '309377001', '309378006', '309379003', '309380000', '309381001', '309382008', '309383003', '309384009', '309385005', '309386006', '309388007', '309389004', '309390008', '309391007', '309392000', '309393005', '309394004', '309395003', '309396002', '309397006', '309398001', '309399009', '309400002', '309401003', '309402005', '309403000', '309404006', '309409001', '309410006', '309411005', '309412003', '309413008', '309414002', '309415001', '309416000', '309417009', '309418004', '309419007', '309420001', '309421002', '309422009', '309423004', '309427003', '309428008', '309429000', '309434001', '309435000', '309436004', '309437008', '309439006', '309440008', '309441007', '309442000', '309443005', '309444004', '309445003', '309446002', '309450009', '309452001', '309453006', '309454000', '309455004', '309459005', '309460000', '310170009', '310171008', '310172001', '310173006', '310174000', '310175004', '310176003', '310177007', '310178002', '310179005', '310180008', '310181007', '310182000', '310184004', '310185003', '310186002', '310187006', '310188001', '310189009', '310190000', '310191001', '310192008', '310193003', '310194009', '310512001', '311441001', '312485001', '372102007', '387619007', '394572006', '394618009', '397897005', '397903001', '397908005', '398130009', '398238009', '404940000', '405277009', '405278004', '405279007', '405623001', '405684005', '405685006', '408798009', '408799001', '409974004', '409975003', '413854007', '415075003', '415506007', '416160000', '420409002', '420678001', '421841007', '422140007', '422234006', '432100008', '442867008', '443090005', '444912007', '445313000', '445451001', '446050000', '446701002', '449161006', '471302004', '720503005', '721936008', '721937004', '721938009', '721939001', '721940004', '721941000', '721942007', '721943002', '734293001', '734294007', '763292005', '768730001', '768731002', '768732009', '768819009', '768825008', '768826009', '768827000', '768828005', '768829002', '768832004', '768833009', '768834003', '768836001', '768837005', '768839008', '789543004', '840583002', '840584008', '878785002', '878786001', '878787005', '897187007', '1172950003', '1186716007', '1186914001', '3981000175106', '9371000175105', '25941000087102', '26031000087100', '26071000087103', '26091000087104', '450044741000087104']}, 'type'=>'CodeableConcept', 'path'=>'Performer.function', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/performer-role'}},
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Performer.actor', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :function          # 0-1 CodeableConcept
        attr_accessor :actor             # 1-1 Reference(Practitioner|PractitionerRole|Organization|HealthcareService|CareTeam|Patient|Device|RelatedPerson)
      end

      attr_accessor :id                     # 0-1 id
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :language               # 0-1 code
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :definitionUri          # 0-* [ uri ]
      attr_accessor :definitionCanonical    # 0-* [ canonical ]
      attr_accessor :status                 # 1-1 code
      attr_accessor :partOf                 # 0-* [ Reference(ChargeItem) ]
      attr_accessor :code                   # 1-1 CodeableConcept
      attr_accessor :subject                # 1-1 Reference(Patient|Group)
      attr_accessor :encounter              # 0-1 Reference(Encounter)
      attr_accessor :occurrenceDateTime     # 0-1 dateTime
      attr_accessor :occurrencePeriod       # 0-1 Period
      attr_accessor :occurrenceTiming       # 0-1 Timing
      attr_accessor :performer              # 0-* [ ChargeItem::Performer ]
      attr_accessor :performingOrganization # 0-1 Reference(Organization)
      attr_accessor :requestingOrganization # 0-1 Reference(Organization)
      attr_accessor :costCenter             # 0-1 Reference(Organization)
      attr_accessor :quantity               # 0-1 Quantity
      attr_accessor :bodysite               # 0-* [ CodeableConcept ]
      attr_accessor :unitPriceComponent     # 0-1 MonetaryComponent
      attr_accessor :totalPriceComponent    # 0-1 MonetaryComponent
      attr_accessor :overrideReason         # 0-1 CodeableConcept
      attr_accessor :enterer                # 0-1 Reference(Practitioner|PractitionerRole|Organization|Patient|Device|RelatedPerson)
      attr_accessor :enteredDate            # 0-1 dateTime
      attr_accessor :reason                 # 0-* [ CodeableConcept ]
      attr_accessor :service                # 0-* [ CodeableReference ]
      attr_accessor :product                # 0-* [ CodeableReference ]
      attr_accessor :account                # 0-* [ Reference(Account) ]
      attr_accessor :note                   # 0-* [ Annotation ]
      attr_accessor :supportingInformation  # 0-* [ Reference(Resource) ]

      def resourceType
        'ChargeItem'
      end
    end
  end
end