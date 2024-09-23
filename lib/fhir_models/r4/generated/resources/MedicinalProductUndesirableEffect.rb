module FHIR
  module R4
    class MedicinalProductUndesirableEffect < FHIR::Model
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
        'id' => {'type'=>'id', 'path'=>'MedicinalProductUndesirableEffect.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MedicinalProductUndesirableEffect._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MedicinalProductUndesirableEffect.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MedicinalProductUndesirableEffect.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MedicinalProductUndesirableEffect._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MedicinalProductUndesirableEffect.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MedicinalProductUndesirableEffect._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MedicinalProductUndesirableEffect.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MedicinalProductUndesirableEffect.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MedicinalProductUndesirableEffect.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MedicinalProductUndesirableEffect.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct', 'http://hl7.org/fhir/StructureDefinition/Medication'], 'type'=>'Reference', 'path'=>'MedicinalProductUndesirableEffect.subject', 'min'=>0, 'max'=>Float::INFINITY},
        'symptomConditionEffect' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductUndesirableEffect.symptomConditionEffect', 'min'=>0, 'max'=>1},
        'classification' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductUndesirableEffect.classification', 'min'=>0, 'max'=>1},
        'frequencyOfOccurrence' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductUndesirableEffect.frequencyOfOccurrence', 'min'=>0, 'max'=>1},
        'population' => {'type'=>'Population', 'path'=>'MedicinalProductUndesirableEffect.population', 'min'=>0, 'max'=>Float::INFINITY}
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
      attr_accessor :subject                # 0-* [ Reference(MedicinalProduct|Medication) ]
      attr_accessor :symptomConditionEffect # 0-1 CodeableConcept
      attr_accessor :classification         # 0-1 CodeableConcept
      attr_accessor :frequencyOfOccurrence  # 0-1 CodeableConcept
      attr_accessor :population             # 0-* [ Population ]

      def resourceType
        'MedicinalProductUndesirableEffect'
      end
    end
  end
  MedicinalProductUndesirableEffect = FHIR::R4::MedicinalProductUndesirableEffect
end