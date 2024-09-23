module FHIR
  module R4
    class TestReport < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['identifier', 'issued', 'participant', 'result', 'tester', 'testscript']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'TestReport.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'TestReport._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'TestReport.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'TestReport.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'TestReport._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'TestReport.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'TestReport._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'TestReport.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'TestReport.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'TestReport.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'TestReport.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'TestReport.identifier', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'TestReport.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'TestReport._name', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/report-status-codes'=>['completed', 'in-progress', 'waiting', 'stopped', 'entered-in-error']}, 'type'=>'code', 'path'=>'TestReport.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-status-codes'}},
        '_status' => {'type'=>'Element', 'path'=>'TestReport._status', 'min'=>0, 'max'=>1},
        'testScript' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/TestScript'], 'type'=>'Reference', 'path'=>'TestReport.testScript', 'min'=>1, 'max'=>1},
        'result' => {'valid_codes'=>{'http://hl7.org/fhir/report-result-codes'=>['pass', 'fail', 'pending']}, 'type'=>'code', 'path'=>'TestReport.result', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-result-codes'}},
        '_result' => {'type'=>'Element', 'path'=>'TestReport._result', 'min'=>0, 'max'=>1},
        'score' => {'type'=>'decimal', 'path'=>'TestReport.score', 'min'=>0, 'max'=>1},
        '_score' => {'type'=>'Element', 'path'=>'TestReport._score', 'min'=>0, 'max'=>1},
        'tester' => {'type'=>'string', 'path'=>'TestReport.tester', 'min'=>0, 'max'=>1},
        '_tester' => {'type'=>'Element', 'path'=>'TestReport._tester', 'min'=>0, 'max'=>1},
        'issued' => {'type'=>'dateTime', 'path'=>'TestReport.issued', 'min'=>0, 'max'=>1},
        '_issued' => {'type'=>'Element', 'path'=>'TestReport._issued', 'min'=>0, 'max'=>1},
        'participant' => {'type'=>'TestReport::Participant', 'path'=>'TestReport.participant', 'min'=>0, 'max'=>Float::INFINITY},
        'setup' => {'type'=>'TestReport::Setup', 'path'=>'TestReport.setup', 'min'=>0, 'max'=>1},
        'test' => {'type'=>'TestReport::Test', 'path'=>'TestReport.test', 'min'=>0, 'max'=>Float::INFINITY},
        'teardown' => {'type'=>'TestReport::Teardown', 'path'=>'TestReport.teardown', 'min'=>0, 'max'=>1}
      }

      class Participant < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Participant.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Participant._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Participant.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Participant.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/report-participant-type'=>['test-engine', 'client', 'server']}, 'type'=>'code', 'path'=>'Participant.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-participant-type'}},
          '_type' => {'type'=>'Element', 'path'=>'Participant._type', 'min'=>0, 'max'=>1},
          'uri' => {'type'=>'uri', 'path'=>'Participant.uri', 'min'=>1, 'max'=>1},
          '_uri' => {'type'=>'Element', 'path'=>'Participant._uri', 'min'=>0, 'max'=>1},
          'display' => {'type'=>'string', 'path'=>'Participant.display', 'min'=>0, 'max'=>1},
          '_display' => {'type'=>'Element', 'path'=>'Participant._display', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :uri               # 1-1 uri
        attr_accessor :_uri              # 0-1 Element
        attr_accessor :display           # 0-1 string
        attr_accessor :_display          # 0-1 Element
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
          'action' => {'type'=>'TestReport::Setup::Action', 'path'=>'Setup.action', 'min'=>1, 'max'=>Float::INFINITY}
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
            'operation' => {'type'=>'TestReport::Setup::Action::Operation', 'path'=>'Action.operation', 'min'=>0, 'max'=>1},
            'assert' => {'type'=>'TestReport::Setup::Action::Assert', 'path'=>'Action.assert', 'min'=>0, 'max'=>1}
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
              'result' => {'valid_codes'=>{'http://hl7.org/fhir/report-action-result-codes'=>['pass', 'skip', 'fail', 'warning', 'error']}, 'type'=>'code', 'path'=>'Operation.result', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-action-result-codes'}},
              '_result' => {'type'=>'Element', 'path'=>'Operation._result', 'min'=>0, 'max'=>1},
              'message' => {'type'=>'markdown', 'path'=>'Operation.message', 'min'=>0, 'max'=>1},
              '_message' => {'type'=>'Element', 'path'=>'Operation._message', 'min'=>0, 'max'=>1},
              'detail' => {'type'=>'uri', 'path'=>'Operation.detail', 'min'=>0, 'max'=>1},
              '_detail' => {'type'=>'Element', 'path'=>'Operation._detail', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :result            # 1-1 code
            attr_accessor :_result           # 0-1 Element
            attr_accessor :message           # 0-1 markdown
            attr_accessor :_message          # 0-1 Element
            attr_accessor :detail            # 0-1 uri
            attr_accessor :_detail           # 0-1 Element
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
              'result' => {'valid_codes'=>{'http://hl7.org/fhir/report-action-result-codes'=>['pass', 'skip', 'fail', 'warning', 'error']}, 'type'=>'code', 'path'=>'Assert.result', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-action-result-codes'}},
              '_result' => {'type'=>'Element', 'path'=>'Assert._result', 'min'=>0, 'max'=>1},
              'message' => {'type'=>'markdown', 'path'=>'Assert.message', 'min'=>0, 'max'=>1},
              '_message' => {'type'=>'Element', 'path'=>'Assert._message', 'min'=>0, 'max'=>1},
              'detail' => {'type'=>'string', 'path'=>'Assert.detail', 'min'=>0, 'max'=>1},
              '_detail' => {'type'=>'Element', 'path'=>'Assert._detail', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :result            # 1-1 code
            attr_accessor :_result           # 0-1 Element
            attr_accessor :message           # 0-1 markdown
            attr_accessor :_message          # 0-1 Element
            attr_accessor :detail            # 0-1 string
            attr_accessor :_detail           # 0-1 Element
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 0-1 TestReport::Setup::Action::Operation
          attr_accessor :assert            # 0-1 TestReport::Setup::Action::Assert
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :action            # 1-* [ TestReport::Setup::Action ]
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
          'action' => {'type'=>'TestReport::Test::Action', 'path'=>'Test.action', 'min'=>1, 'max'=>Float::INFINITY}
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
            'operation' => {'type'=>'TestReport::Setup::Action::Operation', 'path'=>'Action.operation', 'min'=>0, 'max'=>1},
            'assert' => {'type'=>'TestReport::Setup::Action::Assert', 'path'=>'Action.assert', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 0-1 TestReport::Setup::Action::Operation
          attr_accessor :assert            # 0-1 TestReport::Setup::Action::Assert
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 0-1 string
        attr_accessor :_name             # 0-1 Element
        attr_accessor :description       # 0-1 string
        attr_accessor :_description      # 0-1 Element
        attr_accessor :action            # 1-* [ TestReport::Test::Action ]
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
          'action' => {'type'=>'TestReport::Teardown::Action', 'path'=>'Teardown.action', 'min'=>1, 'max'=>Float::INFINITY}
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
            'operation' => {'type'=>'TestReport::Setup::Action::Operation', 'path'=>'Action.operation', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 1-1 TestReport::Setup::Action::Operation
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :action            # 1-* [ TestReport::Teardown::Action ]
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
      attr_accessor :identifier        # 0-1 Identifier
      attr_accessor :name              # 0-1 string
      attr_accessor :_name             # 0-1 Element
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :testScript        # 1-1 Reference(TestScript)
      attr_accessor :result            # 1-1 code
      attr_accessor :_result           # 0-1 Element
      attr_accessor :score             # 0-1 decimal
      attr_accessor :_score            # 0-1 Element
      attr_accessor :tester            # 0-1 string
      attr_accessor :_tester           # 0-1 Element
      attr_accessor :issued            # 0-1 dateTime
      attr_accessor :_issued           # 0-1 Element
      attr_accessor :participant       # 0-* [ TestReport::Participant ]
      attr_accessor :setup             # 0-1 TestReport::Setup
      attr_accessor :test              # 0-* [ TestReport::Test ]
      attr_accessor :teardown          # 0-1 TestReport::Teardown

      def resourceType
        'TestReport'
      end
    end
  end
  TestReport = FHIR::R4::TestReport
end