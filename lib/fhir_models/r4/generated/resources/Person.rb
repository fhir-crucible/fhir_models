module FHIR
  module R4
    class Person < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'birthdate', 'email', 'gender', 'identifier', 'link', 'name', 'organization', 'patient', 'phone', 'phonetic', 'practitioner', 'relatedperson', 'telecom']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Person.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Person._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Person.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Person.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Person._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Person.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Person._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Person.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Person.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Person.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Person.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Person.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'HumanName', 'path'=>'Person.name', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'Person.telecom', 'min'=>0, 'max'=>Float::INFINITY},
        'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown']}, 'type'=>'code', 'path'=>'Person.gender', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
        '_gender' => {'type'=>'Element', 'path'=>'Person._gender', 'min'=>0, 'max'=>1},
        'birthDate' => {'type'=>'date', 'path'=>'Person.birthDate', 'min'=>0, 'max'=>1},
        '_birthDate' => {'type'=>'Element', 'path'=>'Person._birthDate', 'min'=>0, 'max'=>1},
        'address' => {'type'=>'Address', 'path'=>'Person.address', 'min'=>0, 'max'=>Float::INFINITY},
        'photo' => {'type'=>'Attachment', 'path'=>'Person.photo', 'min'=>0, 'max'=>1},
        'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Person.managingOrganization', 'min'=>0, 'max'=>1},
        'active' => {'type'=>'boolean', 'path'=>'Person.active', 'min'=>0, 'max'=>1},
        '_active' => {'type'=>'Element', 'path'=>'Person._active', 'min'=>0, 'max'=>1},
        'link' => {'type'=>'Person::Link', 'path'=>'Person.link', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Link < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Link.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Link._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Link.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Link.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'target' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Person'], 'type'=>'Reference', 'path'=>'Link.target', 'min'=>1, 'max'=>1},
          'assurance' => {'valid_codes'=>{'http://hl7.org/fhir/identity-assuranceLevel'=>['level1', 'level2', 'level3', 'level4']}, 'type'=>'code', 'path'=>'Link.assurance', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'}},
          '_assurance' => {'type'=>'Element', 'path'=>'Link._assurance', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :target            # 1-1 Reference(Patient|Practitioner|RelatedPerson|Person)
        attr_accessor :assurance         # 0-1 code
        attr_accessor :_assurance        # 0-1 Element
      end

      attr_accessor :id                   # 0-1 id
      attr_accessor :_id                  # 0-1 Element
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :_implicitRules       # 0-1 Element
      attr_accessor :language             # 0-1 code
      attr_accessor :_language            # 0-1 Element
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-* [ Identifier ]
      attr_accessor :name                 # 0-* [ HumanName ]
      attr_accessor :telecom              # 0-* [ ContactPoint ]
      attr_accessor :gender               # 0-1 code
      attr_accessor :_gender              # 0-1 Element
      attr_accessor :birthDate            # 0-1 date
      attr_accessor :_birthDate           # 0-1 Element
      attr_accessor :address              # 0-* [ Address ]
      attr_accessor :photo                # 0-1 Attachment
      attr_accessor :managingOrganization # 0-1 Reference(Organization)
      attr_accessor :active               # 0-1 boolean
      attr_accessor :_active              # 0-1 Element
      attr_accessor :link                 # 0-* [ Person::Link ]

      def resourceType
        'Person'
      end
    end
  end
  Person = FHIR::R4::Person
end