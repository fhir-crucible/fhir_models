module FHIR
  module R4
    class Library < FHIR::Model
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
        'subject' => ['CodeableConcept', 'Reference']
      }
      SEARCH_PARAMS = ['composed-of', 'content-type', 'context', 'context-quantity', 'context-type', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'type', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Library.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Library._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Library.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Library.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Library._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Library.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Library._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Library.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Library.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Library.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Library.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'Library.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'Library._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'Library.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'Library.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'Library._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'Library.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'Library._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'Library.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'Library._title', 'min'=>0, 'max'=>1},
        'subtitle' => {'type'=>'string', 'path'=>'Library.subtitle', 'min'=>0, 'max'=>1},
        '_subtitle' => {'type'=>'Element', 'path'=>'Library._subtitle', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'Library.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Library._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'Library.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'Library._experimental', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/library-type'=>['logic-library', 'model-definition', 'asset-collection', 'module-definition']}, 'type'=>'CodeableConcept', 'path'=>'Library.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/library-type'}},
        'subjectCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Patient', 'Practitioner', 'Organization', 'Location', 'Device']}, 'type'=>'CodeableConcept', 'path'=>'Library.subject[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subject-type'}},
        'subjectReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'Library.subject[x]', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'Library.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'Library._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'Library.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'Library._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'Library.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'Library.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'Library._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'Library.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'Library.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'Library.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'Library._purpose', 'min'=>0, 'max'=>1},
        'usage' => {'type'=>'string', 'path'=>'Library.usage', 'min'=>0, 'max'=>1},
        '_usage' => {'type'=>'Element', 'path'=>'Library._usage', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'Library.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'Library._copyright', 'min'=>0, 'max'=>1},
        'approvalDate' => {'type'=>'date', 'path'=>'Library.approvalDate', 'min'=>0, 'max'=>1},
        '_approvalDate' => {'type'=>'Element', 'path'=>'Library._approvalDate', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'type'=>'date', 'path'=>'Library.lastReviewDate', 'min'=>0, 'max'=>1},
        '_lastReviewDate' => {'type'=>'Element', 'path'=>'Library._lastReviewDate', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'Library.effectivePeriod', 'min'=>0, 'max'=>1},
        'topic' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-topic'=>['treatment', 'education', 'assessment']}, 'type'=>'CodeableConcept', 'path'=>'Library.topic', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-topic'}},
        'author' => {'type'=>'ContactDetail', 'path'=>'Library.author', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'type'=>'ContactDetail', 'path'=>'Library.editor', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'type'=>'ContactDetail', 'path'=>'Library.reviewer', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'type'=>'ContactDetail', 'path'=>'Library.endorser', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'Library.relatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'parameter' => {'type'=>'ParameterDefinition', 'path'=>'Library.parameter', 'min'=>0, 'max'=>Float::INFINITY},
        'dataRequirement' => {'type'=>'DataRequirement', 'path'=>'Library.dataRequirement', 'min'=>0, 'max'=>Float::INFINITY},
        'content' => {'type'=>'Attachment', 'path'=>'Library.content', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                     # 0-1 id
      attr_accessor :_id                    # 0-1 Element
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :_implicitRules         # 0-1 Element
      attr_accessor :language               # 0-1 code
      attr_accessor :_language              # 0-1 Element
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :url                    # 0-1 uri
      attr_accessor :_url                   # 0-1 Element
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :version                # 0-1 string
      attr_accessor :_version               # 0-1 Element
      attr_accessor :name                   # 0-1 string
      attr_accessor :_name                  # 0-1 Element
      attr_accessor :title                  # 0-1 string
      attr_accessor :_title                 # 0-1 Element
      attr_accessor :subtitle               # 0-1 string
      attr_accessor :_subtitle              # 0-1 Element
      attr_accessor :status                 # 1-1 code
      attr_accessor :_status                # 0-1 Element
      attr_accessor :experimental           # 0-1 boolean
      attr_accessor :_experimental          # 0-1 Element
      attr_accessor :type                   # 1-1 CodeableConcept
      attr_accessor :subjectCodeableConcept # 0-1 CodeableConcept
      attr_accessor :subjectReference       # 0-1 Reference(Group)
      attr_accessor :date                   # 0-1 dateTime
      attr_accessor :_date                  # 0-1 Element
      attr_accessor :publisher              # 0-1 string
      attr_accessor :_publisher             # 0-1 Element
      attr_accessor :contact                # 0-* [ ContactDetail ]
      attr_accessor :description            # 0-1 markdown
      attr_accessor :_description           # 0-1 Element
      attr_accessor :useContext             # 0-* [ UsageContext ]
      attr_accessor :jurisdiction           # 0-* [ CodeableConcept ]
      attr_accessor :purpose                # 0-1 markdown
      attr_accessor :_purpose               # 0-1 Element
      attr_accessor :usage                  # 0-1 string
      attr_accessor :_usage                 # 0-1 Element
      attr_accessor :copyright              # 0-1 markdown
      attr_accessor :_copyright             # 0-1 Element
      attr_accessor :approvalDate           # 0-1 date
      attr_accessor :_approvalDate          # 0-1 Element
      attr_accessor :lastReviewDate         # 0-1 date
      attr_accessor :_lastReviewDate        # 0-1 Element
      attr_accessor :effectivePeriod        # 0-1 Period
      attr_accessor :topic                  # 0-* [ CodeableConcept ]
      attr_accessor :author                 # 0-* [ ContactDetail ]
      attr_accessor :editor                 # 0-* [ ContactDetail ]
      attr_accessor :reviewer               # 0-* [ ContactDetail ]
      attr_accessor :endorser               # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact        # 0-* [ RelatedArtifact ]
      attr_accessor :parameter              # 0-* [ ParameterDefinition ]
      attr_accessor :dataRequirement        # 0-* [ DataRequirement ]
      attr_accessor :content                # 0-* [ Attachment ]

      def resourceType
        'Library'
      end
    end
  end
  Library = FHIR::R4::Library
end