module FHIR
  module R4
    class MedicinalProductInteraction < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['subject']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MedicinalProductInteraction.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MedicinalProductInteraction._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MedicinalProductInteraction.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MedicinalProductInteraction.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MedicinalProductInteraction._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MedicinalProductInteraction.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MedicinalProductInteraction._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MedicinalProductInteraction.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MedicinalProductInteraction.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MedicinalProductInteraction.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MedicinalProductInteraction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance'], 'type'=>'Reference', 'path'=>'MedicinalProductInteraction.subject', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'string', 'path'=>'MedicinalProductInteraction.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'MedicinalProductInteraction._description', 'min'=>0, 'max'=>1},
        'interactant' => {'type'=>'MedicinalProductInteraction::Interactant', 'path'=>'MedicinalProductInteraction.interactant', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductInteraction.type', 'min'=>0, 'max'=>1},
        'effect' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductInteraction.effect', 'min'=>0, 'max'=>1},
        'incidence' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductInteraction.incidence', 'min'=>0, 'max'=>1},
        'management' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductInteraction.management', 'min'=>0, 'max'=>1}
      }

      class Interactant < FHIR::Model
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
          'item' => ['Reference', 'CodeableConcept']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Interactant.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Interactant._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Interactant.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Interactant.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'itemReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/ObservationDefinition'], 'type'=>'Reference', 'path'=>'Interactant.item[x]', 'min'=>1, 'max'=>1},
          'itemCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Interactant.item[x]', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :_id                 # 0-1 Element
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :itemReference       # 1-1 Reference(MedicinalProduct|Medication|Substance|ObservationDefinition)
        attr_accessor :itemCodeableConcept # 1-1 CodeableConcept
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
      attr_accessor :subject           # 0-* [ Reference(MedicinalProduct|Medication|Substance) ]
      attr_accessor :description       # 0-1 string
      attr_accessor :_description      # 0-1 Element
      attr_accessor :interactant       # 0-* [ MedicinalProductInteraction::Interactant ]
      attr_accessor :type              # 0-1 CodeableConcept
      attr_accessor :effect            # 0-1 CodeableConcept
      attr_accessor :incidence         # 0-1 CodeableConcept
      attr_accessor :management        # 0-1 CodeableConcept

      def resourceType
        'MedicinalProductInteraction'
      end
    end
  end
  MedicinalProductInteraction = FHIR::R4::MedicinalProductInteraction
end