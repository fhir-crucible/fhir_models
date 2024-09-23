module FHIR
  module R4
    class OperationOutcome < FHIR::Model
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
        'id' => {'type'=>'id', 'path'=>'OperationOutcome.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'OperationOutcome._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'OperationOutcome.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'OperationOutcome.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'OperationOutcome._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'OperationOutcome.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'OperationOutcome._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'OperationOutcome.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'OperationOutcome.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'OperationOutcome.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'OperationOutcome.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'issue' => {'type'=>'OperationOutcome::Issue', 'path'=>'OperationOutcome.issue', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Issue < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Issue.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Issue._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Issue.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Issue.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'severity' => {'valid_codes'=>{'http://hl7.org/fhir/issue-severity'=>['fatal', 'error', 'warning', 'information']}, 'type'=>'code', 'path'=>'Issue.severity', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/issue-severity'}},
          '_severity' => {'type'=>'Element', 'path'=>'Issue._severity', 'min'=>0, 'max'=>1},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/issue-type'=>['invalid', 'structure', 'required', 'value', 'invariant', 'security', 'login', 'unknown', 'expired', 'forbidden', 'suppressed', 'processing', 'not-supported', 'duplicate', 'multiple-matches', 'not-found', 'deleted', 'too-long', 'code-invalid', 'extension', 'too-costly', 'business-rule', 'conflict', 'transient', 'lock-error', 'no-store', 'exception', 'timeout', 'incomplete', 'throttled', 'informational']}, 'type'=>'code', 'path'=>'Issue.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/issue-type'}},
          '_code' => {'type'=>'Element', 'path'=>'Issue._code', 'min'=>0, 'max'=>1},
          'details' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/operation-outcome'=>['DELETE_MULTIPLE_MATCHES', 'MSG_AUTH_REQUIRED', 'MSG_BAD_FORMAT', 'MSG_BAD_SYNTAX', 'MSG_CANT_PARSE_CONTENT', 'MSG_CANT_PARSE_ROOT', 'MSG_CREATED', 'MSG_DATE_FORMAT', 'MSG_DELETED', 'MSG_DELETED_DONE', 'MSG_DELETED_ID', 'MSG_DUPLICATE_ID', 'MSG_ERROR_PARSING', 'MSG_ID_INVALID', 'MSG_ID_TOO_LONG', 'MSG_INVALID_ID', 'MSG_JSON_OBJECT', 'MSG_LOCAL_FAIL', 'MSG_NO_EXIST', 'MSG_NO_MATCH', 'MSG_NO_MODULE', 'MSG_NO_SUMMARY', 'MSG_OP_NOT_ALLOWED', 'MSG_PARAM_CHAINED', 'MSG_PARAM_INVALID', 'MSG_PARAM_MODIFIER_INVALID', 'MSG_PARAM_NO_REPEAT', 'MSG_PARAM_UNKNOWN', 'MSG_RESOURCE_EXAMPLE_PROTECTED', 'MSG_RESOURCE_ID_FAIL', 'MSG_RESOURCE_ID_MISMATCH', 'MSG_RESOURCE_ID_MISSING', 'MSG_RESOURCE_NOT_ALLOWED', 'MSG_RESOURCE_REQUIRED', 'MSG_RESOURCE_TYPE_MISMATCH', 'MSG_SORT_UNKNOWN', 'MSG_TRANSACTION_DUPLICATE_ID', 'MSG_TRANSACTION_MISSING_ID', 'MSG_UNHANDLED_NODE_TYPE', 'MSG_UNKNOWN_CONTENT', 'MSG_UNKNOWN_OPERATION', 'MSG_UNKNOWN_TYPE', 'MSG_UPDATED', 'MSG_VERSION_AWARE', 'MSG_VERSION_AWARE_CONFLICT', 'MSG_VERSION_AWARE_URL', 'MSG_WRONG_NS', 'SEARCH_MULTIPLE', 'SEARCH_NONE', 'UPDATE_MULTIPLE_MATCHES']}, 'type'=>'CodeableConcept', 'path'=>'Issue.details', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/operation-outcome'}},
          'diagnostics' => {'type'=>'string', 'path'=>'Issue.diagnostics', 'min'=>0, 'max'=>1},
          '_diagnostics' => {'type'=>'Element', 'path'=>'Issue._diagnostics', 'min'=>0, 'max'=>1},
          'location' => {'type'=>'string', 'path'=>'Issue.location', 'min'=>0, 'max'=>Float::INFINITY},
          '_location' => {'type'=>'Element', 'path'=>'Issue._location', 'min'=>0, 'max'=>Float::INFINITY},
          'expression' => {'type'=>'string', 'path'=>'Issue.expression', 'min'=>0, 'max'=>Float::INFINITY},
          '_expression' => {'type'=>'Element', 'path'=>'Issue._expression', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :severity          # 1-1 code
        attr_accessor :_severity         # 0-1 Element
        attr_accessor :code              # 1-1 code
        attr_accessor :_code             # 0-1 Element
        attr_accessor :details           # 0-1 CodeableConcept
        attr_accessor :diagnostics       # 0-1 string
        attr_accessor :_diagnostics      # 0-1 Element
        attr_accessor :location          # 0-* [ string ]
        attr_accessor :_location         # 0-* [ Element ]
        attr_accessor :expression        # 0-* [ string ]
        attr_accessor :_expression       # 0-* [ Element ]
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
      attr_accessor :issue             # 1-* [ OperationOutcome::Issue ]

      def resourceType
        'OperationOutcome'
      end
    end
  end
  OperationOutcome = FHIR::R4::OperationOutcome
end