module FHIR
  module R4
    class MedicinalProductManufactured < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MedicinalProductManufactured.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MedicinalProductManufactured._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MedicinalProductManufactured.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MedicinalProductManufactured.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MedicinalProductManufactured._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MedicinalProductManufactured.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MedicinalProductManufactured._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MedicinalProductManufactured.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MedicinalProductManufactured.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MedicinalProductManufactured.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MedicinalProductManufactured.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'manufacturedDoseForm' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductManufactured.manufacturedDoseForm', 'min'=>1, 'max'=>1},
        'unitOfPresentation' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductManufactured.unitOfPresentation', 'min'=>0, 'max'=>1},
        'quantity' => {'type'=>'Quantity', 'path'=>'MedicinalProductManufactured.quantity', 'min'=>1, 'max'=>1},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'MedicinalProductManufactured.manufacturer', 'min'=>0, 'max'=>Float::INFINITY},
        'ingredient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductIngredient'], 'type'=>'Reference', 'path'=>'MedicinalProductManufactured.ingredient', 'min'=>0, 'max'=>Float::INFINITY},
        'physicalCharacteristics' => {'type'=>'ProdCharacteristic', 'path'=>'MedicinalProductManufactured.physicalCharacteristics', 'min'=>0, 'max'=>1},
        'otherCharacteristics' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductManufactured.otherCharacteristics', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                      # 0-1 id
      attr_accessor :_id                     # 0-1 Element
      attr_accessor :meta                    # 0-1 Meta
      attr_accessor :implicitRules           # 0-1 uri
      attr_accessor :_implicitRules          # 0-1 Element
      attr_accessor :language                # 0-1 code
      attr_accessor :_language               # 0-1 Element
      attr_accessor :text                    # 0-1 Narrative
      attr_accessor :contained               # 0-* [ Resource ]
      attr_accessor :extension               # 0-* [ Extension ]
      attr_accessor :modifierExtension       # 0-* [ Extension ]
      attr_accessor :manufacturedDoseForm    # 1-1 CodeableConcept
      attr_accessor :unitOfPresentation      # 0-1 CodeableConcept
      attr_accessor :quantity                # 1-1 Quantity
      attr_accessor :manufacturer            # 0-* [ Reference(Organization) ]
      attr_accessor :ingredient              # 0-* [ Reference(MedicinalProductIngredient) ]
      attr_accessor :physicalCharacteristics # 0-1 ProdCharacteristic
      attr_accessor :otherCharacteristics    # 0-* [ CodeableConcept ]

      def resourceType
        'MedicinalProductManufactured'
      end
    end
  end
  MedicinalProductManufactured = FHIR::R4::MedicinalProductManufactured
end