module FHIR
  module R4
    class Organization < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'endpoint', 'identifier', 'name', 'partof', 'phonetic', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Organization.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Organization._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Organization.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Organization.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Organization._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Organization.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Organization._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Organization.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Organization.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Organization.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Organization.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Organization.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'type'=>'boolean', 'path'=>'Organization.active', 'min'=>0, 'max'=>1},
        '_active' => {'type'=>'Element', 'path'=>'Organization._active', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/organization-type'=>['prov', 'dept', 'team', 'govt', 'ins', 'pay', 'edu', 'reli', 'crs', 'cg', 'bus', 'other']}, 'type'=>'CodeableConcept', 'path'=>'Organization.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/organization-type'}},
        'name' => {'type'=>'string', 'path'=>'Organization.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'Organization._name', 'min'=>0, 'max'=>1},
        'alias' => {'type'=>'string', 'path'=>'Organization.alias', 'min'=>0, 'max'=>Float::INFINITY},
        '_alias' => {'type'=>'Element', 'path'=>'Organization._alias', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'Organization.telecom', 'min'=>0, 'max'=>Float::INFINITY},
        'address' => {'type'=>'Address', 'path'=>'Organization.address', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Organization.partOf', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'Organization::Contact', 'path'=>'Organization.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'type'=>'Reference', 'path'=>'Organization.endpoint', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Contact < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Contact.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Contact._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Contact.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Contact.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'purpose' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contactentity-type'=>['BILL', 'ADMIN', 'HR', 'PAYOR', 'PATINF', 'PRESS']}, 'type'=>'CodeableConcept', 'path'=>'Contact.purpose', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contactentity-type'}},
          'name' => {'type'=>'HumanName', 'path'=>'Contact.name', 'min'=>0, 'max'=>1},
          'telecom' => {'type'=>'ContactPoint', 'path'=>'Contact.telecom', 'min'=>0, 'max'=>Float::INFINITY},
          'address' => {'type'=>'Address', 'path'=>'Contact.address', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :purpose           # 0-1 CodeableConcept
        attr_accessor :name              # 0-1 HumanName
        attr_accessor :telecom           # 0-* [ ContactPoint ]
        attr_accessor :address           # 0-1 Address
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
      attr_accessor :type              # 0-* [ CodeableConcept ]
      attr_accessor :name              # 0-1 string
      attr_accessor :_name             # 0-1 Element
      attr_accessor :alias             # 0-* [ string ]
      attr_accessor :_alias            # 0-* [ Element ]
      attr_accessor :telecom           # 0-* [ ContactPoint ]
      attr_accessor :address           # 0-* [ Address ]
      attr_accessor :partOf            # 0-1 Reference(Organization)
      attr_accessor :contact           # 0-* [ Organization::Contact ]
      attr_accessor :endpoint          # 0-* [ Reference(Endpoint) ]

      def resourceType
        'Organization'
      end
    end
  end
  Organization = FHIR::R4::Organization
end