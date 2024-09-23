module FHIR
  module R4
    class Subscription < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['contact', 'criteria', 'payload', 'status', 'type', 'url']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Subscription.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Subscription._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Subscription.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Subscription.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Subscription._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Subscription.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Subscription._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Subscription.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Subscription.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Subscription.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Subscription.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-status'=>['requested', 'active', 'error', 'off']}, 'type'=>'code', 'path'=>'Subscription.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Subscription._status', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactPoint', 'path'=>'Subscription.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'end' => {'type'=>'instant', 'path'=>'Subscription.end', 'min'=>0, 'max'=>1},
        '_end' => {'type'=>'Element', 'path'=>'Subscription._end', 'min'=>0, 'max'=>1},
        'reason' => {'type'=>'string', 'path'=>'Subscription.reason', 'min'=>1, 'max'=>1},
        '_reason' => {'type'=>'Element', 'path'=>'Subscription._reason', 'min'=>0, 'max'=>1},
        'criteria' => {'type'=>'string', 'path'=>'Subscription.criteria', 'min'=>1, 'max'=>1},
        '_criteria' => {'type'=>'Element', 'path'=>'Subscription._criteria', 'min'=>0, 'max'=>1},
        'error' => {'type'=>'string', 'path'=>'Subscription.error', 'min'=>0, 'max'=>1},
        '_error' => {'type'=>'Element', 'path'=>'Subscription._error', 'min'=>0, 'max'=>1},
        'channel' => {'type'=>'Subscription::Channel', 'path'=>'Subscription.channel', 'min'=>1, 'max'=>1}
      }

      class Channel < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Channel.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Channel._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Channel.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Channel.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-channel-type'=>['rest-hook', 'websocket', 'email', 'sms', 'message']}, 'type'=>'code', 'path'=>'Channel.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-channel-type'}},
          '_type' => {'type'=>'Element', 'path'=>'Channel._type', 'min'=>0, 'max'=>1},
          'endpoint' => {'type'=>'url', 'path'=>'Channel.endpoint', 'min'=>0, 'max'=>1},
          '_endpoint' => {'type'=>'Element', 'path'=>'Channel._endpoint', 'min'=>0, 'max'=>1},
          'payload' => {'type'=>'code', 'path'=>'Channel.payload', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
          '_payload' => {'type'=>'Element', 'path'=>'Channel._payload', 'min'=>0, 'max'=>1},
          'header' => {'type'=>'string', 'path'=>'Channel.header', 'min'=>0, 'max'=>Float::INFINITY},
          '_header' => {'type'=>'Element', 'path'=>'Channel._header', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :endpoint          # 0-1 url
        attr_accessor :_endpoint         # 0-1 Element
        attr_accessor :payload           # 0-1 code
        attr_accessor :_payload          # 0-1 Element
        attr_accessor :header            # 0-* [ string ]
        attr_accessor :_header           # 0-* [ Element ]
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
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :contact           # 0-* [ ContactPoint ]
      attr_accessor :end               # 0-1 instant
      attr_accessor :_end              # 0-1 Element
      attr_accessor :reason            # 1-1 string
      attr_accessor :_reason           # 0-1 Element
      attr_accessor :criteria          # 1-1 string
      attr_accessor :_criteria         # 0-1 Element
      attr_accessor :error             # 0-1 string
      attr_accessor :_error            # 0-1 Element
      attr_accessor :channel           # 1-1 Subscription::Channel

      def resourceType
        'Subscription'
      end
    end
  end
  Subscription = FHIR::R4::Subscription
end