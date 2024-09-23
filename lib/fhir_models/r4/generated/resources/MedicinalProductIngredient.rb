module FHIR
  module R4
    class MedicinalProductIngredient < FHIR::Model
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
        'id' => {'type'=>'id', 'path'=>'MedicinalProductIngredient.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MedicinalProductIngredient._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MedicinalProductIngredient.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MedicinalProductIngredient.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MedicinalProductIngredient._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MedicinalProductIngredient.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MedicinalProductIngredient._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MedicinalProductIngredient.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MedicinalProductIngredient.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MedicinalProductIngredient.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MedicinalProductIngredient.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'MedicinalProductIngredient.identifier', 'min'=>0, 'max'=>1},
        'role' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductIngredient.role', 'min'=>1, 'max'=>1},
        'allergenicIndicator' => {'type'=>'boolean', 'path'=>'MedicinalProductIngredient.allergenicIndicator', 'min'=>0, 'max'=>1},
        '_allergenicIndicator' => {'type'=>'Element', 'path'=>'MedicinalProductIngredient._allergenicIndicator', 'min'=>0, 'max'=>1},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'MedicinalProductIngredient.manufacturer', 'min'=>0, 'max'=>Float::INFINITY},
        'specifiedSubstance' => {'type'=>'MedicinalProductIngredient::SpecifiedSubstance', 'path'=>'MedicinalProductIngredient.specifiedSubstance', 'min'=>0, 'max'=>Float::INFINITY},
        'substance' => {'type'=>'MedicinalProductIngredient::Substance', 'path'=>'MedicinalProductIngredient.substance', 'min'=>0, 'max'=>1}
      }

      class SpecifiedSubstance < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'SpecifiedSubstance.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'SpecifiedSubstance._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'SpecifiedSubstance.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'SpecifiedSubstance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'CodeableConcept', 'path'=>'SpecifiedSubstance.code', 'min'=>1, 'max'=>1},
          'group' => {'type'=>'CodeableConcept', 'path'=>'SpecifiedSubstance.group', 'min'=>1, 'max'=>1},
          'confidentiality' => {'type'=>'CodeableConcept', 'path'=>'SpecifiedSubstance.confidentiality', 'min'=>0, 'max'=>1},
          'strength' => {'type'=>'MedicinalProductIngredient::SpecifiedSubstance::Strength', 'path'=>'SpecifiedSubstance.strength', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Strength < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Strength.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Strength._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Strength.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Strength.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'presentation' => {'type'=>'Ratio', 'path'=>'Strength.presentation', 'min'=>1, 'max'=>1},
            'presentationLowLimit' => {'type'=>'Ratio', 'path'=>'Strength.presentationLowLimit', 'min'=>0, 'max'=>1},
            'concentration' => {'type'=>'Ratio', 'path'=>'Strength.concentration', 'min'=>0, 'max'=>1},
            'concentrationLowLimit' => {'type'=>'Ratio', 'path'=>'Strength.concentrationLowLimit', 'min'=>0, 'max'=>1},
            'measurementPoint' => {'type'=>'string', 'path'=>'Strength.measurementPoint', 'min'=>0, 'max'=>1},
            '_measurementPoint' => {'type'=>'Element', 'path'=>'Strength._measurementPoint', 'min'=>0, 'max'=>1},
            'country' => {'type'=>'CodeableConcept', 'path'=>'Strength.country', 'min'=>0, 'max'=>Float::INFINITY},
            'referenceStrength' => {'type'=>'MedicinalProductIngredient::SpecifiedSubstance::Strength::ReferenceStrength', 'path'=>'Strength.referenceStrength', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class ReferenceStrength < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'ReferenceStrength.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'ReferenceStrength._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'ReferenceStrength.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'ReferenceStrength.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'substance' => {'type'=>'CodeableConcept', 'path'=>'ReferenceStrength.substance', 'min'=>0, 'max'=>1},
              'strength' => {'type'=>'Ratio', 'path'=>'ReferenceStrength.strength', 'min'=>1, 'max'=>1},
              'strengthLowLimit' => {'type'=>'Ratio', 'path'=>'ReferenceStrength.strengthLowLimit', 'min'=>0, 'max'=>1},
              'measurementPoint' => {'type'=>'string', 'path'=>'ReferenceStrength.measurementPoint', 'min'=>0, 'max'=>1},
              '_measurementPoint' => {'type'=>'Element', 'path'=>'ReferenceStrength._measurementPoint', 'min'=>0, 'max'=>1},
              'country' => {'type'=>'CodeableConcept', 'path'=>'ReferenceStrength.country', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :substance         # 0-1 CodeableConcept
            attr_accessor :strength          # 1-1 Ratio
            attr_accessor :strengthLowLimit  # 0-1 Ratio
            attr_accessor :measurementPoint  # 0-1 string
            attr_accessor :_measurementPoint # 0-1 Element
            attr_accessor :country           # 0-* [ CodeableConcept ]
          end

          attr_accessor :id                    # 0-1 string
          attr_accessor :_id                   # 0-1 Element
          attr_accessor :extension             # 0-* [ Extension ]
          attr_accessor :modifierExtension     # 0-* [ Extension ]
          attr_accessor :presentation          # 1-1 Ratio
          attr_accessor :presentationLowLimit  # 0-1 Ratio
          attr_accessor :concentration         # 0-1 Ratio
          attr_accessor :concentrationLowLimit # 0-1 Ratio
          attr_accessor :measurementPoint      # 0-1 string
          attr_accessor :_measurementPoint     # 0-1 Element
          attr_accessor :country               # 0-* [ CodeableConcept ]
          attr_accessor :referenceStrength     # 0-* [ MedicinalProductIngredient::SpecifiedSubstance::Strength::ReferenceStrength ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 CodeableConcept
        attr_accessor :group             # 1-1 CodeableConcept
        attr_accessor :confidentiality   # 0-1 CodeableConcept
        attr_accessor :strength          # 0-* [ MedicinalProductIngredient::SpecifiedSubstance::Strength ]
      end

      class Substance < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Substance.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Substance._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Substance.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Substance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'CodeableConcept', 'path'=>'Substance.code', 'min'=>1, 'max'=>1},
          'strength' => {'type'=>'MedicinalProductIngredient::SpecifiedSubstance::Strength', 'path'=>'Substance.strength', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 CodeableConcept
        attr_accessor :strength          # 0-* [ MedicinalProductIngredient::SpecifiedSubstance::Strength ]
      end

      attr_accessor :id                   # 0-1 id
      attr_accessor :_id                  # 0-1 Element
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :_implicitRules       # 0-1 Element
      attr_accessor :language             # 0-1 code
      attr_accessor :_language            # 0-1 Element
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-1 Identifier
      attr_accessor :role                 # 1-1 CodeableConcept
      attr_accessor :allergenicIndicator  # 0-1 boolean
      attr_accessor :_allergenicIndicator # 0-1 Element
      attr_accessor :manufacturer         # 0-* [ Reference(Organization) ]
      attr_accessor :specifiedSubstance   # 0-* [ MedicinalProductIngredient::SpecifiedSubstance ]
      attr_accessor :substance            # 0-1 MedicinalProductIngredient::Substance

      def resourceType
        'MedicinalProductIngredient'
      end
    end
  end
  MedicinalProductIngredient = FHIR::R4::MedicinalProductIngredient
end