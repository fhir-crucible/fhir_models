module FHIR
  module R4
    class MedicinalProduct < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['identifier', 'name', 'name-language']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MedicinalProduct.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MedicinalProduct._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MedicinalProduct.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MedicinalProduct.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MedicinalProduct._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MedicinalProduct.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MedicinalProduct._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MedicinalProduct.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MedicinalProduct.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MedicinalProduct.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MedicinalProduct.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'MedicinalProduct.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProduct.type', 'min'=>0, 'max'=>1},
        'domain' => {'type'=>'Coding', 'path'=>'MedicinalProduct.domain', 'min'=>0, 'max'=>1},
        'combinedPharmaceuticalDoseForm' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProduct.combinedPharmaceuticalDoseForm', 'min'=>0, 'max'=>1},
        'legalStatusOfSupply' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProduct.legalStatusOfSupply', 'min'=>0, 'max'=>1},
        'additionalMonitoringIndicator' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProduct.additionalMonitoringIndicator', 'min'=>0, 'max'=>1},
        'specialMeasures' => {'type'=>'string', 'path'=>'MedicinalProduct.specialMeasures', 'min'=>0, 'max'=>Float::INFINITY},
        '_specialMeasures' => {'type'=>'Element', 'path'=>'MedicinalProduct._specialMeasures', 'min'=>0, 'max'=>Float::INFINITY},
        'paediatricUseIndicator' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProduct.paediatricUseIndicator', 'min'=>0, 'max'=>1},
        'productClassification' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProduct.productClassification', 'min'=>0, 'max'=>Float::INFINITY},
        'marketingStatus' => {'type'=>'MarketingStatus', 'path'=>'MedicinalProduct.marketingStatus', 'min'=>0, 'max'=>Float::INFINITY},
        'pharmaceuticalProduct' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductPharmaceutical'], 'type'=>'Reference', 'path'=>'MedicinalProduct.pharmaceuticalProduct', 'min'=>0, 'max'=>Float::INFINITY},
        'packagedMedicinalProduct' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged'], 'type'=>'Reference', 'path'=>'MedicinalProduct.packagedMedicinalProduct', 'min'=>0, 'max'=>Float::INFINITY},
        'attachedDocument' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'MedicinalProduct.attachedDocument', 'min'=>0, 'max'=>Float::INFINITY},
        'masterFile' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'MedicinalProduct.masterFile', 'min'=>0, 'max'=>Float::INFINITY},
        'contact' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'MedicinalProduct.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'clinicalTrial' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ResearchStudy'], 'type'=>'Reference', 'path'=>'MedicinalProduct.clinicalTrial', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'MedicinalProduct::Name', 'path'=>'MedicinalProduct.name', 'min'=>1, 'max'=>Float::INFINITY},
        'crossReference' => {'type'=>'Identifier', 'path'=>'MedicinalProduct.crossReference', 'min'=>0, 'max'=>Float::INFINITY},
        'manufacturingBusinessOperation' => {'type'=>'MedicinalProduct::ManufacturingBusinessOperation', 'path'=>'MedicinalProduct.manufacturingBusinessOperation', 'min'=>0, 'max'=>Float::INFINITY},
        'specialDesignation' => {'type'=>'MedicinalProduct::SpecialDesignation', 'path'=>'MedicinalProduct.specialDesignation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Name < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Name.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Name._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Name.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Name.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'productName' => {'type'=>'string', 'path'=>'Name.productName', 'min'=>1, 'max'=>1},
          '_productName' => {'type'=>'Element', 'path'=>'Name._productName', 'min'=>0, 'max'=>1},
          'namePart' => {'type'=>'MedicinalProduct::Name::NamePart', 'path'=>'Name.namePart', 'min'=>0, 'max'=>Float::INFINITY},
          'countryLanguage' => {'type'=>'MedicinalProduct::Name::CountryLanguage', 'path'=>'Name.countryLanguage', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class NamePart < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'NamePart.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'NamePart._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'NamePart.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'NamePart.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'part' => {'type'=>'string', 'path'=>'NamePart.part', 'min'=>1, 'max'=>1},
            '_part' => {'type'=>'Element', 'path'=>'NamePart._part', 'min'=>0, 'max'=>1},
            'type' => {'type'=>'Coding', 'path'=>'NamePart.type', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :part              # 1-1 string
          attr_accessor :_part             # 0-1 Element
          attr_accessor :type              # 1-1 Coding
        end

        class CountryLanguage < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'CountryLanguage.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'CountryLanguage._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'CountryLanguage.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'CountryLanguage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'country' => {'type'=>'CodeableConcept', 'path'=>'CountryLanguage.country', 'min'=>1, 'max'=>1},
            'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'CountryLanguage.jurisdiction', 'min'=>0, 'max'=>1},
            'language' => {'type'=>'CodeableConcept', 'path'=>'CountryLanguage.language', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :country           # 1-1 CodeableConcept
          attr_accessor :jurisdiction      # 0-1 CodeableConcept
          attr_accessor :language          # 1-1 CodeableConcept
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :productName       # 1-1 string
        attr_accessor :_productName      # 0-1 Element
        attr_accessor :namePart          # 0-* [ MedicinalProduct::Name::NamePart ]
        attr_accessor :countryLanguage   # 0-* [ MedicinalProduct::Name::CountryLanguage ]
      end

      class ManufacturingBusinessOperation < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'ManufacturingBusinessOperation.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'ManufacturingBusinessOperation._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ManufacturingBusinessOperation.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'ManufacturingBusinessOperation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'operationType' => {'type'=>'CodeableConcept', 'path'=>'ManufacturingBusinessOperation.operationType', 'min'=>0, 'max'=>1},
          'authorisationReferenceNumber' => {'type'=>'Identifier', 'path'=>'ManufacturingBusinessOperation.authorisationReferenceNumber', 'min'=>0, 'max'=>1},
          'effectiveDate' => {'type'=>'dateTime', 'path'=>'ManufacturingBusinessOperation.effectiveDate', 'min'=>0, 'max'=>1},
          '_effectiveDate' => {'type'=>'Element', 'path'=>'ManufacturingBusinessOperation._effectiveDate', 'min'=>0, 'max'=>1},
          'confidentialityIndicator' => {'type'=>'CodeableConcept', 'path'=>'ManufacturingBusinessOperation.confidentialityIndicator', 'min'=>0, 'max'=>1},
          'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ManufacturingBusinessOperation.manufacturer', 'min'=>0, 'max'=>Float::INFINITY},
          'regulator' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ManufacturingBusinessOperation.regulator', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                           # 0-1 string
        attr_accessor :_id                          # 0-1 Element
        attr_accessor :extension                    # 0-* [ Extension ]
        attr_accessor :modifierExtension            # 0-* [ Extension ]
        attr_accessor :operationType                # 0-1 CodeableConcept
        attr_accessor :authorisationReferenceNumber # 0-1 Identifier
        attr_accessor :effectiveDate                # 0-1 dateTime
        attr_accessor :_effectiveDate               # 0-1 Element
        attr_accessor :confidentialityIndicator     # 0-1 CodeableConcept
        attr_accessor :manufacturer                 # 0-* [ Reference(Organization) ]
        attr_accessor :regulator                    # 0-1 Reference(Organization)
      end

      class SpecialDesignation < FHIR::Model
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
          'indication' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'SpecialDesignation.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'SpecialDesignation._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'SpecialDesignation.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'SpecialDesignation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'SpecialDesignation.identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'SpecialDesignation.type', 'min'=>0, 'max'=>1},
          'intendedUse' => {'type'=>'CodeableConcept', 'path'=>'SpecialDesignation.intendedUse', 'min'=>0, 'max'=>1},
          'indicationCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'SpecialDesignation.indication[x]', 'min'=>0, 'max'=>1},
          'indicationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication'], 'type'=>'Reference', 'path'=>'SpecialDesignation.indication[x]', 'min'=>0, 'max'=>1},
          'status' => {'type'=>'CodeableConcept', 'path'=>'SpecialDesignation.status', 'min'=>0, 'max'=>1},
          'date' => {'type'=>'dateTime', 'path'=>'SpecialDesignation.date', 'min'=>0, 'max'=>1},
          '_date' => {'type'=>'Element', 'path'=>'SpecialDesignation._date', 'min'=>0, 'max'=>1},
          'species' => {'type'=>'CodeableConcept', 'path'=>'SpecialDesignation.species', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                        # 0-1 string
        attr_accessor :_id                       # 0-1 Element
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :identifier                # 0-* [ Identifier ]
        attr_accessor :type                      # 0-1 CodeableConcept
        attr_accessor :intendedUse               # 0-1 CodeableConcept
        attr_accessor :indicationCodeableConcept # 0-1 CodeableConcept
        attr_accessor :indicationReference       # 0-1 Reference(MedicinalProductIndication)
        attr_accessor :status                    # 0-1 CodeableConcept
        attr_accessor :date                      # 0-1 dateTime
        attr_accessor :_date                     # 0-1 Element
        attr_accessor :species                   # 0-1 CodeableConcept
      end

      attr_accessor :id                             # 0-1 id
      attr_accessor :_id                            # 0-1 Element
      attr_accessor :meta                           # 0-1 Meta
      attr_accessor :implicitRules                  # 0-1 uri
      attr_accessor :_implicitRules                 # 0-1 Element
      attr_accessor :language                       # 0-1 code
      attr_accessor :_language                      # 0-1 Element
      attr_accessor :text                           # 0-1 Narrative
      attr_accessor :contained                      # 0-* [ Resource ]
      attr_accessor :extension                      # 0-* [ Extension ]
      attr_accessor :modifierExtension              # 0-* [ Extension ]
      attr_accessor :identifier                     # 0-* [ Identifier ]
      attr_accessor :type                           # 0-1 CodeableConcept
      attr_accessor :domain                         # 0-1 Coding
      attr_accessor :combinedPharmaceuticalDoseForm # 0-1 CodeableConcept
      attr_accessor :legalStatusOfSupply            # 0-1 CodeableConcept
      attr_accessor :additionalMonitoringIndicator  # 0-1 CodeableConcept
      attr_accessor :specialMeasures                # 0-* [ string ]
      attr_accessor :_specialMeasures               # 0-* [ Element ]
      attr_accessor :paediatricUseIndicator         # 0-1 CodeableConcept
      attr_accessor :productClassification          # 0-* [ CodeableConcept ]
      attr_accessor :marketingStatus                # 0-* [ MarketingStatus ]
      attr_accessor :pharmaceuticalProduct          # 0-* [ Reference(MedicinalProductPharmaceutical) ]
      attr_accessor :packagedMedicinalProduct       # 0-* [ Reference(MedicinalProductPackaged) ]
      attr_accessor :attachedDocument               # 0-* [ Reference(DocumentReference) ]
      attr_accessor :masterFile                     # 0-* [ Reference(DocumentReference) ]
      attr_accessor :contact                        # 0-* [ Reference(Organization|PractitionerRole) ]
      attr_accessor :clinicalTrial                  # 0-* [ Reference(ResearchStudy) ]
      attr_accessor :name                           # 1-* [ MedicinalProduct::Name ]
      attr_accessor :crossReference                 # 0-* [ Identifier ]
      attr_accessor :manufacturingBusinessOperation # 0-* [ MedicinalProduct::ManufacturingBusinessOperation ]
      attr_accessor :specialDesignation             # 0-* [ MedicinalProduct::SpecialDesignation ]

      def resourceType
        'MedicinalProduct'
      end
    end
  end
  MedicinalProduct = FHIR::R4::MedicinalProduct
end