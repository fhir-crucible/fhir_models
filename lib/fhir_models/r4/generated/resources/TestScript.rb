module FHIR
  module R4
    class TestScript < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'description', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'testscript-capability', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'TestScript.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'TestScript._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'TestScript.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'TestScript.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'TestScript._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'TestScript.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'TestScript._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'TestScript.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'TestScript.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'TestScript.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'TestScript.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'TestScript.url', 'min'=>1, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'TestScript._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'TestScript.identifier', 'min'=>0, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'TestScript.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'TestScript._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'TestScript.name', 'min'=>1, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'TestScript._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'TestScript.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'TestScript._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'TestScript.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'TestScript._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'TestScript.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'TestScript._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'TestScript.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'TestScript._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'TestScript.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'TestScript._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'TestScript.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'TestScript.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'TestScript._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'TestScript.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'TestScript.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'TestScript.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'TestScript._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'TestScript.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'TestScript._copyright', 'min'=>0, 'max'=>1},
        'origin' => {'type'=>'TestScript::Origin', 'path'=>'TestScript.origin', 'min'=>0, 'max'=>Float::INFINITY},
        'destination' => {'type'=>'TestScript::Destination', 'path'=>'TestScript.destination', 'min'=>0, 'max'=>Float::INFINITY},
        'metadata' => {'type'=>'TestScript::Metadata', 'path'=>'TestScript.metadata', 'min'=>0, 'max'=>1},
        'fixture' => {'type'=>'TestScript::Fixture', 'path'=>'TestScript.fixture', 'min'=>0, 'max'=>Float::INFINITY},
        'profile' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'TestScript.profile', 'min'=>0, 'max'=>Float::INFINITY},
        'variable' => {'type'=>'TestScript::Variable', 'path'=>'TestScript.variable', 'min'=>0, 'max'=>Float::INFINITY},
        'setup' => {'type'=>'TestScript::Setup', 'path'=>'TestScript.setup', 'min'=>0, 'max'=>1},
        'test' => {'type'=>'TestScript::Test', 'path'=>'TestScript.test', 'min'=>0, 'max'=>Float::INFINITY},
        'teardown' => {'type'=>'TestScript::Teardown', 'path'=>'TestScript.teardown', 'min'=>0, 'max'=>1}
      }

      class Origin < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Origin.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Origin._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Origin.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Origin.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'index' => {'type'=>'integer', 'path'=>'Origin.index', 'min'=>1, 'max'=>1},
          '_index' => {'type'=>'Element', 'path'=>'Origin._index', 'min'=>0, 'max'=>1},
          'profile' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types'=>['FHIR-Client', 'FHIR-SDC-FormFiller']}, 'type'=>'Coding', 'path'=>'Origin.profile', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/testscript-profile-origin-types'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :index             # 1-1 integer
        attr_accessor :_index            # 0-1 Element
        attr_accessor :profile           # 1-1 Coding
      end

      class Destination < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Destination.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Destination._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Destination.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Destination.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'index' => {'type'=>'integer', 'path'=>'Destination.index', 'min'=>1, 'max'=>1},
          '_index' => {'type'=>'Element', 'path'=>'Destination._index', 'min'=>0, 'max'=>1},
          'profile' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types'=>['FHIR-Server', 'FHIR-SDC-FormManager', 'FHIR-SDC-FormProcessor', 'FHIR-SDC-FormReceiver']}, 'type'=>'Coding', 'path'=>'Destination.profile', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/testscript-profile-destination-types'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :index             # 1-1 integer
        attr_accessor :_index            # 0-1 Element
        attr_accessor :profile           # 1-1 Coding
      end

      class Metadata < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Metadata.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Metadata._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Metadata.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Metadata.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'link' => {'type'=>'TestScript::Metadata::Link', 'path'=>'Metadata.link', 'min'=>0, 'max'=>Float::INFINITY},
          'capability' => {'type'=>'TestScript::Metadata::Capability', 'path'=>'Metadata.capability', 'min'=>1, 'max'=>Float::INFINITY}
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
            'url' => {'type'=>'uri', 'path'=>'Link.url', 'min'=>1, 'max'=>1},
            '_url' => {'type'=>'Element', 'path'=>'Link._url', 'min'=>0, 'max'=>1},
            'description' => {'type'=>'string', 'path'=>'Link.description', 'min'=>0, 'max'=>1},
            '_description' => {'type'=>'Element', 'path'=>'Link._description', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :url               # 1-1 uri
          attr_accessor :_url              # 0-1 Element
          attr_accessor :description       # 0-1 string
          attr_accessor :_description      # 0-1 Element
        end

        class Capability < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Capability.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Capability._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Capability.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Capability.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'required' => {'type'=>'boolean', 'path'=>'Capability.required', 'min'=>1, 'max'=>1},
            '_required' => {'type'=>'Element', 'path'=>'Capability._required', 'min'=>0, 'max'=>1},
            'validated' => {'type'=>'boolean', 'path'=>'Capability.validated', 'min'=>1, 'max'=>1},
            '_validated' => {'type'=>'Element', 'path'=>'Capability._validated', 'min'=>0, 'max'=>1},
            'description' => {'type'=>'string', 'path'=>'Capability.description', 'min'=>0, 'max'=>1},
            '_description' => {'type'=>'Element', 'path'=>'Capability._description', 'min'=>0, 'max'=>1},
            'origin' => {'type'=>'integer', 'path'=>'Capability.origin', 'min'=>0, 'max'=>Float::INFINITY},
            '_origin' => {'type'=>'Element', 'path'=>'Capability._origin', 'min'=>0, 'max'=>Float::INFINITY},
            'destination' => {'type'=>'integer', 'path'=>'Capability.destination', 'min'=>0, 'max'=>1},
            '_destination' => {'type'=>'Element', 'path'=>'Capability._destination', 'min'=>0, 'max'=>1},
            'link' => {'type'=>'uri', 'path'=>'Capability.link', 'min'=>0, 'max'=>Float::INFINITY},
            '_link' => {'type'=>'Element', 'path'=>'Capability._link', 'min'=>0, 'max'=>Float::INFINITY},
            'capabilities' => {'type'=>'canonical', 'path'=>'Capability.capabilities', 'min'=>1, 'max'=>1},
            '_capabilities' => {'type'=>'Element', 'path'=>'Capability._capabilities', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :required          # 1-1 boolean
          attr_accessor :_required         # 0-1 Element
          attr_accessor :validated         # 1-1 boolean
          attr_accessor :_validated        # 0-1 Element
          attr_accessor :description       # 0-1 string
          attr_accessor :_description      # 0-1 Element
          attr_accessor :origin            # 0-* [ integer ]
          attr_accessor :_origin           # 0-* [ Element ]
          attr_accessor :destination       # 0-1 integer
          attr_accessor :_destination      # 0-1 Element
          attr_accessor :link              # 0-* [ uri ]
          attr_accessor :_link             # 0-* [ Element ]
          attr_accessor :capabilities      # 1-1 canonical
          attr_accessor :_capabilities     # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :link              # 0-* [ TestScript::Metadata::Link ]
        attr_accessor :capability        # 1-* [ TestScript::Metadata::Capability ]
      end

      class Fixture < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Fixture.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Fixture._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Fixture.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Fixture.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'autocreate' => {'type'=>'boolean', 'path'=>'Fixture.autocreate', 'min'=>1, 'max'=>1},
          '_autocreate' => {'type'=>'Element', 'path'=>'Fixture._autocreate', 'min'=>0, 'max'=>1},
          'autodelete' => {'type'=>'boolean', 'path'=>'Fixture.autodelete', 'min'=>1, 'max'=>1},
          '_autodelete' => {'type'=>'Element', 'path'=>'Fixture._autodelete', 'min'=>0, 'max'=>1},
          'resource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Fixture.resource', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :autocreate        # 1-1 boolean
        attr_accessor :_autocreate       # 0-1 Element
        attr_accessor :autodelete        # 1-1 boolean
        attr_accessor :_autodelete       # 0-1 Element
        attr_accessor :resource          # 0-1 Reference(Resource)
      end

      class Variable < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Variable.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Variable._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Variable.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Variable.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'Variable.name', 'min'=>1, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Variable._name', 'min'=>0, 'max'=>1},
          'defaultValue' => {'type'=>'string', 'path'=>'Variable.defaultValue', 'min'=>0, 'max'=>1},
          '_defaultValue' => {'type'=>'Element', 'path'=>'Variable._defaultValue', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'string', 'path'=>'Variable.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Variable._description', 'min'=>0, 'max'=>1},
          'expression' => {'type'=>'string', 'path'=>'Variable.expression', 'min'=>0, 'max'=>1},
          '_expression' => {'type'=>'Element', 'path'=>'Variable._expression', 'min'=>0, 'max'=>1},
          'headerField' => {'type'=>'string', 'path'=>'Variable.headerField', 'min'=>0, 'max'=>1},
          '_headerField' => {'type'=>'Element', 'path'=>'Variable._headerField', 'min'=>0, 'max'=>1},
          'hint' => {'type'=>'string', 'path'=>'Variable.hint', 'min'=>0, 'max'=>1},
          '_hint' => {'type'=>'Element', 'path'=>'Variable._hint', 'min'=>0, 'max'=>1},
          'path' => {'type'=>'string', 'path'=>'Variable.path', 'min'=>0, 'max'=>1},
          '_path' => {'type'=>'Element', 'path'=>'Variable._path', 'min'=>0, 'max'=>1},
          'sourceId' => {'type'=>'id', 'path'=>'Variable.sourceId', 'min'=>0, 'max'=>1},
          '_sourceId' => {'type'=>'Element', 'path'=>'Variable._sourceId', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :_name             # 0-1 Element
        attr_accessor :defaultValue      # 0-1 string
        attr_accessor :_defaultValue     # 0-1 Element
        attr_accessor :description       # 0-1 string
        attr_accessor :_description      # 0-1 Element
        attr_accessor :expression        # 0-1 string
        attr_accessor :_expression       # 0-1 Element
        attr_accessor :headerField       # 0-1 string
        attr_accessor :_headerField      # 0-1 Element
        attr_accessor :hint              # 0-1 string
        attr_accessor :_hint             # 0-1 Element
        attr_accessor :path              # 0-1 string
        attr_accessor :_path             # 0-1 Element
        attr_accessor :sourceId          # 0-1 id
        attr_accessor :_sourceId         # 0-1 Element
      end

      class Setup < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Setup.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Setup._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Setup.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Setup.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'type'=>'TestScript::Setup::Action', 'path'=>'Setup.action', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Action < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Action._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'type'=>'TestScript::Setup::Action::Operation', 'path'=>'Action.operation', 'min'=>0, 'max'=>1},
            'assert' => {'type'=>'TestScript::Setup::Action::Assert', 'path'=>'Action.assert', 'min'=>0, 'max'=>1}
          }

          class Operation < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Operation.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Operation._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Operation.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Operation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/testscript-operation-codes'=>['read', 'vread', 'update', 'updateCreate', 'patch', 'delete', 'deleteCondSingle', 'deleteCondMultiple', 'history', 'create', 'search', 'batch', 'transaction', 'capabilities', 'apply', 'closure', 'find-matches', 'conforms', 'data-requirements', 'document', 'evaluate', 'evaluate-measure', 'everything', 'expand', 'find', 'graphql', 'implements', 'lastn', 'lookup', 'match', 'meta', 'meta-add', 'meta-delete', 'populate', 'populatehtml', 'populatelink', 'process-message', 'questionnaire', 'stats', 'subset', 'subsumes', 'transform', 'translate', 'validate', 'validate-code']}, 'type'=>'Coding', 'path'=>'Operation.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/testscript-operation-codes'}},
              'resource' => {'valid_codes'=>{'http://hl7.org/fhir/data-types'=>['Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'SubstanceAmount', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml'], 'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'type'=>'code', 'path'=>'Operation.resource', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/defined-types'}},
              '_resource' => {'type'=>'Element', 'path'=>'Operation._resource', 'min'=>0, 'max'=>1},
              'label' => {'type'=>'string', 'path'=>'Operation.label', 'min'=>0, 'max'=>1},
              '_label' => {'type'=>'Element', 'path'=>'Operation._label', 'min'=>0, 'max'=>1},
              'description' => {'type'=>'string', 'path'=>'Operation.description', 'min'=>0, 'max'=>1},
              '_description' => {'type'=>'Element', 'path'=>'Operation._description', 'min'=>0, 'max'=>1},
              'accept' => {'type'=>'code', 'path'=>'Operation.accept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
              '_accept' => {'type'=>'Element', 'path'=>'Operation._accept', 'min'=>0, 'max'=>1},
              'contentType' => {'type'=>'code', 'path'=>'Operation.contentType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
              '_contentType' => {'type'=>'Element', 'path'=>'Operation._contentType', 'min'=>0, 'max'=>1},
              'destination' => {'type'=>'integer', 'path'=>'Operation.destination', 'min'=>0, 'max'=>1},
              '_destination' => {'type'=>'Element', 'path'=>'Operation._destination', 'min'=>0, 'max'=>1},
              'encodeRequestUrl' => {'type'=>'boolean', 'path'=>'Operation.encodeRequestUrl', 'min'=>1, 'max'=>1},
              '_encodeRequestUrl' => {'type'=>'Element', 'path'=>'Operation._encodeRequestUrl', 'min'=>0, 'max'=>1},
              'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://hl7.org/fhir/http-operations'=>['delete', 'get', 'options', 'patch', 'post', 'put', 'head']}, 'type'=>'code', 'path'=>'Operation.method', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/http-operations'}},
              '_method' => {'type'=>'Element', 'path'=>'Operation._method', 'min'=>0, 'max'=>1},
              'origin' => {'type'=>'integer', 'path'=>'Operation.origin', 'min'=>0, 'max'=>1},
              '_origin' => {'type'=>'Element', 'path'=>'Operation._origin', 'min'=>0, 'max'=>1},
              'params' => {'type'=>'string', 'path'=>'Operation.params', 'min'=>0, 'max'=>1},
              '_params' => {'type'=>'Element', 'path'=>'Operation._params', 'min'=>0, 'max'=>1},
              'requestHeader' => {'type'=>'TestScript::Setup::Action::Operation::RequestHeader', 'path'=>'Operation.requestHeader', 'min'=>0, 'max'=>Float::INFINITY},
              'requestId' => {'type'=>'id', 'path'=>'Operation.requestId', 'min'=>0, 'max'=>1},
              '_requestId' => {'type'=>'Element', 'path'=>'Operation._requestId', 'min'=>0, 'max'=>1},
              'responseId' => {'type'=>'id', 'path'=>'Operation.responseId', 'min'=>0, 'max'=>1},
              '_responseId' => {'type'=>'Element', 'path'=>'Operation._responseId', 'min'=>0, 'max'=>1},
              'sourceId' => {'type'=>'id', 'path'=>'Operation.sourceId', 'min'=>0, 'max'=>1},
              '_sourceId' => {'type'=>'Element', 'path'=>'Operation._sourceId', 'min'=>0, 'max'=>1},
              'targetId' => {'type'=>'id', 'path'=>'Operation.targetId', 'min'=>0, 'max'=>1},
              '_targetId' => {'type'=>'Element', 'path'=>'Operation._targetId', 'min'=>0, 'max'=>1},
              'url' => {'type'=>'string', 'path'=>'Operation.url', 'min'=>0, 'max'=>1},
              '_url' => {'type'=>'Element', 'path'=>'Operation._url', 'min'=>0, 'max'=>1}
            }

            class RequestHeader < FHIR::Model
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
                'id' => {'type'=>'string', 'path'=>'RequestHeader.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'RequestHeader._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'RequestHeader.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'RequestHeader.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'field' => {'type'=>'string', 'path'=>'RequestHeader.field', 'min'=>1, 'max'=>1},
                '_field' => {'type'=>'Element', 'path'=>'RequestHeader._field', 'min'=>0, 'max'=>1},
                'value' => {'type'=>'string', 'path'=>'RequestHeader.value', 'min'=>1, 'max'=>1},
                '_value' => {'type'=>'Element', 'path'=>'RequestHeader._value', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :field             # 1-1 string
              attr_accessor :_field            # 0-1 Element
              attr_accessor :value             # 1-1 string
              attr_accessor :_value            # 0-1 Element
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :type              # 0-1 Coding
            attr_accessor :resource          # 0-1 code
            attr_accessor :_resource         # 0-1 Element
            attr_accessor :label             # 0-1 string
            attr_accessor :_label            # 0-1 Element
            attr_accessor :description       # 0-1 string
            attr_accessor :_description      # 0-1 Element
            attr_accessor :accept            # 0-1 code
            attr_accessor :_accept           # 0-1 Element
            attr_accessor :contentType       # 0-1 code
            attr_accessor :_contentType      # 0-1 Element
            attr_accessor :destination       # 0-1 integer
            attr_accessor :_destination      # 0-1 Element
            attr_accessor :encodeRequestUrl  # 1-1 boolean
            attr_accessor :_encodeRequestUrl # 0-1 Element
            attr_accessor :local_method      # 0-1 code
            attr_accessor :_method           # 0-1 Element
            attr_accessor :origin            # 0-1 integer
            attr_accessor :_origin           # 0-1 Element
            attr_accessor :params            # 0-1 string
            attr_accessor :_params           # 0-1 Element
            attr_accessor :requestHeader     # 0-* [ TestScript::Setup::Action::Operation::RequestHeader ]
            attr_accessor :requestId         # 0-1 id
            attr_accessor :_requestId        # 0-1 Element
            attr_accessor :responseId        # 0-1 id
            attr_accessor :_responseId       # 0-1 Element
            attr_accessor :sourceId          # 0-1 id
            attr_accessor :_sourceId         # 0-1 Element
            attr_accessor :targetId          # 0-1 id
            attr_accessor :_targetId         # 0-1 Element
            attr_accessor :url               # 0-1 string
            attr_accessor :_url              # 0-1 Element
          end

          class Assert < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Assert.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Assert._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Assert.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Assert.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'label' => {'type'=>'string', 'path'=>'Assert.label', 'min'=>0, 'max'=>1},
              '_label' => {'type'=>'Element', 'path'=>'Assert._label', 'min'=>0, 'max'=>1},
              'description' => {'type'=>'string', 'path'=>'Assert.description', 'min'=>0, 'max'=>1},
              '_description' => {'type'=>'Element', 'path'=>'Assert._description', 'min'=>0, 'max'=>1},
              'direction' => {'valid_codes'=>{'http://hl7.org/fhir/assert-direction-codes'=>['response', 'request']}, 'type'=>'code', 'path'=>'Assert.direction', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/assert-direction-codes'}},
              '_direction' => {'type'=>'Element', 'path'=>'Assert._direction', 'min'=>0, 'max'=>1},
              'compareToSourceId' => {'type'=>'string', 'path'=>'Assert.compareToSourceId', 'min'=>0, 'max'=>1},
              '_compareToSourceId' => {'type'=>'Element', 'path'=>'Assert._compareToSourceId', 'min'=>0, 'max'=>1},
              'compareToSourceExpression' => {'type'=>'string', 'path'=>'Assert.compareToSourceExpression', 'min'=>0, 'max'=>1},
              '_compareToSourceExpression' => {'type'=>'Element', 'path'=>'Assert._compareToSourceExpression', 'min'=>0, 'max'=>1},
              'compareToSourcePath' => {'type'=>'string', 'path'=>'Assert.compareToSourcePath', 'min'=>0, 'max'=>1},
              '_compareToSourcePath' => {'type'=>'Element', 'path'=>'Assert._compareToSourcePath', 'min'=>0, 'max'=>1},
              'contentType' => {'type'=>'code', 'path'=>'Assert.contentType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
              '_contentType' => {'type'=>'Element', 'path'=>'Assert._contentType', 'min'=>0, 'max'=>1},
              'expression' => {'type'=>'string', 'path'=>'Assert.expression', 'min'=>0, 'max'=>1},
              '_expression' => {'type'=>'Element', 'path'=>'Assert._expression', 'min'=>0, 'max'=>1},
              'headerField' => {'type'=>'string', 'path'=>'Assert.headerField', 'min'=>0, 'max'=>1},
              '_headerField' => {'type'=>'Element', 'path'=>'Assert._headerField', 'min'=>0, 'max'=>1},
              'minimumId' => {'type'=>'string', 'path'=>'Assert.minimumId', 'min'=>0, 'max'=>1},
              '_minimumId' => {'type'=>'Element', 'path'=>'Assert._minimumId', 'min'=>0, 'max'=>1},
              'navigationLinks' => {'type'=>'boolean', 'path'=>'Assert.navigationLinks', 'min'=>0, 'max'=>1},
              '_navigationLinks' => {'type'=>'Element', 'path'=>'Assert._navigationLinks', 'min'=>0, 'max'=>1},
              'operator' => {'valid_codes'=>{'http://hl7.org/fhir/assert-operator-codes'=>['equals', 'notEquals', 'in', 'notIn', 'greaterThan', 'lessThan', 'empty', 'notEmpty', 'contains', 'notContains', 'eval']}, 'type'=>'code', 'path'=>'Assert.operator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/assert-operator-codes'}},
              '_operator' => {'type'=>'Element', 'path'=>'Assert._operator', 'min'=>0, 'max'=>1},
              'path' => {'type'=>'string', 'path'=>'Assert.path', 'min'=>0, 'max'=>1},
              '_path' => {'type'=>'Element', 'path'=>'Assert._path', 'min'=>0, 'max'=>1},
              'requestMethod' => {'valid_codes'=>{'http://hl7.org/fhir/http-operations'=>['delete', 'get', 'options', 'patch', 'post', 'put', 'head']}, 'type'=>'code', 'path'=>'Assert.requestMethod', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/http-operations'}},
              '_requestMethod' => {'type'=>'Element', 'path'=>'Assert._requestMethod', 'min'=>0, 'max'=>1},
              'requestURL' => {'type'=>'string', 'path'=>'Assert.requestURL', 'min'=>0, 'max'=>1},
              '_requestURL' => {'type'=>'Element', 'path'=>'Assert._requestURL', 'min'=>0, 'max'=>1},
              'resource' => {'valid_codes'=>{'http://hl7.org/fhir/data-types'=>['Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'SubstanceAmount', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml'], 'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'type'=>'code', 'path'=>'Assert.resource', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/defined-types'}},
              '_resource' => {'type'=>'Element', 'path'=>'Assert._resource', 'min'=>0, 'max'=>1},
              'response' => {'valid_codes'=>{'http://hl7.org/fhir/assert-response-code-types'=>['okay', 'created', 'noContent', 'notModified', 'bad', 'forbidden', 'notFound', 'methodNotAllowed', 'conflict', 'gone', 'preconditionFailed', 'unprocessable']}, 'type'=>'code', 'path'=>'Assert.response', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/assert-response-code-types'}},
              '_response' => {'type'=>'Element', 'path'=>'Assert._response', 'min'=>0, 'max'=>1},
              'responseCode' => {'type'=>'string', 'path'=>'Assert.responseCode', 'min'=>0, 'max'=>1},
              '_responseCode' => {'type'=>'Element', 'path'=>'Assert._responseCode', 'min'=>0, 'max'=>1},
              'sourceId' => {'type'=>'id', 'path'=>'Assert.sourceId', 'min'=>0, 'max'=>1},
              '_sourceId' => {'type'=>'Element', 'path'=>'Assert._sourceId', 'min'=>0, 'max'=>1},
              'validateProfileId' => {'type'=>'id', 'path'=>'Assert.validateProfileId', 'min'=>0, 'max'=>1},
              '_validateProfileId' => {'type'=>'Element', 'path'=>'Assert._validateProfileId', 'min'=>0, 'max'=>1},
              'value' => {'type'=>'string', 'path'=>'Assert.value', 'min'=>0, 'max'=>1},
              '_value' => {'type'=>'Element', 'path'=>'Assert._value', 'min'=>0, 'max'=>1},
              'warningOnly' => {'type'=>'boolean', 'path'=>'Assert.warningOnly', 'min'=>1, 'max'=>1},
              '_warningOnly' => {'type'=>'Element', 'path'=>'Assert._warningOnly', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                         # 0-1 string
            attr_accessor :_id                        # 0-1 Element
            attr_accessor :extension                  # 0-* [ Extension ]
            attr_accessor :modifierExtension          # 0-* [ Extension ]
            attr_accessor :label                      # 0-1 string
            attr_accessor :_label                     # 0-1 Element
            attr_accessor :description                # 0-1 string
            attr_accessor :_description               # 0-1 Element
            attr_accessor :direction                  # 0-1 code
            attr_accessor :_direction                 # 0-1 Element
            attr_accessor :compareToSourceId          # 0-1 string
            attr_accessor :_compareToSourceId         # 0-1 Element
            attr_accessor :compareToSourceExpression  # 0-1 string
            attr_accessor :_compareToSourceExpression # 0-1 Element
            attr_accessor :compareToSourcePath        # 0-1 string
            attr_accessor :_compareToSourcePath       # 0-1 Element
            attr_accessor :contentType                # 0-1 code
            attr_accessor :_contentType               # 0-1 Element
            attr_accessor :expression                 # 0-1 string
            attr_accessor :_expression                # 0-1 Element
            attr_accessor :headerField                # 0-1 string
            attr_accessor :_headerField               # 0-1 Element
            attr_accessor :minimumId                  # 0-1 string
            attr_accessor :_minimumId                 # 0-1 Element
            attr_accessor :navigationLinks            # 0-1 boolean
            attr_accessor :_navigationLinks           # 0-1 Element
            attr_accessor :operator                   # 0-1 code
            attr_accessor :_operator                  # 0-1 Element
            attr_accessor :path                       # 0-1 string
            attr_accessor :_path                      # 0-1 Element
            attr_accessor :requestMethod              # 0-1 code
            attr_accessor :_requestMethod             # 0-1 Element
            attr_accessor :requestURL                 # 0-1 string
            attr_accessor :_requestURL                # 0-1 Element
            attr_accessor :resource                   # 0-1 code
            attr_accessor :_resource                  # 0-1 Element
            attr_accessor :response                   # 0-1 code
            attr_accessor :_response                  # 0-1 Element
            attr_accessor :responseCode               # 0-1 string
            attr_accessor :_responseCode              # 0-1 Element
            attr_accessor :sourceId                   # 0-1 id
            attr_accessor :_sourceId                  # 0-1 Element
            attr_accessor :validateProfileId          # 0-1 id
            attr_accessor :_validateProfileId         # 0-1 Element
            attr_accessor :value                      # 0-1 string
            attr_accessor :_value                     # 0-1 Element
            attr_accessor :warningOnly                # 1-1 boolean
            attr_accessor :_warningOnly               # 0-1 Element
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 0-1 TestScript::Setup::Action::Operation
          attr_accessor :assert            # 0-1 TestScript::Setup::Action::Assert
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :action            # 1-* [ TestScript::Setup::Action ]
      end

      class Test < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Test.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Test._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Test.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Test.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'Test.name', 'min'=>0, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Test._name', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'string', 'path'=>'Test.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Test._description', 'min'=>0, 'max'=>1},
          'action' => {'type'=>'TestScript::Test::Action', 'path'=>'Test.action', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Action < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Action._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'type'=>'TestScript::Setup::Action::Operation', 'path'=>'Action.operation', 'min'=>0, 'max'=>1},
            'assert' => {'type'=>'TestScript::Setup::Action::Assert', 'path'=>'Action.assert', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 0-1 TestScript::Setup::Action::Operation
          attr_accessor :assert            # 0-1 TestScript::Setup::Action::Assert
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 0-1 string
        attr_accessor :_name             # 0-1 Element
        attr_accessor :description       # 0-1 string
        attr_accessor :_description      # 0-1 Element
        attr_accessor :action            # 1-* [ TestScript::Test::Action ]
      end

      class Teardown < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Teardown.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Teardown._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Teardown.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Teardown.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'type'=>'TestScript::Teardown::Action', 'path'=>'Teardown.action', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Action < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Action._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'type'=>'TestScript::Setup::Action::Operation', 'path'=>'Action.operation', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 1-1 TestScript::Setup::Action::Operation
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :action            # 1-* [ TestScript::Teardown::Action ]
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
      attr_accessor :url               # 1-1 uri
      attr_accessor :_url              # 0-1 Element
      attr_accessor :identifier        # 0-1 Identifier
      attr_accessor :version           # 0-1 string
      attr_accessor :_version          # 0-1 Element
      attr_accessor :name              # 1-1 string
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
      attr_accessor :origin            # 0-* [ TestScript::Origin ]
      attr_accessor :destination       # 0-* [ TestScript::Destination ]
      attr_accessor :metadata          # 0-1 TestScript::Metadata
      attr_accessor :fixture           # 0-* [ TestScript::Fixture ]
      attr_accessor :profile           # 0-* [ Reference(Resource) ]
      attr_accessor :variable          # 0-* [ TestScript::Variable ]
      attr_accessor :setup             # 0-1 TestScript::Setup
      attr_accessor :test              # 0-* [ TestScript::Test ]
      attr_accessor :teardown          # 0-1 TestScript::Teardown

      def resourceType
        'TestScript'
      end
    end
  end
  TestScript = FHIR::R4::TestScript
end