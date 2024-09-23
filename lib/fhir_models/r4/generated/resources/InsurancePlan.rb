module FHIR
  module R4
    class InsurancePlan < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'administered-by', 'endpoint', 'identifier', 'name', 'owned-by', 'phonetic', 'status', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'InsurancePlan.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'InsurancePlan._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'InsurancePlan.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'InsurancePlan.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'InsurancePlan._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'InsurancePlan.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'InsurancePlan._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'InsurancePlan.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'InsurancePlan.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'InsurancePlan.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'InsurancePlan.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'InsurancePlan.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'InsurancePlan.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'InsurancePlan._status', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/insurance-plan-type'=>['medical', 'dental', 'mental', 'subst-ab', 'vision', 'Drug', 'short-term', 'long-term', 'hospice', 'home']}, 'type'=>'CodeableConcept', 'path'=>'InsurancePlan.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/insuranceplan-type'}},
        'name' => {'type'=>'string', 'path'=>'InsurancePlan.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'InsurancePlan._name', 'min'=>0, 'max'=>1},
        'alias' => {'type'=>'string', 'path'=>'InsurancePlan.alias', 'min'=>0, 'max'=>Float::INFINITY},
        '_alias' => {'type'=>'Element', 'path'=>'InsurancePlan._alias', 'min'=>0, 'max'=>Float::INFINITY},
        'period' => {'type'=>'Period', 'path'=>'InsurancePlan.period', 'min'=>0, 'max'=>1},
        'ownedBy' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'InsurancePlan.ownedBy', 'min'=>0, 'max'=>1},
        'administeredBy' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'InsurancePlan.administeredBy', 'min'=>0, 'max'=>1},
        'coverageArea' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'InsurancePlan.coverageArea', 'min'=>0, 'max'=>Float::INFINITY},
        'contact' => {'type'=>'InsurancePlan::Contact', 'path'=>'InsurancePlan.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'type'=>'Reference', 'path'=>'InsurancePlan.endpoint', 'min'=>0, 'max'=>Float::INFINITY},
        'network' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'InsurancePlan.network', 'min'=>0, 'max'=>Float::INFINITY},
        'coverage' => {'type'=>'InsurancePlan::Coverage', 'path'=>'InsurancePlan.coverage', 'min'=>0, 'max'=>Float::INFINITY},
        'plan' => {'type'=>'InsurancePlan::Plan', 'path'=>'InsurancePlan.plan', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Contact < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Contact.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Contact._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Contact.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Contact.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'purpose' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contactentity-type'=>['BILL', 'ADMIN', 'HR', 'PAYOR', 'PATINF', 'PRESS']}, 'type'=>'CodeableConcept', 'path'=>'Contact.purpose', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contactentity-type'}},
          'name' => {'type'=>'HumanName', 'path'=>'Contact.name', 'min'=>0, 'max'=>1},
          'telecom' => {'type'=>'ContactPoint', 'path'=>'Contact.telecom', 'min'=>0, 'max'=>Float::INFINITY},
          'address' => {'type'=>'Address', 'path'=>'Contact.address', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :purpose           # 0-1 CodeableConcept
        attr_accessor :name              # 0-1 HumanName
        attr_accessor :telecom           # 0-* [ ContactPoint ]
        attr_accessor :address           # 0-1 Address
      end

      class Coverage < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Coverage.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Coverage._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Coverage.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Coverage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Coverage.type', 'min'=>1, 'max'=>1},
          'network' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Coverage.network', 'min'=>0, 'max'=>Float::INFINITY},
          'benefit' => {'type'=>'InsurancePlan::Coverage::Benefit', 'path'=>'Coverage.benefit', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Benefit < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Benefit.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Benefit._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Benefit.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Benefit.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'type'=>'CodeableConcept', 'path'=>'Benefit.type', 'min'=>1, 'max'=>1},
            'requirement' => {'type'=>'string', 'path'=>'Benefit.requirement', 'min'=>0, 'max'=>1},
            '_requirement' => {'type'=>'Element', 'path'=>'Benefit._requirement', 'min'=>0, 'max'=>1},
            'limit' => {'type'=>'InsurancePlan::Coverage::Benefit::Limit', 'path'=>'Benefit.limit', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Limit < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Limit.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Limit._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Limit.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Limit.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'value' => {'type'=>'Quantity', 'path'=>'Limit.value', 'min'=>0, 'max'=>1},
              'code' => {'type'=>'CodeableConcept', 'path'=>'Limit.code', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :value             # 0-1 Quantity
            attr_accessor :code              # 0-1 CodeableConcept
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 1-1 CodeableConcept
          attr_accessor :requirement       # 0-1 string
          attr_accessor :_requirement      # 0-1 Element
          attr_accessor :limit             # 0-* [ InsurancePlan::Coverage::Benefit::Limit ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :network           # 0-* [ Reference(Organization) ]
        attr_accessor :benefit           # 1-* [ InsurancePlan::Coverage::Benefit ]
      end

      class Plan < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Plan.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Plan._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Plan.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Plan.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Plan.identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Plan.type', 'min'=>0, 'max'=>1},
          'coverageArea' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Plan.coverageArea', 'min'=>0, 'max'=>Float::INFINITY},
          'network' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Plan.network', 'min'=>0, 'max'=>Float::INFINITY},
          'generalCost' => {'type'=>'InsurancePlan::Plan::GeneralCost', 'path'=>'Plan.generalCost', 'min'=>0, 'max'=>Float::INFINITY},
          'specificCost' => {'type'=>'InsurancePlan::Plan::SpecificCost', 'path'=>'Plan.specificCost', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class GeneralCost < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'GeneralCost.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'GeneralCost._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'GeneralCost.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'GeneralCost.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'type'=>'CodeableConcept', 'path'=>'GeneralCost.type', 'min'=>0, 'max'=>1},
            'groupSize' => {'type'=>'positiveInt', 'path'=>'GeneralCost.groupSize', 'min'=>0, 'max'=>1},
            '_groupSize' => {'type'=>'Element', 'path'=>'GeneralCost._groupSize', 'min'=>0, 'max'=>1},
            'cost' => {'type'=>'Money', 'path'=>'GeneralCost.cost', 'min'=>0, 'max'=>1},
            'comment' => {'type'=>'string', 'path'=>'GeneralCost.comment', 'min'=>0, 'max'=>1},
            '_comment' => {'type'=>'Element', 'path'=>'GeneralCost._comment', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :groupSize         # 0-1 positiveInt
          attr_accessor :_groupSize        # 0-1 Element
          attr_accessor :cost              # 0-1 Money
          attr_accessor :comment           # 0-1 string
          attr_accessor :_comment          # 0-1 Element
        end

        class SpecificCost < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'SpecificCost.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'SpecificCost._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'SpecificCost.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'SpecificCost.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'category' => {'type'=>'CodeableConcept', 'path'=>'SpecificCost.category', 'min'=>1, 'max'=>1},
            'benefit' => {'type'=>'InsurancePlan::Plan::SpecificCost::Benefit', 'path'=>'SpecificCost.benefit', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Benefit < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Benefit.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Benefit._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Benefit.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Benefit.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'type'=>'CodeableConcept', 'path'=>'Benefit.type', 'min'=>1, 'max'=>1},
              'cost' => {'type'=>'InsurancePlan::Plan::SpecificCost::Benefit::Cost', 'path'=>'Benefit.cost', 'min'=>0, 'max'=>Float::INFINITY}
            }

            class Cost < FHIR::Model
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
                'id' => {'type'=>'string', 'path'=>'Cost.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'Cost._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'Cost.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'Cost.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'type' => {'type'=>'CodeableConcept', 'path'=>'Cost.type', 'min'=>1, 'max'=>1},
                'applicability' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/applicability'=>['in-network', 'out-of-network', 'other']}, 'type'=>'CodeableConcept', 'path'=>'Cost.applicability', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/insuranceplan-applicability'}},
                'qualifiers' => {'type'=>'CodeableConcept', 'path'=>'Cost.qualifiers', 'min'=>0, 'max'=>Float::INFINITY},
                'value' => {'type'=>'Quantity', 'path'=>'Cost.value', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :type              # 1-1 CodeableConcept
              attr_accessor :applicability     # 0-1 CodeableConcept
              attr_accessor :qualifiers        # 0-* [ CodeableConcept ]
              attr_accessor :value             # 0-1 Quantity
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :type              # 1-1 CodeableConcept
            attr_accessor :cost              # 0-* [ InsurancePlan::Plan::SpecificCost::Benefit::Cost ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :category          # 1-1 CodeableConcept
          attr_accessor :benefit           # 0-* [ InsurancePlan::Plan::SpecificCost::Benefit ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-* [ Identifier ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :coverageArea      # 0-* [ Reference(Location) ]
        attr_accessor :network           # 0-* [ Reference(Organization) ]
        attr_accessor :generalCost       # 0-* [ InsurancePlan::Plan::GeneralCost ]
        attr_accessor :specificCost      # 0-* [ InsurancePlan::Plan::SpecificCost ]
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
      attr_accessor :status            # 0-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :type              # 0-* [ CodeableConcept ]
      attr_accessor :name              # 0-1 string
      attr_accessor :_name             # 0-1 Element
      attr_accessor :alias             # 0-* [ string ]
      attr_accessor :_alias            # 0-* [ Element ]
      attr_accessor :period            # 0-1 Period
      attr_accessor :ownedBy           # 0-1 Reference(Organization)
      attr_accessor :administeredBy    # 0-1 Reference(Organization)
      attr_accessor :coverageArea      # 0-* [ Reference(Location) ]
      attr_accessor :contact           # 0-* [ InsurancePlan::Contact ]
      attr_accessor :endpoint          # 0-* [ Reference(Endpoint) ]
      attr_accessor :network           # 0-* [ Reference(Organization) ]
      attr_accessor :coverage          # 0-* [ InsurancePlan::Coverage ]
      attr_accessor :plan              # 0-* [ InsurancePlan::Plan ]

      def resourceType
        'InsurancePlan'
      end
    end
  end
  InsurancePlan = FHIR::R4::InsurancePlan
end