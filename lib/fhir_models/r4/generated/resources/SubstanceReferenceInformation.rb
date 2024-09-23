module FHIR
  module R4
    class SubstanceReferenceInformation < FHIR::Model
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
        'id' => {'type'=>'id', 'path'=>'SubstanceReferenceInformation.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'SubstanceReferenceInformation._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SubstanceReferenceInformation.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SubstanceReferenceInformation.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'SubstanceReferenceInformation._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SubstanceReferenceInformation.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'SubstanceReferenceInformation._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'SubstanceReferenceInformation.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SubstanceReferenceInformation.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SubstanceReferenceInformation.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SubstanceReferenceInformation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'comment' => {'type'=>'string', 'path'=>'SubstanceReferenceInformation.comment', 'min'=>0, 'max'=>1},
        '_comment' => {'type'=>'Element', 'path'=>'SubstanceReferenceInformation._comment', 'min'=>0, 'max'=>1},
        'gene' => {'type'=>'SubstanceReferenceInformation::Gene', 'path'=>'SubstanceReferenceInformation.gene', 'min'=>0, 'max'=>Float::INFINITY},
        'geneElement' => {'type'=>'SubstanceReferenceInformation::GeneElement', 'path'=>'SubstanceReferenceInformation.geneElement', 'min'=>0, 'max'=>Float::INFINITY},
        'classification' => {'type'=>'SubstanceReferenceInformation::Classification', 'path'=>'SubstanceReferenceInformation.classification', 'min'=>0, 'max'=>Float::INFINITY},
        'target' => {'type'=>'SubstanceReferenceInformation::Target', 'path'=>'SubstanceReferenceInformation.target', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Gene < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Gene.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Gene._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Gene.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Gene.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'geneSequenceOrigin' => {'type'=>'CodeableConcept', 'path'=>'Gene.geneSequenceOrigin', 'min'=>0, 'max'=>1},
          'gene' => {'type'=>'CodeableConcept', 'path'=>'Gene.gene', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Gene.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                 # 0-1 string
        attr_accessor :_id                # 0-1 Element
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :geneSequenceOrigin # 0-1 CodeableConcept
        attr_accessor :gene               # 0-1 CodeableConcept
        attr_accessor :source             # 0-* [ Reference(DocumentReference) ]
      end

      class GeneElement < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'GeneElement.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'GeneElement._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'GeneElement.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'GeneElement.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'GeneElement.type', 'min'=>0, 'max'=>1},
          'element' => {'type'=>'Identifier', 'path'=>'GeneElement.element', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'GeneElement.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :element           # 0-1 Identifier
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
      end

      class Classification < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Classification.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Classification._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Classification.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Classification.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'domain' => {'type'=>'CodeableConcept', 'path'=>'Classification.domain', 'min'=>0, 'max'=>1},
          'classification' => {'type'=>'CodeableConcept', 'path'=>'Classification.classification', 'min'=>0, 'max'=>1},
          'subtype' => {'type'=>'CodeableConcept', 'path'=>'Classification.subtype', 'min'=>0, 'max'=>Float::INFINITY},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Classification.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :domain            # 0-1 CodeableConcept
        attr_accessor :classification    # 0-1 CodeableConcept
        attr_accessor :subtype           # 0-* [ CodeableConcept ]
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
      end

      class Target < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4'
        end

        def module_version
          FHIR::R4
        end

        MULTIPLE_TYPES = {
          'amount' => ['Quantity', 'Range', 'string']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Target.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Target._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Target.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Target.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'target' => {'type'=>'Identifier', 'path'=>'Target.target', 'min'=>0, 'max'=>1},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Target.type', 'min'=>0, 'max'=>1},
          'interaction' => {'type'=>'CodeableConcept', 'path'=>'Target.interaction', 'min'=>0, 'max'=>1},
          'organism' => {'type'=>'CodeableConcept', 'path'=>'Target.organism', 'min'=>0, 'max'=>1},
          'organismType' => {'type'=>'CodeableConcept', 'path'=>'Target.organismType', 'min'=>0, 'max'=>1},
          'amountQuantity' => {'type'=>'Quantity', 'path'=>'Target.amount[x]', 'min'=>0, 'max'=>1},
          'amountRange' => {'type'=>'Range', 'path'=>'Target.amount[x]', 'min'=>0, 'max'=>1},
          'amountString' => {'type'=>'string', 'path'=>'Target.amount[x]', 'min'=>0, 'max'=>1},
          '_amountString' => {'type'=>'Element', 'path'=>'Target.amount[x]', 'min'=>0, 'max'=>1},
          'amountType' => {'type'=>'CodeableConcept', 'path'=>'Target.amountType', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Target.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :target            # 0-1 Identifier
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :interaction       # 0-1 CodeableConcept
        attr_accessor :organism          # 0-1 CodeableConcept
        attr_accessor :organismType      # 0-1 CodeableConcept
        attr_accessor :amountQuantity    # 0-1 Quantity
        attr_accessor :amountRange       # 0-1 Range
        attr_accessor :amountString      # 0-1 string
        attr_accessor :_amountString     # 0-1 Element
        attr_accessor :amountType        # 0-1 CodeableConcept
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
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
      attr_accessor :comment           # 0-1 string
      attr_accessor :_comment          # 0-1 Element
      attr_accessor :gene              # 0-* [ SubstanceReferenceInformation::Gene ]
      attr_accessor :geneElement       # 0-* [ SubstanceReferenceInformation::GeneElement ]
      attr_accessor :classification    # 0-* [ SubstanceReferenceInformation::Classification ]
      attr_accessor :target            # 0-* [ SubstanceReferenceInformation::Target ]

      def resourceType
        'SubstanceReferenceInformation'
      end
    end
  end
  SubstanceReferenceInformation = FHIR::R4::SubstanceReferenceInformation
end