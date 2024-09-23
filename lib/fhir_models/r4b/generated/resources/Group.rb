module FHIR
  module R4B
    class Group < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['actual', 'characteristic', 'code', 'exclude', 'identifier', 'managing-entity', 'member', 'type', 'value']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Group.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Group._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Group.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Group.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Group._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Group.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Group._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Group.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Group.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Group.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Group.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Group.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'type'=>'boolean', 'path'=>'Group.active', 'min'=>0, 'max'=>1},
        '_active' => {'type'=>'Element', 'path'=>'Group._active', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/group-type'=>['person', 'animal', 'practitioner', 'device', 'medication', 'substance']}, 'type'=>'code', 'path'=>'Group.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/group-type'}},
        '_type' => {'type'=>'Element', 'path'=>'Group._type', 'min'=>0, 'max'=>1},
        'actual' => {'type'=>'boolean', 'path'=>'Group.actual', 'min'=>1, 'max'=>1},
        '_actual' => {'type'=>'Element', 'path'=>'Group._actual', 'min'=>0, 'max'=>1},
        'code' => {'type'=>'CodeableConcept', 'path'=>'Group.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'name' => {'type'=>'string', 'path'=>'Group.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'Group._name', 'min'=>0, 'max'=>1},
        'quantity' => {'type'=>'unsignedInt', 'path'=>'Group.quantity', 'min'=>0, 'max'=>1},
        '_quantity' => {'type'=>'Element', 'path'=>'Group._quantity', 'min'=>0, 'max'=>1},
        'managingEntity' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'Group.managingEntity', 'min'=>0, 'max'=>1},
        'characteristic' => {'type'=>'Group::Characteristic', 'path'=>'Group.characteristic', 'min'=>0, 'max'=>Float::INFINITY},
        'member' => {'type'=>'Group::Member', 'path'=>'Group.member', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Characteristic < FHIR::Model
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
          'value' => ['CodeableConcept', 'boolean', 'Quantity', 'Range', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Characteristic.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Characteristic._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Characteristic.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Characteristic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
          '_valueBoolean' => {'type'=>'Element', 'path'=>'Characteristic.value[x]', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
          'valueRange' => {'type'=>'Range', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
          'valueReference' => {'type'=>'Reference', 'path'=>'Characteristic.value[x]', 'min'=>1, 'max'=>1},
          'exclude' => {'type'=>'boolean', 'path'=>'Characteristic.exclude', 'min'=>1, 'max'=>1},
          '_exclude' => {'type'=>'Element', 'path'=>'Characteristic._exclude', 'min'=>0, 'max'=>1},
          'period' => {'type'=>'Period', 'path'=>'Characteristic.period', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :_id                  # 0-1 Element
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :code                 # 1-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
        attr_accessor :valueBoolean         # 1-1 boolean
        attr_accessor :_valueBoolean        # 0-1 Element
        attr_accessor :valueQuantity        # 1-1 Quantity
        attr_accessor :valueRange           # 1-1 Range
        attr_accessor :valueReference       # 1-1 Reference()
        attr_accessor :exclude              # 1-1 boolean
        attr_accessor :_exclude             # 0-1 Element
        attr_accessor :period               # 0-1 Period
      end

      class Member < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Member.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Member._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Member.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Member.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'entity' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'Member.entity', 'min'=>1, 'max'=>1},
          'period' => {'type'=>'Period', 'path'=>'Member.period', 'min'=>0, 'max'=>1},
          'inactive' => {'type'=>'boolean', 'path'=>'Member.inactive', 'min'=>0, 'max'=>1},
          '_inactive' => {'type'=>'Element', 'path'=>'Member._inactive', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :entity            # 1-1 Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Medication|Substance|Group)
        attr_accessor :period            # 0-1 Period
        attr_accessor :inactive          # 0-1 boolean
        attr_accessor :_inactive         # 0-1 Element
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
      attr_accessor :active            # 0-1 boolean
      attr_accessor :_active           # 0-1 Element
      attr_accessor :type              # 1-1 code
      attr_accessor :_type             # 0-1 Element
      attr_accessor :actual            # 1-1 boolean
      attr_accessor :_actual           # 0-1 Element
      attr_accessor :code              # 0-1 CodeableConcept
      attr_accessor :name              # 0-1 string
      attr_accessor :_name             # 0-1 Element
      attr_accessor :quantity          # 0-1 unsignedInt
      attr_accessor :_quantity         # 0-1 Element
      attr_accessor :managingEntity    # 0-1 Reference(Organization|RelatedPerson|Practitioner|PractitionerRole)
      attr_accessor :characteristic    # 0-* [ Group::Characteristic ]
      attr_accessor :member            # 0-* [ Group::Member ]

      def resourceType
        'Group'
      end
    end
  end
end