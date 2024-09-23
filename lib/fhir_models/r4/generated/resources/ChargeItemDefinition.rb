module FHIR
  module R4
    class ChargeItemDefinition < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'description', 'effective', 'identifier', 'jurisdiction', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ChargeItemDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ChargeItemDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ChargeItemDefinition.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'ChargeItemDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'ChargeItemDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ChargeItemDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ChargeItemDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ChargeItemDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'ChargeItemDefinition.url', 'min'=>1, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'ChargeItemDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'ChargeItemDefinition.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._version', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'ChargeItemDefinition.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._title', 'min'=>0, 'max'=>1},
        'derivedFromUri' => {'type'=>'uri', 'path'=>'ChargeItemDefinition.derivedFromUri', 'min'=>0, 'max'=>Float::INFINITY},
        '_derivedFromUri' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._derivedFromUri', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type'=>'canonical', 'path'=>'ChargeItemDefinition.partOf', 'min'=>0, 'max'=>Float::INFINITY},
        '_partOf' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._partOf', 'min'=>0, 'max'=>Float::INFINITY},
        'replaces' => {'type'=>'canonical', 'path'=>'ChargeItemDefinition.replaces', 'min'=>0, 'max'=>Float::INFINITY},
        '_replaces' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._replaces', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'ChargeItemDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'ChargeItemDefinition.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'ChargeItemDefinition.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'ChargeItemDefinition.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'ChargeItemDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'ChargeItemDefinition.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'ChargeItemDefinition.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'ChargeItemDefinition.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'type'=>'markdown', 'path'=>'ChargeItemDefinition.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._copyright', 'min'=>0, 'max'=>1},
        'approvalDate' => {'type'=>'date', 'path'=>'ChargeItemDefinition.approvalDate', 'min'=>0, 'max'=>1},
        '_approvalDate' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._approvalDate', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'type'=>'date', 'path'=>'ChargeItemDefinition.lastReviewDate', 'min'=>0, 'max'=>1},
        '_lastReviewDate' => {'type'=>'Element', 'path'=>'ChargeItemDefinition._lastReviewDate', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'ChargeItemDefinition.effectivePeriod', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/chargeitem-billingcodes'=>['1100', '1210', '1320']}, 'type'=>'CodeableConcept', 'path'=>'ChargeItemDefinition.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/chargeitem-billingcodes'}},
        'instance' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'ChargeItemDefinition.instance', 'min'=>0, 'max'=>Float::INFINITY},
        'applicability' => {'type'=>'ChargeItemDefinition::Applicability', 'path'=>'ChargeItemDefinition.applicability', 'min'=>0, 'max'=>Float::INFINITY},
        'propertyGroup' => {'type'=>'ChargeItemDefinition::PropertyGroup', 'path'=>'ChargeItemDefinition.propertyGroup', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Applicability < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Applicability.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Applicability._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Applicability.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Applicability.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Applicability.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Applicability._description', 'min'=>0, 'max'=>1},
          'language' => {'type'=>'string', 'path'=>'Applicability.language', 'min'=>0, 'max'=>1},
          '_language' => {'type'=>'Element', 'path'=>'Applicability._language', 'min'=>0, 'max'=>1},
          'expression' => {'type'=>'string', 'path'=>'Applicability.expression', 'min'=>0, 'max'=>1},
          '_expression' => {'type'=>'Element', 'path'=>'Applicability._expression', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 0-1 string
        attr_accessor :_description      # 0-1 Element
        attr_accessor :language          # 0-1 string
        attr_accessor :_language         # 0-1 Element
        attr_accessor :expression        # 0-1 string
        attr_accessor :_expression       # 0-1 Element
      end

      class PropertyGroup < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'PropertyGroup.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'PropertyGroup._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'PropertyGroup.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'PropertyGroup.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'applicability' => {'type'=>'ChargeItemDefinition::Applicability', 'path'=>'PropertyGroup.applicability', 'min'=>0, 'max'=>Float::INFINITY},
          'priceComponent' => {'type'=>'ChargeItemDefinition::PropertyGroup::PriceComponent', 'path'=>'PropertyGroup.priceComponent', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class PriceComponent < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'PriceComponent.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'PriceComponent._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'PriceComponent.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'PriceComponent.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/invoice-priceComponentType'=>['base', 'surcharge', 'deduction', 'discount', 'tax', 'informational']}, 'type'=>'code', 'path'=>'PriceComponent.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'}},
            '_type' => {'type'=>'Element', 'path'=>'PriceComponent._type', 'min'=>0, 'max'=>1},
            'code' => {'type'=>'CodeableConcept', 'path'=>'PriceComponent.code', 'min'=>0, 'max'=>1},
            'factor' => {'type'=>'decimal', 'path'=>'PriceComponent.factor', 'min'=>0, 'max'=>1},
            '_factor' => {'type'=>'Element', 'path'=>'PriceComponent._factor', 'min'=>0, 'max'=>1},
            'amount' => {'type'=>'Money', 'path'=>'PriceComponent.amount', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 1-1 code
          attr_accessor :_type             # 0-1 Element
          attr_accessor :code              # 0-1 CodeableConcept
          attr_accessor :factor            # 0-1 decimal
          attr_accessor :_factor           # 0-1 Element
          attr_accessor :amount            # 0-1 Money
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :applicability     # 0-* [ ChargeItemDefinition::Applicability ]
        attr_accessor :priceComponent    # 0-* [ ChargeItemDefinition::PropertyGroup::PriceComponent ]
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
      attr_accessor :url               # 1-1 uri
      attr_accessor :_url              # 0-1 Element
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :version           # 0-1 string
      attr_accessor :_version          # 0-1 Element
      attr_accessor :title             # 0-1 string
      attr_accessor :_title            # 0-1 Element
      attr_accessor :derivedFromUri    # 0-* [ uri ]
      attr_accessor :_derivedFromUri   # 0-* [ Element ]
      attr_accessor :partOf            # 0-* [ canonical ]
      attr_accessor :_partOf           # 0-* [ Element ]
      attr_accessor :replaces          # 0-* [ canonical ]
      attr_accessor :_replaces         # 0-* [ Element ]
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :_experimental     # 0-1 Element
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :_date             # 0-1 Element
      attr_accessor :publisher         # 0-1 string
      attr_accessor :_publisher        # 0-1 Element
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :_description      # 0-1 Element
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :approvalDate      # 0-1 date
      attr_accessor :_approvalDate     # 0-1 Element
      attr_accessor :lastReviewDate    # 0-1 date
      attr_accessor :_lastReviewDate   # 0-1 Element
      attr_accessor :effectivePeriod   # 0-1 Period
      attr_accessor :code              # 0-1 CodeableConcept
      attr_accessor :instance          # 0-* [ Reference(Medication|Substance|Device) ]
      attr_accessor :applicability     # 0-* [ ChargeItemDefinition::Applicability ]
      attr_accessor :propertyGroup     # 0-* [ ChargeItemDefinition::PropertyGroup ]

      def resourceType
        'ChargeItemDefinition'
      end
    end
  end
  ChargeItemDefinition = FHIR::R4::ChargeItemDefinition
end