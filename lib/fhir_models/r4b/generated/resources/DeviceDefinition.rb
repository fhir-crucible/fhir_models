module FHIR
  module R4B
    class DeviceDefinition < FHIR::Model
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
        'manufacturer' => ['string', 'Reference']
      }
      SEARCH_PARAMS = ['identifier', 'parent', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'DeviceDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'DeviceDefinition._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'DeviceDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'DeviceDefinition.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'DeviceDefinition._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'DeviceDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'DeviceDefinition._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'DeviceDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'DeviceDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'DeviceDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'DeviceDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'DeviceDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'udiDeviceIdentifier' => {'type'=>'DeviceDefinition::UdiDeviceIdentifier', 'path'=>'DeviceDefinition.udiDeviceIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
        'manufacturerString' => {'type'=>'string', 'path'=>'DeviceDefinition.manufacturer[x]', 'min'=>0, 'max'=>1},
        '_manufacturerString' => {'type'=>'Element', 'path'=>'DeviceDefinition.manufacturer[x]', 'min'=>0, 'max'=>1},
        'manufacturerReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'DeviceDefinition.manufacturer[x]', 'min'=>0, 'max'=>1},
        'deviceName' => {'type'=>'DeviceDefinition::DeviceName', 'path'=>'DeviceDefinition.deviceName', 'min'=>0, 'max'=>Float::INFINITY},
        'modelNumber' => {'type'=>'string', 'path'=>'DeviceDefinition.modelNumber', 'min'=>0, 'max'=>1},
        '_modelNumber' => {'type'=>'Element', 'path'=>'DeviceDefinition._modelNumber', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://snomed.info/sct'=>['49062001', '156009', '271003', '287000', '291005', '678001', '739006', '793009', '882002', '972002', '989005', '994005', '1211003', '1333003', '1422002', '1579007', '1766001', '1941006', '1962007', '2248009', '2282003', '2287009', '2468001', '2478003', '2491002', '3201004', '3319006', '4408003', '4632004', '4816004', '5041003', '5042005', '5159002', '5679009', '6012004', '6097006', '6822006', '6919005', '6972009', '7007007', '7402007', '7406005', '7704007', '7733008', '7968002', '7971005', '8060009', '8118007', '8170008', '8384009', '8407004', '8434001', '8451008', '8615009', '8643000', '8682003', '9017009', '9096001', '9129003', '9419002', '9458007', '9611009', '9817005', '9883003', '10244001', '10371004', '10507000', '10826000', '10850003', '10906003', '11141007', '11158002', '11358008', '11987000', '12150006', '12183004', '12198002', '12953007', '13118005', '13219008', '13288007', '13459008', '13764006', '13855007', '13905003', '14106009', '14108005', '14116001', '14208000', '14288003', '14339000', '14364002', '14423008', '14519003', '14548009', '14762000', '14789005', '15000008', '15340005', '15447007', '15644007', '15869005', '15873008', '15922004', '16056004', '16349000', '16417001', '16470007', '16497000', '16524003', '16540000', '16650009', '17102003', '17107009', '17207004', '17306006', '17404008', '17472008', '18151003', '18153000', '18411005', '18666004', '19257004', '19328000', '19443004', '19627002', '19762002', '19817005', '19892000', '19923001', '20195009', '20235003', '20273004', '20359006', '20406008', '20428008', '20513005', '20568009', '20613002', '20861007', '20867006', '20873007', '20997002', '21079000', '21546008', '21870002', '21944004', '22251003', '22283009', '22566001', '22662007', '22679001', '22744006', '22852002', '23228005', '23366006', '23699001', '23785007', '23973005', '24110008', '24174009', '24230000', '24290003', '24402003', '24470005', '24513003', '24697008', '24767007', '25005004', '25062003', '25152007', '25510005', '25632005', '25680008', '25742001', '25937001', '26128008', '26239002', '26334009', '26397000', '26412008', '26579007', '26719000', '26882005', '27042007', '27065002', '27091001', '27126002', '27229001', '27606000', '27785006', '27812008', '27976001', '27991004', '28026003', '29292008', '29319002', '29396008', '30012001', '30070001', '30115002', '30176005', '30234008', '30610008', '30661003', '30929000', '30968007', '31030004', '31031000', '31174004', '31791005', '31878003', '32033000', '32356002', '32504006', '32634007', '32667006', '32711007', '32712000', '32871007', '33194000', '33352006', '33388001', '33482001', '33686008', '33690005', '33802005', '33894003', '33918000', '34164001', '34188004', '34234003', '34263000', '34362008', '34759008', '35398009', '35593004', '35870000', '36365007', '36370000', '36645008', '36761001', '36965003', '36977008', '37189001', '37270008', '37284003', '37311003', '37347002', '37360008', '37503007', '37759000', '37874008', '37953008', '38126007', '38141007', '38277008', '38806006', '38862006', '38871002', '39590006', '39690000', '39768008', '39790008', '39802000', '39821008', '39869006', '40388003', '40519001', '41157002', '41323003', '41684000', '42152006', '42305009', '42380001', '42451009', '42716000', '42882002', '43001000', '43192004', '43252007', '43725001', '43734006', '43770009', '43983001', '44056008', '44396004', '44492001', '44668000', '44738004', '44806002', '44845007', '44907005', '44959004', '45633005', '45901004', '46181005', '46265007', '46299005', '46364009', '46440007', '46625003', '46666003', '46949002', '47162009', '47326004', '47424002', '47528002', '47731004', '47734007', '47776004', '47942000', '48066006', '48096001', '48240003', '48246009', '48295009', '48473008', '48990009', '49448001', '49890001', '50121007', '50457005', '50483000', '50851003', '51016001', '51086006', '51324004', '51685009', '51791000', '51832004', '51883004', '52065008', '52124006', '52161002', '52291003', '52520009', '52537002', '52624007', '52773007', '52809000', '52893008', '53167006', '53177008', '53217009', '53350007', '53535004', '53639001', '53671008', '53996008', '54234007', '54638004', '54953005', '55091003', '55206006', '55216003', '55337009', '55567004', '55658008', '55986002', '56144002', '56353002', '56547001', '56896002', '56961003', '57118008', '57134006', '57368009', '57395004', '57730005', '58153004', '58253008', '58514003', '58878002', '58938008', '59102007', '59127000', '59153008', '59160002', '59181002', '59432006', '59746007', '59772003', '59782002', '59833007', '60054005', '60110001', '60150003', '60161006', '60185003', '60311007', '60773001', '60806001', '60957001', '61330002', '61512008', '61835000', '61968008', '61979003', '62336005', '62495008', '62614002', '62980002', '63112008', '63173005', '63289001', '63336000', '63548003', '63562005', '63619003', '63653004', '63797009', '63839002', '63995005', '64174005', '64255007', '64565002', '64571008', '64883003', '64973003', '64989000', '65053001', '65105002', '65268008', '65473004', '65577000', '65818007', '66222000', '66415006', '66435007', '66494009', '67270000', '67387001', '67670006', '67777003', '67829007', '67920005', '67966000', '68080007', '68181008', '68183006', '68276009', '68325009', '68597009', '68685003', '68842005', '69670004', '69805005', '69922008', '70080007', '70300000', '70303003', '70453008', '70665002', '70793005', '70872004', '71384000', '71483007', '71545009', '71601002', '71667001', '71948003', '72070000', '72188006', '72302000', '72506001', '72742007', '73027007', '73276008', '73534004', '73562006', '73571002', '73618007', '73878004', '73985004', '74094004', '74108008', '74300007', '74444006', '74566002', '74884005', '75075000', '75187009', '75192006', '75750007', '75751006', '75780002', '75963008', '76091005', '76123001', '76433001', '76664007', '76705002', '76825006', '76937009', '77444004', '77541009', '77720000', '77755003', '77777004', '78279003', '78498003', '78641001', '78886001', '79051006', '79068005', '79218005', '79287008', '79401009', '79438009', '79481007', '79593001', '79618001', '79811009', '79834000', '80278003', '80404000', '80617005', '80664005', '80853009', '80950008', '81293006', '81317009', '81320001', '81826000', '81892008', '82379000', '82449006', '82657000', '82830000', '82879008', '83059008', '83315005', '83320005', '83369007', '83517001', '83903000', '84023008', '84330009', '84444002', '84546002', '84599008', '84610002', '84683006', '84756000', '85106006', '85329008', '85455005', '85684007', '86056006', '86174004', '86184003', '86407004', '86453006', '86572008', '86768006', '86816008', '86967005', '87088005', '87140005', '87405001', '87710003', '87717000', '87851008', '88063004', '88168006', '88208003', '88765001', '88959008', '89149003', '89236003', '89509004', '90003000', '90035000', '90082007', '90134004', '90412006', '90504001', '90913005', '90948003', '91294003', '91318002', '91535004', '91537007', '102303004', '102304005', '102305006', '102306007', '102307003', '102308008', '102309000', '102310005', '102311009', '102312002', '102313007', '102314001', '102315000', '102316004', '102317008', '102318003', '102319006', '102320000', '102321001', '102322008', '102323003', '102324009', '102325005', '102326006', '102327002', '102328007', '102384007', '102385008', '102386009', '102387000', '102388005', '102402008', '102403003', '105784003', '105785002', '105787005', '105788000', '105789008', '105790004', '105791000', '105792007', '105794008', '105809003', '108874005', '108882005', '109145005', '109148007', '109152007', '109154008', '109156005', '109159003', '109164004', '109166002', '109168001', '109176004', '109177008', '109178003', '109179006', '109180009', '109181008', '109182001', '109183006', '109184000', '109185004', '109186003', '109187007', '109188002', '109189005', '109190001', '109226007', '109227003', '109228008', '111041008', '111042001', '111043006', '111044000', '111045004', '111047007', '111048002', '111052002', '111060001', '111062009', '115961006', '115962004', '116146000', '116204000', '116205004', '116206003', '116250002', '116251003', '118294000', '118295004', '118296003', '118297007', '118298002', '118299005', '118301003', '118302005', '118303000', '118304006', '118305007', '118306008', '118307004', '118308009', '118309001', '118310006', '118311005', '118312003', '118313008', '118314002', '118315001', '118316000', '118317009', '118318004', '118319007', '118320001', '118321002', '118322009', '118323004', '118324005', '118325006', '118326007', '118327003', '118328008', '118329000', '118330005', '118331009', '118332002', '118333007', '118334001', '118335000', '118336004', '118337008', '118338003', '118342000', '118343005', '118346002', '118347006', '118348001', '118349009', '118350009', '118351008', '118354000', '118355004', '118356003', '118357007', '118371004', '118372006', '118373001', '118374007', '118375008', '118376009', '118377000', '118378005', '118379002', '118380004', '118381000', '118383002', '118384008', '118385009', '118386005', '118387001', '118388006', '118389003', '118390007', '118391006', '118392004', '118393009', '118394003', '118396001', '118397005', '118398000', '118399008', '118400001', '118401002', '118402009', '118403004', '118404005', '118405006', '118406007', '118407003', '118408008', '118409000', '118410005', '118411009', '118412002', '118413007', '118414001', '118415000', '118416004', '118418003', '118419006', '118420000', '118421001', '118422008', '118423003', '118424009', '118425005', '118426006', '118427002', '118428007', '118429004', '118643004', '122456005', '123636009', '126065006', '128981007', '129113006', '129121000', '129247000', '129248005', '129460009', '129462001', '129463006', '129464000', '129465004', '129466003', '129467007', '134823007', '134963007', '170615005', '182562006', '182563001', '182564007', '182565008', '182566009', '182567000', '182568005', '182569002', '182570001', '182571002', '182572009', '182573004', '182574005', '182576007', '182577003', '182578008', '182579000', '182580002', '182581003', '182587004', '182588009', '182589001', '182590005', '182591009', '182592002', '182839003', '183116000', '183125006', '183135000', '183141007', '183143005', '183144004', '183146002', '183147006', '183148001', '183149009', '183150009', '183152001', '183153006', '183154000', '183155004', '183156003', '183157007', '183158002', '183159005', '183160000', '183161001', '183162008', '183164009', '183165005', '183166006', '183170003', '183171004', '183172006', '183173001', '183174007', '183175008', '183176009', '183177000', '183183002', '183184008', '183185009', '183187001', '183188006', '183189003', '183190007', '183192004', '183193009', '183194003', '183195002', '183196001', '183197005', '183198000', '183199008', '183200006', '183202003', '183204002', '183235008', '183240000', '183241001', '183248007', '183249004', '183250004', '183251000', '201706006', '223394001', '224684009', '224685005', '224686006', '224823002', '224824008', '224825009', '224826005', '224827001', '224828006', '224898003', '224899006', '224900001', '228167008', '228235002', '228236001', '228237005', '228239008', '228240005', '228241009', '228242002', '228243007', '228259007', '228260002', '228261003', '228262005', '228264006', '228265007', '228266008', '228267004', '228268009', '228270000', '228271001', '228731007', '228732000', '228733005', '228734004', '228735003', '228736002', '228737006', '228738001', '228739009', '228740006', '228741005', '228742003', '228743008', '228744002', '228745001', '228746000', '228747009', '228748004', '228749007', '228750007', '228751006', '228752004', '228753009', '228754003', '228755002', '228756001', '228757005', '228759008', '228760003', '228761004', '228762006', '228763001', '228765008', '228766009', '228767000', '228768005', '228770001', '228771002', '228772009', '228773004', '228774005', '228775006', '228776007', '228777003', '228778008', '228869008', '229772003', '229839006', '229840008', '229841007', '229842000', '229843005', '243135003', '243719003', '243720009', '243722001', '243723006', '255296002', '255712000', '255716002', '256245006', '256246007', '256247003', '256562002', '256563007', '256564001', '256589007', '256590003', '256593001', '256641009', '256642002', '256643007', '257192006', '257193001', '257194007', '257211007', '257212000']}, 'type'=>'CodeableConcept', 'path'=>'DeviceDefinition.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-kind'}},
        'specialization' => {'type'=>'DeviceDefinition::Specialization', 'path'=>'DeviceDefinition.specialization', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'DeviceDefinition.version', 'min'=>0, 'max'=>Float::INFINITY},
        '_version' => {'type'=>'Element', 'path'=>'DeviceDefinition._version', 'min'=>0, 'max'=>Float::INFINITY},
        'safety' => {'type'=>'CodeableConcept', 'path'=>'DeviceDefinition.safety', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-safety'}},
        'shelfLifeStorage' => {'type'=>'ProductShelfLife', 'path'=>'DeviceDefinition.shelfLifeStorage', 'min'=>0, 'max'=>Float::INFINITY},
        'physicalCharacteristics' => {'type'=>'ProdCharacteristic', 'path'=>'DeviceDefinition.physicalCharacteristics', 'min'=>0, 'max'=>1},
        'languageCode' => {'type'=>'CodeableConcept', 'path'=>'DeviceDefinition.languageCode', 'min'=>0, 'max'=>Float::INFINITY},
        'capability' => {'type'=>'DeviceDefinition::Capability', 'path'=>'DeviceDefinition.capability', 'min'=>0, 'max'=>Float::INFINITY},
        'property' => {'type'=>'DeviceDefinition::Property', 'path'=>'DeviceDefinition.property', 'min'=>0, 'max'=>Float::INFINITY},
        'owner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'DeviceDefinition.owner', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactPoint', 'path'=>'DeviceDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'DeviceDefinition.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'DeviceDefinition._url', 'min'=>0, 'max'=>1},
        'onlineInformation' => {'type'=>'uri', 'path'=>'DeviceDefinition.onlineInformation', 'min'=>0, 'max'=>1},
        '_onlineInformation' => {'type'=>'Element', 'path'=>'DeviceDefinition._onlineInformation', 'min'=>0, 'max'=>1},
        'note' => {'type'=>'Annotation', 'path'=>'DeviceDefinition.note', 'min'=>0, 'max'=>Float::INFINITY},
        'quantity' => {'type'=>'Quantity', 'path'=>'DeviceDefinition.quantity', 'min'=>0, 'max'=>1},
        'parentDevice' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceDefinition'], 'type'=>'Reference', 'path'=>'DeviceDefinition.parentDevice', 'min'=>0, 'max'=>1},
        'material' => {'type'=>'DeviceDefinition::Material', 'path'=>'DeviceDefinition.material', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class UdiDeviceIdentifier < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'UdiDeviceIdentifier.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'UdiDeviceIdentifier._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'UdiDeviceIdentifier.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'UdiDeviceIdentifier.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'deviceIdentifier' => {'type'=>'string', 'path'=>'UdiDeviceIdentifier.deviceIdentifier', 'min'=>1, 'max'=>1},
          '_deviceIdentifier' => {'type'=>'Element', 'path'=>'UdiDeviceIdentifier._deviceIdentifier', 'min'=>0, 'max'=>1},
          'issuer' => {'type'=>'uri', 'path'=>'UdiDeviceIdentifier.issuer', 'min'=>1, 'max'=>1},
          '_issuer' => {'type'=>'Element', 'path'=>'UdiDeviceIdentifier._issuer', 'min'=>0, 'max'=>1},
          'jurisdiction' => {'type'=>'uri', 'path'=>'UdiDeviceIdentifier.jurisdiction', 'min'=>1, 'max'=>1},
          '_jurisdiction' => {'type'=>'Element', 'path'=>'UdiDeviceIdentifier._jurisdiction', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :deviceIdentifier  # 1-1 string
        attr_accessor :_deviceIdentifier # 0-1 Element
        attr_accessor :issuer            # 1-1 uri
        attr_accessor :_issuer           # 0-1 Element
        attr_accessor :jurisdiction      # 1-1 uri
        attr_accessor :_jurisdiction     # 0-1 Element
      end

      class DeviceName < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'DeviceName.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'DeviceName._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'DeviceName.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'DeviceName.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'DeviceName.name', 'min'=>1, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'DeviceName._name', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/device-nametype'=>['udi-label-name', 'user-friendly-name', 'patient-reported-name', 'manufacturer-name', 'model-name', 'other']}, 'type'=>'code', 'path'=>'DeviceName.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/device-nametype'}},
          '_type' => {'type'=>'Element', 'path'=>'DeviceName._type', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :_name             # 0-1 Element
        attr_accessor :type              # 1-1 code
        attr_accessor :_type             # 0-1 Element
      end

      class Specialization < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Specialization.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Specialization._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Specialization.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Specialization.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'systemType' => {'type'=>'string', 'path'=>'Specialization.systemType', 'min'=>1, 'max'=>1},
          '_systemType' => {'type'=>'Element', 'path'=>'Specialization._systemType', 'min'=>0, 'max'=>1},
          'version' => {'type'=>'string', 'path'=>'Specialization.version', 'min'=>0, 'max'=>1},
          '_version' => {'type'=>'Element', 'path'=>'Specialization._version', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :systemType        # 1-1 string
        attr_accessor :_systemType       # 0-1 Element
        attr_accessor :version           # 0-1 string
        attr_accessor :_version          # 0-1 Element
      end

      class Capability < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Capability.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Capability._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Capability.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Capability.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Capability.type', 'min'=>1, 'max'=>1},
          'description' => {'type'=>'CodeableConcept', 'path'=>'Capability.description', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :description       # 0-* [ CodeableConcept ]
      end

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

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Property.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Property._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Property.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Property.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Property.type', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Property.valueQuantity', 'min'=>0, 'max'=>Float::INFINITY},
          'valueCode' => {'type'=>'CodeableConcept', 'path'=>'Property.valueCode', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :valueQuantity     # 0-* [ Quantity ]
        attr_accessor :valueCode         # 0-* [ CodeableConcept ]
      end

      class Material < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Material.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Material._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Material.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Material.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'substance' => {'type'=>'CodeableConcept', 'path'=>'Material.substance', 'min'=>1, 'max'=>1},
          'alternate' => {'type'=>'boolean', 'path'=>'Material.alternate', 'min'=>0, 'max'=>1},
          '_alternate' => {'type'=>'Element', 'path'=>'Material._alternate', 'min'=>0, 'max'=>1},
          'allergenicIndicator' => {'type'=>'boolean', 'path'=>'Material.allergenicIndicator', 'min'=>0, 'max'=>1},
          '_allergenicIndicator' => {'type'=>'Element', 'path'=>'Material._allergenicIndicator', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :_id                  # 0-1 Element
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :substance            # 1-1 CodeableConcept
        attr_accessor :alternate            # 0-1 boolean
        attr_accessor :_alternate           # 0-1 Element
        attr_accessor :allergenicIndicator  # 0-1 boolean
        attr_accessor :_allergenicIndicator # 0-1 Element
      end

      attr_accessor :id                      # 0-1 id
      attr_accessor :_id                     # 0-1 Element
      attr_accessor :meta                    # 0-1 Meta
      attr_accessor :implicitRules           # 0-1 uri
      attr_accessor :_implicitRules          # 0-1 Element
      attr_accessor :language                # 0-1 code
      attr_accessor :_language               # 0-1 Element
      attr_accessor :text                    # 0-1 Narrative
      attr_accessor :contained               # 0-* [ Resource ]
      attr_accessor :extension               # 0-* [ Extension ]
      attr_accessor :modifierExtension       # 0-* [ Extension ]
      attr_accessor :identifier              # 0-* [ Identifier ]
      attr_accessor :udiDeviceIdentifier     # 0-* [ DeviceDefinition::UdiDeviceIdentifier ]
      attr_accessor :manufacturerString      # 0-1 string
      attr_accessor :_manufacturerString     # 0-1 Element
      attr_accessor :manufacturerReference   # 0-1 Reference(Organization)
      attr_accessor :deviceName              # 0-* [ DeviceDefinition::DeviceName ]
      attr_accessor :modelNumber             # 0-1 string
      attr_accessor :_modelNumber            # 0-1 Element
      attr_accessor :type                    # 0-1 CodeableConcept
      attr_accessor :specialization          # 0-* [ DeviceDefinition::Specialization ]
      attr_accessor :version                 # 0-* [ string ]
      attr_accessor :_version                # 0-* [ Element ]
      attr_accessor :safety                  # 0-* [ CodeableConcept ]
      attr_accessor :shelfLifeStorage        # 0-* [ ProductShelfLife ]
      attr_accessor :physicalCharacteristics # 0-1 ProdCharacteristic
      attr_accessor :languageCode            # 0-* [ CodeableConcept ]
      attr_accessor :capability              # 0-* [ DeviceDefinition::Capability ]
      attr_accessor :property                # 0-* [ DeviceDefinition::Property ]
      attr_accessor :owner                   # 0-1 Reference(Organization)
      attr_accessor :contact                 # 0-* [ ContactPoint ]
      attr_accessor :url                     # 0-1 uri
      attr_accessor :_url                    # 0-1 Element
      attr_accessor :onlineInformation       # 0-1 uri
      attr_accessor :_onlineInformation      # 0-1 Element
      attr_accessor :note                    # 0-* [ Annotation ]
      attr_accessor :quantity                # 0-1 Quantity
      attr_accessor :parentDevice            # 0-1 Reference(DeviceDefinition)
      attr_accessor :material                # 0-* [ DeviceDefinition::Material ]

      def resourceType
        'DeviceDefinition'
      end
    end
  end
end