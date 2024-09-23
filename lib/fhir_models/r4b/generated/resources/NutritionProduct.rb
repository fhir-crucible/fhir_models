module FHIR
  module R4B
    class NutritionProduct < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['identifier', 'status']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'NutritionProduct.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'NutritionProduct._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'NutritionProduct.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'NutritionProduct.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'NutritionProduct._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'NutritionProduct.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'NutritionProduct._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'NutritionProduct.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'NutritionProduct.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'NutritionProduct.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'NutritionProduct.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/nutritionproduct-status'=>['active', 'inactive', 'entered-in-error']}, 'type'=>'code', 'path'=>'NutritionProduct.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/nutritionproduct-status'}},
        '_status' => {'type'=>'Element', 'path'=>'NutritionProduct._status', 'min'=>0, 'max'=>1},
        'category' => {'type'=>'CodeableConcept', 'path'=>'NutritionProduct.category', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/nutrition-product-category'}},
        'code' => {'type'=>'CodeableConcept', 'path'=>'NutritionProduct.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/edible-substance-type'}},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'NutritionProduct.manufacturer', 'min'=>0, 'max'=>Float::INFINITY},
        'nutrient' => {'type'=>'NutritionProduct::Nutrient', 'path'=>'NutritionProduct.nutrient', 'min'=>0, 'max'=>Float::INFINITY},
        'ingredient' => {'type'=>'NutritionProduct::Ingredient', 'path'=>'NutritionProduct.ingredient', 'min'=>0, 'max'=>Float::INFINITY},
        'knownAllergen' => {'type'=>'CodeableReference', 'path'=>'NutritionProduct.knownAllergen', 'min'=>0, 'max'=>Float::INFINITY},
        'productCharacteristic' => {'type'=>'NutritionProduct::ProductCharacteristic', 'path'=>'NutritionProduct.productCharacteristic', 'min'=>0, 'max'=>Float::INFINITY},
        'instance' => {'type'=>'NutritionProduct::Instance', 'path'=>'NutritionProduct.instance', 'min'=>0, 'max'=>1},
        'note' => {'type'=>'Annotation', 'path'=>'NutritionProduct.note', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Nutrient < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Nutrient.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Nutrient._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Nutrient.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Nutrient.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'item' => {'type'=>'CodeableReference', 'path'=>'Nutrient.item', 'min'=>0, 'max'=>1},
          'amount' => {'type'=>'Ratio', 'path'=>'Nutrient.amount', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :item              # 0-1 CodeableReference
        attr_accessor :amount            # 0-* [ Ratio ]
      end

      class Ingredient < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Ingredient.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Ingredient._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Ingredient.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Ingredient.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'item' => {'type'=>'CodeableReference', 'path'=>'Ingredient.item', 'min'=>1, 'max'=>1},
          'amount' => {'type'=>'Ratio', 'path'=>'Ingredient.amount', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :item              # 1-1 CodeableReference
        attr_accessor :amount            # 0-* [ Ratio ]
      end

      class ProductCharacteristic < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'string', 'Quantity', 'base64Binary', 'Attachment', 'boolean']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'ProductCharacteristic.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'ProductCharacteristic._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ProductCharacteristic.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'ProductCharacteristic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'ProductCharacteristic.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measurement-property'}},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ProductCharacteristic.value[x]', 'min'=>1, 'max'=>1},
          'valueString' => {'type'=>'string', 'path'=>'ProductCharacteristic.value[x]', 'min'=>1, 'max'=>1},
          '_valueString' => {'type'=>'Element', 'path'=>'ProductCharacteristic.value[x]', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'ProductCharacteristic.value[x]', 'min'=>1, 'max'=>1},
          'valueBase64Binary' => {'type'=>'base64Binary', 'path'=>'ProductCharacteristic.value[x]', 'min'=>1, 'max'=>1},
          '_valueBase64Binary' => {'type'=>'Element', 'path'=>'ProductCharacteristic.value[x]', 'min'=>0, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'ProductCharacteristic.value[x]', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'ProductCharacteristic.value[x]', 'min'=>1, 'max'=>1},
          '_valueBoolean' => {'type'=>'Element', 'path'=>'ProductCharacteristic.value[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :_id                  # 0-1 Element
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :type                 # 1-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
        attr_accessor :valueString          # 1-1 string
        attr_accessor :_valueString         # 0-1 Element
        attr_accessor :valueQuantity        # 1-1 Quantity
        attr_accessor :valueBase64Binary    # 1-1 base64Binary
        attr_accessor :_valueBase64Binary   # 0-1 Element
        attr_accessor :valueAttachment      # 1-1 Attachment
        attr_accessor :valueBoolean         # 1-1 boolean
        attr_accessor :_valueBoolean        # 0-1 Element
      end

      class Instance < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Instance.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Instance._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Instance.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Instance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'quantity' => {'type'=>'Quantity', 'path'=>'Instance.quantity', 'min'=>0, 'max'=>1},
          'identifier' => {'type'=>'Identifier', 'path'=>'Instance.identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'lotNumber' => {'type'=>'string', 'path'=>'Instance.lotNumber', 'min'=>0, 'max'=>1},
          '_lotNumber' => {'type'=>'Element', 'path'=>'Instance._lotNumber', 'min'=>0, 'max'=>1},
          'expiry' => {'type'=>'dateTime', 'path'=>'Instance.expiry', 'min'=>0, 'max'=>1},
          '_expiry' => {'type'=>'Element', 'path'=>'Instance._expiry', 'min'=>0, 'max'=>1},
          'useBy' => {'type'=>'dateTime', 'path'=>'Instance.useBy', 'min'=>0, 'max'=>1},
          '_useBy' => {'type'=>'Element', 'path'=>'Instance._useBy', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :quantity          # 0-1 Quantity
        attr_accessor :identifier        # 0-* [ Identifier ]
        attr_accessor :lotNumber         # 0-1 string
        attr_accessor :_lotNumber        # 0-1 Element
        attr_accessor :expiry            # 0-1 dateTime
        attr_accessor :_expiry           # 0-1 Element
        attr_accessor :useBy             # 0-1 dateTime
        attr_accessor :_useBy            # 0-1 Element
      end

      attr_accessor :id                    # 0-1 id
      attr_accessor :_id                   # 0-1 Element
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :_implicitRules        # 0-1 Element
      attr_accessor :language              # 0-1 code
      attr_accessor :_language             # 0-1 Element
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :status                # 1-1 code
      attr_accessor :_status               # 0-1 Element
      attr_accessor :category              # 0-* [ CodeableConcept ]
      attr_accessor :code                  # 0-1 CodeableConcept
      attr_accessor :manufacturer          # 0-* [ Reference(Organization) ]
      attr_accessor :nutrient              # 0-* [ NutritionProduct::Nutrient ]
      attr_accessor :ingredient            # 0-* [ NutritionProduct::Ingredient ]
      attr_accessor :knownAllergen         # 0-* [ CodeableReference ]
      attr_accessor :productCharacteristic # 0-* [ NutritionProduct::ProductCharacteristic ]
      attr_accessor :instance              # 0-1 NutritionProduct::Instance
      attr_accessor :note                  # 0-* [ Annotation ]

      def resourceType
        'NutritionProduct'
      end
    end
  end
end