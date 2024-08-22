module FHIR
  module R4B
    class VisionPrescription < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['datewritten', 'encounter', 'identifier', 'patient', 'prescriber', 'status']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'VisionPrescription.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'VisionPrescription.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'VisionPrescription.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'VisionPrescription.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'VisionPrescription.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'VisionPrescription.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'VisionPrescription.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'VisionPrescription.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'VisionPrescription.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'VisionPrescription.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'created' => {'type'=>'dateTime', 'path'=>'VisionPrescription.created', 'min'=>1, 'max'=>1},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'VisionPrescription.patient', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'VisionPrescription.encounter', 'min'=>0, 'max'=>1},
        'dateWritten' => {'type'=>'dateTime', 'path'=>'VisionPrescription.dateWritten', 'min'=>1, 'max'=>1},
        'prescriber' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'VisionPrescription.prescriber', 'min'=>1, 'max'=>1},
        'lensSpecification' => {'type'=>'VisionPrescription::LensSpecification', 'path'=>'VisionPrescription.lensSpecification', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class LensSpecification < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'LensSpecification.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'LensSpecification.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'LensSpecification.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'product' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-visionprescriptionproduct'=>['lens', 'contact']}, 'type'=>'CodeableConcept', 'path'=>'LensSpecification.product', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vision-product'}},
          'eye' => {'valid_codes'=>{'http://hl7.org/fhir/vision-eye-codes'=>['right', 'left']}, 'type'=>'code', 'path'=>'LensSpecification.eye', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/vision-eye-codes'}},
          'sphere' => {'type'=>'decimal', 'path'=>'LensSpecification.sphere', 'min'=>0, 'max'=>1},
          'cylinder' => {'type'=>'decimal', 'path'=>'LensSpecification.cylinder', 'min'=>0, 'max'=>1},
          'axis' => {'type'=>'integer', 'path'=>'LensSpecification.axis', 'min'=>0, 'max'=>1},
          'prism' => {'type'=>'VisionPrescription::LensSpecification::Prism', 'path'=>'LensSpecification.prism', 'min'=>0, 'max'=>Float::INFINITY},
          'add' => {'type'=>'decimal', 'path'=>'LensSpecification.add', 'min'=>0, 'max'=>1},
          'power' => {'type'=>'decimal', 'path'=>'LensSpecification.power', 'min'=>0, 'max'=>1},
          'backCurve' => {'type'=>'decimal', 'path'=>'LensSpecification.backCurve', 'min'=>0, 'max'=>1},
          'diameter' => {'type'=>'decimal', 'path'=>'LensSpecification.diameter', 'min'=>0, 'max'=>1},
          'duration' => {'type'=>'Quantity', 'path'=>'LensSpecification.duration', 'min'=>0, 'max'=>1},
          'color' => {'type'=>'string', 'path'=>'LensSpecification.color', 'min'=>0, 'max'=>1},
          'brand' => {'type'=>'string', 'path'=>'LensSpecification.brand', 'min'=>0, 'max'=>1},
          'note' => {'type'=>'Annotation', 'path'=>'LensSpecification.note', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Prism < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Prism.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Prism.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Prism.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'amount' => {'type'=>'decimal', 'path'=>'Prism.amount', 'min'=>1, 'max'=>1},
            'base' => {'valid_codes'=>{'http://hl7.org/fhir/vision-base-codes'=>['up', 'down', 'in', 'out']}, 'type'=>'code', 'path'=>'Prism.base', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/vision-base-codes'}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :amount            # 1-1 decimal
          attr_accessor :base              # 1-1 code
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :product           # 1-1 CodeableConcept
        attr_accessor :eye               # 1-1 code
        attr_accessor :sphere            # 0-1 decimal
        attr_accessor :cylinder          # 0-1 decimal
        attr_accessor :axis              # 0-1 integer
        attr_accessor :prism             # 0-* [ VisionPrescription::LensSpecification::Prism ]
        attr_accessor :add               # 0-1 decimal
        attr_accessor :power             # 0-1 decimal
        attr_accessor :backCurve         # 0-1 decimal
        attr_accessor :diameter          # 0-1 decimal
        attr_accessor :duration          # 0-1 Quantity
        attr_accessor :color             # 0-1 string
        attr_accessor :brand             # 0-1 string
        attr_accessor :note              # 0-* [ Annotation ]
      end

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
      attr_accessor :created           # 1-1 dateTime
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :encounter         # 0-1 Reference(Encounter)
      attr_accessor :dateWritten       # 1-1 dateTime
      attr_accessor :prescriber        # 1-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :lensSpecification # 1-* [ VisionPrescription::LensSpecification ]

      def resourceType
        'VisionPrescription'
      end
    end
  end
end