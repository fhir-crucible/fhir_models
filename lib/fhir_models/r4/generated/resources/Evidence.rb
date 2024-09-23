module FHIR
  module R4
    class Evidence < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['composed-of', 'context', 'context-quantity', 'context-type', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Evidence.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Ev_idence._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Evidence.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Evidence.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Evidence._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Evidence.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Evidence._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Evidence.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Evidence.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Evidence.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Evidence.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'Evidence.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'Evidence._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'Evidence.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'Evidence.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'Evidence._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'Evidence.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'Evidence._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'Evidence.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'Evidence._title', 'min'=>0, 'max'=>1},
        'shortTitle' => {'type'=>'string', 'path'=>'Evidence.shortTitle', 'min'=>0, 'max'=>1},
        '_shortTitle' => {'type'=>'Element', 'path'=>'Evidence._shortTitle', 'min'=>0, 'max'=>1},
        'subtitle' => {'type'=>'string', 'path'=>'Evidence.subtitle', 'min'=>0, 'max'=>1},
        '_subtitle' => {'type'=>'Element', 'path'=>'Evidence._subtitle', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'Evidence.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Evidence._status', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'Evidence.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'Evidence._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'Evidence.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'Evidence._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'Evidence.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'Evidence.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'Evidence._description', 'min'=>0, 'max'=>1},
        'note' => {'type'=>'Annotation', 'path'=>'Evidence.note', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'type'=>'UsageContext', 'path'=>'Evidence.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'Evidence.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'type'=>'markdown', 'path'=>'Evidence.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'Evidence._copyright', 'min'=>0, 'max'=>1},
        'approvalDate' => {'type'=>'date', 'path'=>'Evidence.approvalDate', 'min'=>0, 'max'=>1},
        '_approvalDate' => {'type'=>'Element', 'path'=>'Evidence._approvalDate', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'type'=>'date', 'path'=>'Evidence.lastReviewDate', 'min'=>0, 'max'=>1},
        '_lastReviewDate' => {'type'=>'Element', 'path'=>'Evidence._lastReviewDate', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'Evidence.effectivePeriod', 'min'=>0, 'max'=>1},
        'topic' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-topic'=>['treatment', 'education', 'assessment']}, 'type'=>'CodeableConcept', 'path'=>'Evidence.topic', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-topic'}},
        'author' => {'type'=>'ContactDetail', 'path'=>'Evidence.author', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'type'=>'ContactDetail', 'path'=>'Evidence.editor', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'type'=>'ContactDetail', 'path'=>'Evidence.reviewer', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'type'=>'ContactDetail', 'path'=>'Evidence.endorser', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'Evidence.relatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'exposureBackground' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'type'=>'Reference', 'path'=>'Evidence.exposureBackground', 'min'=>1, 'max'=>1},
        'exposureVariant' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'type'=>'Reference', 'path'=>'Evidence.exposureVariant', 'min'=>0, 'max'=>Float::INFINITY},
        'outcome' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'type'=>'Reference', 'path'=>'Evidence.outcome', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                 # 0-1 id
      attr_accessor :_id                # 0-1 Element
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :_implicitRules     # 0-1 Element
      attr_accessor :language           # 0-1 code
      attr_accessor :_language          # 0-1 Element
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :url                # 0-1 uri
      attr_accessor :_url               # 0-1 Element
      attr_accessor :identifier         # 0-* [ Identifier ]
      attr_accessor :version            # 0-1 string
      attr_accessor :_version           # 0-1 Element
      attr_accessor :name               # 0-1 string
      attr_accessor :_name              # 0-1 Element
      attr_accessor :title              # 0-1 string
      attr_accessor :_title             # 0-1 Element
      attr_accessor :shortTitle         # 0-1 string
      attr_accessor :_shortTitle        # 0-1 Element
      attr_accessor :subtitle           # 0-1 string
      attr_accessor :_subtitle          # 0-1 Element
      attr_accessor :status             # 1-1 code
      attr_accessor :_status            # 0-1 Element
      attr_accessor :date               # 0-1 dateTime
      attr_accessor :_date              # 0-1 Element
      attr_accessor :publisher          # 0-1 string
      attr_accessor :_publisher         # 0-1 Element
      attr_accessor :contact            # 0-* [ ContactDetail ]
      attr_accessor :description        # 0-1 markdown
      attr_accessor :_description       # 0-1 Element
      attr_accessor :note               # 0-* [ Annotation ]
      attr_accessor :useContext         # 0-* [ UsageContext ]
      attr_accessor :jurisdiction       # 0-* [ CodeableConcept ]
      attr_accessor :copyright          # 0-1 markdown
      attr_accessor :_copyright         # 0-1 Element
      attr_accessor :approvalDate       # 0-1 date
      attr_accessor :_approvalDate      # 0-1 Element
      attr_accessor :lastReviewDate     # 0-1 date
      attr_accessor :_lastReviewDate    # 0-1 Element
      attr_accessor :effectivePeriod    # 0-1 Period
      attr_accessor :topic              # 0-* [ CodeableConcept ]
      attr_accessor :author             # 0-* [ ContactDetail ]
      attr_accessor :editor             # 0-* [ ContactDetail ]
      attr_accessor :reviewer           # 0-* [ ContactDetail ]
      attr_accessor :endorser           # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact    # 0-* [ RelatedArtifact ]
      attr_accessor :exposureBackground # 1-1 Reference(EvidenceVariable)
      attr_accessor :exposureVariant    # 0-* [ Reference(EvidenceVariable) ]
      attr_accessor :outcome            # 0-* [ Reference(EvidenceVariable) ]

      def resourceType
        'Evidence'
      end
    end
  end
  Evidence = FHIR::R4::Evidence
end