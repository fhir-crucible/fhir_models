module FHIR
  module R4
    class ConceptMap < FHIR::Model
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
        'source' => ['uri', 'canonical'],
        'target' => ['uri', 'canonical']
      }
      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'dependson', 'description', 'identifier', 'jurisdiction', 'name', 'other', 'product', 'publisher', 'source', 'source-code', 'source-system', 'source-uri', 'status', 'target', 'target-code', 'target-system', 'target-uri', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ConceptMap.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ConceptMap._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ConceptMap.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ConceptMap.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'ConceptMap._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'ConceptMap.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'ConceptMap._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'ConceptMap.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ConceptMap.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ConceptMap.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ConceptMap.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'ConceptMap.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'ConceptMap._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'ConceptMap.identifier', 'min'=>0, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'ConceptMap.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'ConceptMap._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'ConceptMap.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'ConceptMap._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'ConceptMap.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'ConceptMap._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'ConceptMap.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'ConceptMap._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'ConceptMap.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'ConceptMap._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'ConceptMap.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'ConceptMap._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'ConceptMap.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'ConceptMap._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'ConceptMap.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'ConceptMap.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'ConceptMap._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'ConceptMap.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'ConceptMap.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'ConceptMap.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'ConceptMap._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'ConceptMap.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'ConceptMap._copyright', 'min'=>0, 'max'=>1},
        'sourceUri' => {'type'=>'uri', 'path'=>'ConceptMap.source[x]', 'min'=>0, 'max'=>1},
        '_sourceUri' => {'type'=>'Element', 'path'=>'ConceptMap.source[x]', 'min'=>0, 'max'=>1},
        'sourceCanonical' => {'type'=>'canonical', 'path'=>'ConceptMap.source[x]', 'min'=>0, 'max'=>1},
        '_sourceCanonical' => {'type'=>'Element', 'path'=>'ConceptMap.source[x]', 'min'=>0, 'max'=>1},
        'targetUri' => {'type'=>'uri', 'path'=>'ConceptMap.target[x]', 'min'=>0, 'max'=>1},
        '_targetUri' => {'type'=>'Element', 'path'=>'ConceptMap.target[x]', 'min'=>0, 'max'=>1},
        'targetCanonical' => {'type'=>'canonical', 'path'=>'ConceptMap.target[x]', 'min'=>0, 'max'=>1},
        '_targetCanonical' => {'type'=>'Element', 'path'=>'ConceptMap.target[x]', 'min'=>0, 'max'=>1},
        'group' => {'type'=>'ConceptMap::Group', 'path'=>'ConceptMap.group', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Group < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Group.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Group._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Group.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Group.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'source' => {'type'=>'uri', 'path'=>'Group.source', 'min'=>0, 'max'=>1},
          '_source' => {'type'=>'Element', 'path'=>'Group._source', 'min'=>0, 'max'=>1},
          'sourceVersion' => {'type'=>'string', 'path'=>'Group.sourceVersion', 'min'=>0, 'max'=>1},
          '_sourceVersion' => {'type'=>'Element', 'path'=>'Group._sourceVersion', 'min'=>0, 'max'=>1},
          'target' => {'type'=>'uri', 'path'=>'Group.target', 'min'=>0, 'max'=>1},
          '_target' => {'type'=>'Element', 'path'=>'Group._target', 'min'=>0, 'max'=>1},
          'targetVersion' => {'type'=>'string', 'path'=>'Group.targetVersion', 'min'=>0, 'max'=>1},
          '_targetVersion' => {'type'=>'Element', 'path'=>'Group._targetVersion', 'min'=>0, 'max'=>1},
          'element' => {'type'=>'ConceptMap::Group::Element', 'path'=>'Group.element', 'min'=>1, 'max'=>Float::INFINITY},
          'unmapped' => {'type'=>'ConceptMap::Group::Unmapped', 'path'=>'Group.unmapped', 'min'=>0, 'max'=>1}
        }

        class Element < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Element.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Element._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Element.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Element.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'type'=>'code', 'path'=>'Element.code', 'min'=>0, 'max'=>1},
            '_code' => {'type'=>'Element', 'path'=>'Element._code', 'min'=>0, 'max'=>1},
            'display' => {'type'=>'string', 'path'=>'Element.display', 'min'=>0, 'max'=>1},
            '_display' => {'type'=>'Element', 'path'=>'Element._display', 'min'=>0, 'max'=>1},
            'target' => {'type'=>'ConceptMap::Group::Element::Target', 'path'=>'Element.target', 'min'=>0, 'max'=>Float::INFINITY}
          }

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

            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Target.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Target._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Target.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Target.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'code' => {'type'=>'code', 'path'=>'Target.code', 'min'=>0, 'max'=>1},
              '_code' => {'type'=>'Element', 'path'=>'Target._code', 'min'=>0, 'max'=>1},
              'display' => {'type'=>'string', 'path'=>'Target.display', 'min'=>0, 'max'=>1},
              '_display' => {'type'=>'Element', 'path'=>'Target._display', 'min'=>0, 'max'=>1},
              'equivalence' => {'valid_codes'=>{'http://hl7.org/fhir/concept-map-equivalence'=>['relatedto', 'equivalent', 'equal', 'wider', 'subsumes', 'narrower', 'specializes', 'inexact', 'unmatched', 'disjoint']}, 'type'=>'code', 'path'=>'Target.equivalence', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/concept-map-equivalence'}},
              '_equivalence' => {'type'=>'Element', 'path'=>'Target._equivalence', 'min'=>0, 'max'=>1},
              'comment' => {'type'=>'string', 'path'=>'Target.comment', 'min'=>0, 'max'=>1},
              '_comment' => {'type'=>'Element', 'path'=>'Target._comment', 'min'=>0, 'max'=>1},
              'dependsOn' => {'type'=>'ConceptMap::Group::Element::Target::DependsOn', 'path'=>'Target.dependsOn', 'min'=>0, 'max'=>Float::INFINITY},
              'product' => {'type'=>'ConceptMap::Group::Element::Target::DependsOn', 'path'=>'Target.product', 'min'=>0, 'max'=>Float::INFINITY}
            }

            class DependsOn < FHIR::Model
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
                'id' => {'type'=>'string', 'path'=>'DependsOn.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'DependsOn._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'DependsOn.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'DependsOn.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'property' => {'type'=>'uri', 'path'=>'DependsOn.property', 'min'=>1, 'max'=>1},
                '_property' => {'type'=>'Element', 'path'=>'DependsOn._property', 'min'=>0, 'max'=>1},
                'system' => {'type'=>'canonical', 'path'=>'DependsOn.system', 'min'=>0, 'max'=>1},
                '_system' => {'type'=>'Element', 'path'=>'DependsOn._system', 'min'=>0, 'max'=>1},
                'value' => {'type'=>'string', 'path'=>'DependsOn.value', 'min'=>1, 'max'=>1},
                '_value' => {'type'=>'Element', 'path'=>'DependsOn._value', 'min'=>0, 'max'=>1},
                'display' => {'type'=>'string', 'path'=>'DependsOn.display', 'min'=>0, 'max'=>1},
                '_display' => {'type'=>'Element', 'path'=>'DependsOn._display', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :property          # 1-1 uri
              attr_accessor :_property         # 0-1 Element
              attr_accessor :system            # 0-1 canonical
              attr_accessor :_system           # 0-1 Element
              attr_accessor :value             # 1-1 string
              attr_accessor :_value            # 0-1 Element
              attr_accessor :display           # 0-1 string
              attr_accessor :_display          # 0-1 Element
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :code              # 0-1 code
            attr_accessor :_code             # 0-1 Element
            attr_accessor :display           # 0-1 string
            attr_accessor :_display          # 0-1 Element
            attr_accessor :equivalence       # 1-1 code
            attr_accessor :_equivalence      # 0-1 Element
            attr_accessor :comment           # 0-1 string
            attr_accessor :_comment          # 0-1 Element
            attr_accessor :dependsOn         # 0-* [ ConceptMap::Group::Element::Target::DependsOn ]
            attr_accessor :product           # 0-* [ ConceptMap::Group::Element::Target::DependsOn ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 0-1 code
          attr_accessor :_code             # 0-1 Element
          attr_accessor :display           # 0-1 string
          attr_accessor :_display          # 0-1 Element
          attr_accessor :target            # 0-* [ ConceptMap::Group::Element::Target ]
        end

        class Unmapped < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Unmapped.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Unmapped._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Unmapped.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Unmapped.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'mode' => {'valid_codes'=>{'http://hl7.org/fhir/conceptmap-unmapped-mode'=>['provided', 'fixed', 'other-map']}, 'type'=>'code', 'path'=>'Unmapped.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode'}},
            '_mode' => {'type'=>'Element', 'path'=>'Unmapped._mode', 'min'=>0, 'max'=>1},
            'code' => {'type'=>'code', 'path'=>'Unmapped.code', 'min'=>0, 'max'=>1},
            '_code' => {'type'=>'Element', 'path'=>'Unmapped._code', 'min'=>0, 'max'=>1},
            'display' => {'type'=>'string', 'path'=>'Unmapped.display', 'min'=>0, 'max'=>1},
            '_display' => {'type'=>'Element', 'path'=>'Unmapped._display', 'min'=>0, 'max'=>1},
            'url' => {'type'=>'canonical', 'path'=>'Unmapped.url', 'min'=>0, 'max'=>1},
            '_url' => {'type'=>'Element', 'path'=>'Unmapped._url', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :mode              # 1-1 code
          attr_accessor :_mode             # 0-1 Element
          attr_accessor :code              # 0-1 code
          attr_accessor :_code             # 0-1 Element
          attr_accessor :display           # 0-1 string
          attr_accessor :_display          # 0-1 Element
          attr_accessor :url               # 0-1 canonical
          attr_accessor :_url              # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :source            # 0-1 uri
        attr_accessor :_source           # 0-1 Element
        attr_accessor :sourceVersion     # 0-1 string
        attr_accessor :_sourceVersion    # 0-1 Element
        attr_accessor :target            # 0-1 uri
        attr_accessor :_target           # 0-1 Element
        attr_accessor :targetVersion     # 0-1 string
        attr_accessor :_targetVersion    # 0-1 Element
        attr_accessor :element           # 1-* [ ConceptMap::Group::Element ]
        attr_accessor :unmapped          # 0-1 ConceptMap::Group::Unmapped
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
      attr_accessor :url               # 0-1 uri
      attr_accessor :_url              # 0-1 Element
      attr_accessor :identifier        # 0-1 Identifier
      attr_accessor :version           # 0-1 string
      attr_accessor :_version          # 0-1 Element
      attr_accessor :name              # 0-1 string
      attr_accessor :_name             # 0-1 Element
      attr_accessor :title             # 0-1 string
      attr_accessor :_title            # 0-1 Element
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :_experimental     # 0-1 Element
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :_date             # 0-1 Element
      attr_accessor :publisher         # 0-1 string
      attr_accessor :_publisher        # 0-1 Element
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :_description      # 0-1 Element
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :_purpose          # 0-1 Element
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :sourceUri         # 0-1 uri
      attr_accessor :_sourceUri        # 0-1 Element
      attr_accessor :sourceCanonical   # 0-1 canonical
      attr_accessor :_sourceCanonical  # 0-1 Element
      attr_accessor :targetUri         # 0-1 uri
      attr_accessor :_targetUri        # 0-1 Element
      attr_accessor :targetCanonical   # 0-1 canonical
      attr_accessor :_targetCanonical  # 0-1 Element
      attr_accessor :group             # 0-* [ ConceptMap::Group ]

      def resourceType
        'ConceptMap'
      end
    end
  end
  ConceptMap = FHIR::R4::ConceptMap
end