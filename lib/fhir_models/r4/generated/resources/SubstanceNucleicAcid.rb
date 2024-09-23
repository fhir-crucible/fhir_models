module FHIR
  module R4
    class SubstanceNucleicAcid < FHIR::Model
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
        'id' => {'type'=>'id', 'path'=>'SubstanceNucleicAcid.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'SubstanceNucleicAc_id._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SubstanceNucleicAcid.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SubstanceNucleicAcid.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'SubstanceNucleicAcid._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SubstanceNucleicAcid.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'SubstanceNucleicAcid._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'SubstanceNucleicAcid.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SubstanceNucleicAcid.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SubstanceNucleicAcid.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SubstanceNucleicAcid.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'sequenceType' => {'type'=>'CodeableConcept', 'path'=>'SubstanceNucleicAcid.sequenceType', 'min'=>0, 'max'=>1},
        'numberOfSubunits' => {'type'=>'integer', 'path'=>'SubstanceNucleicAcid.numberOfSubunits', 'min'=>0, 'max'=>1},
        '_numberOfSubunits' => {'type'=>'Element', 'path'=>'SubstanceNucleicAcid._numberOfSubunits', 'min'=>0, 'max'=>1},
        'areaOfHybridisation' => {'type'=>'string', 'path'=>'SubstanceNucleicAcid.areaOfHybridisation', 'min'=>0, 'max'=>1},
        '_areaOfHybridisation' => {'type'=>'Element', 'path'=>'SubstanceNucleicAcid._areaOfHybridisation', 'min'=>0, 'max'=>1},
        'oligoNucleotideType' => {'type'=>'CodeableConcept', 'path'=>'SubstanceNucleicAcid.oligoNucleotideType', 'min'=>0, 'max'=>1},
        'subunit' => {'type'=>'SubstanceNucleicAcid::Subunit', 'path'=>'SubstanceNucleicAcid.subunit', 'min'=>0, 'max'=>Float::INFINITY}
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
          'fivePrime' => {'type'=>'CodeableConcept', 'path'=>'Subunit.fivePrime', 'min'=>0, 'max'=>1},
          'threePrime' => {'type'=>'CodeableConcept', 'path'=>'Subunit.threePrime', 'min'=>0, 'max'=>1},
          'linkage' => {'type'=>'SubstanceNucleicAcid::Subunit::Linkage', 'path'=>'Subunit.linkage', 'min'=>0, 'max'=>Float::INFINITY},
          'sugar' => {'type'=>'SubstanceNucleicAcid::Subunit::Sugar', 'path'=>'Subunit.sugar', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Linkage < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Linkage.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Linkage._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Linkage.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Linkage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'connectivity' => {'type'=>'string', 'path'=>'Linkage.connectivity', 'min'=>0, 'max'=>1},
            '_connectivity' => {'type'=>'Element', 'path'=>'Linkage._connectivity', 'min'=>0, 'max'=>1},
            'identifier' => {'type'=>'Identifier', 'path'=>'Linkage.identifier', 'min'=>0, 'max'=>1},
            'name' => {'type'=>'string', 'path'=>'Linkage.name', 'min'=>0, 'max'=>1},
            '_name' => {'type'=>'Element', 'path'=>'Linkage._name', 'min'=>0, 'max'=>1},
            'residueSite' => {'type'=>'string', 'path'=>'Linkage.residueSite', 'min'=>0, 'max'=>1},
            '_residueSite' => {'type'=>'Element', 'path'=>'Linkage._residueSite', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :connectivity      # 0-1 string
          attr_accessor :_connectivity     # 0-1 Element
          attr_accessor :identifier        # 0-1 Identifier
          attr_accessor :name              # 0-1 string
          attr_accessor :_name             # 0-1 Element
          attr_accessor :residueSite       # 0-1 string
          attr_accessor :_residueSite      # 0-1 Element
        end

        class Sugar < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Sugar.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Sugar._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Sugar.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Sugar.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'identifier' => {'type'=>'Identifier', 'path'=>'Sugar.identifier', 'min'=>0, 'max'=>1},
            'name' => {'type'=>'string', 'path'=>'Sugar.name', 'min'=>0, 'max'=>1},
            '_name' => {'type'=>'Element', 'path'=>'Sugar._name', 'min'=>0, 'max'=>1},
            'residueSite' => {'type'=>'string', 'path'=>'Sugar.residueSite', 'min'=>0, 'max'=>1},
            '_residueSite' => {'type'=>'Element', 'path'=>'Sugar._residueSite', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :identifier        # 0-1 Identifier
          attr_accessor :name              # 0-1 string
          attr_accessor :_name             # 0-1 Element
          attr_accessor :residueSite       # 0-1 string
          attr_accessor :_residueSite      # 0-1 Element
        end

        attr_accessor :id                 # 0-1 string
        attr_accessor :_id                # 0-1 Element
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :subunit            # 0-1 integer
        attr_accessor :_subunit           # 0-1 Element
        attr_accessor :sequence           # 0-1 string
        attr_accessor :_sequence          # 0-1 Element
        attr_accessor :length             # 0-1 integer
        attr_accessor :_length            # 0-1 Element
        attr_accessor :sequenceAttachment # 0-1 Attachment
        attr_accessor :fivePrime          # 0-1 CodeableConcept
        attr_accessor :threePrime         # 0-1 CodeableConcept
        attr_accessor :linkage            # 0-* [ SubstanceNucleicAcid::Subunit::Linkage ]
        attr_accessor :sugar              # 0-* [ SubstanceNucleicAcid::Subunit::Sugar ]
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
      attr_accessor :sequenceType         # 0-1 CodeableConcept
      attr_accessor :numberOfSubunits     # 0-1 integer
      attr_accessor :_numberOfSubunits    # 0-1 Element
      attr_accessor :areaOfHybridisation  # 0-1 string
      attr_accessor :_areaOfHybridisation # 0-1 Element
      attr_accessor :oligoNucleotideType  # 0-1 CodeableConcept
      attr_accessor :subunit              # 0-* [ SubstanceNucleicAcid::Subunit ]

      def resourceType
        'SubstanceNucleicAcid'
      end
    end
  end
  SubstanceNucleicAcid = FHIR::R4::SubstanceNucleicAcid
end