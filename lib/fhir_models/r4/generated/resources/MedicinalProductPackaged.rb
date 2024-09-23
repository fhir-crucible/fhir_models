module FHIR
  module R4
    class MedicinalProductPackaged < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['identifier', 'subject']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MedicinalProductPackaged.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MedicinalProductPackaged._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MedicinalProductPackaged.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MedicinalProductPackaged.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MedicinalProductPackaged._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MedicinalProductPackaged.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MedicinalProductPackaged._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MedicinalProductPackaged.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MedicinalProductPackaged.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MedicinalProductPackaged.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MedicinalProductPackaged.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'MedicinalProductPackaged.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct'], 'type'=>'Reference', 'path'=>'MedicinalProductPackaged.subject', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'string', 'path'=>'MedicinalProductPackaged.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'MedicinalProductPackaged._description', 'min'=>0, 'max'=>1},
        'legalStatusOfSupply' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductPackaged.legalStatusOfSupply', 'min'=>0, 'max'=>1},
        'marketingStatus' => {'type'=>'MarketingStatus', 'path'=>'MedicinalProductPackaged.marketingStatus', 'min'=>0, 'max'=>Float::INFINITY},
        'marketingAuthorization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductAuthorization'], 'type'=>'Reference', 'path'=>'MedicinalProductPackaged.marketingAuthorization', 'min'=>0, 'max'=>1},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'MedicinalProductPackaged.manufacturer', 'min'=>0, 'max'=>Float::INFINITY},
        'batchIdentifier' => {'type'=>'MedicinalProductPackaged::BatchIdentifier', 'path'=>'MedicinalProductPackaged.batchIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
        'packageItem' => {'type'=>'MedicinalProductPackaged::PackageItem', 'path'=>'MedicinalProductPackaged.packageItem', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class BatchIdentifier < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'BatchIdentifier.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'BatchIdentifier._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'BatchIdentifier.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'BatchIdentifier.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'outerPackaging' => {'type'=>'Identifier', 'path'=>'BatchIdentifier.outerPackaging', 'min'=>1, 'max'=>1},
          'immediatePackaging' => {'type'=>'Identifier', 'path'=>'BatchIdentifier.immediatePackaging', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                 # 0-1 string
        attr_accessor :_id                # 0-1 Element
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :outerPackaging     # 1-1 Identifier
        attr_accessor :immediatePackaging # 0-1 Identifier
      end

      class PackageItem < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'PackageItem.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'PackageItem._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'PackageItem.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'PackageItem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'PackageItem.identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'CodeableConcept', 'path'=>'PackageItem.type', 'min'=>1, 'max'=>1},
          'quantity' => {'type'=>'Quantity', 'path'=>'PackageItem.quantity', 'min'=>1, 'max'=>1},
          'material' => {'type'=>'CodeableConcept', 'path'=>'PackageItem.material', 'min'=>0, 'max'=>Float::INFINITY},
          'alternateMaterial' => {'type'=>'CodeableConcept', 'path'=>'PackageItem.alternateMaterial', 'min'=>0, 'max'=>Float::INFINITY},
          'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceDefinition'], 'type'=>'Reference', 'path'=>'PackageItem.device', 'min'=>0, 'max'=>Float::INFINITY},
          'manufacturedItem' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductManufactured'], 'type'=>'Reference', 'path'=>'PackageItem.manufacturedItem', 'min'=>0, 'max'=>Float::INFINITY},
          'packageItem' => {'type'=>'MedicinalProductPackaged::PackageItem', 'path'=>'PackageItem.packageItem', 'min'=>0, 'max'=>Float::INFINITY},
          'physicalCharacteristics' => {'type'=>'ProdCharacteristic', 'path'=>'PackageItem.physicalCharacteristics', 'min'=>0, 'max'=>1},
          'otherCharacteristics' => {'type'=>'CodeableConcept', 'path'=>'PackageItem.otherCharacteristics', 'min'=>0, 'max'=>Float::INFINITY},
          'shelfLifeStorage' => {'type'=>'ProductShelfLife', 'path'=>'PackageItem.shelfLifeStorage', 'min'=>0, 'max'=>Float::INFINITY},
          'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'PackageItem.manufacturer', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                      # 0-1 string
        attr_accessor :_id                     # 0-1 Element
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :identifier              # 0-* [ Identifier ]
        attr_accessor :type                    # 1-1 CodeableConcept
        attr_accessor :quantity                # 1-1 Quantity
        attr_accessor :material                # 0-* [ CodeableConcept ]
        attr_accessor :alternateMaterial       # 0-* [ CodeableConcept ]
        attr_accessor :device                  # 0-* [ Reference(DeviceDefinition) ]
        attr_accessor :manufacturedItem        # 0-* [ Reference(MedicinalProductManufactured) ]
        attr_accessor :packageItem             # 0-* [ MedicinalProductPackaged::PackageItem ]
        attr_accessor :physicalCharacteristics # 0-1 ProdCharacteristic
        attr_accessor :otherCharacteristics    # 0-* [ CodeableConcept ]
        attr_accessor :shelfLifeStorage        # 0-* [ ProductShelfLife ]
        attr_accessor :manufacturer            # 0-* [ Reference(Organization) ]
      end

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
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :subject                # 0-* [ Reference(MedicinalProduct) ]
      attr_accessor :description            # 0-1 string
      attr_accessor :_description           # 0-1 Element
      attr_accessor :legalStatusOfSupply    # 0-1 CodeableConcept
      attr_accessor :marketingStatus        # 0-* [ MarketingStatus ]
      attr_accessor :marketingAuthorization # 0-1 Reference(MedicinalProductAuthorization)
      attr_accessor :manufacturer           # 0-* [ Reference(Organization) ]
      attr_accessor :batchIdentifier        # 0-* [ MedicinalProductPackaged::BatchIdentifier ]
      attr_accessor :packageItem            # 1-* [ MedicinalProductPackaged::PackageItem ]

      def resourceType
        'MedicinalProductPackaged'
      end
    end
  end
  MedicinalProductPackaged = FHIR::R4::MedicinalProductPackaged
end