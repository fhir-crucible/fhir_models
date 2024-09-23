module FHIR
  module R4
    class Contract < FHIR::Model
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
        'topic' => ['CodeableConcept', 'Reference'],
        'legallyBinding' => ['Attachment', 'Reference']
      }
      SEARCH_PARAMS = ['authority', 'domain', 'identifier', 'instantiates', 'issued', 'patient', 'signer', 'status', 'subject', 'url']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Contract.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Contract._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Contract.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Contract.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Contract._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Contract.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Contract._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Contract.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Contract.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Contract.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Contract.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Contract.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'Contract.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'Contract._url', 'min'=>0, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'Contract.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'Contract._version', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/contract-status'=>['amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated']}, 'type'=>'code', 'path'=>'Contract.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Contract._status', 'min'=>0, 'max'=>1},
        'legalState' => {'valid_codes'=>{'http://hl7.org/fhir/contract-legalstate'=>['amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated']}, 'type'=>'CodeableConcept', 'path'=>'Contract.legalState', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-legalstate'}},
        'instantiatesCanonical' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Contract'], 'type'=>'Reference', 'path'=>'Contract.instantiatesCanonical', 'min'=>0, 'max'=>1},
        'instantiatesUri' => {'type'=>'uri', 'path'=>'Contract.instantiatesUri', 'min'=>0, 'max'=>1},
        '_instantiatesUri' => {'type'=>'Element', 'path'=>'Contract._instantiatesUri', 'min'=>0, 'max'=>1},
        'contentDerivative' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contract-content-derivative'=>['registration', 'retrieval', 'statement', 'shareable']}, 'type'=>'CodeableConcept', 'path'=>'Contract.contentDerivative', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-content-derivative'}},
        'issued' => {'type'=>'dateTime', 'path'=>'Contract.issued', 'min'=>0, 'max'=>1},
        '_issued' => {'type'=>'Element', 'path'=>'Contract._issued', 'min'=>0, 'max'=>1},
        'applies' => {'type'=>'Period', 'path'=>'Contract.applies', 'min'=>0, 'max'=>1},
        'expirationType' => {'valid_codes'=>{'http://hl7.org/fhir/contract-expiration-type'=>['breach']}, 'type'=>'CodeableConcept', 'path'=>'Contract.expirationType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-expiration-type'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Contract.subject', 'min'=>0, 'max'=>Float::INFINITY},
        'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Contract.authority', 'min'=>0, 'max'=>Float::INFINITY},
        'domain' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Contract.domain', 'min'=>0, 'max'=>Float::INFINITY},
        'site' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Contract.site', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'string', 'path'=>'Contract.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'Contract._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'Contract.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'Contract._title', 'min'=>0, 'max'=>1},
        'subtitle' => {'type'=>'string', 'path'=>'Contract.subtitle', 'min'=>0, 'max'=>1},
        '_subtitle' => {'type'=>'Element', 'path'=>'Contract._subtitle', 'min'=>0, 'max'=>1},
        'alias' => {'type'=>'string', 'path'=>'Contract.alias', 'min'=>0, 'max'=>Float::INFINITY},
        '_alias' => {'type'=>'Element', 'path'=>'Contract._alias', 'min'=>0, 'max'=>Float::INFINITY},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Contract.author', 'min'=>0, 'max'=>1},
        'scope' => {'valid_codes'=>{'http://hl7.org/fhir/contract-scope'=>['policy']}, 'type'=>'CodeableConcept', 'path'=>'Contract.scope', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-scope'}},
        'topicCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Contract.topic[x]', 'min'=>0, 'max'=>1},
        'topicReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Contract.topic[x]', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contract-type'=>['privacy', 'disclosure', 'healthinsurance', 'supply', 'consent']}, 'type'=>'CodeableConcept', 'path'=>'Contract.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-type'}},
        'subType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsubtypecodes'=>['disclosure-ca', 'disclosure-us']}, 'type'=>'CodeableConcept', 'path'=>'Contract.subType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-subtype'}},
        'contentDefinition' => {'type'=>'Contract::ContentDefinition', 'path'=>'Contract.contentDefinition', 'min'=>0, 'max'=>1},
        'term' => {'type'=>'Contract::Term', 'path'=>'Contract.term', 'min'=>0, 'max'=>Float::INFINITY},
        'supportingInfo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Contract.supportingInfo', 'min'=>0, 'max'=>Float::INFINITY},
        'relevantHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'type'=>'Reference', 'path'=>'Contract.relevantHistory', 'min'=>0, 'max'=>Float::INFINITY},
        'signer' => {'type'=>'Contract::Signer', 'path'=>'Contract.signer', 'min'=>0, 'max'=>Float::INFINITY},
        'friendly' => {'type'=>'Contract::Friendly', 'path'=>'Contract.friendly', 'min'=>0, 'max'=>Float::INFINITY},
        'legal' => {'type'=>'Contract::Legal', 'path'=>'Contract.legal', 'min'=>0, 'max'=>Float::INFINITY},
        'rule' => {'type'=>'Contract::Rule', 'path'=>'Contract.rule', 'min'=>0, 'max'=>Float::INFINITY},
        'legallyBindingAttachment' => {'type'=>'Attachment', 'path'=>'Contract.legallyBinding[x]', 'min'=>0, 'max'=>1},
        'legallyBindingReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse', 'http://hl7.org/fhir/StructureDefinition/Contract'], 'type'=>'Reference', 'path'=>'Contract.legallyBinding[x]', 'min'=>0, 'max'=>1}
      }

      class ContentDefinition < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'ContentDefinition.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'ContentDefinition._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ContentDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'ContentDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/contract-definition-type'=>['temp']}, 'type'=>'CodeableConcept', 'path'=>'ContentDefinition.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-definition-type'}},
          'subType' => {'valid_codes'=>{'http://hl7.org/fhir/contract-definition-subtype'=>['temp']}, 'type'=>'CodeableConcept', 'path'=>'ContentDefinition.subType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-definition-subtype'}},
          'publisher' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ContentDefinition.publisher', 'min'=>0, 'max'=>1},
          'publicationDate' => {'type'=>'dateTime', 'path'=>'ContentDefinition.publicationDate', 'min'=>0, 'max'=>1},
          '_publicationDate' => {'type'=>'Element', 'path'=>'ContentDefinition._publicationDate', 'min'=>0, 'max'=>1},
          'publicationStatus' => {'valid_codes'=>{'http://hl7.org/fhir/contract-publicationstatus'=>['amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated']}, 'type'=>'code', 'path'=>'ContentDefinition.publicationStatus', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-publicationstatus'}},
          '_publicationStatus' => {'type'=>'Element', 'path'=>'ContentDefinition._publicationStatus', 'min'=>0, 'max'=>1},
          'copyright' => {'type'=>'markdown', 'path'=>'ContentDefinition.copyright', 'min'=>0, 'max'=>1},
          '_copyright' => {'type'=>'Element', 'path'=>'ContentDefinition._copyright', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                 # 0-1 string
        attr_accessor :_id                # 0-1 Element
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :type               # 1-1 CodeableConcept
        attr_accessor :subType            # 0-1 CodeableConcept
        attr_accessor :publisher          # 0-1 Reference(Practitioner|PractitionerRole|Organization)
        attr_accessor :publicationDate    # 0-1 dateTime
        attr_accessor :_publicationDate   # 0-1 Element
        attr_accessor :publicationStatus  # 1-1 code
        attr_accessor :_publicationStatus # 0-1 Element
        attr_accessor :copyright          # 0-1 markdown
        attr_accessor :_copyright         # 0-1 Element
      end

      class Term < FHIR::Model
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
          'topic' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Term.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Term._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Term.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Term.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Term.identifier', 'min'=>0, 'max'=>1},
          'issued' => {'type'=>'dateTime', 'path'=>'Term.issued', 'min'=>0, 'max'=>1},
          '_issued' => {'type'=>'Element', 'path'=>'Term._issued', 'min'=>0, 'max'=>1},
          'applies' => {'type'=>'Period', 'path'=>'Term.applies', 'min'=>0, 'max'=>1},
          'topicCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Term.topic[x]', 'min'=>0, 'max'=>1},
          'topicReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Term.topic[x]', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contracttermtypecodes'=>['statutory', 'subject-to']}, 'type'=>'CodeableConcept', 'path'=>'Term.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-term-type'}},
          'subType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contracttermsubtypecodes'=>['condition', 'warranty', 'innominate']}, 'type'=>'CodeableConcept', 'path'=>'Term.subType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-term-subtype'}},
          'text' => {'type'=>'string', 'path'=>'Term.text', 'min'=>0, 'max'=>1},
          '_text' => {'type'=>'Element', 'path'=>'Term._text', 'min'=>0, 'max'=>1},
          'securityLabel' => {'type'=>'Contract::Term::SecurityLabel', 'path'=>'Term.securityLabel', 'min'=>0, 'max'=>Float::INFINITY},
          'offer' => {'type'=>'Contract::Term::Offer', 'path'=>'Term.offer', 'min'=>1, 'max'=>1},
          'asset' => {'type'=>'Contract::Term::Asset', 'path'=>'Term.asset', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'type'=>'Contract::Term::Action', 'path'=>'Term.action', 'min'=>0, 'max'=>Float::INFINITY},
          'group' => {'type'=>'Contract::Term', 'path'=>'Term.group', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class SecurityLabel < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'SecurityLabel.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'SecurityLabel._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'SecurityLabel.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'SecurityLabel.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'number' => {'type'=>'unsignedInt', 'path'=>'SecurityLabel.number', 'min'=>0, 'max'=>Float::INFINITY},
            '_number' => {'type'=>'Element', 'path'=>'SecurityLabel._number', 'min'=>0, 'max'=>Float::INFINITY},
            'classification' => {'valid_codes'=>{'http://hl7.org/fhir/contract-security-classification'=>['policy']}, 'type'=>'Coding', 'path'=>'SecurityLabel.classification', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-security-classification'}},
            'category' => {'valid_codes'=>{'http://hl7.org/fhir/contract-security-category'=>['policy']}, 'type'=>'Coding', 'path'=>'SecurityLabel.category', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-security-category'}},
            'control' => {'valid_codes'=>{'http://hl7.org/fhir/contract-security-control'=>['policy']}, 'type'=>'Coding', 'path'=>'SecurityLabel.control', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-security-control'}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :number            # 0-* [ unsignedInt ]
          attr_accessor :_number           # 0-* [ Element ]
          attr_accessor :classification    # 1-1 Coding
          attr_accessor :category          # 0-* [ Coding ]
          attr_accessor :control           # 0-* [ Coding ]
        end

        class Offer < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Offer.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Offer._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Offer.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Offer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'identifier' => {'type'=>'Identifier', 'path'=>'Offer.identifier', 'min'=>0, 'max'=>Float::INFINITY},
            'party' => {'type'=>'Contract::Term::Offer::Party', 'path'=>'Offer.party', 'min'=>0, 'max'=>Float::INFINITY},
            'topic' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Offer.topic', 'min'=>0, 'max'=>1},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contracttermtypecodes'=>['statutory', 'subject-to']}, 'type'=>'CodeableConcept', 'path'=>'Offer.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-term-type'}},
            'decision' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['EMRGONLY', 'GRANTORCHOICE', 'IMPLIED', 'IMPLIEDD', 'NOCONSENT', 'NOPP', 'OPTIN', 'OPTINR', 'OPTOUT', 'OPTOUTE']}, 'type'=>'CodeableConcept', 'path'=>'Offer.decision', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActConsentDirective'}},
            'decisionMode' => {'valid_codes'=>{'http://hl7.org/fhir/contract-decision-mode'=>['policy']}, 'type'=>'CodeableConcept', 'path'=>'Offer.decisionMode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-decision-mode'}},
            'answer' => {'type'=>'Contract::Term::Offer::Answer', 'path'=>'Offer.answer', 'min'=>0, 'max'=>Float::INFINITY},
            'text' => {'type'=>'string', 'path'=>'Offer.text', 'min'=>0, 'max'=>1},
            '_text' => {'type'=>'Element', 'path'=>'Offer._text', 'min'=>0, 'max'=>1},
            'linkId' => {'type'=>'string', 'path'=>'Offer.linkId', 'min'=>0, 'max'=>Float::INFINITY},
            '_linkId' => {'type'=>'Element', 'path'=>'Offer._linkId', 'min'=>0, 'max'=>Float::INFINITY},
            'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'Offer.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY},
            '_securityLabelNumber' => {'type'=>'Element', 'path'=>'Offer._securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Party < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Party.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Party._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Party.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Party.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Party.reference', 'min'=>1, 'max'=>Float::INFINITY},
              'role' => {'valid_codes'=>{'http://hl7.org/fhir/contract-party-role'=>['flunky']}, 'type'=>'CodeableConcept', 'path'=>'Party.role', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-party-role'}}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :reference         # 1-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
            attr_accessor :role              # 1-1 CodeableConcept
          end

          class Answer < FHIR::Model
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
              'value' => ['boolean', 'decimal', 'integer', 'date', 'dateTime', 'time', 'string', 'uri', 'Attachment', 'Coding', 'Quantity', 'Reference']
            }
            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Answer.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Answer._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Answer.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Answer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'valueBoolean' => {'type'=>'boolean', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              '_valueBoolean' => {'type'=>'Element', 'path'=>'Answer.value[x]', 'min'=>0, 'max'=>1},
              'valueDecimal' => {'type'=>'decimal', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              '_valueDecimal' => {'type'=>'Element', 'path'=>'Answer.value[x]', 'min'=>0, 'max'=>1},
              'valueInteger' => {'type'=>'integer', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              '_valueInteger' => {'type'=>'Element', 'path'=>'Answer.value[x]', 'min'=>0, 'max'=>1},
              'valueDate' => {'type'=>'date', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              '_valueDate' => {'type'=>'Element', 'path'=>'Answer.value[x]', 'min'=>0, 'max'=>1},
              'valueDateTime' => {'type'=>'dateTime', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              '_valueDateTime' => {'type'=>'Element', 'path'=>'Answer.value[x]', 'min'=>0, 'max'=>1},
              'valueTime' => {'type'=>'time', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              '_valueTime' => {'type'=>'Element', 'path'=>'Answer.value[x]', 'min'=>0, 'max'=>1},
              'valueString' => {'type'=>'string', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              '_valueString' => {'type'=>'Element', 'path'=>'Answer.value[x]', 'min'=>0, 'max'=>1},
              'valueUri' => {'type'=>'uri', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              '_valueUri' => {'type'=>'Element', 'path'=>'Answer.value[x]', 'min'=>0, 'max'=>1},
              'valueAttachment' => {'type'=>'Attachment', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueCoding' => {'type'=>'Coding', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueQuantity' => {'type'=>'Quantity', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
              'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :valueBoolean      # 1-1 boolean
            attr_accessor :_valueBoolean     # 0-1 Element
            attr_accessor :valueDecimal      # 1-1 decimal
            attr_accessor :_valueDecimal     # 0-1 Element
            attr_accessor :valueInteger      # 1-1 integer
            attr_accessor :_valueInteger     # 0-1 Element
            attr_accessor :valueDate         # 1-1 date
            attr_accessor :_valueDate        # 0-1 Element
            attr_accessor :valueDateTime     # 1-1 dateTime
            attr_accessor :_valueDateTime    # 0-1 Element
            attr_accessor :valueTime         # 1-1 time
            attr_accessor :_valueTime        # 0-1 Element
            attr_accessor :valueString       # 1-1 string
            attr_accessor :_valueString      # 0-1 Element
            attr_accessor :valueUri          # 1-1 uri
            attr_accessor :_valueUri         # 0-1 Element
            attr_accessor :valueAttachment   # 1-1 Attachment
            attr_accessor :valueCoding       # 1-1 Coding
            attr_accessor :valueQuantity     # 1-1 Quantity
            attr_accessor :valueReference    # 1-1 Reference(Resource)
          end

          attr_accessor :id                   # 0-1 string
          attr_accessor :_id                  # 0-1 Element
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :identifier           # 0-* [ Identifier ]
          attr_accessor :party                # 0-* [ Contract::Term::Offer::Party ]
          attr_accessor :topic                # 0-1 Reference(Resource)
          attr_accessor :type                 # 0-1 CodeableConcept
          attr_accessor :decision             # 0-1 CodeableConcept
          attr_accessor :decisionMode         # 0-* [ CodeableConcept ]
          attr_accessor :answer               # 0-* [ Contract::Term::Offer::Answer ]
          attr_accessor :text                 # 0-1 string
          attr_accessor :_text                # 0-1 Element
          attr_accessor :linkId               # 0-* [ string ]
          attr_accessor :_linkId              # 0-* [ Element ]
          attr_accessor :securityLabelNumber  # 0-* [ unsignedInt ]
          attr_accessor :_securityLabelNumber # 0-* [ Element ]
        end

        class Asset < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Asset.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Asset._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Asset.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Asset.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'scope' => {'valid_codes'=>{'http://hl7.org/fhir/contract-asset-scope'=>['thing']}, 'type'=>'CodeableConcept', 'path'=>'Asset.scope', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assetscope'}},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/contract-asset-type'=>['participation']}, 'type'=>'CodeableConcept', 'path'=>'Asset.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assettype'}},
            'typeReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Asset.typeReference', 'min'=>0, 'max'=>Float::INFINITY},
            'subtype' => {'valid_codes'=>{'http://hl7.org/fhir/contract-asset-subtype'=>['participation']}, 'type'=>'CodeableConcept', 'path'=>'Asset.subtype', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assetsubtype'}},
            'relationship' => {'valid_codes'=>{'http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem'=>['urn:ihe:pcc:xphr:2007', 'urn:ihe:pcc:aps:2007', 'urn:ihe:pcc:xds-ms:2007', 'urn:ihe:pcc:edr:2007', 'urn:ihe:pcc:edes:2007', 'urn:ihe:pcc:apr:handp:2008', 'urn:ihe:pcc:apr:lab:2008', 'urn:ihe:pcc:apr:edu:2008', 'urn:ihe:pcc:crc:2008', 'urn:ihe:pcc:cm:2008', 'urn:ihe:pcc:ic:2008', 'urn:ihe:pcc:tn:2007', 'urn:ihe:pcc:nn:2007', 'urn:ihe:pcc:ctn:2007', 'urn:ihe:pcc:edpn:2007', 'urn:ihe:pcc:hp:2008', 'urn:ihe:pcc:ldhp:2009', 'urn:ihe:pcc:lds:2009', 'urn:ihe:pcc:mds:2009', 'urn:ihe:pcc:nds:2010', 'urn:ihe:pcc:ppvs:2010', 'urn:ihe:pcc:trs:2011', 'urn:ihe:pcc:ets:2011', 'urn:ihe:pcc:its:2011', 'urn:ihe:pcc:ript:2017', 'urn:ihe:iti:bppc:2007', 'urn:ihe:iti:bppc-sd:2007', 'urn:ihe:iti:xds-sd:pdf:2008', 'urn:ihe:iti:xds-sd:text:2008', 'urn:ihe:iti:xdw:2011:workflowDoc', 'urn:ihe:iti:dsg:detached:2014', 'urn:ihe:iti:dsg:enveloping:2014', 'urn:ihe:iti:appc:2016:consent', 'urn:ihe:iti:xds:2017:mimeTypeSufficient', 'urn:ihe:lab:xd-lab:2008', 'urn:ihe:rad:TEXT', 'urn:ihe:rad:PDF', 'urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013', 'urn:ihe:card:imaging:2011', 'urn:ihe:card:CRC:2012', 'urn:ihe:card:EPRC-IE:2014', 'urn:ihe:dent:TEXT', 'urn:ihe:dent:PDF', 'urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013', 'urn:ihe:pat:apsr:all:2010', 'urn:ihe:pat:apsr:cancer:all:2010', 'urn:ihe:pat:apsr:cancer:breast:2010', 'urn:ihe:pat:apsr:cancer:colon:2010', 'urn:ihe:pat:apsr:cancer:prostate:2010', 'urn:ihe:pat:apsr:cancer:thyroid:2010', 'urn:ihe:pat:apsr:cancer:lung:2010', 'urn:ihe:pat:apsr:cancer:skin:2010', 'urn:ihe:pat:apsr:cancer:kidney:2010', 'urn:ihe:pat:apsr:cancer:cervix:2010', 'urn:ihe:pat:apsr:cancer:endometrium:2010', 'urn:ihe:pat:apsr:cancer:ovary:2010', 'urn:ihe:pat:apsr:cancer:esophagus:2010', 'urn:ihe:pat:apsr:cancer:stomach:2010', 'urn:ihe:pat:apsr:cancer:liver:2010', 'urn:ihe:pat:apsr:cancer:pancreas:2010', 'urn:ihe:pat:apsr:cancer:testis:2010', 'urn:ihe:pat:apsr:cancer:urinary_bladder:2010', 'urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010', 'urn:ihe:pat:apsr:cancer:pharynx:2010', 'urn:ihe:pat:apsr:cancer:salivary_gland:2010', 'urn:ihe:pat:apsr:cancer:larynx:2010', 'urn:ihe:pharm:pre:2010', 'urn:ihe:pharm:padv:2010', 'urn:ihe:pharm:dis:2010', 'urn:ihe:pharm:pml:2013', 'urn:hl7-org:sdwg:ccda-structuredBody:1.1', 'urn:hl7-org:sdwg:ccda-nonXMLBody:1.1', 'urn:hl7-org:sdwg:ccda-structuredBody:2.1', 'urn:hl7-org:sdwg:ccda-nonXMLBody:2.1'], 'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'], 'urn:ietf:rfc:3986'=>['http://hl7.org/fhir/StructureDefinition/lipidprofile'], 'urn:ietf:bcp:13'=>['application/hl7-cda+xml']}, 'type'=>'Coding', 'path'=>'Asset.relationship', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-content-class'}},
            'context' => {'type'=>'Contract::Term::Asset::Context', 'path'=>'Asset.context', 'min'=>0, 'max'=>Float::INFINITY},
            'condition' => {'type'=>'string', 'path'=>'Asset.condition', 'min'=>0, 'max'=>1},
            '_condition' => {'type'=>'Element', 'path'=>'Asset._condition', 'min'=>0, 'max'=>1},
            'periodType' => {'valid_codes'=>{'http://hl7.org/fhir/asset-availability'=>['lease']}, 'type'=>'CodeableConcept', 'path'=>'Asset.periodType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/asset-availability'}},
            'period' => {'type'=>'Period', 'path'=>'Asset.period', 'min'=>0, 'max'=>Float::INFINITY},
            'usePeriod' => {'type'=>'Period', 'path'=>'Asset.usePeriod', 'min'=>0, 'max'=>Float::INFINITY},
            'text' => {'type'=>'string', 'path'=>'Asset.text', 'min'=>0, 'max'=>1},
            '_text' => {'type'=>'Element', 'path'=>'Asset._text', 'min'=>0, 'max'=>1},
            'linkId' => {'type'=>'string', 'path'=>'Asset.linkId', 'min'=>0, 'max'=>Float::INFINITY},
            '_linkId' => {'type'=>'Element', 'path'=>'Asset._linkId', 'min'=>0, 'max'=>Float::INFINITY},
            'answer' => {'type'=>'Contract::Term::Offer::Answer', 'path'=>'Asset.answer', 'min'=>0, 'max'=>Float::INFINITY},
            'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'Asset.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY},
            '_securityLabelNumber' => {'type'=>'Element', 'path'=>'Asset._securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY},
            'valuedItem' => {'type'=>'Contract::Term::Asset::ValuedItem', 'path'=>'Asset.valuedItem', 'min'=>0, 'max'=>Float::INFINITY}
          }

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
              'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Context.reference', 'min'=>0, 'max'=>1},
              'code' => {'valid_codes'=>{'http://hl7.org/fhir/contract-asset-context'=>['custodian']}, 'type'=>'CodeableConcept', 'path'=>'Context.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assetcontext'}},
              'text' => {'type'=>'string', 'path'=>'Context.text', 'min'=>0, 'max'=>1},
              '_text' => {'type'=>'Element', 'path'=>'Con_text._text', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :reference         # 0-1 Reference(Resource)
            attr_accessor :code              # 0-* [ CodeableConcept ]
            attr_accessor :text              # 0-1 string
            attr_accessor :_text             # 0-1 Element
          end

          class ValuedItem < FHIR::Model
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
              'entity' => ['CodeableConcept', 'Reference']
            }
            METADATA = {
              'id' => {'type'=>'string', 'path'=>'ValuedItem.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'ValuedItem._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'ValuedItem.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'ValuedItem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'entityCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ValuedItem.entity[x]', 'min'=>0, 'max'=>1},
              'entityReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'ValuedItem.entity[x]', 'min'=>0, 'max'=>1},
              'identifier' => {'type'=>'Identifier', 'path'=>'ValuedItem.identifier', 'min'=>0, 'max'=>1},
              'effectiveTime' => {'type'=>'dateTime', 'path'=>'ValuedItem.effectiveTime', 'min'=>0, 'max'=>1},
              '_effectiveTime' => {'type'=>'Element', 'path'=>'ValuedItem._effectiveTime', 'min'=>0, 'max'=>1},
              'quantity' => {'type'=>'Quantity', 'path'=>'ValuedItem.quantity', 'min'=>0, 'max'=>1},
              'unitPrice' => {'type'=>'Money', 'path'=>'ValuedItem.unitPrice', 'min'=>0, 'max'=>1},
              'factor' => {'type'=>'decimal', 'path'=>'ValuedItem.factor', 'min'=>0, 'max'=>1},
              '_factor' => {'type'=>'Element', 'path'=>'ValuedItem._factor', 'min'=>0, 'max'=>1},
              'points' => {'type'=>'decimal', 'path'=>'ValuedItem.points', 'min'=>0, 'max'=>1},
              '_points' => {'type'=>'Element', 'path'=>'ValuedItem._points', 'min'=>0, 'max'=>1},
              'net' => {'type'=>'Money', 'path'=>'ValuedItem.net', 'min'=>0, 'max'=>1},
              'payment' => {'type'=>'string', 'path'=>'ValuedItem.payment', 'min'=>0, 'max'=>1},
              '_payment' => {'type'=>'Element', 'path'=>'ValuedItem._payment', 'min'=>0, 'max'=>1},
              'paymentDate' => {'type'=>'dateTime', 'path'=>'ValuedItem.paymentDate', 'min'=>0, 'max'=>1},
              '_paymentDate' => {'type'=>'Element', 'path'=>'ValuedItem._paymentDate', 'min'=>0, 'max'=>1},
              'responsible' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'ValuedItem.responsible', 'min'=>0, 'max'=>1},
              'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'ValuedItem.recipient', 'min'=>0, 'max'=>1},
              'linkId' => {'type'=>'string', 'path'=>'ValuedItem.linkId', 'min'=>0, 'max'=>Float::INFINITY},
              '_linkId' => {'type'=>'Element', 'path'=>'ValuedItem._linkId', 'min'=>0, 'max'=>Float::INFINITY},
              'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'ValuedItem.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY},
              '_securityLabelNumber' => {'type'=>'Element', 'path'=>'ValuedItem._securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                    # 0-1 string
            attr_accessor :_id                   # 0-1 Element
            attr_accessor :extension             # 0-* [ Extension ]
            attr_accessor :modifierExtension     # 0-* [ Extension ]
            attr_accessor :entityCodeableConcept # 0-1 CodeableConcept
            attr_accessor :entityReference       # 0-1 Reference(Resource)
            attr_accessor :identifier            # 0-1 Identifier
            attr_accessor :effectiveTime         # 0-1 dateTime
            attr_accessor :_effectiveTime        # 0-1 Element
            attr_accessor :quantity              # 0-1 Quantity
            attr_accessor :unitPrice             # 0-1 Money
            attr_accessor :factor                # 0-1 decimal
            attr_accessor :_factor               # 0-1 Element
            attr_accessor :points                # 0-1 decimal
            attr_accessor :_points               # 0-1 Element
            attr_accessor :net                   # 0-1 Money
            attr_accessor :payment               # 0-1 string
            attr_accessor :_payment              # 0-1 Element
            attr_accessor :paymentDate           # 0-1 dateTime
            attr_accessor :_paymentDate          # 0-1 Element
            attr_accessor :responsible           # 0-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
            attr_accessor :recipient             # 0-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
            attr_accessor :linkId                # 0-* [ string ]
            attr_accessor :_linkId               # 0-* [ Element ]
            attr_accessor :securityLabelNumber   # 0-* [ unsignedInt ]
            attr_accessor :_securityLabelNumber  # 0-* [ Element ]
          end

          attr_accessor :id                   # 0-1 string
          attr_accessor :_id                  # 0-1 Element
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :scope                # 0-1 CodeableConcept
          attr_accessor :type                 # 0-* [ CodeableConcept ]
          attr_accessor :typeReference        # 0-* [ Reference(Resource) ]
          attr_accessor :subtype              # 0-* [ CodeableConcept ]
          attr_accessor :relationship         # 0-1 Coding
          attr_accessor :context              # 0-* [ Contract::Term::Asset::Context ]
          attr_accessor :condition            # 0-1 string
          attr_accessor :_condition           # 0-1 Element
          attr_accessor :periodType           # 0-* [ CodeableConcept ]
          attr_accessor :period               # 0-* [ Period ]
          attr_accessor :usePeriod            # 0-* [ Period ]
          attr_accessor :text                 # 0-1 string
          attr_accessor :_text                # 0-1 Element
          attr_accessor :linkId               # 0-* [ string ]
          attr_accessor :_linkId              # 0-* [ Element ]
          attr_accessor :answer               # 0-* [ Contract::Term::Offer::Answer ]
          attr_accessor :securityLabelNumber  # 0-* [ unsignedInt ]
          attr_accessor :_securityLabelNumber # 0-* [ Element ]
          attr_accessor :valuedItem           # 0-* [ Contract::Term::Asset::ValuedItem ]
        end

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

          MULTIPLE_TYPES = {
            'occurrence' => ['dateTime', 'Period', 'Timing']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Action._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'doNotPerform' => {'type'=>'boolean', 'path'=>'Action.doNotPerform', 'min'=>0, 'max'=>1},
            '_doNotPerform' => {'type'=>'Element', 'path'=>'Action._doNotPerform', 'min'=>0, 'max'=>1},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractaction'=>['action-a', 'action-b']}, 'type'=>'CodeableConcept', 'path'=>'Action.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-action'}},
            'subject' => {'type'=>'Contract::Term::Action::Subject', 'path'=>'Action.subject', 'min'=>0, 'max'=>Float::INFINITY},
            'intent' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['PurposeOfUse', 'HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'type'=>'CodeableConcept', 'path'=>'Action.intent', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}},
            'linkId' => {'type'=>'string', 'path'=>'Action.linkId', 'min'=>0, 'max'=>Float::INFINITY},
            '_linkId' => {'type'=>'Element', 'path'=>'Action._linkId', 'min'=>0, 'max'=>Float::INFINITY},
            'status' => {'valid_codes'=>{'http://hl7.org/fhir/contract-action-status'=>['complete']}, 'type'=>'CodeableConcept', 'path'=>'Action.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-actionstatus'}},
            'context' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'type'=>'Reference', 'path'=>'Action.context', 'min'=>0, 'max'=>1},
            'contextLinkId' => {'type'=>'string', 'path'=>'Action.contextLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            '_contextLinkId' => {'type'=>'Element', 'path'=>'Action._contextLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            'occurrenceDateTime' => {'type'=>'dateTime', 'path'=>'Action.occurrence[x]', 'min'=>0, 'max'=>1},
            '_occurrenceDateTime' => {'type'=>'Element', 'path'=>'Action.occurrence[x]', 'min'=>0, 'max'=>1},
            'occurrencePeriod' => {'type'=>'Period', 'path'=>'Action.occurrence[x]', 'min'=>0, 'max'=>1},
            'occurrenceTiming' => {'type'=>'Timing', 'path'=>'Action.occurrence[x]', 'min'=>0, 'max'=>1},
            'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Action.requester', 'min'=>0, 'max'=>Float::INFINITY},
            'requesterLinkId' => {'type'=>'string', 'path'=>'Action.requesterLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            '_requesterLinkId' => {'type'=>'Element', 'path'=>'Action._requesterLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            'performerType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/provenance-participant-type'=>['enterer', 'performer', 'author', 'verifier', 'legal', 'attester', 'informant', 'custodian', 'assembler', 'composer']}, 'type'=>'CodeableConcept', 'path'=>'Action.performerType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-agent-type'}},
            'performerRole' => {'valid_codes'=>{'http://hl7.org/fhir/provenance-participant-role'=>['enterer', 'performer', 'author', 'verifier', 'legal', 'attester', 'informant', 'custodian', 'assembler', 'composer']}, 'type'=>'CodeableConcept', 'path'=>'Action.performerRole', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-agent-role'}},
            'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Action.performer', 'min'=>0, 'max'=>1},
            'performerLinkId' => {'type'=>'string', 'path'=>'Action.performerLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            '_performerLinkId' => {'type'=>'Element', 'path'=>'Action._performerLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            'reasonCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['PurposeOfUse', 'HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'type'=>'CodeableConcept', 'path'=>'Action.reasonCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}},
            'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/Questionnaire', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'type'=>'Reference', 'path'=>'Action.reasonReference', 'min'=>0, 'max'=>Float::INFINITY},
            'reason' => {'type'=>'string', 'path'=>'Action.reason', 'min'=>0, 'max'=>Float::INFINITY},
            '_reason' => {'type'=>'Element', 'path'=>'Action._reason', 'min'=>0, 'max'=>Float::INFINITY},
            'reasonLinkId' => {'type'=>'string', 'path'=>'Action.reasonLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            '_reasonLinkId' => {'type'=>'Element', 'path'=>'Action._reasonLinkId', 'min'=>0, 'max'=>Float::INFINITY},
            'note' => {'type'=>'Annotation', 'path'=>'Action.note', 'min'=>0, 'max'=>Float::INFINITY},
            'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'Action.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY},
            '_securityLabelNumber' => {'type'=>'Element', 'path'=>'Action._securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Subject < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Subject.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Subject._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Subject.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Subject.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Subject.reference', 'min'=>1, 'max'=>Float::INFINITY},
              'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractactorrole'=>['practitioner', 'patient']}, 'type'=>'CodeableConcept', 'path'=>'Subject.role', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-actorrole'}}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :reference         # 1-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
            attr_accessor :role              # 0-1 CodeableConcept
          end

          attr_accessor :id                   # 0-1 string
          attr_accessor :_id                  # 0-1 Element
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :doNotPerform         # 0-1 boolean
          attr_accessor :_doNotPerform        # 0-1 Element
          attr_accessor :type                 # 1-1 CodeableConcept
          attr_accessor :subject              # 0-* [ Contract::Term::Action::Subject ]
          attr_accessor :intent               # 1-1 CodeableConcept
          attr_accessor :linkId               # 0-* [ string ]
          attr_accessor :_linkId              # 0-* [ Element ]
          attr_accessor :status               # 1-1 CodeableConcept
          attr_accessor :context              # 0-1 Reference(Encounter|EpisodeOfCare)
          attr_accessor :contextLinkId        # 0-* [ string ]
          attr_accessor :_contextLinkId       # 0-* [ Element ]
          attr_accessor :occurrenceDateTime   # 0-1 dateTime
          attr_accessor :_occurrenceDateTime  # 0-1 Element
          attr_accessor :occurrencePeriod     # 0-1 Period
          attr_accessor :occurrenceTiming     # 0-1 Timing
          attr_accessor :requester            # 0-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
          attr_accessor :requesterLinkId      # 0-* [ string ]
          attr_accessor :_requesterLinkId     # 0-* [ Element ]
          attr_accessor :performerType        # 0-* [ CodeableConcept ]
          attr_accessor :performerRole        # 0-1 CodeableConcept
          attr_accessor :performer            # 0-1 Reference(RelatedPerson|Patient|Practitioner|PractitionerRole|CareTeam|Device|Substance|Organization|Location)
          attr_accessor :performerLinkId      # 0-* [ string ]
          attr_accessor :_performerLinkId     # 0-* [ Element ]
          attr_accessor :reasonCode           # 0-* [ CodeableConcept ]
          attr_accessor :reasonReference      # 0-* [ Reference(Condition|Observation|DiagnosticReport|DocumentReference|Questionnaire|QuestionnaireResponse) ]
          attr_accessor :reason               # 0-* [ string ]
          attr_accessor :_reason              # 0-* [ Element ]
          attr_accessor :reasonLinkId         # 0-* [ string ]
          attr_accessor :_reasonLinkId        # 0-* [ Element ]
          attr_accessor :note                 # 0-* [ Annotation ]
          attr_accessor :securityLabelNumber  # 0-* [ unsignedInt ]
          attr_accessor :_securityLabelNumber # 0-* [ Element ]
        end

        attr_accessor :id                   # 0-1 string
        attr_accessor :_id                  # 0-1 Element
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :identifier           # 0-1 Identifier
        attr_accessor :issued               # 0-1 dateTime
        attr_accessor :_issued              # 0-1 Element
        attr_accessor :applies              # 0-1 Period
        attr_accessor :topicCodeableConcept # 0-1 CodeableConcept
        attr_accessor :topicReference       # 0-1 Reference(Resource)
        attr_accessor :type                 # 0-1 CodeableConcept
        attr_accessor :subType              # 0-1 CodeableConcept
        attr_accessor :text                 # 0-1 string
        attr_accessor :_text                # 0-1 Element
        attr_accessor :securityLabel        # 0-* [ Contract::Term::SecurityLabel ]
        attr_accessor :offer                # 1-1 Contract::Term::Offer
        attr_accessor :asset                # 0-* [ Contract::Term::Asset ]
        attr_accessor :action               # 0-* [ Contract::Term::Action ]
        attr_accessor :group                # 0-* [ Contract::Term ]
      end

      class Signer < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Signer.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Signer._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Signer.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Signer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsignertypecodes'=>['AMENDER', 'AUTHN', 'AUT', 'AFFL', 'AGNT', 'ASSIGNED', 'CIT', 'CLAIMANT', 'COAUTH', 'CONSENTER', 'CONSWIT', 'CONT', 'COPART', 'COVPTY', 'DELEGATEE', 'delegator', 'DEPEND', 'DPOWATT', 'EMGCON', 'EVTWIT', 'EXCEST', 'GRANTEE', 'GRANTOR', 'GUAR', 'GUARD', 'GUADLTM', 'INF', 'INTPRT', 'INSBJ', 'HPOWATT', 'HPROV', 'LEGAUTHN', 'NMDINS', 'NOK', 'NOTARY', 'PAT', 'POWATT', 'PRIMAUTH', 'PRIRECIP', 'RECIP', 'RESPRSN', 'REVIEWER', 'TRANS', 'SOURCE', 'SPOWATT', 'VALID', 'VERF', 'WIT']}, 'type'=>'Coding', 'path'=>'Signer.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-signer-type'}},
          'party' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Signer.party', 'min'=>1, 'max'=>1},
          'signature' => {'type'=>'Signature', 'path'=>'Signer.signature', 'min'=>1, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 Coding
        attr_accessor :party             # 1-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
        attr_accessor :signature         # 1-* [ Signature ]
      end

      class Friendly < FHIR::Model
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
          'content' => ['Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Friendly.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Friendly._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Friendly.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Friendly.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentAttachment' => {'type'=>'Attachment', 'path'=>'Friendly.content[x]', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'type'=>'Reference', 'path'=>'Friendly.content[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :contentAttachment # 1-1 Attachment
        attr_accessor :contentReference  # 1-1 Reference(Composition|DocumentReference|QuestionnaireResponse)
      end

      class Legal < FHIR::Model
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
          'content' => ['Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Legal.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Legal._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Legal.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Legal.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentAttachment' => {'type'=>'Attachment', 'path'=>'Legal.content[x]', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'type'=>'Reference', 'path'=>'Legal.content[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :contentAttachment # 1-1 Attachment
        attr_accessor :contentReference  # 1-1 Reference(Composition|DocumentReference|QuestionnaireResponse)
      end

      class Rule < FHIR::Model
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
          'content' => ['Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Rule.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Rule._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Rule.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Rule.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentAttachment' => {'type'=>'Attachment', 'path'=>'Rule.content[x]', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Rule.content[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :contentAttachment # 1-1 Attachment
        attr_accessor :contentReference  # 1-1 Reference(DocumentReference)
      end

      attr_accessor :id                       # 0-1 id
      attr_accessor :_id                      # 0-1 Element
      attr_accessor :meta                     # 0-1 Meta
      attr_accessor :implicitRules            # 0-1 uri
      attr_accessor :_implicitRules           # 0-1 Element
      attr_accessor :language                 # 0-1 code
      attr_accessor :_language                # 0-1 Element
      attr_accessor :text                     # 0-1 Narrative
      attr_accessor :contained                # 0-* [ Resource ]
      attr_accessor :extension                # 0-* [ Extension ]
      attr_accessor :modifierExtension        # 0-* [ Extension ]
      attr_accessor :identifier               # 0-* [ Identifier ]
      attr_accessor :url                      # 0-1 uri
      attr_accessor :_url                     # 0-1 Element
      attr_accessor :version                  # 0-1 string
      attr_accessor :_version                 # 0-1 Element
      attr_accessor :status                   # 0-1 code
      attr_accessor :_status                  # 0-1 Element
      attr_accessor :legalState               # 0-1 CodeableConcept
      attr_accessor :instantiatesCanonical    # 0-1 Reference(Contract)
      attr_accessor :instantiatesUri          # 0-1 uri
      attr_accessor :_instantiatesUri         # 0-1 Element
      attr_accessor :contentDerivative        # 0-1 CodeableConcept
      attr_accessor :issued                   # 0-1 dateTime
      attr_accessor :_issued                  # 0-1 Element
      attr_accessor :applies                  # 0-1 Period
      attr_accessor :expirationType           # 0-1 CodeableConcept
      attr_accessor :subject                  # 0-* [ Reference(Resource) ]
      attr_accessor :authority                # 0-* [ Reference(Organization) ]
      attr_accessor :domain                   # 0-* [ Reference(Location) ]
      attr_accessor :site                     # 0-* [ Reference(Location) ]
      attr_accessor :name                     # 0-1 string
      attr_accessor :_name                    # 0-1 Element
      attr_accessor :title                    # 0-1 string
      attr_accessor :_title                   # 0-1 Element
      attr_accessor :subtitle                 # 0-1 string
      attr_accessor :_subtitle                # 0-1 Element
      attr_accessor :alias                    # 0-* [ string ]
      attr_accessor :_alias                   # 0-* [ Element ]
      attr_accessor :author                   # 0-1 Reference(Patient|Practitioner|PractitionerRole|Organization)
      attr_accessor :scope                    # 0-1 CodeableConcept
      attr_accessor :topicCodeableConcept     # 0-1 CodeableConcept
      attr_accessor :topicReference           # 0-1 Reference(Resource)
      attr_accessor :type                     # 0-1 CodeableConcept
      attr_accessor :subType                  # 0-* [ CodeableConcept ]
      attr_accessor :contentDefinition        # 0-1 Contract::ContentDefinition
      attr_accessor :term                     # 0-* [ Contract::Term ]
      attr_accessor :supportingInfo           # 0-* [ Reference(Resource) ]
      attr_accessor :relevantHistory          # 0-* [ Reference(Provenance) ]
      attr_accessor :signer                   # 0-* [ Contract::Signer ]
      attr_accessor :friendly                 # 0-* [ Contract::Friendly ]
      attr_accessor :legal                    # 0-* [ Contract::Legal ]
      attr_accessor :rule                     # 0-* [ Contract::Rule ]
      attr_accessor :legallyBindingAttachment # 0-1 Attachment
      attr_accessor :legallyBindingReference  # 0-1 Reference(Composition|DocumentReference|QuestionnaireResponse|Contract)

      def resourceType
        'Contract'
      end
    end
  end
  Contract = FHIR::R4::Contract
end