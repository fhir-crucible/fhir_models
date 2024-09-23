module FHIR
  module R4
    class StructureDefinition < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['abstract', 'base', 'base-path', 'context', 'context-quantity', 'context-type', 'date', 'derivation', 'description', 'experimental', 'ext-context', 'identifier', 'jurisdiction', 'keyword', 'kind', 'name', 'path', 'publisher', 'status', 'title', 'type', 'url', 'valueset', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'StructureDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'StructureDefinition._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'StructureDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'StructureDefinition.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'StructureDefinition._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'StructureDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'StructureDefinition._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'StructureDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'StructureDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'StructureDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'StructureDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'StructureDefinition.url', 'min'=>1, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'StructureDefinition._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'StructureDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'StructureDefinition.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'StructureDefinition._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'StructureDefinition.name', 'min'=>1, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'StructureDefinition._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'StructureDefinition.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'StructureDefinition._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'StructureDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'StructureDefinition._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'StructureDefinition.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'StructureDefinition._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'StructureDefinition.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'StructureDefinition._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'StructureDefinition.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'StructureDefinition._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'StructureDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'StructureDefinition.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'StructureDefinition._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'StructureDefinition.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'StructureDefinition.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'StructureDefinition.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'StructureDefinition._purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'StructureDefinition.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'StructureDefinition._copyright', 'min'=>0, 'max'=>1},
        'keyword' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-use'=>['fhir-structure', 'custom-resource', 'dam', 'wire-format', 'archetype', 'template']}, 'type'=>'Coding', 'path'=>'StructureDefinition.keyword', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-use'}},
        'fhirVersion' => {'valid_codes'=>{'http://hl7.org/fhir/FHIR-version'=>['0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1']}, 'type'=>'code', 'path'=>'StructureDefinition.fhirVersion', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/FHIR-version'}},
        '_fhirVersion' => {'type'=>'Element', 'path'=>'StructureDefinition._fhirVersion', 'min'=>0, 'max'=>1},
        'mapping' => {'type'=>'StructureDefinition::Mapping', 'path'=>'StructureDefinition.mapping', 'min'=>0, 'max'=>Float::INFINITY},
        'kind' => {'valid_codes'=>{'http://hl7.org/fhir/structure-definition-kind'=>['primitive-type', 'complex-type', 'resource', 'logical']}, 'type'=>'code', 'path'=>'StructureDefinition.kind', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/structure-definition-kind'}},
        '_kind' => {'type'=>'Element', 'path'=>'StructureDefinition._kind', 'min'=>0, 'max'=>1},
        'abstract' => {'type'=>'boolean', 'path'=>'StructureDefinition.abstract', 'min'=>1, 'max'=>1},
        '_abstract' => {'type'=>'Element', 'path'=>'StructureDefinition._abstract', 'min'=>0, 'max'=>1},
        'context' => {'type'=>'StructureDefinition::Context', 'path'=>'StructureDefinition.context', 'min'=>0, 'max'=>Float::INFINITY},
        'contextInvariant' => {'type'=>'string', 'path'=>'StructureDefinition.contextInvariant', 'min'=>0, 'max'=>Float::INFINITY},
        '_contextInvariant' => {'type'=>'Element', 'path'=>'StructureDefinition._contextInvariant', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'type'=>'uri', 'path'=>'StructureDefinition.type', 'min'=>1, 'max'=>1},
        '_type' => {'type'=>'Element', 'path'=>'StructureDefinition._type', 'min'=>0, 'max'=>1},
        'baseDefinition' => {'type'=>'canonical', 'path'=>'StructureDefinition.baseDefinition', 'min'=>0, 'max'=>1},
        '_baseDefinition' => {'type'=>'Element', 'path'=>'StructureDefinition._baseDefinition', 'min'=>0, 'max'=>1},
        'derivation' => {'valid_codes'=>{'http://hl7.org/fhir/type-derivation-rule'=>['specialization', 'constraint']}, 'type'=>'code', 'path'=>'StructureDefinition.derivation', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/type-derivation-rule'}},
        '_derivation' => {'type'=>'Element', 'path'=>'StructureDefinition._derivation', 'min'=>0, 'max'=>1},
        'snapshot' => {'type'=>'StructureDefinition::Snapshot', 'path'=>'StructureDefinition.snapshot', 'min'=>0, 'max'=>1},
        'differential' => {'type'=>'StructureDefinition::Differential', 'path'=>'StructureDefinition.differential', 'min'=>0, 'max'=>1}
      }

      class Mapping < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Mapping.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Mapping._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Mapping.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Mapping.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identity' => {'type'=>'id', 'path'=>'Mapping.identity', 'min'=>1, 'max'=>1},
          '_identity' => {'type'=>'Element', 'path'=>'Mapping._identity', 'min'=>0, 'max'=>1},
          'uri' => {'type'=>'uri', 'path'=>'Mapping.uri', 'min'=>0, 'max'=>1},
          '_uri' => {'type'=>'Element', 'path'=>'Mapping._uri', 'min'=>0, 'max'=>1},
          'name' => {'type'=>'string', 'path'=>'Mapping.name', 'min'=>0, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Mapping._name', 'min'=>0, 'max'=>1},
          'comment' => {'type'=>'string', 'path'=>'Mapping.comment', 'min'=>0, 'max'=>1},
          '_comment' => {'type'=>'Element', 'path'=>'Mapping._comment', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identity          # 1-1 id
        attr_accessor :_identity         # 0-1 Element
        attr_accessor :uri               # 0-1 uri
        attr_accessor :_uri              # 0-1 Element
        attr_accessor :name              # 0-1 string
        attr_accessor :_name             # 0-1 Element
        attr_accessor :comment           # 0-1 string
        attr_accessor :_comment          # 0-1 Element
      end

      class Context < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Context.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Context._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Context.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Context.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/extension-context-type'=>['fhirpath', 'element', 'extension']}, 'type'=>'code', 'path'=>'Context.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/extension-context-type'}},
          '_type' => {'type'=>'Element', 'path'=>'Context._type', 'min'=>0, 'max'=>1},
          'expression' => {'type'=>'string', 'path'=>'Context.expression', 'min'=>1, 'max'=>1},
          '_expression' => {'type'=>'Element', 'path'=>'Context._expression', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :expression        # 1-1 string
        attr_accessor :_expression       # 0-1 Element
      end

      class Snapshot < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Snapshot.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Snapshot._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Snapshot.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Snapshot.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'element' => {'type'=>'ElementDefinition', 'path'=>'Snapshot.element', 'min'=>1, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :element           # 1-* [ ElementDefinition ]
      end

      class Differential < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Differential.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Differential._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Differential.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Differential.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'element' => {'type'=>'ElementDefinition', 'path'=>'Differential.element', 'min'=>1, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :element           # 1-* [ ElementDefinition ]
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
      attr_accessor :identifier        # 0-* [ Identifier ]
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
      attr_accessor :keyword           # 0-* [ Coding ]
      attr_accessor :fhirVersion       # 0-1 code
      attr_accessor :_fhirVersion      # 0-1 Element
      attr_accessor :mapping           # 0-* [ StructureDefinition::Mapping ]
      attr_accessor :kind              # 1-1 code
      attr_accessor :_kind             # 0-1 Element
      attr_accessor :abstract          # 1-1 boolean
      attr_accessor :_abstract         # 0-1 Element
      attr_accessor :context           # 0-* [ StructureDefinition::Context ]
      attr_accessor :contextInvariant  # 0-* [ string ]
      attr_accessor :_contextInvariant # 0-* [ Element ]
      attr_accessor :type              # 1-1 uri
      attr_accessor :_type             # 0-1 Element
      attr_accessor :baseDefinition    # 0-1 canonical
      attr_accessor :_baseDefinition   # 0-1 Element
      attr_accessor :derivation        # 0-1 code
      attr_accessor :_derivation       # 0-1 Element
      attr_accessor :snapshot          # 0-1 StructureDefinition::Snapshot
      attr_accessor :differential      # 0-1 StructureDefinition::Differential

      def resourceType
        'StructureDefinition'
      end
    end
  end
  StructureDefinition = FHIR::R4::StructureDefinition
end