module FHIR
  module R4B
    class PaymentNotice < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['created', 'identifier', 'payment-status', 'provider', 'request', 'response', 'status']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'PaymentNotice.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'PaymentNotice.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'PaymentNotice.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'PaymentNotice.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'PaymentNotice.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'PaymentNotice.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'PaymentNotice.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'PaymentNotice.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'PaymentNotice.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'PaymentNotice.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'request' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'PaymentNotice.request', 'min'=>0, 'max'=>1},
        'response' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'PaymentNotice.response', 'min'=>0, 'max'=>1},
        'created' => {'type'=>'dateTime', 'path'=>'PaymentNotice.created', 'min'=>1, 'max'=>1},
        'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'PaymentNotice.provider', 'min'=>0, 'max'=>1},
        'payment' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/PaymentReconciliation'], 'type'=>'Reference', 'path'=>'PaymentNotice.payment', 'min'=>1, 'max'=>1},
        'paymentDate' => {'type'=>'date', 'path'=>'PaymentNotice.paymentDate', 'min'=>0, 'max'=>1},
        'payee' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'PaymentNotice.payee', 'min'=>0, 'max'=>1},
        'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'PaymentNotice.recipient', 'min'=>1, 'max'=>1},
        'amount' => {'type'=>'Money', 'path'=>'PaymentNotice.amount', 'min'=>1, 'max'=>1},
        'paymentStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/paymentstatus'=>['paid', 'cleared']}, 'type'=>'CodeableConcept', 'path'=>'PaymentNotice.paymentStatus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-status'}}
      }

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :request           # 0-1 Reference(Resource)
      attr_accessor :response          # 0-1 Reference(Resource)
      attr_accessor :created           # 1-1 dateTime
      attr_accessor :provider          # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :payment           # 1-1 Reference(PaymentReconciliation)
      attr_accessor :paymentDate       # 0-1 date
      attr_accessor :payee             # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :recipient         # 1-1 Reference(Organization)
      attr_accessor :amount            # 1-1 Money
      attr_accessor :paymentStatus     # 0-1 CodeableConcept

      def resourceType
        'PaymentNotice'
      end
    end
  end
end