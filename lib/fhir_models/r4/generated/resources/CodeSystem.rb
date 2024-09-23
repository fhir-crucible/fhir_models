module FHIR
  module R4
    class CodeSystem < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['code', 'content-mode', 'context', 'context-quantity', 'context-type', 'date', 'description', 'identifier', 'jurisdiction', 'language', 'name', 'publisher', 'status', 'supplements', 'system', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'CodeSystem.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'CodeSystem._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'CodeSystem.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'CodeSystem.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'CodeSystem._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'CodeSystem.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'CodeSystem._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'CodeSystem.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'CodeSystem.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'CodeSystem.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'CodeSystem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'CodeSystem.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'CodeSystem._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'CodeSystem.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'CodeSystem.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'CodeSystem._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'CodeSystem.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'CodeSystem._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'CodeSystem.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'CodeSystem._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'CodeSystem.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'CodeSystem._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'CodeSystem.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'CodeSystem._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'CodeSystem.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'CodeSystem._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'CodeSystem.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'CodeSystem._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'CodeSystem.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'CodeSystem.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'CodeSystem._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'CodeSystem.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'CodeSystem.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'CodeSystem.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'CodeSystem._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'CodeSystem.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'CodeSystem._copyright', 'min'=>0, 'max'=>1},
        'caseSensitive' => {'type'=>'boolean', 'path'=>'CodeSystem.caseSensitive', 'min'=>0, 'max'=>1},
        '_caseSensitive' => {'type'=>'Element', 'path'=>'CodeSystem._caseSensitive', 'min'=>0, 'max'=>1},
        'valueSet' => {'type'=>'canonical', 'path'=>'CodeSystem.valueSet', 'min'=>0, 'max'=>1},
        '_valueSet' => {'type'=>'Element', 'path'=>'CodeSystem._valueSet', 'min'=>0, 'max'=>1},
        'hierarchyMeaning' => {'valid_codes'=>{'http://hl7.org/fhir/codesystem-hierarchy-meaning'=>['grouped-by', 'is-a', 'part-of', 'classified-with']}, 'type'=>'code', 'path'=>'CodeSystem.hierarchyMeaning', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning'}},
        '_hierarchyMeaning' => {'type'=>'Element', 'path'=>'CodeSystem._hierarchyMeaning', 'min'=>0, 'max'=>1},
        'compositional' => {'type'=>'boolean', 'path'=>'CodeSystem.compositional', 'min'=>0, 'max'=>1},
        '_compositional' => {'type'=>'Element', 'path'=>'CodeSystem._compositional', 'min'=>0, 'max'=>1},
        'versionNeeded' => {'type'=>'boolean', 'path'=>'CodeSystem.versionNeeded', 'min'=>0, 'max'=>1},
        '_versionNeeded' => {'type'=>'Element', 'path'=>'CodeSystem._versionNeeded', 'min'=>0, 'max'=>1},
        'content' => {'valid_codes'=>{'http://hl7.org/fhir/codesystem-content-mode'=>['not-present', 'example', 'fragment', 'complete', 'supplement']}, 'type'=>'code', 'path'=>'CodeSystem.content', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/codesystem-content-mode'}},
        '_content' => {'type'=>'Element', 'path'=>'CodeSystem._content', 'min'=>0, 'max'=>1},
        'supplements' => {'type'=>'canonical', 'path'=>'CodeSystem.supplements', 'min'=>0, 'max'=>1},
        '_supplements' => {'type'=>'Element', 'path'=>'CodeSystem._supplements', 'min'=>0, 'max'=>1},
        'count' => {'type'=>'unsignedInt', 'path'=>'CodeSystem.count', 'min'=>0, 'max'=>1},
        '_count' => {'type'=>'Element', 'path'=>'CodeSystem._count', 'min'=>0, 'max'=>1},
        'filter' => {'type'=>'CodeSystem::Filter', 'path'=>'CodeSystem.filter', 'min'=>0, 'max'=>Float::INFINITY},
        'property' => {'type'=>'CodeSystem::Property', 'path'=>'CodeSystem.property', 'min'=>0, 'max'=>Float::INFINITY},
        'concept' => {'type'=>'CodeSystem::Concept', 'path'=>'CodeSystem.concept', 'min'=>0, 'max'=>Float::INFINITY}
      }

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
          'code' => {'type'=>'code', 'path'=>'Filter.code', 'min'=>1, 'max'=>1},
          '_code' => {'type'=>'Element', 'path'=>'Filter._code', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'string', 'path'=>'Filter.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Filter._description', 'min'=>0, 'max'=>1},
          'operator' => {'valid_codes'=>{'http://hl7.org/fhir/filter-operator'=>['=', 'is-a', 'descendent-of', 'is-not-a', 'regex', 'in', 'not-in', 'generalizes', 'exists']}, 'type'=>'code', 'path'=>'Filter.operator', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/filter-operator'}},
          '_operator' => {'type'=>'Element', 'path'=>'Filter._operator', 'min'=>0, 'max'=>Float::INFINITY},
          'value' => {'type'=>'string', 'path'=>'Filter.value', 'min'=>1, 'max'=>1},
          '_value' => {'type'=>'Element', 'path'=>'Filter._value', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 code
        attr_accessor :_code             # 0-1 Element
        attr_accessor :description       # 0-1 string
        attr_accessor :_description      # 0-1 Element
        attr_accessor :operator          # 1-* [ code ]
        attr_accessor :_operator         # 0-* [ Element ]
        attr_accessor :value             # 1-1 string
        attr_accessor :_value            # 0-1 Element
      end

      class Property < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Property.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Property._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Property.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Property.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'code', 'path'=>'Property.code', 'min'=>1, 'max'=>1},
          '_code' => {'type'=>'Element', 'path'=>'Property._code', 'min'=>0, 'max'=>1},
          'uri' => {'type'=>'uri', 'path'=>'Property.uri', 'min'=>0, 'max'=>1},
          '_uri' => {'type'=>'Element', 'path'=>'Property._uri', 'min'=>0, 'max'=>1},
          'description' => {'type'=>'string', 'path'=>'Property.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Property._description', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/concept-property-type'=>['code', 'Coding', 'string', 'integer', 'boolean', 'dateTime', 'decimal']}, 'type'=>'code', 'path'=>'Property.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/concept-property-type'}},
          '_type' => {'type'=>'Element', 'path'=>'Property._type', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 code
        attr_accessor :_code             # 0-1 Element
        attr_accessor :uri               # 0-1 uri
        attr_accessor :_uri              # 0-1 Element
        attr_accessor :description       # 0-1 string
        attr_accessor :_description      # 0-1 Element
        attr_accessor :type              # 1-1 code
        attr_accessor :_type             # 0-1 Element
      end

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
          'definition' => {'type'=>'string', 'path'=>'Concept.definition', 'min'=>0, 'max'=>1},
          '_definition' => {'type'=>'Element', 'path'=>'Concept._definition', 'min'=>0, 'max'=>1},
          'designation' => {'type'=>'CodeSystem::Concept::Designation', 'path'=>'Concept.designation', 'min'=>0, 'max'=>Float::INFINITY},
          'property' => {'type'=>'CodeSystem::Concept::Property', 'path'=>'Concept.property', 'min'=>0, 'max'=>Float::INFINITY},
          'concept' => {'type'=>'CodeSystem::Concept', 'path'=>'Concept.concept', 'min'=>0, 'max'=>Float::INFINITY}
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

        class Property < FHIR::Model
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
            'value' => ['code', 'Coding', 'string', 'integer', 'boolean', 'dateTime', 'decimal']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Property.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Property._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Property.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Property.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'type'=>'code', 'path'=>'Property.code', 'min'=>1, 'max'=>1},
            '_code' => {'type'=>'Element', 'path'=>'Property._code', 'min'=>0, 'max'=>1},
            'valueCode' => {'type'=>'code', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
            '_valueCode' => {'type'=>'Element', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
            'valueCoding' => {'type'=>'Coding', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
            'valueString' => {'type'=>'string', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
            '_valueString' => {'type'=>'Element', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
            'valueInteger' => {'type'=>'integer', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
            '_valueInteger' => {'type'=>'Element', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
            'valueBoolean' => {'type'=>'boolean', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
            '_valueBoolean' => {'type'=>'Element', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
            'valueDateTime' => {'type'=>'dateTime', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
            '_valueDateTime' => {'type'=>'Element', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1},
            'valueDecimal' => {'type'=>'decimal', 'path'=>'Property.value[x]', 'min'=>1, 'max'=>1},
            '_valueDecimal' => {'type'=>'Element', 'path'=>'Property.value[x]', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :_code             # 0-1 Element
          attr_accessor :valueCode         # 1-1 code
          attr_accessor :_valueCode        # 0-1 Element
          attr_accessor :valueCoding       # 1-1 Coding
          attr_accessor :valueString       # 1-1 string
          attr_accessor :_valueString      # 0-1 Element
          attr_accessor :valueInteger      # 1-1 integer
          attr_accessor :_valueInteger     # 0-1 Element
          attr_accessor :valueBoolean      # 1-1 boolean
          attr_accessor :_valueBoolean     # 0-1 Element
          attr_accessor :valueDateTime     # 1-1 dateTime
          attr_accessor :_valueDateTime    # 0-1 Element
          attr_accessor :valueDecimal      # 1-1 decimal
          attr_accessor :_valueDecimal     # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 code
        attr_accessor :_code             # 0-1 Element
        attr_accessor :display           # 0-1 string
        attr_accessor :_display          # 0-1 Element
        attr_accessor :definition        # 0-1 string
        attr_accessor :_definition       # 0-1 Element
        attr_accessor :designation       # 0-* [ CodeSystem::Concept::Designation ]
        attr_accessor :property          # 0-* [ CodeSystem::Concept::Property ]
        attr_accessor :concept           # 0-* [ CodeSystem::Concept ]
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
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :_purpose          # 0-1 Element
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :caseSensitive     # 0-1 boolean
      attr_accessor :_caseSensitive    # 0-1 Element
      attr_accessor :valueSet          # 0-1 canonical
      attr_accessor :_valueSet         # 0-1 Element
      attr_accessor :hierarchyMeaning  # 0-1 code
      attr_accessor :_hierarchyMeaning # 0-1 Element
      attr_accessor :compositional     # 0-1 boolean
      attr_accessor :_compositional    # 0-1 Element
      attr_accessor :versionNeeded     # 0-1 boolean
      attr_accessor :_versionNeeded    # 0-1 Element
      attr_accessor :content           # 1-1 code
      attr_accessor :_content          # 0-1 Element
      attr_accessor :supplements       # 0-1 canonical
      attr_accessor :_supplements      # 0-1 Element
      attr_accessor :count             # 0-1 unsignedInt
      attr_accessor :_count            # 0-1 Element
      attr_accessor :filter            # 0-* [ CodeSystem::Filter ]
      attr_accessor :property          # 0-* [ CodeSystem::Property ]
      attr_accessor :concept           # 0-* [ CodeSystem::Concept ]

      def resourceType
        'CodeSystem'
      end
    end
  end
  CodeSystem = FHIR::R4::CodeSystem
end