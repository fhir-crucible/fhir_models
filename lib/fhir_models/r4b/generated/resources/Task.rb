module FHIR
  module R4B
    class Task < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['authored-on', 'based-on', 'business-status', 'code', 'encounter', 'focus', 'group-identifier', 'identifier', 'intent', 'modified', 'owner', 'part-of', 'patient', 'performer', 'period', 'priority', 'requester', 'status', 'subject']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Task.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Task._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Task.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Task.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Task._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Task.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Task._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Task.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Task.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Task.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Task.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Task.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesCanonical' => {'type'=>'canonical', 'path'=>'Task.instantiatesCanonical', 'min'=>0, 'max'=>1},
        '_instantiatesCanonical' => {'type'=>'Element', 'path'=>'Task._instantiatesCanonical', 'min'=>0, 'max'=>1},
        'instantiatesUri' => {'type'=>'uri', 'path'=>'Task.instantiatesUri', 'min'=>0, 'max'=>1},
        '_instantiatesUri' => {'type'=>'Element', 'path'=>'Task._instantiatesUri', 'min'=>0, 'max'=>1},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Task.basedOn', 'min'=>0, 'max'=>Float::INFINITY},
        'groupIdentifier' => {'type'=>'Identifier', 'path'=>'Task.groupIdentifier', 'min'=>0, 'max'=>1},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Task'], 'type'=>'Reference', 'path'=>'Task.partOf', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/task-status'=>['draft', 'requested', 'received', 'accepted', 'rejected', 'ready', 'cancelled', 'in-progress', 'on-hold', 'failed', 'completed', 'entered-in-error']}, 'type'=>'code', 'path'=>'Task.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/task-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Task._status', 'min'=>0, 'max'=>1},
        'statusReason' => {'type'=>'CodeableConcept', 'path'=>'Task.statusReason', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'businessStatus' => {'type'=>'CodeableConcept', 'path'=>'Task.businessStatus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'intent' => {'valid_codes'=>{'http://hl7.org/fhir/task-intent'=>['unknown'], 'http://hl7.org/fhir/request-intent'=>['proposal', 'plan', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option']}, 'type'=>'code', 'path'=>'Task.intent', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/task-intent'}},
        '_intent' => {'type'=>'Element', 'path'=>'Task._intent', 'min'=>0, 'max'=>1},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'type'=>'code', 'path'=>'Task.priority', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        '_priority' => {'type'=>'Element', 'path'=>'Task._priority', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/task-code'=>['approve', 'fulfill', 'abort', 'replace', 'change', 'suspend', 'resume']}, 'type'=>'CodeableConcept', 'path'=>'Task.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/task-code'}},
        'description' => {'type'=>'string', 'path'=>'Task.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'Task._description', 'min'=>0, 'max'=>1},
        'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Task.focus', 'min'=>0, 'max'=>1},
        'for' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Task.for', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'Task.encounter', 'min'=>0, 'max'=>1},
        'executionPeriod' => {'type'=>'Period', 'path'=>'Task.executionPeriod', 'min'=>0, 'max'=>1},
        'authoredOn' => {'type'=>'dateTime', 'path'=>'Task.authoredOn', 'min'=>0, 'max'=>1},
        '_authoredOn' => {'type'=>'Element', 'path'=>'Task._authoredOn', 'min'=>0, 'max'=>1},
        'lastModified' => {'type'=>'dateTime', 'path'=>'Task.lastModified', 'min'=>0, 'max'=>1},
        '_lastModified' => {'type'=>'Element', 'path'=>'Task._lastModified', 'min'=>0, 'max'=>1},
        'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Task.requester', 'min'=>0, 'max'=>1},
        'performerType' => {'valid_codes'=>{'http://snomed.info/sct'=>['223366009', '1421009', '3430008', '3842006', '4162009', '5275007', '6816002', '6868009', '8724009', '11661002', '11911009', '11935004', '13580004', '14698002', '17561000', '18803008', '18850004', '19244007', '20145008', '21365001', '21450003', '22515006', '22731001', '22983004', '23278007', '24430003', '24590004', '25961008', '26042002', '26369006', '28229004', '28411006', '28544002', '36682004', '37154003', '37504001', '39677007', '40127002', '40204001', '40570005', '41672002', '41904004', '43702002', '44652006', '45419001', '45440000', '45544007', '45956004', '46255001', '48740002', '49203003', '49993003', '50149000', '54503009', '56397003', '56466003', '56542007', '56545009', '57654006', '59058001', '59169001', '59317003', '59944000', '60008001', '61207006', '61246008', '61345009', '61894003', '62247001', '63098009', '66476003', '66862007', '68867008', '68950000', '69280009', '71838004', '73265009', '75271001', '76166008', '76231001', '76899008', '78703002', '78729002', '79898004', '80409005', '80546007', '80584001', '80933006', '81464008', '82296001', '83273008', '83685006', '85733003', '88189002', '90201008', '90655003', '106289002', '106291005', '106292003', '106293008', '106294002', '106296000', '106330007', '158965000', '158966004', '158967008', '158968003', '158969006', '158971006', '158972004', '158973009', '158974003', '158975002', '158977005', '158978000', '158979008', '158980006', '158983008', '158984002', '158985001', '158986000', '158987009', '158988004', '158989007', '158990003', '158992006', '158993001', '158994007', '158995008', '158996009', '158997000', '158998005', '158999002', '159001001', '159002008', '159003003', '159004009', '159005005', '159006006', '159007002', '159010009', '159011008', '159012001', '159014000', '159016003', '159017007', '159018002', '159019005', '159021000', '159022007', '159025009', '159026005', '159027001', '159028006', '159033005', '159034004', '159035003', '159036002', '159037006', '159038001', '159039009', '159040006', '159041005', '159141008', '159972006', '160008000', '224529009', '224530004', '224531000', '224532007', '224533002', '224534008', '224535009', '224536005', '224537001', '224538006', '224540001', '224541002', '224542009', '224543004', '224544005', '224545006', '224546007', '224547003', '224548008', '224549000', '224550000', '224551001', '224552008', '224553003', '224554009', '224555005', '224556006', '224557002', '224558007', '224559004', '224560009', '224562001', '224563006', '224564000', '224565004', '224566003', '224567007', '224569005', '224570006', '224571005', '224572003', '224573008', '224574002', '224575001', '224576000', '224577009', '224578004', '224579007', '224580005', '224581009', '224583007', '224584001', '224585000', '224586004', '224587008', '224588003', '224589006', '224590002', '224591003', '224592005', '224593000', '224594006', '224595007', '224596008', '224597004', '224598009', '224599001', '224600003', '224601004', '224602006', '224603001', '224604007', '224605008', '224606009', '224607000', '224608005', '224609002', '224610007', '224614003', '224615002', '224620002', '224621003', '224622005', '224623000', '224624006', '224625007', '224626008', '224936003', '225726006', '225727002', '265937000', '265939002', '283875005', '302211009', '303124005', '303129000', '303133007', '303134001', '304291006', '304292004', '307988006', '308002005', '309294001', '309295000', '309296004', '309322005', '309323000', '309324006', '309326008', '309327004', '309328009', '309329001', '309330006', '309331005', '309332003', '309333008', '309334002', '309335001', '309336000', '309337009', '309338004', '309339007', '309340009', '309341008', '309342001', '309343006', '309345004', '309346003', '309347007', '309348002', '309349005', '309350005', '309351009', '309352002', '309353007', '309354001', '309355000', '309356004', '309357008', '309358003', '309359006', '309360001', '309361002', '309362009', '309363004', '309364005', '309365006', '309366007', '309367003', '309368008', '309369000', '309371000', '309372007', '309373002', '309374008', '309375009', '309376005', '309377001', '309378006', '309379003', '309380000', '309381001', '309382008', '309383003', '309384009', '309385005', '309386006', '309388007', '309389004', '309390008', '309391007', '309392000', '309393005', '309394004', '309395003', '309396002', '309397006', '309398001', '309399009', '309400002', '309401003', '309402005', '309403000', '309404006', '309409001', '309410006', '309411005', '309412003', '309413008', '309414002', '309415001', '309416000', '309417009', '309418004', '309419007', '309420001', '309421002', '309422009', '309423004', '309427003', '309428008', '309429000', '309434001', '309435000', '309436004', '309437008', '309439006', '309440008', '309441007', '309442000', '309443005', '309444004', '309445003', '309446002', '309450009', '309452001', '309453006', '309454000', '309455004', '309459005', '309460000', '310170009', '310171008', '310172001', '310173006', '310174000', '310175004', '310176003', '310177007', '310178002', '310179005', '310180008', '310181007', '310182000', '310183005', '310184004', '310185003', '310186002', '310187006', '310188001', '310189009', '310190000', '310191001', '310192008', '310193003', '310194009', '310512001', '311441001', '312485001', '372102007', '387619007', '394572006', '394618009', '397897005', '397903001', '397908005', '398130009', '398238009', '404940000', '405277009', '405278004', '405279007', '405623001', '405684005', '405685006', '408798009', '408799001', '409974004', '409975003', '413854007', '415075003', '415506007', '416160000', '420409002', '420678001', '421841007', '422140007', '422234006', '432100008', '442867008', '443090005', '444912007', '445313000', '445451001', '446050000', '446701002', '449161006', '471302004', '720503005', '721936008', '721937004', '721938009', '721939001', '721940004', '721941000', '721942007', '721943002', '734293001', '734294007', '763292005', '768730001', '768731002', '768732009', '768819009', '768825008', '768826009', '768827000', '768828005', '768829002', '768832004', '768833009', '768834003', '768836001', '768837005', '768839008', '789543004', '840583002', '840584008', '3981000175106', '25941000087102', '26031000087100', '26071000087103', '26091000087104', '450044741000087104']}, 'type'=>'CodeableConcept', 'path'=>'Task.performerType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/performer-role'}},
        'owner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Task.owner', 'min'=>0, 'max'=>1},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Task.location', 'min'=>0, 'max'=>1},
        'reasonCode' => {'type'=>'CodeableConcept', 'path'=>'Task.reasonCode', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Task.reasonReference', 'min'=>0, 'max'=>1},
        'insurance' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage', 'http://hl7.org/fhir/StructureDefinition/ClaimResponse'], 'type'=>'Reference', 'path'=>'Task.insurance', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'type'=>'Annotation', 'path'=>'Task.note', 'min'=>0, 'max'=>Float::INFINITY},
        'relevantHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'type'=>'Reference', 'path'=>'Task.relevantHistory', 'min'=>0, 'max'=>Float::INFINITY},
        'restriction' => {'type'=>'Task::Restriction', 'path'=>'Task.restriction', 'min'=>0, 'max'=>1},
        'input' => {'type'=>'Task::Input', 'path'=>'Task.input', 'min'=>0, 'max'=>Float::INFINITY},
        'output' => {'type'=>'Task::Output', 'path'=>'Task.output', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Restriction < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Restriction.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Restriction._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Restriction.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Restriction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'repetitions' => {'type'=>'positiveInt', 'path'=>'Restriction.repetitions', 'min'=>0, 'max'=>1},
          '_repetitions' => {'type'=>'Element', 'path'=>'Restriction._repetitions', 'min'=>0, 'max'=>1},
          'period' => {'type'=>'Period', 'path'=>'Restriction.period', 'min'=>0, 'max'=>1},
          'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Restriction.recipient', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :repetitions       # 0-1 positiveInt
        attr_accessor :_repetitions      # 0-1 Element
        attr_accessor :period            # 0-1 Period
        attr_accessor :recipient         # 0-* [ Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Group|Organization) ]
      end

      class Input < FHIR::Model
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
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Input.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Input._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Input.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Input.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Input.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueBase64Binary' => {'type'=>'base64Binary', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueBase64Binary' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueBoolean' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueCanonical' => {'type'=>'canonical', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueCanonical' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueCode' => {'type'=>'code', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueCode' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueDate' => {'type'=>'date', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueDate' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueDateTime' => {'type'=>'dateTime', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueDateTime' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueDecimal' => {'type'=>'decimal', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueDecimal' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueId' => {'type'=>'id', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueId' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueInstant' => {'type'=>'instant', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueInstant' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueInteger' => {'type'=>'integer', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueInteger' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueMarkdown' => {'type'=>'markdown', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueMarkdown' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueOid' => {'type'=>'oid', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueOid' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valuePositiveInt' => {'type'=>'positiveInt', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valuePositiveInt' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueString' => {'type'=>'string', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueString' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueTime' => {'type'=>'time', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueTime' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueUnsignedInt' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueUri' => {'type'=>'uri', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueUri' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueUrl' => {'type'=>'url', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueUrl' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueUuid' => {'type'=>'uuid', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          '_valueUuid' => {'type'=>'Element', 'path'=>'Input.value[x]', 'min'=>0, 'max'=>1},
          'valueAddress' => {'type'=>'Address', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueAge' => {'type'=>'Age', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueAnnotation' => {'type'=>'Annotation', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueCoding' => {'type'=>'Coding', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueContactPoint' => {'type'=>'ContactPoint', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueCount' => {'type'=>'Count', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueDistance' => {'type'=>'Distance', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueDuration' => {'type'=>'Duration', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueHumanName' => {'type'=>'HumanName', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueIdentifier' => {'type'=>'Identifier', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueMoney' => {'type'=>'Money', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valuePeriod' => {'type'=>'Period', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueRange' => {'type'=>'Range', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueRatio' => {'type'=>'Ratio', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueReference' => {'type'=>'Reference', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueSampledData' => {'type'=>'SampledData', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueSignature' => {'type'=>'Signature', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueTiming' => {'type'=>'Timing', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueContactDetail' => {'type'=>'ContactDetail', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueContributor' => {'type'=>'Contributor', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueDataRequirement' => {'type'=>'DataRequirement', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueExpression' => {'type'=>'Expression', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueParameterDefinition' => {'type'=>'ParameterDefinition', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueRelatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueTriggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueUsageContext' => {'type'=>'UsageContext', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueDosage' => {'type'=>'Dosage', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1},
          'valueMeta' => {'type'=>'Meta', 'path'=>'Input.value[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :_id                      # 0-1 Element
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :type                     # 1-1 CodeableConcept
        attr_accessor :valueBase64Binary        # 1-1 base64Binary
        attr_accessor :_valueBase64Binary       # 0-1 Element
        attr_accessor :valueBoolean             # 1-1 boolean
        attr_accessor :_valueBoolean            # 0-1 Element
        attr_accessor :valueCanonical           # 1-1 canonical
        attr_accessor :_valueCanonical          # 0-1 Element
        attr_accessor :valueCode                # 1-1 code
        attr_accessor :_valueCode               # 0-1 Element
        attr_accessor :valueDate                # 1-1 date
        attr_accessor :_valueDate               # 0-1 Element
        attr_accessor :valueDateTime            # 1-1 dateTime
        attr_accessor :_valueDateTime           # 0-1 Element
        attr_accessor :valueDecimal             # 1-1 decimal
        attr_accessor :_valueDecimal            # 0-1 Element
        attr_accessor :valueId                  # 1-1 id
        attr_accessor :_valueId                 # 0-1 Element
        attr_accessor :valueInstant             # 1-1 instant
        attr_accessor :_valueInstant            # 0-1 Element
        attr_accessor :valueInteger             # 1-1 integer
        attr_accessor :_valueInteger            # 0-1 Element
        attr_accessor :valueMarkdown            # 1-1 markdown
        attr_accessor :_valueMarkdown           # 0-1 Element
        attr_accessor :valueOid                 # 1-1 oid
        attr_accessor :_valueOid                # 0-1 Element
        attr_accessor :valuePositiveInt         # 1-1 positiveInt
        attr_accessor :_valuePositiveInt        # 0-1 Element
        attr_accessor :valueString              # 1-1 string
        attr_accessor :_valueString             # 0-1 Element
        attr_accessor :valueTime                # 1-1 time
        attr_accessor :_valueTime               # 0-1 Element
        attr_accessor :valueUnsignedInt         # 1-1 unsignedInt
        attr_accessor :_valueUnsignedInt        # 0-1 Element
        attr_accessor :valueUri                 # 1-1 uri
        attr_accessor :_valueUri                # 0-1 Element
        attr_accessor :valueUrl                 # 1-1 url
        attr_accessor :_valueUrl                # 0-1 Element
        attr_accessor :valueUuid                # 1-1 uuid
        attr_accessor :_valueUuid               # 0-1 Element
        attr_accessor :valueAddress             # 1-1 Address
        attr_accessor :valueAge                 # 1-1 Age
        attr_accessor :valueAnnotation          # 1-1 Annotation
        attr_accessor :valueAttachment          # 1-1 Attachment
        attr_accessor :valueCodeableConcept     # 1-1 CodeableConcept
        attr_accessor :valueCoding              # 1-1 Coding
        attr_accessor :valueContactPoint        # 1-1 ContactPoint
        attr_accessor :valueCount               # 1-1 Count
        attr_accessor :valueDistance            # 1-1 Distance
        attr_accessor :valueDuration            # 1-1 Duration
        attr_accessor :valueHumanName           # 1-1 HumanName
        attr_accessor :valueIdentifier          # 1-1 Identifier
        attr_accessor :valueMoney               # 1-1 Money
        attr_accessor :valuePeriod              # 1-1 Period
        attr_accessor :valueQuantity            # 1-1 Quantity
        attr_accessor :valueRange               # 1-1 Range
        attr_accessor :valueRatio               # 1-1 Ratio
        attr_accessor :valueReference           # 1-1 Reference()
        attr_accessor :valueSampledData         # 1-1 SampledData
        attr_accessor :valueSignature           # 1-1 Signature
        attr_accessor :valueTiming              # 1-1 Timing
        attr_accessor :valueContactDetail       # 1-1 ContactDetail
        attr_accessor :valueContributor         # 1-1 Contributor
        attr_accessor :valueDataRequirement     # 1-1 DataRequirement
        attr_accessor :valueExpression          # 1-1 Expression
        attr_accessor :valueParameterDefinition # 1-1 ParameterDefinition
        attr_accessor :valueRelatedArtifact     # 1-1 RelatedArtifact
        attr_accessor :valueTriggerDefinition   # 1-1 TriggerDefinition
        attr_accessor :valueUsageContext        # 1-1 UsageContext
        attr_accessor :valueDosage              # 1-1 Dosage
        attr_accessor :valueMeta                # 1-1 Meta
      end

      class Output < FHIR::Model
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
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Output.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Output._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Output.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Output.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Output.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueBase64Binary' => {'type'=>'base64Binary', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueBase64Binary' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueBoolean' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueCanonical' => {'type'=>'canonical', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueCanonical' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueCode' => {'type'=>'code', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueCode' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueDate' => {'type'=>'date', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueDate' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueDateTime' => {'type'=>'dateTime', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueDateTime' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueDecimal' => {'type'=>'decimal', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueDecimal' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueId' => {'type'=>'id', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueId' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueInstant' => {'type'=>'instant', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueInstant' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueInteger' => {'type'=>'integer', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueInteger' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueMarkdown' => {'type'=>'markdown', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueMarkdown' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueOid' => {'type'=>'oid', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueOid' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valuePositiveInt' => {'type'=>'positiveInt', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valuePositiveInt' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueString' => {'type'=>'string', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueString' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueTime' => {'type'=>'time', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueTime' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueUnsignedInt' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueUri' => {'type'=>'uri', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueUri' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueUrl' => {'type'=>'url', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueUrl' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueUuid' => {'type'=>'uuid', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          '_valueUuid' => {'type'=>'Element', 'path'=>'Output.value[x]', 'min'=>0, 'max'=>1},
          'valueAddress' => {'type'=>'Address', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueAge' => {'type'=>'Age', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueAnnotation' => {'type'=>'Annotation', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueCoding' => {'type'=>'Coding', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueContactPoint' => {'type'=>'ContactPoint', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueCount' => {'type'=>'Count', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueDistance' => {'type'=>'Distance', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueDuration' => {'type'=>'Duration', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueHumanName' => {'type'=>'HumanName', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueIdentifier' => {'type'=>'Identifier', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueMoney' => {'type'=>'Money', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valuePeriod' => {'type'=>'Period', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueRange' => {'type'=>'Range', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueRatio' => {'type'=>'Ratio', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueReference' => {'type'=>'Reference', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueSampledData' => {'type'=>'SampledData', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueSignature' => {'type'=>'Signature', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueTiming' => {'type'=>'Timing', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueContactDetail' => {'type'=>'ContactDetail', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueContributor' => {'type'=>'Contributor', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueDataRequirement' => {'type'=>'DataRequirement', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueExpression' => {'type'=>'Expression', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueParameterDefinition' => {'type'=>'ParameterDefinition', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueRelatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueTriggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueUsageContext' => {'type'=>'UsageContext', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueDosage' => {'type'=>'Dosage', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1},
          'valueMeta' => {'type'=>'Meta', 'path'=>'Output.value[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :_id                      # 0-1 Element
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :type                     # 1-1 CodeableConcept
        attr_accessor :valueBase64Binary        # 1-1 base64Binary
        attr_accessor :_valueBase64Binary       # 0-1 Element
        attr_accessor :valueBoolean             # 1-1 boolean
        attr_accessor :_valueBoolean            # 0-1 Element
        attr_accessor :valueCanonical           # 1-1 canonical
        attr_accessor :_valueCanonical          # 0-1 Element
        attr_accessor :valueCode                # 1-1 code
        attr_accessor :_valueCode               # 0-1 Element
        attr_accessor :valueDate                # 1-1 date
        attr_accessor :_valueDate               # 0-1 Element
        attr_accessor :valueDateTime            # 1-1 dateTime
        attr_accessor :_valueDateTime           # 0-1 Element
        attr_accessor :valueDecimal             # 1-1 decimal
        attr_accessor :_valueDecimal            # 0-1 Element
        attr_accessor :valueId                  # 1-1 id
        attr_accessor :_valueId                 # 0-1 Element
        attr_accessor :valueInstant             # 1-1 instant
        attr_accessor :_valueInstant            # 0-1 Element
        attr_accessor :valueInteger             # 1-1 integer
        attr_accessor :_valueInteger            # 0-1 Element
        attr_accessor :valueMarkdown            # 1-1 markdown
        attr_accessor :_valueMarkdown           # 0-1 Element
        attr_accessor :valueOid                 # 1-1 oid
        attr_accessor :_valueOid                # 0-1 Element
        attr_accessor :valuePositiveInt         # 1-1 positiveInt
        attr_accessor :_valuePositiveInt        # 0-1 Element
        attr_accessor :valueString              # 1-1 string
        attr_accessor :_valueString             # 0-1 Element
        attr_accessor :valueTime                # 1-1 time
        attr_accessor :_valueTime               # 0-1 Element
        attr_accessor :valueUnsignedInt         # 1-1 unsignedInt
        attr_accessor :_valueUnsignedInt        # 0-1 Element
        attr_accessor :valueUri                 # 1-1 uri
        attr_accessor :_valueUri                # 0-1 Element
        attr_accessor :valueUrl                 # 1-1 url
        attr_accessor :_valueUrl                # 0-1 Element
        attr_accessor :valueUuid                # 1-1 uuid
        attr_accessor :_valueUuid               # 0-1 Element
        attr_accessor :valueAddress             # 1-1 Address
        attr_accessor :valueAge                 # 1-1 Age
        attr_accessor :valueAnnotation          # 1-1 Annotation
        attr_accessor :valueAttachment          # 1-1 Attachment
        attr_accessor :valueCodeableConcept     # 1-1 CodeableConcept
        attr_accessor :valueCoding              # 1-1 Coding
        attr_accessor :valueContactPoint        # 1-1 ContactPoint
        attr_accessor :valueCount               # 1-1 Count
        attr_accessor :valueDistance            # 1-1 Distance
        attr_accessor :valueDuration            # 1-1 Duration
        attr_accessor :valueHumanName           # 1-1 HumanName
        attr_accessor :valueIdentifier          # 1-1 Identifier
        attr_accessor :valueMoney               # 1-1 Money
        attr_accessor :valuePeriod              # 1-1 Period
        attr_accessor :valueQuantity            # 1-1 Quantity
        attr_accessor :valueRange               # 1-1 Range
        attr_accessor :valueRatio               # 1-1 Ratio
        attr_accessor :valueReference           # 1-1 Reference()
        attr_accessor :valueSampledData         # 1-1 SampledData
        attr_accessor :valueSignature           # 1-1 Signature
        attr_accessor :valueTiming              # 1-1 Timing
        attr_accessor :valueContactDetail       # 1-1 ContactDetail
        attr_accessor :valueContributor         # 1-1 Contributor
        attr_accessor :valueDataRequirement     # 1-1 DataRequirement
        attr_accessor :valueExpression          # 1-1 Expression
        attr_accessor :valueParameterDefinition # 1-1 ParameterDefinition
        attr_accessor :valueRelatedArtifact     # 1-1 RelatedArtifact
        attr_accessor :valueTriggerDefinition   # 1-1 TriggerDefinition
        attr_accessor :valueUsageContext        # 1-1 UsageContext
        attr_accessor :valueDosage              # 1-1 Dosage
        attr_accessor :valueMeta                # 1-1 Meta
      end

      attr_accessor :id                     # 0-1 id
      attr_accessor :_id                    # 0-1 Element
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :_implicitRules         # 0-1 Element
      attr_accessor :language               # 0-1 code
      attr_accessor :_language              # 0-1 Element
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :instantiatesCanonical  # 0-1 canonical
      attr_accessor :_instantiatesCanonical # 0-1 Element
      attr_accessor :instantiatesUri        # 0-1 uri
      attr_accessor :_instantiatesUri       # 0-1 Element
      attr_accessor :basedOn                # 0-* [ Reference(Resource) ]
      attr_accessor :groupIdentifier        # 0-1 Identifier
      attr_accessor :partOf                 # 0-* [ Reference(Task) ]
      attr_accessor :status                 # 1-1 code
      attr_accessor :_status                # 0-1 Element
      attr_accessor :statusReason           # 0-1 CodeableConcept
      attr_accessor :businessStatus         # 0-1 CodeableConcept
      attr_accessor :intent                 # 1-1 code
      attr_accessor :_intent                # 0-1 Element
      attr_accessor :priority               # 0-1 code
      attr_accessor :_priority              # 0-1 Element
      attr_accessor :code                   # 0-1 CodeableConcept
      attr_accessor :description            # 0-1 string
      attr_accessor :_description           # 0-1 Element
      attr_accessor :focus                  # 0-1 Reference(Resource)
      attr_accessor :for                    # 0-1 Reference(Resource)
      attr_accessor :encounter              # 0-1 Reference(Encounter)
      attr_accessor :executionPeriod        # 0-1 Period
      attr_accessor :authoredOn             # 0-1 dateTime
      attr_accessor :_authoredOn            # 0-1 Element
      attr_accessor :lastModified           # 0-1 dateTime
      attr_accessor :_lastModified          # 0-1 Element
      attr_accessor :requester              # 0-1 Reference(Device|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
      attr_accessor :performerType          # 0-* [ CodeableConcept ]
      attr_accessor :owner                  # 0-1 Reference(Practitioner|PractitionerRole|Organization|CareTeam|HealthcareService|Patient|Device|RelatedPerson)
      attr_accessor :location               # 0-1 Reference(Location)
      attr_accessor :reasonCode             # 0-1 CodeableConcept
      attr_accessor :reasonReference        # 0-1 Reference(Resource)
      attr_accessor :insurance              # 0-* [ Reference(Coverage|ClaimResponse) ]
      attr_accessor :note                   # 0-* [ Annotation ]
      attr_accessor :relevantHistory        # 0-* [ Reference(Provenance) ]
      attr_accessor :restriction            # 0-1 Task::Restriction
      attr_accessor :input                  # 0-* [ Task::Input ]
      attr_accessor :output                 # 0-* [ Task::Output ]

      def resourceType
        'Task'
      end
    end
  end
end