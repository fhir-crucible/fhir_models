module FHIR
  module R4
    class List < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['code', 'date', 'empty-reason', 'encounter', 'identifier', 'item', 'notes', 'patient', 'source', 'status', 'subject', 'title']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'List.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'List._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'List.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'List.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'List._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'List.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'List._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'List.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'List.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'List.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'List.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'List.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/list-status'=>['current', 'retired', 'entered-in-error']}, 'type'=>'code', 'path'=>'List.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/list-status'}},
        '_status' => {'type'=>'Element', 'path'=>'List._status', 'min'=>0, 'max'=>1},
        'mode' => {'valid_codes'=>{'http://hl7.org/fhir/list-mode'=>['working', 'snapshot', 'changes']}, 'type'=>'code', 'path'=>'List.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/list-mode'}},
        '_mode' => {'type'=>'Element', 'path'=>'List._mode', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'List.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'List._title', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/list-example-use-codes'=>['alerts', 'adverserxns', 'allergies', 'medications', 'problems', 'worklist', 'waiting', 'protocols', 'plans']}, 'type'=>'CodeableConcept', 'path'=>'List.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/list-example-codes'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'List.subject', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'List.encounter', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'List.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'List._date', 'min'=>0, 'max'=>1},
        'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'List.source', 'min'=>0, 'max'=>1},
        'orderedBy' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/list-order'=>['user', 'system', 'event-date', 'entry-date', 'priority', 'alphabetic', 'category', 'patient']}, 'type'=>'CodeableConcept', 'path'=>'List.orderedBy', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/list-order'}},
        'note' => {'type'=>'Annotation', 'path'=>'List.note', 'min'=>0, 'max'=>Float::INFINITY},
        'entry' => {'type'=>'List::Entry', 'path'=>'List.entry', 'min'=>0, 'max'=>Float::INFINITY},
        'emptyReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/list-empty-reason'=>['nilknown', 'notasked', 'withheld', 'unavailable', 'notstarted', 'closed']}, 'type'=>'CodeableConcept', 'path'=>'List.emptyReason', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/list-empty-reason'}}
      }

      class Entry < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Entry.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Entry._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Entry.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Entry.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'flag' => {'valid_codes'=>{'urn:oid:1.2.36.1.2001.1001.101.104.16592'=>['01', '02', '03', '04', '05', '06']}, 'type'=>'CodeableConcept', 'path'=>'Entry.flag', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/list-item-flag'}},
          'deleted' => {'type'=>'boolean', 'path'=>'Entry.deleted', 'min'=>0, 'max'=>1},
          '_deleted' => {'type'=>'Element', 'path'=>'Entry._deleted', 'min'=>0, 'max'=>1},
          'date' => {'type'=>'dateTime', 'path'=>'Entry.date', 'min'=>0, 'max'=>1},
          '_date' => {'type'=>'Element', 'path'=>'Entry._date', 'min'=>0, 'max'=>1},
          'item' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Entry.item', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :flag              # 0-1 CodeableConcept
        attr_accessor :deleted           # 0-1 boolean
        attr_accessor :_deleted          # 0-1 Element
        attr_accessor :date              # 0-1 dateTime
        attr_accessor :_date             # 0-1 Element
        attr_accessor :item              # 1-1 Reference(Resource)
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :_id               # 0-1 Element
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :_implicitRules    # 0-1 Element
      attr_accessor :language          # 0-1 code
      attr_accessor :_language         # 0-1 Element
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :mode              # 1-1 code
      attr_accessor :_mode             # 0-1 Element
      attr_accessor :title             # 0-1 string
      attr_accessor :_title            # 0-1 Element
      attr_accessor :code              # 0-1 CodeableConcept
      attr_accessor :subject           # 0-1 Reference(Patient|Group|Device|Location)
      attr_accessor :encounter         # 0-1 Reference(Encounter)
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :_date             # 0-1 Element
      attr_accessor :source            # 0-1 Reference(Practitioner|PractitionerRole|Patient|Device)
      attr_accessor :orderedBy         # 0-1 CodeableConcept
      attr_accessor :note              # 0-* [ Annotation ]
      attr_accessor :entry             # 0-* [ List::Entry ]
      attr_accessor :emptyReason       # 0-1 CodeableConcept

      def resourceType
        'List'
      end
    end
  end
  List = FHIR::R4::List
end