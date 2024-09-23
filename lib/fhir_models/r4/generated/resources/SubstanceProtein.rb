module FHIR
  module R4
    class SubstanceProtein < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'SubstanceProtein.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'SubstanceProtein._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SubstanceProtein.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SubstanceProtein.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'SubstanceProtein._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SubstanceProtein.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'SubstanceProtein._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'SubstanceProtein.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SubstanceProtein.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SubstanceProtein.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SubstanceProtein.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'sequenceType' => {'type'=>'CodeableConcept', 'path'=>'SubstanceProtein.sequenceType', 'min'=>0, 'max'=>1},
        'numberOfSubunits' => {'type'=>'integer', 'path'=>'SubstanceProtein.numberOfSubunits', 'min'=>0, 'max'=>1},
        '_numberOfSubunits' => {'type'=>'Element', 'path'=>'SubstanceProtein._numberOfSubunits', 'min'=>0, 'max'=>1},
        'disulfideLinkage' => {'type'=>'string', 'path'=>'SubstanceProtein.disulfideLinkage', 'min'=>0, 'max'=>Float::INFINITY},
        '_disulfideLinkage' => {'type'=>'Element', 'path'=>'SubstanceProtein._disulfideLinkage', 'min'=>0, 'max'=>Float::INFINITY},
        'subunit' => {'type'=>'SubstanceProtein::Subunit', 'path'=>'SubstanceProtein.subunit', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Subunit < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Subunit.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Subunit._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Subunit.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Subunit.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'subunit' => {'type'=>'integer', 'path'=>'Subunit.subunit', 'min'=>0, 'max'=>1},
          '_subunit' => {'type'=>'Element', 'path'=>'Subunit._subunit', 'min'=>0, 'max'=>1},
          'sequence' => {'type'=>'string', 'path'=>'Subunit.sequence', 'min'=>0, 'max'=>1},
          '_sequence' => {'type'=>'Element', 'path'=>'Subunit._sequence', 'min'=>0, 'max'=>1},
          'length' => {'type'=>'integer', 'path'=>'Subunit.length', 'min'=>0, 'max'=>1},
          '_length' => {'type'=>'Element', 'path'=>'Subunit._length', 'min'=>0, 'max'=>1},
          'sequenceAttachment' => {'type'=>'Attachment', 'path'=>'Subunit.sequenceAttachment', 'min'=>0, 'max'=>1},
          'nTerminalModificationId' => {'type'=>'Identifier', 'path'=>'Subunit.nTerminalModificationId', 'min'=>0, 'max'=>1},
          'nTerminalModification' => {'type'=>'string', 'path'=>'Subunit.nTerminalModification', 'min'=>0, 'max'=>1},
          '_nTerminalModification' => {'type'=>'Element', 'path'=>'Subunit._nTerminalModification', 'min'=>0, 'max'=>1},
          'cTerminalModificationId' => {'type'=>'Identifier', 'path'=>'Subunit.cTerminalModificationId', 'min'=>0, 'max'=>1},
          'cTerminalModification' => {'type'=>'string', 'path'=>'Subunit.cTerminalModification', 'min'=>0, 'max'=>1},
          '_cTerminalModification' => {'type'=>'Element', 'path'=>'Subunit._cTerminalModification', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                      # 0-1 string
        attr_accessor :_id                     # 0-1 Element
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :subunit                 # 0-1 integer
        attr_accessor :_subunit                # 0-1 Element
        attr_accessor :sequence                # 0-1 string
        attr_accessor :_sequence               # 0-1 Element
        attr_accessor :length                  # 0-1 integer
        attr_accessor :_length                 # 0-1 Element
        attr_accessor :sequenceAttachment      # 0-1 Attachment
        attr_accessor :nTerminalModificationId # 0-1 Identifier
        attr_accessor :nTerminalModification   # 0-1 string
        attr_accessor :_nTerminalModification  # 0-1 Element
        attr_accessor :cTerminalModificationId # 0-1 Identifier
        attr_accessor :cTerminalModification   # 0-1 string
        attr_accessor :_cTerminalModification  # 0-1 Element
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
      attr_accessor :sequenceType      # 0-1 CodeableConcept
      attr_accessor :numberOfSubunits  # 0-1 integer
      attr_accessor :_numberOfSubunits # 0-1 Element
      attr_accessor :disulfideLinkage  # 0-* [ string ]
      attr_accessor :_disulfideLinkage # 0-* [ Element ]
      attr_accessor :subunit           # 0-* [ SubstanceProtein::Subunit ]

      def resourceType
        'SubstanceProtein'
      end
    end
  end
  SubstanceProtein = FHIR::R4::SubstanceProtein
end