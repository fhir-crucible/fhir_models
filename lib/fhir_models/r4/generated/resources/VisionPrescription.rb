module FHIR
  module R4
    class VisionPrescription < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['datewritten', 'encounter', 'identifier', 'patient', 'prescriber', 'status']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'VisionPrescription.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'VisionPrescription._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'VisionPrescription.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'VisionPrescription.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'VisionPrescription._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'VisionPrescription.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'VisionPrescription._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'VisionPrescription.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'VisionPrescription.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'VisionPrescription.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'VisionPrescription.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'VisionPrescription.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'type'=>'code', 'path'=>'VisionPrescription.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        '_status' => {'type'=>'Element', 'path'=>'VisionPrescription._status', 'min'=>0, 'max'=>1},
        'created' => {'type'=>'dateTime', 'path'=>'VisionPrescription.created', 'min'=>1, 'max'=>1},
        '_created' => {'type'=>'Element', 'path'=>'VisionPrescription._created', 'min'=>0, 'max'=>1},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'VisionPrescription.patient', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'VisionPrescription.encounter', 'min'=>0, 'max'=>1},
        'dateWritten' => {'type'=>'dateTime', 'path'=>'VisionPrescription.dateWritten', 'min'=>1, 'max'=>1},
        '_dateWritten' => {'type'=>'Element', 'path'=>'VisionPrescription._dateWritten', 'min'=>0, 'max'=>1},
        'prescriber' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'VisionPrescription.prescriber', 'min'=>1, 'max'=>1},
        'lensSpecification' => {'type'=>'VisionPrescription::LensSpecification', 'path'=>'VisionPrescription.lensSpecification', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class LensSpecification < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'LensSpecification.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'LensSpecification._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'LensSpecification.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'LensSpecification.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'product' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-visionprescriptionproduct'=>['lens', 'contact']}, 'type'=>'CodeableConcept', 'path'=>'LensSpecification.product', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vision-product'}},
          'eye' => {'valid_codes'=>{'http://hl7.org/fhir/vision-eye-codes'=>['right', 'left']}, 'type'=>'code', 'path'=>'LensSpecification.eye', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/vision-eye-codes'}},
          '_eye' => {'type'=>'Element', 'path'=>'LensSpecification._eye', 'min'=>0, 'max'=>1},
          'sphere' => {'type'=>'decimal', 'path'=>'LensSpecification.sphere', 'min'=>0, 'max'=>1},
          '_sphere' => {'type'=>'Element', 'path'=>'LensSpecification._sphere', 'min'=>0, 'max'=>1},
          'cylinder' => {'type'=>'decimal', 'path'=>'LensSpecification.cylinder', 'min'=>0, 'max'=>1},
          '_cylinder' => {'type'=>'Element', 'path'=>'LensSpecification._cylinder', 'min'=>0, 'max'=>1},
          'axis' => {'type'=>'integer', 'path'=>'LensSpecification.axis', 'min'=>0, 'max'=>1},
          '_axis' => {'type'=>'Element', 'path'=>'LensSpecification._axis', 'min'=>0, 'max'=>1},
          'prism' => {'type'=>'VisionPrescription::LensSpecification::Prism', 'path'=>'LensSpecification.prism', 'min'=>0, 'max'=>Float::INFINITY},
          'add' => {'type'=>'decimal', 'path'=>'LensSpecification.add', 'min'=>0, 'max'=>1},
          '_add' => {'type'=>'Element', 'path'=>'LensSpecification._add', 'min'=>0, 'max'=>1},
          'power' => {'type'=>'decimal', 'path'=>'LensSpecification.power', 'min'=>0, 'max'=>1},
          '_power' => {'type'=>'Element', 'path'=>'LensSpecification._power', 'min'=>0, 'max'=>1},
          'backCurve' => {'type'=>'decimal', 'path'=>'LensSpecification.backCurve', 'min'=>0, 'max'=>1},
          '_backCurve' => {'type'=>'Element', 'path'=>'LensSpecification._backCurve', 'min'=>0, 'max'=>1},
          'diameter' => {'type'=>'decimal', 'path'=>'LensSpecification.diameter', 'min'=>0, 'max'=>1},
          '_diameter' => {'type'=>'Element', 'path'=>'LensSpecification._diameter', 'min'=>0, 'max'=>1},
          'duration' => {'type'=>'Quantity', 'path'=>'LensSpecification.duration', 'min'=>0, 'max'=>1},
          'color' => {'type'=>'string', 'path'=>'LensSpecification.color', 'min'=>0, 'max'=>1},
          '_color' => {'type'=>'Element', 'path'=>'LensSpecification._color', 'min'=>0, 'max'=>1},
          'brand' => {'type'=>'string', 'path'=>'LensSpecification.brand', 'min'=>0, 'max'=>1},
          '_brand' => {'type'=>'Element', 'path'=>'LensSpecification._brand', 'min'=>0, 'max'=>1},
          'note' => {'type'=>'Annotation', 'path'=>'LensSpecification.note', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Prism < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Prism.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Prism._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Prism.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Prism.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'amount' => {'type'=>'decimal', 'path'=>'Prism.amount', 'min'=>1, 'max'=>1},
            '_amount' => {'type'=>'Element', 'path'=>'Prism._amount', 'min'=>0, 'max'=>1},
            'base' => {'valid_codes'=>{'http://hl7.org/fhir/vision-base-codes'=>['up', 'down', 'in', 'out']}, 'type'=>'code', 'path'=>'Prism.base', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/vision-base-codes'}},
            '_base' => {'type'=>'Element', 'path'=>'Prism._base', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :amount            # 1-1 decimal
          attr_accessor :_amount           # 0-1 Element
          attr_accessor :base              # 1-1 code
          attr_accessor :_base             # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :product           # 1-1 CodeableConcept
        attr_accessor :eye               # 1-1 code
        attr_accessor :_eye              # 0-1 Element
        attr_accessor :sphere            # 0-1 decimal
        attr_accessor :_sphere           # 0-1 Element
        attr_accessor :cylinder          # 0-1 decimal
        attr_accessor :_cylinder         # 0-1 Element
        attr_accessor :axis              # 0-1 integer
        attr_accessor :_axis             # 0-1 Element
        attr_accessor :prism             # 0-* [ VisionPrescription::LensSpecification::Prism ]
        attr_accessor :add               # 0-1 decimal
        attr_accessor :_add              # 0-1 Element
        attr_accessor :power             # 0-1 decimal
        attr_accessor :_power            # 0-1 Element
        attr_accessor :backCurve         # 0-1 decimal
        attr_accessor :_backCurve        # 0-1 Element
        attr_accessor :diameter          # 0-1 decimal
        attr_accessor :_diameter         # 0-1 Element
        attr_accessor :duration          # 0-1 Quantity
        attr_accessor :color             # 0-1 string
        attr_accessor :_color            # 0-1 Element
        attr_accessor :brand             # 0-1 string
        attr_accessor :_brand            # 0-1 Element
        attr_accessor :note              # 0-* [ Annotation ]
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
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :created           # 1-1 dateTime
      attr_accessor :_created          # 0-1 Element
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :encounter         # 0-1 Reference(Encounter)
      attr_accessor :dateWritten       # 1-1 dateTime
      attr_accessor :_dateWritten      # 0-1 Element
      attr_accessor :prescriber        # 1-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :lensSpecification # 1-* [ VisionPrescription::LensSpecification ]

      def resourceType
        'VisionPrescription'
      end
    end
  end
  VisionPrescription = FHIR::R4::VisionPrescription
end