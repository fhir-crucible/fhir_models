module FHIR
  module R4
    class MedicinalProductPharmaceutical < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['identifier', 'route', 'target-species']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MedicinalProductPharmaceutical.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MedicinalProductPharmaceutical._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MedicinalProductPharmaceutical.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MedicinalProductPharmaceutical.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MedicinalProductPharmaceutical._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MedicinalProductPharmaceutical.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MedicinalProductPharmaceutical._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MedicinalProductPharmaceutical.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MedicinalProductPharmaceutical.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MedicinalProductPharmaceutical.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MedicinalProductPharmaceutical.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'MedicinalProductPharmaceutical.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'administrableDoseForm' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductPharmaceutical.administrableDoseForm', 'min'=>1, 'max'=>1},
        'unitOfPresentation' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductPharmaceutical.unitOfPresentation', 'min'=>0, 'max'=>1},
        'ingredient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductIngredient'], 'type'=>'Reference', 'path'=>'MedicinalProductPharmaceutical.ingredient', 'min'=>0, 'max'=>Float::INFINITY},
        'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceDefinition'], 'type'=>'Reference', 'path'=>'MedicinalProductPharmaceutical.device', 'min'=>0, 'max'=>Float::INFINITY},
        'characteristics' => {'type'=>'MedicinalProductPharmaceutical::Characteristics', 'path'=>'MedicinalProductPharmaceutical.characteristics', 'min'=>0, 'max'=>Float::INFINITY},
        'routeOfAdministration' => {'type'=>'MedicinalProductPharmaceutical::RouteOfAdministration', 'path'=>'MedicinalProductPharmaceutical.routeOfAdministration', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Characteristics < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Characteristics.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Characteristics._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Characteristics.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Characteristics.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'CodeableConcept', 'path'=>'Characteristics.code', 'min'=>1, 'max'=>1},
          'status' => {'type'=>'CodeableConcept', 'path'=>'Characteristics.status', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 CodeableConcept
        attr_accessor :status            # 0-1 CodeableConcept
      end

      class RouteOfAdministration < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'RouteOfAdministration.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'RouteOfAdministration._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'RouteOfAdministration.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'RouteOfAdministration.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'CodeableConcept', 'path'=>'RouteOfAdministration.code', 'min'=>1, 'max'=>1},
          'firstDose' => {'type'=>'Quantity', 'path'=>'RouteOfAdministration.firstDose', 'min'=>0, 'max'=>1},
          'maxSingleDose' => {'type'=>'Quantity', 'path'=>'RouteOfAdministration.maxSingleDose', 'min'=>0, 'max'=>1},
          'maxDosePerDay' => {'type'=>'Quantity', 'path'=>'RouteOfAdministration.maxDosePerDay', 'min'=>0, 'max'=>1},
          'maxDosePerTreatmentPeriod' => {'type'=>'Ratio', 'path'=>'RouteOfAdministration.maxDosePerTreatmentPeriod', 'min'=>0, 'max'=>1},
          'maxTreatmentPeriod' => {'type'=>'Duration', 'path'=>'RouteOfAdministration.maxTreatmentPeriod', 'min'=>0, 'max'=>1},
          'targetSpecies' => {'type'=>'MedicinalProductPharmaceutical::RouteOfAdministration::TargetSpecies', 'path'=>'RouteOfAdministration.targetSpecies', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class TargetSpecies < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'TargetSpecies.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'TargetSpecies._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'TargetSpecies.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'TargetSpecies.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'type'=>'CodeableConcept', 'path'=>'TargetSpecies.code', 'min'=>1, 'max'=>1},
            'withdrawalPeriod' => {'type'=>'MedicinalProductPharmaceutical::RouteOfAdministration::TargetSpecies::WithdrawalPeriod', 'path'=>'TargetSpecies.withdrawalPeriod', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class WithdrawalPeriod < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'WithdrawalPeriod.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'WithdrawalPeriod._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'WithdrawalPeriod.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'WithdrawalPeriod.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'tissue' => {'type'=>'CodeableConcept', 'path'=>'WithdrawalPeriod.tissue', 'min'=>1, 'max'=>1},
              'value' => {'type'=>'Quantity', 'path'=>'WithdrawalPeriod.value', 'min'=>1, 'max'=>1},
              'supportingInformation' => {'type'=>'string', 'path'=>'WithdrawalPeriod.supportingInformation', 'min'=>0, 'max'=>1},
              '_supportingInformation' => {'type'=>'Element', 'path'=>'WithdrawalPeriod._supportingInformation', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                     # 0-1 string
            attr_accessor :_id                    # 0-1 Element
            attr_accessor :extension              # 0-* [ Extension ]
            attr_accessor :modifierExtension      # 0-* [ Extension ]
            attr_accessor :tissue                 # 1-1 CodeableConcept
            attr_accessor :value                  # 1-1 Quantity
            attr_accessor :supportingInformation  # 0-1 string
            attr_accessor :_supportingInformation # 0-1 Element
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 CodeableConcept
          attr_accessor :withdrawalPeriod  # 0-* [ MedicinalProductPharmaceutical::RouteOfAdministration::TargetSpecies::WithdrawalPeriod ]
        end

        attr_accessor :id                        # 0-1 string
        attr_accessor :_id                       # 0-1 Element
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :code                      # 1-1 CodeableConcept
        attr_accessor :firstDose                 # 0-1 Quantity
        attr_accessor :maxSingleDose             # 0-1 Quantity
        attr_accessor :maxDosePerDay             # 0-1 Quantity
        attr_accessor :maxDosePerTreatmentPeriod # 0-1 Ratio
        attr_accessor :maxTreatmentPeriod        # 0-1 Duration
        attr_accessor :targetSpecies             # 0-* [ MedicinalProductPharmaceutical::RouteOfAdministration::TargetSpecies ]
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
      attr_accessor :identifier            # 0-* [ Identifier ]
      attr_accessor :administrableDoseForm # 1-1 CodeableConcept
      attr_accessor :unitOfPresentation    # 0-1 CodeableConcept
      attr_accessor :ingredient            # 0-* [ Reference(MedicinalProductIngredient) ]
      attr_accessor :device                # 0-* [ Reference(DeviceDefinition) ]
      attr_accessor :characteristics       # 0-* [ MedicinalProductPharmaceutical::Characteristics ]
      attr_accessor :routeOfAdministration # 1-* [ MedicinalProductPharmaceutical::RouteOfAdministration ]

      def resourceType
        'MedicinalProductPharmaceutical'
      end
    end
  end
  MedicinalProductPharmaceutical = FHIR::R4::MedicinalProductPharmaceutical
end