module FHIR
  module R4
    class PractitionerRole < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['active', 'date', 'email', 'endpoint', 'identifier', 'location', 'organization', 'phone', 'practitioner', 'role', 'service', 'specialty', 'telecom']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'PractitionerRole.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'PractitionerRole._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'PractitionerRole.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'PractitionerRole.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'PractitionerRole._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'PractitionerRole.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'PractitionerRole._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'PractitionerRole.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'PractitionerRole.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'PractitionerRole.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'PractitionerRole.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'PractitionerRole.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'type'=>'boolean', 'path'=>'PractitionerRole.active', 'min'=>0, 'max'=>1},
        '_active' => {'type'=>'Element', 'path'=>'PractitionerRole._active', 'min'=>0, 'max'=>1},
        'period' => {'type'=>'Period', 'path'=>'PractitionerRole.period', 'min'=>0, 'max'=>1},
        'practitioner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'PractitionerRole.practitioner', 'min'=>0, 'max'=>1},
        'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'PractitionerRole.organization', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/practitioner-role'=>['doctor', 'nurse', 'pharmacist', 'researcher', 'teacher', 'ict'], 'http://snomed.info/sct'=>['1421009', '3430008', '3842006', '4162009', '5275007', '6816002', '6868009', '8724009', '11661002', '11911009', '11935004', '13580004', '14698002', '17561000', '18803008', '18850004', '19244007', '20145008', '21365001', '21450003', '22515006', '22731001', '22983004', '23278007', '24430003', '24590004', '25961008', '26042002', '26369006', '28229004', '28411006', '28544002', '36682004', '37154003', '37504001', '39677007', '40127002', '40204001', '40570005', '41672002', '41904004', '43702002', '44652006', '45419001', '45440000', '45544007', '45956004', '46255001', '48740002', '49203003', '49993003', '50149000', '54503009', '56397003', '56466003', '56542007', '56545009', '57654006', '59058001', '59169001', '59944000', '60008001', '61207006', '61246008', '61345009', '61894003', '62247001', '63098009', '66476003', '66862007', '68867008', '68950000', '69280009', '71838004', '73265009', '75271001', '76166008', '76231001', '76899008', '78703002', '78729002', '79898004', '80409005', '80546007', '80584001', '80933006', '81464008', '82296001', '83189004', '83273008', '83685006', '85733003', '88189002', '88475002', '90201008', '90655003', '106289002', '106291005', '106292003', '106293008', '106294002', '106296000', '106330007', '112247003', '158965000', '158966004', '158967008', '158968003', '158969006', '158970007', '158971006', '158972004', '158973009', '158974003', '158975002', '158977005', '158978000', '158979008', '158980006', '158983008', '158984002', '158985001', '158986000', '158987009', '158988004', '158989007', '158990003', '158992006', '158993001', '158994007', '158995008', '158996009', '158997000', '158998005', '158999002', '159001001', '159002008', '159003003', '159004009', '159005005', '159006006', '159007002', '159010009', '159011008', '159012001', '159013006', '159014000', '159016003', '159017007', '159018002', '159019005', '159021000', '159022007', '159025009', '159026005', '159027001', '159028006', '159033005', '159034004', '159035003', '159036002', '159037006', '159038001', '159039009', '159040006', '159041005', '159141008', '159972006', '160008000', '224529009', '224530004', '224531000', '224532007', '224533002', '224534008', '224535009', '224536005', '224537001', '224538006', '224540001', '224541002', '224542009', '224543004', '224544005', '224545006', '224546007', '224547003', '224548008', '224549000', '224550000', '224551001', '224552008', '224553003', '224554009', '224555005', '224556006', '224557002', '224558007', '224559004', '224560009', '224561008', '224562001', '224563006', '224564000', '224565004', '224566003', '224567007', '224569005', '224570006', '224571005', '224572003', '224573008', '224574002', '224575001', '224576000', '224577009', '224578004', '224579007', '224580005', '224581009', '224583007', '224584001', '224585000', '224586004', '224587008', '224588003', '224589006', '224590002', '224591003', '224592005', '224593000', '224594006', '224595007', '224596008', '224597004', '224598009', '224599001', '224600003', '224601004', '224602006', '224603001', '224604007', '224605008', '224606009', '224607000', '224608005', '224609002', '224610007', '224614003', '224615002', '224620002', '224621003', '224622005', '224623000', '224624006', '224625007', '224626008', '224936003', '225726006', '225727002', '265937000', '265939002', '283875005', '302211009', '303124005', '303129000', '303133007', '303134001', '304291006', '304292004', '307988006', '308002005', '309294001', '309295000', '309296004', '309322005', '309323000', '309324006', '309326008', '309327004', '309328009', '309329001', '309330006', '309331005', '309332003', '309333008', '309334002', '309335001', '309336000', '309337009', '309338004', '309339007', '309340009', '309341008', '309342001', '309343006', '309345004', '309346003', '309347007', '309348002', '309349005', '309350005', '309351009', '309352002', '309353007', '309354001', '309355000', '309356004', '309357008', '309358003', '309359006', '309360001', '309361002', '309362009', '309363004', '309364005', '309365006', '309366007', '309367003', '309368008', '309369000', '309371000', '309372007', '309373002', '309374008', '309375009', '309376005', '309377001', '309378006', '309379003', '309380000', '309381001', '309382008', '309383003', '309384009', '309385005', '309386006', '309388007', '309389004', '309390008', '309391007', '309392000', '309393005', '309394004', '309395003', '309396002', '309397006', '309398001', '309399009', '309400002', '309401003', '309402005', '309403000', '309404006', '309409001', '309410006', '309411005', '309412003', '309413008', '309414002', '309415001', '309416000', '309417009', '309418004', '309419007', '309420001', '309421002', '309422009', '309423004', '309427003', '309428008', '309429000', '309434001', '309435000', '309436004', '309437008', '309439006', '309440008', '309441007', '309442000', '309443005', '309444004', '309445003', '309446002', '309450009', '309452001', '309453006', '309454000', '309455004', '309459005', '309460000', '310170009', '310171008', '310172001', '310173006', '310174000', '310175004', '310176003', '310177007', '310178002', '310179005', '310180008', '310181007', '310182000', '310183005', '310184004', '310185003', '310186002', '310187006', '310188001', '310189009', '310190000', '310191001', '310192008', '310193003', '310194009', '310512001', '311441001', '312485001', '372102007', '387619007', '394572006', '394618009', '397824005', '397897005', '397903001', '397908005', '398130009', '398238009', '404940000', '405277009', '405278004', '405279007', '405623001', '405684005', '405685006', '408798009', '408799001', '409974004', '409975003', '413854007', '415075003', '415506007', '416160000', '420409002', '420678001', '421841007', '422140007', '422234006', '432100008', '442867008', '443090005', '444912007', '445313000', '445451001', '446050000', '446701002', '449161006', '471302004', '3981000175106', '231189271000087109', '236749831000087105', '258508741000087105', '260767431000087107', '285631911000087106', '291705421000087106', '341320851000087105', '368890881000087105', '398480381000087106', '416186861000087101', '450044741000087104', '465511991000087105', '494782281000087101', '619197631000087102', '623630151000087105', '666997781000087107', '673825031000087109', '682131381000087105', '724111801000087104', '747936471000087102', '766788081000087100', '767205061000087108', '813758161000087106', '822410621000087104', '847240411000087102', '853827051000087104', '926871431000087103', '954544641000087107', '956387501000087102', '969118571000087109', '984095901000087105', '990928611000087105', '999480451000087102', '999480461000087104']}, 'type'=>'CodeableConcept', 'path'=>'PractitionerRole.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/practitioner-role'}},
        'specialty' => {'valid_codes'=>{'http://snomed.info/sct'=>['408467006', '394577000', '394578005', '421661004', '408462000', '394579002', '394804000', '394580004', '394803006', '408480009', '408454008', '394809005', '394592004', '394600006', '394601005', '394581000', '408478003', '394812008', '408444009', '394582007', '408475000', '410005002', '394583002', '419772000', '394584008', '408443003', '394802001', '394915009', '394814009', '394808002', '394811001', '408446006', '394586005', '394916005', '408472002', '394597005', '394598000', '394807007', '419192003', '408468001', '394593009', '394813003', '410001006', '394589003', '394591006', '394599008', '394649004', '408470005', '394585009', '394821009', '422191005', '394594003', '416304004', '418960008', '394882004', '394806003', '394588006', '408459003', '394607009', '419610006', '418058008', '420208008', '418652005', '418535003', '418862001', '419365004', '418002000', '419983000', '419170002', '419472004', '394539006', '420112009', '409968004', '394587001', '394913002', '408440000', '418112009', '419815003', '394914008', '408455009', '394602003', '408447002', '394810000', '408450004', '408476004', '408469009', '408466002', '408471009', '408464004', '408441001', '408465003', '394605001', '394608004', '408461007', '408460008', '394606000', '408449004', '418018006', '394604002', '394609007', '408474001', '394610002', '394611003', '408477008', '394801008', '408463005', '419321007', '394576009', '394590007', '409967009', '408448007', '419043006', '394612005', '394733009', '394732004']}, 'type'=>'CodeableConcept', 'path'=>'PractitionerRole.specialty', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/c80-practice-codes'}},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'PractitionerRole.location', 'min'=>0, 'max'=>Float::INFINITY},
        'healthcareService' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'type'=>'Reference', 'path'=>'PractitionerRole.healthcareService', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'PractitionerRole.telecom', 'min'=>0, 'max'=>Float::INFINITY},
        'availableTime' => {'type'=>'PractitionerRole::AvailableTime', 'path'=>'PractitionerRole.availableTime', 'min'=>0, 'max'=>Float::INFINITY},
        'notAvailable' => {'type'=>'PractitionerRole::NotAvailable', 'path'=>'PractitionerRole.notAvailable', 'min'=>0, 'max'=>Float::INFINITY},
        'availabilityExceptions' => {'type'=>'string', 'path'=>'PractitionerRole.availabilityExceptions', 'min'=>0, 'max'=>1},
        '_availabilityExceptions' => {'type'=>'Element', 'path'=>'PractitionerRole._availabilityExceptions', 'min'=>0, 'max'=>1},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'type'=>'Reference', 'path'=>'PractitionerRole.endpoint', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class AvailableTime < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4'
        end

        def module_version
          FHIR::R4
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'AvailableTime.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'AvailableTime._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'AvailableTime.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'AvailableTime.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'daysOfWeek' => {'valid_codes'=>{'http://hl7.org/fhir/days-of-week'=>['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']}, 'type'=>'code', 'path'=>'AvailableTime.daysOfWeek', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/days-of-week'}},
          '_daysOfWeek' => {'type'=>'Element', 'path'=>'AvailableTime._daysOfWeek', 'min'=>0, 'max'=>Float::INFINITY},
          'allDay' => {'type'=>'boolean', 'path'=>'AvailableTime.allDay', 'min'=>0, 'max'=>1},
          '_allDay' => {'type'=>'Element', 'path'=>'AvailableTime._allDay', 'min'=>0, 'max'=>1},
          'availableStartTime' => {'type'=>'time', 'path'=>'AvailableTime.availableStartTime', 'min'=>0, 'max'=>1},
          '_availableStartTime' => {'type'=>'Element', 'path'=>'AvailableTime._availableStartTime', 'min'=>0, 'max'=>1},
          'availableEndTime' => {'type'=>'time', 'path'=>'AvailableTime.availableEndTime', 'min'=>0, 'max'=>1},
          '_availableEndTime' => {'type'=>'Element', 'path'=>'AvailableTime._availableEndTime', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :_id                 # 0-1 Element
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :daysOfWeek          # 0-* [ code ]
        attr_accessor :_daysOfWeek         # 0-* [ Element ]
        attr_accessor :allDay              # 0-1 boolean
        attr_accessor :_allDay             # 0-1 Element
        attr_accessor :availableStartTime  # 0-1 time
        attr_accessor :_availableStartTime # 0-1 Element
        attr_accessor :availableEndTime    # 0-1 time
        attr_accessor :_availableEndTime   # 0-1 Element
      end

      class NotAvailable < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4'
        end

        def module_version
          FHIR::R4
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'NotAvailable.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'NotAvailable._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'NotAvailable.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'NotAvailable.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'NotAvailable.description', 'min'=>1, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'NotAvailable._description', 'min'=>0, 'max'=>1},
          'during' => {'type'=>'Period', 'path'=>'NotAvailable.during', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 1-1 string
        attr_accessor :_description      # 0-1 Element
        attr_accessor :during            # 0-1 Period
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
      attr_accessor :active                  # 0-1 boolean
      attr_accessor :_active                 # 0-1 Element
      attr_accessor :period                  # 0-1 Period
      attr_accessor :practitioner            # 0-1 Reference(Practitioner)
      attr_accessor :organization            # 0-1 Reference(Organization)
      attr_accessor :code                    # 0-* [ CodeableConcept ]
      attr_accessor :specialty               # 0-* [ CodeableConcept ]
      attr_accessor :location                # 0-* [ Reference(Location) ]
      attr_accessor :healthcareService       # 0-* [ Reference(HealthcareService) ]
      attr_accessor :telecom                 # 0-* [ ContactPoint ]
      attr_accessor :availableTime           # 0-* [ PractitionerRole::AvailableTime ]
      attr_accessor :notAvailable            # 0-* [ PractitionerRole::NotAvailable ]
      attr_accessor :availabilityExceptions  # 0-1 string
      attr_accessor :_availabilityExceptions # 0-1 Element
      attr_accessor :endpoint                # 0-* [ Reference(Endpoint) ]

      def resourceType
        'PractitionerRole'
      end
    end
  end
  PractitionerRole = FHIR::R4::PractitionerRole
end