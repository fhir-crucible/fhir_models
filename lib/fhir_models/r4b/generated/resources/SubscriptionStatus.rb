module FHIR
  module R4B
    class SubscriptionStatus < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'SubscriptionStatus.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SubscriptionStatus.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SubscriptionStatus.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SubscriptionStatus.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'SubscriptionStatus.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SubscriptionStatus.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SubscriptionStatus.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SubscriptionStatus.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-status'=>['requested', 'active', 'error', 'off']}, 'type'=>'code', 'path'=>'SubscriptionStatus.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-status'}},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-notification-type'=>['handshake', 'heartbeat', 'event-notification', 'query-status', 'query-event']}, 'type'=>'code', 'path'=>'SubscriptionStatus.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-notification-type'}},
        'eventsSinceSubscriptionStart' => {'type'=>'string', 'path'=>'SubscriptionStatus.eventsSinceSubscriptionStart', 'min'=>0, 'max'=>1},
        'notificationEvent' => {'type'=>'SubscriptionStatus::NotificationEvent', 'path'=>'SubscriptionStatus.notificationEvent', 'min'=>0, 'max'=>Float::INFINITY},
        'subscription' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Subscription'], 'type'=>'Reference', 'path'=>'SubscriptionStatus.subscription', 'min'=>1, 'max'=>1},
        'topic' => {'type'=>'canonical', 'path'=>'SubscriptionStatus.topic', 'min'=>0, 'max'=>1},
        'error' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/subscription-error'=>['dns-resolution-error', 'no-response', 'error-response']}, 'type'=>'CodeableConcept', 'path'=>'SubscriptionStatus.error', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-error'}}
      }

      class NotificationEvent < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'NotificationEvent.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'NotificationEvent.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'NotificationEvent.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'eventNumber' => {'type'=>'string', 'path'=>'NotificationEvent.eventNumber', 'min'=>1, 'max'=>1},
          'timestamp' => {'type'=>'instant', 'path'=>'NotificationEvent.timestamp', 'min'=>0, 'max'=>1},
          'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'NotificationEvent.focus', 'min'=>0, 'max'=>1},
          'additionalContext' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'NotificationEvent.additionalContext', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :eventNumber       # 1-1 string
        attr_accessor :timestamp         # 0-1 instant
        attr_accessor :focus             # 0-1 Reference(Resource)
        attr_accessor :additionalContext # 0-* [ Reference(Resource) ]
      end

      attr_accessor :id                           # 0-1 id
      attr_accessor :meta                         # 0-1 Meta
      attr_accessor :implicitRules                # 0-1 uri
      attr_accessor :language                     # 0-1 code
      attr_accessor :text                         # 0-1 Narrative
      attr_accessor :contained                    # 0-* [ Resource ]
      attr_accessor :extension                    # 0-* [ Extension ]
      attr_accessor :modifierExtension            # 0-* [ Extension ]
      attr_accessor :status                       # 0-1 code
      attr_accessor :type                         # 1-1 code
      attr_accessor :eventsSinceSubscriptionStart # 0-1 string
      attr_accessor :notificationEvent            # 0-* [ SubscriptionStatus::NotificationEvent ]
      attr_accessor :subscription                 # 1-1 Reference(Subscription)
      attr_accessor :topic                        # 0-1 canonical
      attr_accessor :error                        # 0-* [ CodeableConcept ]

      def resourceType
        'SubscriptionStatus'
      end
    end
  end
end