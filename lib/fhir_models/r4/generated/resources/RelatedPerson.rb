module FHIR
  module R4
    class RelatedPerson < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'birthdate', 'email', 'gender', 'identifier', 'name', 'patient', 'phone', 'phonetic', 'relationship', 'telecom']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'RelatedPerson.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'RelatedPerson._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'RelatedPerson.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'RelatedPerson.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'RelatedPerson._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'RelatedPerson.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'RelatedPerson._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'RelatedPerson.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'RelatedPerson.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'RelatedPerson.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'RelatedPerson.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'RelatedPerson.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'type'=>'boolean', 'path'=>'RelatedPerson.active', 'min'=>0, 'max'=>1},
        '_active' => {'type'=>'Element', 'path'=>'RelatedPerson._active', 'min'=>0, 'max'=>1},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'RelatedPerson.patient', 'min'=>1, 'max'=>1},
        'relationship' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0131'=>['C', 'E', 'F', 'I', 'N', 'O', 'S', 'U'], 'http://terminology.hl7.org/CodeSystem/v3-RoleCode'=>['FAMMEMB', 'CHILD', 'CHLDADOPT', 'DAUADOPT', 'SONADOPT', 'CHLDFOST', 'DAUFOST', 'SONFOST', 'DAUC', 'DAU', 'STPDAU', 'NCHILD', 'SON', 'SONC', 'STPSON', 'STPCHLD', 'EXT', 'AUNT', 'MAUNT', 'PAUNT', 'COUSN', 'MCOUSN', 'PCOUSN', 'GGRPRN', 'GGRFTH', 'MGGRFTH', 'PGGRFTH', 'GGRMTH', 'MGGRMTH', 'PGGRMTH', 'MGGRPRN', 'PGGRPRN', 'GRNDCHILD', 'GRNDDAU', 'GRNDSON', 'GRPRN', 'GRFTH', 'MGRFTH', 'PGRFTH', 'GRMTH', 'MGRMTH', 'PGRMTH', 'MGRPRN', 'PGRPRN', 'INLAW', 'CHLDINLAW', 'DAUINLAW', 'SONINLAW', 'PRNINLAW', 'FTHINLAW', 'MTHINLAW', 'SIBINLAW', 'BROINLAW', 'SISINLAW', 'NIENEPH', 'NEPHEW', 'NIECE', 'UNCLE', 'MUNCLE', 'PUNCLE', 'PRN', 'ADOPTP', 'ADOPTF', 'ADOPTM', 'FTH', 'FTHFOST', 'NFTH', 'NFTHF', 'STPFTH', 'MTH', 'GESTM', 'MTHFOST', 'NMTH', 'NMTHF', 'STPMTH', 'NPRN', 'PRNFOST', 'STPPRN', 'SIB', 'BRO', 'HBRO', 'NBRO', 'TWINBRO', 'FTWINBRO', 'ITWINBRO', 'STPBRO', 'HSIB', 'HSIS', 'NSIB', 'NSIS', 'TWINSIS', 'FTWINSIS', 'ITWINSIS', 'TWIN', 'FTWIN', 'ITWIN', 'SIS', 'STPSIS', 'STPSIB', 'SIGOTHR', 'DOMPART', 'FMRSPS', 'SPS', 'HUSB', 'WIFE', 'FRND', 'NBOR', 'ONESELF', 'ROOM']}, 'type'=>'CodeableConcept', 'path'=>'RelatedPerson.relationship', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype'}},
        'name' => {'type'=>'HumanName', 'path'=>'RelatedPerson.name', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'RelatedPerson.telecom', 'min'=>0, 'max'=>Float::INFINITY},
        'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown']}, 'type'=>'code', 'path'=>'RelatedPerson.gender', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
        '_gender' => {'type'=>'Element', 'path'=>'RelatedPerson._gender', 'min'=>0, 'max'=>1},
        'birthDate' => {'type'=>'date', 'path'=>'RelatedPerson.birthDate', 'min'=>0, 'max'=>1},
        '_birthDate' => {'type'=>'Element', 'path'=>'RelatedPerson._birthDate', 'min'=>0, 'max'=>1},
        'address' => {'type'=>'Address', 'path'=>'RelatedPerson.address', 'min'=>0, 'max'=>Float::INFINITY},
        'photo' => {'type'=>'Attachment', 'path'=>'RelatedPerson.photo', 'min'=>0, 'max'=>Float::INFINITY},
        'period' => {'type'=>'Period', 'path'=>'RelatedPerson.period', 'min'=>0, 'max'=>1},
        'communication' => {'type'=>'RelatedPerson::Communication', 'path'=>'RelatedPerson.communication', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Communication < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Communication.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Communication._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Communication.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Communication.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'CodeableConcept', 'path'=>'Communication.language', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
          'preferred' => {'type'=>'boolean', 'path'=>'Communication.preferred', 'min'=>0, 'max'=>1},
          '_preferred' => {'type'=>'Element', 'path'=>'Communication._preferred', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :language          # 1-1 CodeableConcept
        attr_accessor :preferred         # 0-1 boolean
        attr_accessor :_preferred        # 0-1 Element
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
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :relationship      # 0-* [ CodeableConcept ]
      attr_accessor :name              # 0-* [ HumanName ]
      attr_accessor :telecom           # 0-* [ ContactPoint ]
      attr_accessor :gender            # 0-1 code
      attr_accessor :_gender           # 0-1 Element
      attr_accessor :birthDate         # 0-1 date
      attr_accessor :_birthDate        # 0-1 Element
      attr_accessor :address           # 0-* [ Address ]
      attr_accessor :photo             # 0-* [ Attachment ]
      attr_accessor :period            # 0-1 Period
      attr_accessor :communication     # 0-* [ RelatedPerson::Communication ]

      def resourceType
        'RelatedPerson'
      end
    end
  end
  RelatedPerson = FHIR::R4::RelatedPerson
end