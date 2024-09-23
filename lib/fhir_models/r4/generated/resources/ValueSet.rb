module FHIR
  module R4
    class ValueSet < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['code', 'context', 'context-quantity', 'context-type', 'date', 'description', 'expansion', 'identifier', 'jurisdiction', 'name', 'publisher', 'reference', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ValueSet.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ValueSet._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ValueSet.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ValueSet.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'ValueSet._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'ValueSet.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'ValueSet._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'ValueSet.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ValueSet.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ValueSet.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ValueSet.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'ValueSet.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'ValueSet._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'ValueSet.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'ValueSet.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'ValueSet._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'ValueSet.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'ValueSet._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'ValueSet.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'ValueSet._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'ValueSet.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'ValueSet._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'ValueSet.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'ValueSet._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'ValueSet.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'ValueSet._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'ValueSet.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'ValueSet._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'ValueSet.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'ValueSet.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'ValueSet._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'ValueSet.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'ValueSet.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'immutable' => {'type'=>'boolean', 'path'=>'ValueSet.immutable', 'min'=>0, 'max'=>1},
        '_immutable' => {'type'=>'Element', 'path'=>'ValueSet._immutable', 'min'=>0, 'max'=>1},
        'purpose' => {'type'=>'markdown', 'path'=>'ValueSet.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'ValueSet._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'ValueSet.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'ValueSet._copyright', 'min'=>0, 'max'=>1},
        'compose' => {'type'=>'ValueSet::Compose', 'path'=>'ValueSet.compose', 'min'=>0, 'max'=>1},
        'expansion' => {'type'=>'ValueSet::Expansion', 'path'=>'ValueSet.expansion', 'min'=>0, 'max'=>1}
      }

      class Compose < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Compose.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Compose._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Compose.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Compose.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'lockedDate' => {'type'=>'date', 'path'=>'Compose.lockedDate', 'min'=>0, 'max'=>1},
          '_lockedDate' => {'type'=>'Element', 'path'=>'Compose._lockedDate', 'min'=>0, 'max'=>1},
          'inactive' => {'type'=>'boolean', 'path'=>'Compose.inactive', 'min'=>0, 'max'=>1},
          '_inactive' => {'type'=>'Element', 'path'=>'Compose._inactive', 'min'=>0, 'max'=>1},
          'include' => {'type'=>'ValueSet::Compose::Include', 'path'=>'Compose.include', 'min'=>1, 'max'=>Float::INFINITY},
          'exclude' => {'type'=>'ValueSet::Compose::Include', 'path'=>'Compose.exclude', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Include < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Include.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Include._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Include.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Include.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'system' => {'type'=>'uri', 'path'=>'Include.system', 'min'=>0, 'max'=>1},
            '_system' => {'type'=>'Element', 'path'=>'Include._system', 'min'=>0, 'max'=>1},
            'version' => {'type'=>'string', 'path'=>'Include.version', 'min'=>0, 'max'=>1},
            '_version' => {'type'=>'Element', 'path'=>'Include._version', 'min'=>0, 'max'=>1},
            'concept' => {'type'=>'ValueSet::Compose::Include::Concept', 'path'=>'Include.concept', 'min'=>0, 'max'=>Float::INFINITY},
            'filter' => {'type'=>'ValueSet::Compose::Include::Filter', 'path'=>'Include.filter', 'min'=>0, 'max'=>Float::INFINITY},
            'valueSet' => {'type'=>'canonical', 'path'=>'Include.valueSet', 'min'=>0, 'max'=>Float::INFINITY},
            '_valueSet' => {'type'=>'Element', 'path'=>'Include._valueSet', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Concept < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Concept.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Concept._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Concept.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Concept.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'code' => {'type'=>'code', 'path'=>'Concept.code', 'min'=>1, 'max'=>1},
              '_code' => {'type'=>'Element', 'path'=>'Concept._code', 'min'=>0, 'max'=>1},
              'display' => {'type'=>'string', 'path'=>'Concept.display', 'min'=>0, 'max'=>1},
              '_display' => {'type'=>'Element', 'path'=>'Concept._display', 'min'=>0, 'max'=>1},
              'designation' => {'type'=>'ValueSet::Compose::Include::Concept::Designation', 'path'=>'Concept.designation', 'min'=>0, 'max'=>Float::INFINITY}
            }

            class Designation < FHIR::Model
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
                'id' => {'type'=>'string', 'path'=>'Designation.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'Designation._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'Designation.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'Designation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Designation.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
                '_language' => {'type'=>'Element', 'path'=>'Designation._language', 'min'=>0, 'max'=>1},
                'use' => {'valid_codes'=>{'http://snomed.info/sct'=>['900000000000003001', '900000000000013009']}, 'type'=>'Coding', 'path'=>'Designation.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/designation-use'}},
                'value' => {'type'=>'string', 'path'=>'Designation.value', 'min'=>1, 'max'=>1},
                '_value' => {'type'=>'Element', 'path'=>'Designation._value', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :language          # 0-1 code
              attr_accessor :_language         # 0-1 Element
              attr_accessor :use               # 0-1 Coding
              attr_accessor :value             # 1-1 string
              attr_accessor :_value            # 0-1 Element
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :code              # 1-1 code
            attr_accessor :_code             # 0-1 Element
            attr_accessor :display           # 0-1 string
            attr_accessor :_display          # 0-1 Element
            attr_accessor :designation       # 0-* [ ValueSet::Compose::Include::Concept::Designation ]
          end

          class Filter < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Filter.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Filter._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Filter.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Filter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'property' => {'type'=>'code', 'path'=>'Filter.property', 'min'=>1, 'max'=>1},
              '_property' => {'type'=>'Element', 'path'=>'Filter._property', 'min'=>0, 'max'=>1},
              'op' => {'valid_codes'=>{'http://hl7.org/fhir/filter-operator'=>['=', 'is-a', 'descendent-of', 'is-not-a', 'regex', 'in', 'not-in', 'generalizes', 'exists']}, 'type'=>'code', 'path'=>'Filter.op', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/filter-operator'}},
              '_op' => {'type'=>'Element', 'path'=>'Filter._op', 'min'=>0, 'max'=>1},
              'value' => {'type'=>'string', 'path'=>'Filter.value', 'min'=>1, 'max'=>1},
              '_value' => {'type'=>'Element', 'path'=>'Filter._value', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :property          # 1-1 code
            attr_accessor :_property         # 0-1 Element
            attr_accessor :op                # 1-1 code
            attr_accessor :_op               # 0-1 Element
            attr_accessor :value             # 1-1 string
            attr_accessor :_value            # 0-1 Element
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :system            # 0-1 uri
          attr_accessor :_system           # 0-1 Element
          attr_accessor :version           # 0-1 string
          attr_accessor :_version          # 0-1 Element
          attr_accessor :concept           # 0-* [ ValueSet::Compose::Include::Concept ]
          attr_accessor :filter            # 0-* [ ValueSet::Compose::Include::Filter ]
          attr_accessor :valueSet          # 0-* [ canonical ]
          attr_accessor :_valueSet         # 0-* [ Element ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :lockedDate        # 0-1 date
        attr_accessor :_lockedDate       # 0-1 Element
        attr_accessor :inactive          # 0-1 boolean
        attr_accessor :_inactive         # 0-1 Element
        attr_accessor :include           # 1-* [ ValueSet::Compose::Include ]
        attr_accessor :exclude           # 0-* [ ValueSet::Compose::Include ]
      end

      class Expansion < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Expansion.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Expansion._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Expansion.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Expansion.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'uri', 'path'=>'Expansion.identifier', 'min'=>0, 'max'=>1},
          '_identifier' => {'type'=>'Element', 'path'=>'Expansion._identifier', 'min'=>0, 'max'=>1},
          'timestamp' => {'type'=>'dateTime', 'path'=>'Expansion.timestamp', 'min'=>1, 'max'=>1},
          '_timestamp' => {'type'=>'Element', 'path'=>'Expansion._timestamp', 'min'=>0, 'max'=>1},
          'total' => {'type'=>'integer', 'path'=>'Expansion.total', 'min'=>0, 'max'=>1},
          '_total' => {'type'=>'Element', 'path'=>'Expansion._total', 'min'=>0, 'max'=>1},
          'offset' => {'type'=>'integer', 'path'=>'Expansion.offset', 'min'=>0, 'max'=>1},
          '_offset' => {'type'=>'Element', 'path'=>'Expansion._offset', 'min'=>0, 'max'=>1},
          'parameter' => {'type'=>'ValueSet::Expansion::Parameter', 'path'=>'Expansion.parameter', 'min'=>0, 'max'=>Float::INFINITY},
          'contains' => {'type'=>'ValueSet::Expansion::Contains', 'path'=>'Expansion.contains', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Parameter < FHIR::Model
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
            'value' => ['string', 'boolean', 'integer', 'decimal', 'uri', 'code', 'dateTime']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Parameter.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Parameter._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Parameter.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Parameter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'type'=>'string', 'path'=>'Parameter.name', 'min'=>1, 'max'=>1},
            '_name' => {'type'=>'Element', 'path'=>'Parameter._name', 'min'=>0, 'max'=>1},
            'valueString' => {'type'=>'string', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueString' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueBoolean' => {'type'=>'boolean', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueBoolean' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueInteger' => {'type'=>'integer', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueInteger' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueDecimal' => {'type'=>'decimal', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueDecimal' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueUri' => {'type'=>'uri', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueUri' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueCode' => {'type'=>'code', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueCode' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            'valueDateTime' => {'type'=>'dateTime', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
            '_valueDateTime' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 string
          attr_accessor :_name             # 0-1 Element
          attr_accessor :valueString       # 0-1 string
          attr_accessor :_valueString      # 0-1 Element
          attr_accessor :valueBoolean      # 0-1 boolean
          attr_accessor :_valueBoolean     # 0-1 Element
          attr_accessor :valueInteger      # 0-1 integer
          attr_accessor :_valueInteger     # 0-1 Element
          attr_accessor :valueDecimal      # 0-1 decimal
          attr_accessor :_valueDecimal     # 0-1 Element
          attr_accessor :valueUri          # 0-1 uri
          attr_accessor :_valueUri         # 0-1 Element
          attr_accessor :valueCode         # 0-1 code
          attr_accessor :_valueCode        # 0-1 Element
          attr_accessor :valueDateTime     # 0-1 dateTime
          attr_accessor :_valueDateTime    # 0-1 Element
        end

        class Contains < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Contains.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Contains._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Contains.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Contains.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'system' => {'type'=>'uri', 'path'=>'Contains.system', 'min'=>0, 'max'=>1},
            '_system' => {'type'=>'Element', 'path'=>'Contains._system', 'min'=>0, 'max'=>1},
            'abstract' => {'type'=>'boolean', 'path'=>'Contains.abstract', 'min'=>0, 'max'=>1},
            '_abstract' => {'type'=>'Element', 'path'=>'Contains._abstract', 'min'=>0, 'max'=>1},
            'inactive' => {'type'=>'boolean', 'path'=>'Contains.inactive', 'min'=>0, 'max'=>1},
            '_inactive' => {'type'=>'Element', 'path'=>'Contains._inactive', 'min'=>0, 'max'=>1},
            'version' => {'type'=>'string', 'path'=>'Contains.version', 'min'=>0, 'max'=>1},
            '_version' => {'type'=>'Element', 'path'=>'Contains._version', 'min'=>0, 'max'=>1},
            'code' => {'type'=>'code', 'path'=>'Contains.code', 'min'=>0, 'max'=>1},
            '_code' => {'type'=>'Element', 'path'=>'Contains._code', 'min'=>0, 'max'=>1},
            'display' => {'type'=>'string', 'path'=>'Contains.display', 'min'=>0, 'max'=>1},
            '_display' => {'type'=>'Element', 'path'=>'Contains._display', 'min'=>0, 'max'=>1},
            'designation' => {'type'=>'ValueSet::Compose::Include::Concept::Designation', 'path'=>'Contains.designation', 'min'=>0, 'max'=>Float::INFINITY},
            'contains' => {'type'=>'ValueSet::Expansion::Contains', 'path'=>'Contains.contains', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :system            # 0-1 uri
          attr_accessor :_system           # 0-1 Element
          attr_accessor :abstract          # 0-1 boolean
          attr_accessor :_abstract         # 0-1 Element
          attr_accessor :inactive          # 0-1 boolean
          attr_accessor :_inactive         # 0-1 Element
          attr_accessor :version           # 0-1 string
          attr_accessor :_version          # 0-1 Element
          attr_accessor :code              # 0-1 code
          attr_accessor :_code             # 0-1 Element
          attr_accessor :display           # 0-1 string
          attr_accessor :_display          # 0-1 Element
          attr_accessor :designation       # 0-* [ ValueSet::Compose::Include::Concept::Designation ]
          attr_accessor :contains          # 0-* [ ValueSet::Expansion::Contains ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-1 uri
        attr_accessor :_identifier       # 0-1 Element
        attr_accessor :timestamp         # 1-1 dateTime
        attr_accessor :_timestamp        # 0-1 Element
        attr_accessor :total             # 0-1 integer
        attr_accessor :_total            # 0-1 Element
        attr_accessor :offset            # 0-1 integer
        attr_accessor :_offset           # 0-1 Element
        attr_accessor :parameter         # 0-* [ ValueSet::Expansion::Parameter ]
        attr_accessor :contains          # 0-* [ ValueSet::Expansion::Contains ]
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
      attr_accessor :identifier        # 0-* [ Identifier ]
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
      attr_accessor :immutable         # 0-1 boolean
      attr_accessor :_immutable        # 0-1 Element
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :_purpose          # 0-1 Element
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :compose           # 0-1 ValueSet::Compose
      attr_accessor :expansion         # 0-1 ValueSet::Expansion

      def resourceType
        'ValueSet'
      end
    end
  end
  ValueSet = FHIR::R4::ValueSet
end