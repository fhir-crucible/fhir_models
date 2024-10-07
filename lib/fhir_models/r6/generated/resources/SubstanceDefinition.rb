module FHIR
  module R6
    class SubstanceDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['classification', 'code', 'domain', 'identifier', 'name']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'SubstanceDefinition.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SubstanceDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SubstanceDefinition.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'SubstanceDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'SubstanceDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SubstanceDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SubstanceDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SubstanceDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'SubstanceDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'SubstanceDefinition.version', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'CodeableConcept', 'path'=>'SubstanceDefinition.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'classification' => {'type'=>'CodeableConcept', 'path'=>'SubstanceDefinition.classification', 'min'=>0, 'max'=>Float::INFINITY},
        'domain' => {'valid_codes'=>{'http://hl7.org/fhir/medicinal-product-domain'=>['Human', 'Veterinary', 'HumanAndVeterinary']}, 'type'=>'CodeableConcept', 'path'=>'SubstanceDefinition.domain', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicinal-product-domain'}},
        'grade' => {'valid_codes'=>{'http://hl7.org/fhir/substance-grade'=>['USP-NF', 'Ph.Eur', 'JP', 'BP', 'CompanyStandard']}, 'type'=>'CodeableConcept', 'path'=>'SubstanceDefinition.grade', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-grade'}},
        'description' => {'type'=>'markdown', 'path'=>'SubstanceDefinition.description', 'min'=>0, 'max'=>1},
        'informationSource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Citation'], 'type'=>'Reference', 'path'=>'SubstanceDefinition.informationSource', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'type'=>'Annotation', 'path'=>'SubstanceDefinition.note', 'min'=>0, 'max'=>Float::INFINITY},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'SubstanceDefinition.manufacturer', 'min'=>0, 'max'=>Float::INFINITY},
        'supplier' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'SubstanceDefinition.supplier', 'min'=>0, 'max'=>Float::INFINITY},
        'moiety' => {'type'=>'SubstanceDefinition::Moiety', 'path'=>'SubstanceDefinition.moiety', 'min'=>0, 'max'=>Float::INFINITY},
        'characterization' => {'type'=>'SubstanceDefinition::Characterization', 'path'=>'SubstanceDefinition.characterization', 'min'=>0, 'max'=>Float::INFINITY},
        'property' => {'type'=>'SubstanceDefinition::Property', 'path'=>'SubstanceDefinition.property', 'min'=>0, 'max'=>Float::INFINITY},
        'referenceInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation'], 'type'=>'Reference', 'path'=>'SubstanceDefinition.referenceInformation', 'min'=>0, 'max'=>1},
        'molecularWeight' => {'type'=>'SubstanceDefinition::MolecularWeight', 'path'=>'SubstanceDefinition.molecularWeight', 'min'=>0, 'max'=>Float::INFINITY},
        'structure' => {'type'=>'SubstanceDefinition::Structure', 'path'=>'SubstanceDefinition.structure', 'min'=>0, 'max'=>1},
        'code' => {'type'=>'SubstanceDefinition::Code', 'path'=>'SubstanceDefinition.code', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'SubstanceDefinition::Name', 'path'=>'SubstanceDefinition.name', 'min'=>0, 'max'=>Float::INFINITY},
        'relationship' => {'type'=>'SubstanceDefinition::Relationship', 'path'=>'SubstanceDefinition.relationship', 'min'=>0, 'max'=>Float::INFINITY},
        'nucleicAcid' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceNucleicAcid'], 'type'=>'Reference', 'path'=>'SubstanceDefinition.nucleicAcid', 'min'=>0, 'max'=>1},
        'polymer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstancePolymer'], 'type'=>'Reference', 'path'=>'SubstanceDefinition.polymer', 'min'=>0, 'max'=>1},
        'protein' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceProtein'], 'type'=>'Reference', 'path'=>'SubstanceDefinition.protein', 'min'=>0, 'max'=>1},
        'sourceMaterial' => {'type'=>'SubstanceDefinition::SourceMaterial', 'path'=>'SubstanceDefinition.sourceMaterial', 'min'=>0, 'max'=>1}
      }

      class Moiety < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'amount' => ['Quantity', 'string']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Moiety.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Moiety.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Moiety.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'role' => {'type'=>'CodeableConcept', 'path'=>'Moiety.role', 'min'=>0, 'max'=>1},
          'identifier' => {'type'=>'Identifier', 'path'=>'Moiety.identifier', 'min'=>0, 'max'=>1},
          'name' => {'type'=>'string', 'path'=>'Moiety.name', 'min'=>0, 'max'=>1},
          'stereochemistry' => {'valid_codes'=>{'http://hl7.org/fhir/substance-stereochemistry'=>['ConstitutionalIsomer', 'Stereoisomer', 'Enantiomer']}, 'type'=>'CodeableConcept', 'path'=>'Moiety.stereochemistry', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-stereochemistry'}},
          'opticalActivity' => {'valid_codes'=>{'http://hl7.org/fhir/substance-optical-activity'=>['+', '-']}, 'type'=>'CodeableConcept', 'path'=>'Moiety.opticalActivity', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-optical-activity'}},
          'molecularFormula' => {'type'=>'string', 'path'=>'Moiety.molecularFormula', 'min'=>0, 'max'=>1},
          'amountQuantity' => {'type'=>'Quantity', 'path'=>'Moiety.amount[x]', 'min'=>0, 'max'=>1},
          'amountString' => {'type'=>'string', 'path'=>'Moiety.amount[x]', 'min'=>0, 'max'=>1},
          'measurementType' => {'valid_codes'=>{'http://hl7.org/fhir/substance-amount-type'=>['Average', 'Approximately', 'LessThan', 'MoreThan']}, 'type'=>'CodeableConcept', 'path'=>'Moiety.measurementType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-amount-type'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :role              # 0-1 CodeableConcept
        attr_accessor :identifier        # 0-1 Identifier
        attr_accessor :name              # 0-1 string
        attr_accessor :stereochemistry   # 0-1 CodeableConcept
        attr_accessor :opticalActivity   # 0-1 CodeableConcept
        attr_accessor :molecularFormula  # 0-1 string
        attr_accessor :amountQuantity    # 0-1 Quantity
        attr_accessor :amountString      # 0-1 string
        attr_accessor :measurementType   # 0-1 CodeableConcept
      end

      class Characterization < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Characterization.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Characterization.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Characterization.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'technique' => {'valid_codes'=>{'http://hl7.org/fhir/substance-structure-technique'=>['X-Ray', 'HPLC', 'NMR', 'PeptideMapping', 'LigandBindingAssay']}, 'type'=>'CodeableConcept', 'path'=>'Characterization.technique', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-structure-technique'}},
          'form' => {'valid_codes'=>{'http://hl7.org/fhir/substance-form'=>['salt', 'base']}, 'type'=>'CodeableConcept', 'path'=>'Characterization.form', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-form'}},
          'description' => {'type'=>'markdown', 'path'=>'Characterization.description', 'min'=>0, 'max'=>1},
          'file' => {'type'=>'Attachment', 'path'=>'Characterization.file', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :technique         # 0-1 CodeableConcept
        attr_accessor :form              # 0-1 CodeableConcept
        attr_accessor :description       # 0-1 markdown
        attr_accessor :file              # 0-* [ Attachment ]
      end

      class Property < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'Quantity', 'date', 'boolean', 'Attachment']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Property.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Property.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Property.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://snomed.info/sct'=>['363787002', '365007', '413009', '477001', '482008', '820008', '916008', '940000', '1202003', '1255009', '1285004', '1309009', '1314008', '1364001', '1391004', '1495009', '1524004', '1803003', '1882005', '1925005', '1993008', '2335007', '2465003', '2548005', '2767007', '2941008', '2957008', '3030002', '3049003', '3085003', '3330009', '3359009', '3371003', '3384007', '3397009', '3516000', '3628000', '3678003', '3709003', '3791008', '3805004', '3806003', '3850002', '3863008', '3962002', '4051006', '4065008', '4186006', '4187002', '4351003', '4428004', '4452006', '4531001', '4601000', '4605009', '4683004', '4695004', '4710002', '4751000', '4838002', '5072004', '5222008', '5308006', '5410007', '5418000', '5512001', '5660006', '5661005', '5741007', '5744004', '5748001', '5883007', '6057008', '6145002', '6230002', '6252006', '6304003', '6427007', '6440002', '6577008', '6588002', '6635000', '6723007', '6769007', '6795009', '6797001', '6886007', '6899005', '6918002', '6942003', '6994001', '7015005', '7041004', '7175000', '7205007', '7261001', '7349007', '7352004', '7423001', '7478007', '7542004', '7749005', '7825004', '7866004', '7928001', '7934008', '7952008', '8198006', '8337009', '8469004', '8499008', '8515003', '8521004', '8527000', '8581002', '8586007', '8625004', '8647004', '8690003', '8738002', '8739005', '8834007', '8927009', '8997002', '9077000', '9251003', '9304002', '9470006', '9561006', '9576003', '9876005', '9929002', '9964006', '9995004', '10011003', '10142005', '10143000', '10241009', '10252003', '10448000', '10502006', '10539007', '10625003', '10702008', '10716003', '10806004', '10947000', '11118004', '11247002', '11395008', '11448005', '11554009', '11696002', '11769008', '11786002', '11798007', '11820004', '11953005', '11977004', '12032001', '12049008', '12140005', '12157009', '12239004', '12261009', '12280006', '12307008', '12309006', '12367005', '12405001', '12493004', '12547000', '12591000', '12679000', '12852001', '12887001', '13130004', '13191003', '13226008', '13402008', '13473004', '13506008', '13621006', '13693004', '13760002', '13823007', '14004009', '14067000', '14142001', '14235009', '14411002', '14468000', '14502000', '14688008', '14872005', '14890006', '14910006', '14951008', '15070007', '15125001', '15227002', '15281004', '15361003', '15396003', '15456004', '15527001', '15564007', '15565008', '15615005', '15876000', '16058003', '16086006', '16153005', '16162007', '16166005', '16206004', '16244008', '16262004', '16354009', '16379007', '16466004', '16468003', '16476001', '16490003', '16550004', '16679002', '16821004', '16891008', '16933005', '16940006', '17202005', '17328006', '17362006', '17410008', '17441009', '17785005', '17892006', '17952008', '17964000', '18145008', '18240006', '18316001', '18332003', '18373002', '18480004', '18491006', '18601007', '18741006', '18841001', '19077000', '19166009', '19381008', '19487008', '19511002', '19611009', '19634000', '19706002', '19789007', '19959007', '19982009', '19993006', '20000007', '20245001', '20255002', '20374008', '20412003', '20426007', '20441007', '20494003', '20587003', '20618006', '20629005', '20722008', '20733006', '20806000', '20889005', '20910001', '20947001', '20970009', '21122005', '21152002', '21192000', '21278004', '21313003', '21324001', '21356008', '21417003', '21474000', '21663000', '21723009', '21738005', '21840007', '21979002', '22052001', '22171002', '22200009', '22280007', '22301005', '22382001', '22571008', '22626006', '22639005', '22690006', '22751002', '22787009', '22851009', '22921004', '23035008', '23211007', '23275005', '23362008', '23365005', '23431008', '23435004', '23472005', '23565006', '23948005', '23980007', '24025005', '24154002', '24220009', '24238007', '24296009', '24428000', '24453002', '24560006', '24562003', '24607002', '24637006', '24672009', '24725003', '24859005', '25145005', '25272006', '25602002', '25684004', '25755000', '25819003', '25974002', '26011007', '26027000', '26065007', '26127003', '26142000', '26285004', '26365000', '26510003', '26560009', '26626008', '26669000', '26694004', '26724002', '26814000', '26827001', '26869002', '26916004', '27026000', '27030002', '27071008', '27073006', '27100007', '27113001', '27213009', '27283003', '27305006', '27308008', '27309000', '27327002', '27350008', '27421000', '27468005', '27556003', '27598000', '27625002', '27750006', '27901007', '27913002', '27958008', '27960005', '27997000', '28001007', '28005003', '28239005', '28263002', '28329002', '28400003', '28423000', '28447007', '28551006', '28606003', '28771004', '28827006', '28858007', '28875001', '28982001', '29059006', '29371005', '29501005', '29533001', '29544009', '29548007', '29759001', '29772000', '29852003', '29922007', '29944002', '30017007', '30064007', '30214007', '30219002', '30247003', '30342006', '30367009', '30397001', '30568003', '30855003', '30866005', '30878009', '30879001', '30901003', '30920001', '30944004', '30953006', '30976009', '30979002', '31105004', '31179009', '31226005', '31255002', '31261004', '31294001', '31346003', '31475008', '31498000', '31534003', '31580001', '31639004', '31763002', '31853002', '31916007', '31983005', '32058005', '32101006', '32223000', '32316004', '32318003', '32386009', '32528008', '32560000', '32563003', '32650004', '32689005', '32864002', '32978000', '33032001', '33066005', '33097009', '33105009', '33213002', '33249001', '33341000', '33405001', '33406000', '33427005', '33453002', '33480009', '33485004', '33739003', '33769005', '33836004', '33911006', '33957008', '33975009', '34008004', '34178000', '34257009', '34267004', '34372006', '34517005', '34529001', '34606001', '34721000', '34734004', '34909005', '35024006', '35048002', '35123003', '35184007', '35188005', '35194002', '35245009', '35311004', '35332007', '35335009', '35360009', '35401007', '35544009', '35574001', '35622009', '35706003', '35732009', '35754006', '35800004', '35840005', '35877002', '35897007', '35939009', '35948004', '36003005', '36047004', '36096009', '36459006', '36550007', '36643001', '36735000', '36841002', '36862001', '36922004', '37038003', '37043005', '37087001', '37124008', '37129003', '37190005', '37328000', '37476000', '37555008', '37557000', '37594009', '37690006', '37717001', '37736006', '37742005', '37801004', '37811006', '37845004', '37993006', '38080001', '38186005', '38187001', '38522000', '38597004', '38661002', '38695003', '38820004', '38860003', '38952000', '38962007', '38963002', '39025000', '39040003', '39080007', '39122004', '39140000', '39146006', '39211005', '39247006', '39338001', '39420003', '39438000', '39511009', '39527002', '39542004', '39622003', '39632005', '39744000', '39899002', '39996008', '40015002', '40087002', '40091007', '40117008', '40137007', '40139005', '40187000', '40269008', '40335009', '40336005', '40394006', '40407006', '40513000', '40602005', '40619007', '40662008', '40736007', '40909004', '40944002', '41011002', '41070009', '41494001', '41633001', '41651000', '41698008', '41701000', '41741009', '42054005', '42081005', '42093001', '42111002', '42233006', '42406009', '42447007', '42457008', '42468008', '42573004', '43068009', '43074009', '43173001', '43224003', '43326003', '43394007', '43410000', '43414009', '43471007', '43488000', '43520008', '43857005', '43861004', '43902009', '43914001', '44138005', '44284008', '44432004', '44436001', '44453008', '44501002', '44523003', '44831001', '45071003', '45117006', '45222001', '45336008', '45444009', '45500009', '45596005', '45611008', '45658000', '45789006', '45804006', '45832002', '45873001', '45933008', '46019001', '46056005', '46118006', '46198005', '46446001', '46449008', '46470002', '46483001', '46493008', '46638006', '46877007', '46889009', '46977006', '47078008', '47116001', '47196002', '47287008', '47301008', '47309005', '47392007', '47410001', '47446005', '47497002', '47539004', '47678007', '47710002', '47722004', '47825005', '47827002', '47868006', '47958002', '48038003', '48064009', '48068007', '48089003', '48237003', '48263008', '48373007', '48388002', '48441002', '48709009', '48726003', '48761009', '48882008', '49005002', '49105004', '49169007', '49213006', '49350005', '49361002', '49441007', '49764008', '49818009', '49950003', '50033000', '50166003', '50214003', '50266007', '50285005', '50289004', '50360004', '50373000', '50602003', '50614006', '50629008', '50666002', '50741009', '50794000', '50834005', '50872000', '51020002', '51104005', '51187000', '51272001', '51308000', '51413002', '51478000', '51497000', '51533001', '51679002', '51717002', '51751003', '51795009', '51841009', '51864006', '51975006', '52015004', '52019005', '52059008', '52134002', '52240001', '52479005', '52562002', '52583008', '52653008', '52963003', '52965005', '52980004', '53060006', '53125002', '53273001', '53294003', '53319005', '53492001', '53688001', '53701004', '53833003', '53899002', '53992005', '54014004', '54052003', '54055001', '54125006', '54206000', '54257001', '54405004', '54478001', '54542009', '54715006', '54718008', '54721005', '54731003', '54775004', '54797002', '54812001', '54860003', '54880002', '54952000', '54958001', '54993008', '55044005', '55070006', '55127008', '55154006', '55200000', '55226005', '55394004', '55431009', '55532004', '55562005', '55577002', '55591008', '55767001', '55859003', '56073001', '56107002', '56119005', '56141005', '56215005', '56285002', '56290004', '56393004', '56639005', '56687000', '56777005', '56799002', '56939008', '56953008', '57036006', '57110001', '57188001', '57206007', '57234000', '57309003', '57427004', '57503003', '57566009', '57604000', '57755004', '57770003', '58102000', '58164001', '58190003', '58203002', '58294000', '58301003', '58312003', '58314002', '58322009', '58462007', '58516001', '58577001', '58608000', '58628001', '58829007', '58915005', '58917002', '58926004', '58967009', '59041006', '59052000', '59228002', '59236006', '59299002', '59328004', '59376003', '59562003', '59955000', '59972007', '60074003', '60279001', '60309003', '60384005', '60386007', '60406009', '60460001', '60534004', '60621009', '60649002', '60701003', '60747006', '60757007', '60783002', '60796001', '60797005', '60832007', '60877009', '60947002', '60984000', '61017008', '61073000', '61089002', '61095001', '61159007', '61168009', '61254005', '61334006', '61340004', '61409007', '61428000', '61447002', '61468001', '61511001', '61666009', '61686008', '61776000', '61859005', '61883002', '61909002', '61923000', '61931005', '62202002', '62262004', '62299004', '62303009', '62430000', '62575000', '62768004', '62970001', '63158009', '63177006', '63189008', '63199003', '63208007', '63248004', '63433007', '63448001', '63533009', '63582009', '63624000', '63636006', '63674003', '63700001', '63744003', '63911002', '64001003', '64045003', '64066006', '64074007', '64079002', '64106006', '64193007', '64231002', '64346006', '64392009', '64414007', '64501009', '64607003', '64702000', '65065002', '65077007', '65091001', '65401001', '65452004', '65453009', '65500002', '65507004', '65552001', '65598000', '65742002', '65825000', '65970007', '66059008', '66199009', '66216009', '66249000', '66320005', '66332009', '66362003', '66471008', '66523006', '66582003', '66621004', '66824009', '66847005', '67034007', '67316000', '67381000', '67461000', '67611004', '67657002', '67767000', '67993002', '68015005', '68031002', '68130003', '68199000', '68236004', '68281000', '68344002', '68362006', '68545002', '68592003', '68711006', '68719008', '68742001', '68980005', '69063000', '69202003', '69262000', '69330000', '69444007', '69611006', '69618000', '69744008', '69998004', '70017002', '70054006', '70111003', '70217009', '70277000', '70337006', '70414004', '70433009', '70464006', '70498002', '70514001', '70697002', '70714003', '70778006', '70818006', '70822001', '70981009', '71056003', '71172009', '71202001', '71219004', '71280007']}, 'type'=>'CodeableConcept', 'path'=>'Property.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/product-characteristic-codes'}},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          'valueDate' => {'type'=>'date', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :type                 # 1-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 0-1 CodeableConcept
        attr_accessor :valueQuantity        # 0-1 Quantity
        attr_accessor :valueDate            # 0-1 date
        attr_accessor :valueBoolean         # 0-1 boolean
        attr_accessor :valueAttachment      # 0-1 Attachment
      end

      class MolecularWeight < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'MolecularWeight.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'MolecularWeight.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'MolecularWeight.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://hl7.org/fhir/substance-weight-method'=>['SDS-PAGE', 'Calculated', 'LighScattering', 'Viscosity', 'GelPermeationCentrifugation', 'End-groupAnalysis', 'End-groupTitration', 'Size-ExclusionChromatography']}, 'type'=>'CodeableConcept', 'path'=>'MolecularWeight.method', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-weight-method'}},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/substance-weight-type'=>['Exact', 'Average', 'WeightAverage']}, 'type'=>'CodeableConcept', 'path'=>'MolecularWeight.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-weight-type'}},
          'amount' => {'type'=>'Quantity', 'path'=>'MolecularWeight.amount', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :local_method      # 0-1 CodeableConcept
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :amount            # 1-1 Quantity
      end

      class Structure < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Structure.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Structure.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Structure.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'stereochemistry' => {'valid_codes'=>{'http://hl7.org/fhir/substance-stereochemistry'=>['ConstitutionalIsomer', 'Stereoisomer', 'Enantiomer']}, 'type'=>'CodeableConcept', 'path'=>'Structure.stereochemistry', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-stereochemistry'}},
          'opticalActivity' => {'valid_codes'=>{'http://hl7.org/fhir/substance-optical-activity'=>['+', '-']}, 'type'=>'CodeableConcept', 'path'=>'Structure.opticalActivity', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-optical-activity'}},
          'molecularFormula' => {'type'=>'string', 'path'=>'Structure.molecularFormula', 'min'=>0, 'max'=>1},
          'molecularFormulaByMoiety' => {'type'=>'string', 'path'=>'Structure.molecularFormulaByMoiety', 'min'=>0, 'max'=>1},
          'molecularWeight' => {'type'=>'SubstanceDefinition::MolecularWeight', 'path'=>'Structure.molecularWeight', 'min'=>0, 'max'=>1},
          'technique' => {'valid_codes'=>{'http://hl7.org/fhir/substance-structure-technique'=>['X-Ray', 'HPLC', 'NMR', 'PeptideMapping', 'LigandBindingAssay']}, 'type'=>'CodeableConcept', 'path'=>'Structure.technique', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-structure-technique'}},
          'sourceDocument' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Structure.sourceDocument', 'min'=>0, 'max'=>Float::INFINITY},
          'representation' => {'type'=>'SubstanceDefinition::Structure::Representation', 'path'=>'Structure.representation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Representation < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Representation.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Representation.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Representation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/substance-representation-type'=>['Systematic', 'Scientific', 'Brand']}, 'type'=>'CodeableConcept', 'path'=>'Representation.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-representation-type'}},
            'representation' => {'type'=>'string', 'path'=>'Representation.representation', 'min'=>0, 'max'=>1},
            'format' => {'valid_codes'=>{'http://hl7.org/fhir/substance-representation-format'=>['InChI', 'SMILES', 'MOLFILE', 'CDX', 'SDF', 'PDB', 'mmCIF']}, 'type'=>'CodeableConcept', 'path'=>'Representation.format', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-representation-format'}},
            'document' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Representation.document', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :representation    # 0-1 string
          attr_accessor :format            # 0-1 CodeableConcept
          attr_accessor :document          # 0-1 Reference(DocumentReference)
        end

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :stereochemistry          # 0-1 CodeableConcept
        attr_accessor :opticalActivity          # 0-1 CodeableConcept
        attr_accessor :molecularFormula         # 0-1 string
        attr_accessor :molecularFormulaByMoiety # 0-1 string
        attr_accessor :molecularWeight          # 0-1 SubstanceDefinition::MolecularWeight
        attr_accessor :technique                # 0-* [ CodeableConcept ]
        attr_accessor :sourceDocument           # 0-* [ Reference(DocumentReference) ]
        attr_accessor :representation           # 0-* [ SubstanceDefinition::Structure::Representation ]
      end

      class Code < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Code.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Code.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Code.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'CodeableConcept', 'path'=>'Code.code', 'min'=>0, 'max'=>1},
          'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'CodeableConcept', 'path'=>'Code.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
          'statusDate' => {'type'=>'dateTime', 'path'=>'Code.statusDate', 'min'=>0, 'max'=>1},
          'note' => {'type'=>'Annotation', 'path'=>'Code.note', 'min'=>0, 'max'=>Float::INFINITY},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Code.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :status            # 0-1 CodeableConcept
        attr_accessor :statusDate        # 0-1 dateTime
        attr_accessor :note              # 0-* [ Annotation ]
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
      end

      class Name < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Name.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Name.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Name.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'Name.name', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/substance-name-type'=>['Systematic', 'Scientific', 'Brand']}, 'type'=>'CodeableConcept', 'path'=>'Name.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-name-type'}},
          'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'CodeableConcept', 'path'=>'Name.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
          'preferred' => {'type'=>'boolean', 'path'=>'Name.preferred', 'min'=>0, 'max'=>1},
          'language' => {'type'=>'CodeableConcept', 'path'=>'Name.language', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
          'domain' => {'valid_codes'=>{'http://hl7.org/fhir/substance-name-domain'=>['ActiveIngredient', 'FoodColorAdditive']}, 'type'=>'CodeableConcept', 'path'=>'Name.domain', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-name-domain'}},
          'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AF-BAL', 'AF-BAM', 'AF-BDG', 'AF-BDS', 'AF-BGL', 'AF-DAY', 'AF-FRA', 'AF-FYB', 'AF-GHA', 'AF-GHO', 'AF-HEL', 'AF-HER', 'AF-JOW', 'AF-KAB', 'AF-KAN', 'AF-KAP', 'AF-KDZ', 'AF-KHO', 'AF-KNR', 'AF-LAG', 'AF-LOG', 'AF-NAN', 'AF-NIM', 'AF-NUR', 'AF-PAN', 'AF-PAR', 'AF-PIA', 'AF-PKA', 'AF-SAM', 'AF-SAR', 'AF-TAK', 'AF-URU', 'AF-WAR', 'AF-ZAB', 'AX-AX', 'AL-01', 'AL-02', 'AL-03', 'AL-04', 'AL-05', 'AL-06', 'AL-07', 'AL-08', 'AL-09', 'AL-10', 'AL-11', 'AL-12', 'AL-BR', 'AL-BU', 'AL-DI', 'AL-DL', 'AL-DR', 'AL-DV', 'AL-EL', 'AL-ER', 'AL-FR', 'AL-GJ', 'AL-GR', 'AL-HA', 'AL-KA', 'AL-KB', 'AL-KC', 'AL-KO', 'AL-KR', 'AL-KU', 'AL-LB', 'AL-LE', 'AL-LU', 'AL-MK', 'AL-MM', 'AL-MR', 'AL-MT', 'AL-PG', 'AL-PQ', 'AL-PR', 'AL-PU', 'AL-SH', 'AL-SK', 'AL-SR', 'AL-TE', 'AL-TP', 'AL-TR', 'AL-VL', 'DZ-01', 'DZ-02', 'DZ-03', 'DZ-04', 'DZ-05', 'DZ-06', 'DZ-07', 'DZ-08', 'DZ-09', 'DZ-10', 'DZ-11', 'DZ-12', 'DZ-13', 'DZ-14', 'DZ-15', 'DZ-16', 'DZ-17', 'DZ-18', 'DZ-19', 'DZ-20', 'DZ-21', 'DZ-22', 'DZ-23', 'DZ-24', 'DZ-25', 'DZ-26', 'DZ-27', 'DZ-28', 'DZ-29', 'DZ-30', 'DZ-31', 'DZ-32', 'DZ-33', 'DZ-34', 'DZ-35', 'DZ-36', 'DZ-37', 'DZ-38', 'DZ-39', 'DZ-40', 'DZ-41', 'DZ-42', 'DZ-43', 'DZ-44', 'DZ-45', 'DZ-46', 'DZ-47', 'DZ-48', 'AS-AS', 'AD-02', 'AD-03', 'AD-04', 'AD-05', 'AD-06', 'AD-07', 'AD-08', 'AO-BGO', 'AO-BGU', 'AO-BIE', 'AO-CAB', 'AO-CCU', 'AO-CNN', 'AO-CNO', 'AO-CUS', 'AO-HUA', 'AO-HUI', 'AO-LNO', 'AO-LSU', 'AO-LUA', 'AO-MAL', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-ZAI', 'AI-AI', 'AQ-AQ', 'AG-03', 'AG-04', 'AG-05', 'AG-06', 'AG-07', 'AG-08', 'AG-10', 'AG-11', 'AR-A', 'AR-B', 'AR-C', 'AR-D', 'AR-E', 'AR-F', 'AR-G', 'AR-H', 'AR-J', 'AR-K', 'AR-L', 'AR-M', 'AR-N', 'AR-P', 'AR-Q', 'AR-R', 'AR-S', 'AR-T', 'AR-U', 'AR-V', 'AR-W', 'AR-X', 'AR-Y', 'AR-Z', 'AM-AG', 'AM-AR', 'AM-AV', 'AM-ER', 'AM-GR', 'AM-KT', 'AM-LO', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-VD', 'AW-AW', 'AU-ACT', 'AU-NSW', 'AU-NT', 'AU-QLD', 'AU-SA', 'AU-TAS', 'AU-VIC', 'AU-WA', 'AT-1', 'AT-2', 'AT-3', 'AT-4', 'AT-5', 'AT-6', 'AT-7', 'AT-8', 'AT-9', 'AZ-ABS', 'AZ-AGA', 'AZ-AGC', 'AZ-AGM', 'AZ-AGS', 'AZ-AGU', 'AZ-AST', 'AZ-BA', 'AZ-BAB', 'AZ-BAL', 'AZ-BAR', 'AZ-BEY', 'AZ-BIL', 'AZ-CAB', 'AZ-CAL', 'AZ-CUL', 'AZ-DAS', 'AZ-FUZ', 'AZ-GAD', 'AZ-GA', 'AZ-GOR', 'AZ-GOY', 'AZ-GYG', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-KAL', 'AZ-KAN', 'AZ-KUR', 'AZ-LAC', 'AZ-LA', 'AZ-LAN', 'AZ-LER']}, 'type'=>'CodeableConcept', 'path'=>'Name.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
          'synonym' => {'type'=>'SubstanceDefinition::Name', 'path'=>'Name.synonym', 'min'=>0, 'max'=>Float::INFINITY},
          'translation' => {'type'=>'SubstanceDefinition::Name', 'path'=>'Name.translation', 'min'=>0, 'max'=>Float::INFINITY},
          'official' => {'type'=>'SubstanceDefinition::Name::Official', 'path'=>'Name.official', 'min'=>0, 'max'=>Float::INFINITY},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Name.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Official < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Official.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Official.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Official.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'authority' => {'valid_codes'=>{'http://hl7.org/fhir/substance-name-authority'=>['BAN', 'COSING', 'Ph.Eur.', 'FCC', 'INCI', 'INN', 'JAN', 'JECFA', 'MARTINDALE', 'USAN', 'USP', 'PHF', 'HAB', 'PhF', 'IUIS']}, 'type'=>'CodeableConcept', 'path'=>'Official.authority', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-name-authority'}},
            'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'CodeableConcept', 'path'=>'Official.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
            'date' => {'type'=>'dateTime', 'path'=>'Official.date', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :authority         # 0-1 CodeableConcept
          attr_accessor :status            # 0-1 CodeableConcept
          attr_accessor :date              # 0-1 dateTime
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :status            # 0-1 CodeableConcept
        attr_accessor :preferred         # 0-1 boolean
        attr_accessor :language          # 0-* [ CodeableConcept ]
        attr_accessor :domain            # 0-* [ CodeableConcept ]
        attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
        attr_accessor :synonym           # 0-* [ SubstanceDefinition::Name ]
        attr_accessor :translation       # 0-* [ SubstanceDefinition::Name ]
        attr_accessor :official          # 0-* [ SubstanceDefinition::Name::Official ]
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
      end

      class Relationship < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'substanceDefinition' => ['Reference', 'CodeableConcept'],
          'amount' => ['Quantity', 'Ratio', 'string']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Relationship.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Relationship.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Relationship.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'substanceDefinitionReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceDefinition'], 'type'=>'Reference', 'path'=>'Relationship.substanceDefinition[x]', 'min'=>0, 'max'=>1},
          'substanceDefinitionCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Relationship.substanceDefinition[x]', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/substance-relationship-type'=>['Salt', 'ActiveMoiety', 'StartingMaterial', 'Polymorph', 'Impurity']}, 'type'=>'CodeableConcept', 'path'=>'Relationship.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-relationship-type'}},
          'isDefining' => {'type'=>'boolean', 'path'=>'Relationship.isDefining', 'min'=>0, 'max'=>1},
          'amountQuantity' => {'type'=>'Quantity', 'path'=>'Relationship.amount[x]', 'min'=>0, 'max'=>1},
          'amountRatio' => {'type'=>'Ratio', 'path'=>'Relationship.amount[x]', 'min'=>0, 'max'=>1},
          'amountString' => {'type'=>'string', 'path'=>'Relationship.amount[x]', 'min'=>0, 'max'=>1},
          'ratioHighLimitAmount' => {'type'=>'Ratio', 'path'=>'Relationship.ratioHighLimitAmount', 'min'=>0, 'max'=>1},
          'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/substance-amount-type'=>['Average', 'Approximately', 'LessThan', 'MoreThan']}, 'type'=>'CodeableConcept', 'path'=>'Relationship.comparator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-amount-type'}},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Relationship.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                                 # 0-1 string
        attr_accessor :extension                          # 0-* [ Extension ]
        attr_accessor :modifierExtension                  # 0-* [ Extension ]
        attr_accessor :substanceDefinitionReference       # 0-1 Reference(SubstanceDefinition)
        attr_accessor :substanceDefinitionCodeableConcept # 0-1 CodeableConcept
        attr_accessor :type                               # 1-1 CodeableConcept
        attr_accessor :isDefining                         # 0-1 boolean
        attr_accessor :amountQuantity                     # 0-1 Quantity
        attr_accessor :amountRatio                        # 0-1 Ratio
        attr_accessor :amountString                       # 0-1 string
        attr_accessor :ratioHighLimitAmount               # 0-1 Ratio
        attr_accessor :comparator                         # 0-1 CodeableConcept
        attr_accessor :source                             # 0-* [ Reference(DocumentReference) ]
      end

      class SourceMaterial < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'SourceMaterial.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'SourceMaterial.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'SourceMaterial.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/substance-source-material-type'=>['Animal', 'Plant', 'Mineral']}, 'type'=>'CodeableConcept', 'path'=>'SourceMaterial.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-source-material-type'}},
          'genus' => {'valid_codes'=>{'http://hl7.org/fhir/substance-source-material-genus'=>['Mycobacterium', 'InfluenzavirusA', 'Ginkgo']}, 'type'=>'CodeableConcept', 'path'=>'SourceMaterial.genus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-source-material-genus'}},
          'species' => {'valid_codes'=>{'http://hl7.org/fhir/substance-source-material-species'=>['GinkgoBiloba', 'OleaEuropaea']}, 'type'=>'CodeableConcept', 'path'=>'SourceMaterial.species', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-source-material-species'}},
          'part' => {'valid_codes'=>{'http://hl7.org/fhir/substance-source-material-part'=>['Animal', 'Plant', 'Mineral']}, 'type'=>'CodeableConcept', 'path'=>'SourceMaterial.part', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-source-material-part'}},
          'countryOfOrigin' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894']}, 'type'=>'CodeableConcept', 'path'=>'SourceMaterial.countryOfOrigin', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/country'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :genus             # 0-1 CodeableConcept
        attr_accessor :species           # 0-1 CodeableConcept
        attr_accessor :part              # 0-1 CodeableConcept
        attr_accessor :countryOfOrigin   # 0-* [ CodeableConcept ]
      end

      attr_accessor :id                   # 0-1 id
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :language             # 0-1 code
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-* [ Identifier ]
      attr_accessor :version              # 0-1 string
      attr_accessor :status               # 0-1 CodeableConcept
      attr_accessor :classification       # 0-* [ CodeableConcept ]
      attr_accessor :domain               # 0-1 CodeableConcept
      attr_accessor :grade                # 0-* [ CodeableConcept ]
      attr_accessor :description          # 0-1 markdown
      attr_accessor :informationSource    # 0-* [ Reference(Citation) ]
      attr_accessor :note                 # 0-* [ Annotation ]
      attr_accessor :manufacturer         # 0-* [ Reference(Organization) ]
      attr_accessor :supplier             # 0-* [ Reference(Organization) ]
      attr_accessor :moiety               # 0-* [ SubstanceDefinition::Moiety ]
      attr_accessor :characterization     # 0-* [ SubstanceDefinition::Characterization ]
      attr_accessor :property             # 0-* [ SubstanceDefinition::Property ]
      attr_accessor :referenceInformation # 0-1 Reference(SubstanceReferenceInformation)
      attr_accessor :molecularWeight      # 0-* [ SubstanceDefinition::MolecularWeight ]
      attr_accessor :structure            # 0-1 SubstanceDefinition::Structure
      attr_accessor :code                 # 0-* [ SubstanceDefinition::Code ]
      attr_accessor :name                 # 0-* [ SubstanceDefinition::Name ]
      attr_accessor :relationship         # 0-* [ SubstanceDefinition::Relationship ]
      attr_accessor :nucleicAcid          # 0-1 Reference(SubstanceNucleicAcid)
      attr_accessor :polymer              # 0-1 Reference(SubstancePolymer)
      attr_accessor :protein              # 0-1 Reference(SubstanceProtein)
      attr_accessor :sourceMaterial       # 0-1 SubstanceDefinition::SourceMaterial

      def resourceType
        'SubstanceDefinition'
      end
    end
  end
end