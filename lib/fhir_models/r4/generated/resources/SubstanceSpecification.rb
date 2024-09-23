module FHIR
  module R4
    class SubstanceSpecification < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['code']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'SubstanceSpecification.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'SubstanceSpecification._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SubstanceSpecification.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SubstanceSpecification.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'SubstanceSpecification._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SubstanceSpecification.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'SubstanceSpecification._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'SubstanceSpecification.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SubstanceSpecification.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SubstanceSpecification.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SubstanceSpecification.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'SubstanceSpecification.identifier', 'min'=>0, 'max'=>1},
        'type' => {'type'=>'CodeableConcept', 'path'=>'SubstanceSpecification.type', 'min'=>0, 'max'=>1},
        'status' => {'type'=>'CodeableConcept', 'path'=>'SubstanceSpecification.status', 'min'=>0, 'max'=>1},
        'domain' => {'type'=>'CodeableConcept', 'path'=>'SubstanceSpecification.domain', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'string', 'path'=>'SubstanceSpecification.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'SubstanceSpecification._description', 'min'=>0, 'max'=>1},
        'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'SubstanceSpecification.source', 'min'=>0, 'max'=>Float::INFINITY},
        'comment' => {'type'=>'string', 'path'=>'SubstanceSpecification.comment', 'min'=>0, 'max'=>1},
        '_comment' => {'type'=>'Element', 'path'=>'SubstanceSpecification._comment', 'min'=>0, 'max'=>1},
        'moiety' => {'type'=>'SubstanceSpecification::Moiety', 'path'=>'SubstanceSpecification.moiety', 'min'=>0, 'max'=>Float::INFINITY},
        'property' => {'type'=>'SubstanceSpecification::Property', 'path'=>'SubstanceSpecification.property', 'min'=>0, 'max'=>Float::INFINITY},
        'referenceInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation'], 'type'=>'Reference', 'path'=>'SubstanceSpecification.referenceInformation', 'min'=>0, 'max'=>1},
        'structure' => {'type'=>'SubstanceSpecification::Structure', 'path'=>'SubstanceSpecification.structure', 'min'=>0, 'max'=>1},
        'code' => {'type'=>'SubstanceSpecification::Code', 'path'=>'SubstanceSpecification.code', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'SubstanceSpecification::Name', 'path'=>'SubstanceSpecification.name', 'min'=>0, 'max'=>Float::INFINITY},
        'molecularWeight' => {'type'=>'SubstanceSpecification::Structure::Isotope::MolecularWeight', 'path'=>'SubstanceSpecification.molecularWeight', 'min'=>0, 'max'=>Float::INFINITY},
        'relationship' => {'type'=>'SubstanceSpecification::Relationship', 'path'=>'SubstanceSpecification.relationship', 'min'=>0, 'max'=>Float::INFINITY},
        'nucleicAcid' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceNucleicAcid'], 'type'=>'Reference', 'path'=>'SubstanceSpecification.nucleicAcid', 'min'=>0, 'max'=>1},
        'polymer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstancePolymer'], 'type'=>'Reference', 'path'=>'SubstanceSpecification.polymer', 'min'=>0, 'max'=>1},
        'protein' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceProtein'], 'type'=>'Reference', 'path'=>'SubstanceSpecification.protein', 'min'=>0, 'max'=>1},
        'sourceMaterial' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceSourceMaterial'], 'type'=>'Reference', 'path'=>'SubstanceSpecification.sourceMaterial', 'min'=>0, 'max'=>1}
      }

      class Moiety < FHIR::Model
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
          'amount' => ['Quantity', 'string']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Moiety.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Moiety._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Moiety.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Moiety.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'role' => {'type'=>'CodeableConcept', 'path'=>'Moiety.role', 'min'=>0, 'max'=>1},
          'identifier' => {'type'=>'Identifier', 'path'=>'Moiety.identifier', 'min'=>0, 'max'=>1},
          'name' => {'type'=>'string', 'path'=>'Moiety.name', 'min'=>0, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Moiety._name', 'min'=>0, 'max'=>1},
          'stereochemistry' => {'type'=>'CodeableConcept', 'path'=>'Moiety.stereochemistry', 'min'=>0, 'max'=>1},
          'opticalActivity' => {'type'=>'CodeableConcept', 'path'=>'Moiety.opticalActivity', 'min'=>0, 'max'=>1},
          'molecularFormula' => {'type'=>'string', 'path'=>'Moiety.molecularFormula', 'min'=>0, 'max'=>1},
          '_molecularFormula' => {'type'=>'Element', 'path'=>'Moiety._molecularFormula', 'min'=>0, 'max'=>1},
          'amountQuantity' => {'type'=>'Quantity', 'path'=>'Moiety.amount[x]', 'min'=>0, 'max'=>1},
          'amountString' => {'type'=>'string', 'path'=>'Moiety.amount[x]', 'min'=>0, 'max'=>1},
          '_amountString' => {'type'=>'Element', 'path'=>'Moiety.amount[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :role              # 0-1 CodeableConcept
        attr_accessor :identifier        # 0-1 Identifier
        attr_accessor :name              # 0-1 string
        attr_accessor :_name             # 0-1 Element
        attr_accessor :stereochemistry   # 0-1 CodeableConcept
        attr_accessor :opticalActivity   # 0-1 CodeableConcept
        attr_accessor :molecularFormula  # 0-1 string
        attr_accessor :_molecularFormula # 0-1 Element
        attr_accessor :amountQuantity    # 0-1 Quantity
        attr_accessor :amountString      # 0-1 string
        attr_accessor :_amountString     # 0-1 Element
      end

      class Property < FHIR::Model
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
          'definingSubstance' => ['Reference', 'CodeableConcept'],
          'amount' => ['Quantity', 'string']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Property.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Property._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Property.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Property.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'category' => {'type'=>'CodeableConcept', 'path'=>'Property.category', 'min'=>0, 'max'=>1},
          'code' => {'type'=>'CodeableConcept', 'path'=>'Property.code', 'min'=>0, 'max'=>1},
          'parameters' => {'type'=>'string', 'path'=>'Property.parameters', 'min'=>0, 'max'=>1},
          '_parameters' => {'type'=>'Element', 'path'=>'Property._parameters', 'min'=>0, 'max'=>1},
          'definingSubstanceReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceSpecification', 'http://hl7.org/fhir/StructureDefinition/Substance'], 'type'=>'Reference', 'path'=>'Property.definingSubstance[x]', 'min'=>0, 'max'=>1},
          'definingSubstanceCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Property.definingSubstance[x]', 'min'=>0, 'max'=>1},
          'amountQuantity' => {'type'=>'Quantity', 'path'=>'Property.amount[x]', 'min'=>0, 'max'=>1},
          'amountString' => {'type'=>'string', 'path'=>'Property.amount[x]', 'min'=>0, 'max'=>1},
          '_amountString' => {'type'=>'Element', 'path'=>'Property.amount[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                               # 0-1 string
        attr_accessor :_id                              # 0-1 Element
        attr_accessor :extension                        # 0-* [ Extension ]
        attr_accessor :modifierExtension                # 0-* [ Extension ]
        attr_accessor :category                         # 0-1 CodeableConcept
        attr_accessor :code                             # 0-1 CodeableConcept
        attr_accessor :parameters                       # 0-1 string
        attr_accessor :_parameters                      # 0-1 Element
        attr_accessor :definingSubstanceReference       # 0-1 Reference(SubstanceSpecification|Substance)
        attr_accessor :definingSubstanceCodeableConcept # 0-1 CodeableConcept
        attr_accessor :amountQuantity                   # 0-1 Quantity
        attr_accessor :amountString                     # 0-1 string
        attr_accessor :_amountString                    # 0-1 Element
      end

      class Structure < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Structure.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Structure._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Structure.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Structure.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'stereochemistry' => {'type'=>'CodeableConcept', 'path'=>'Structure.stereochemistry', 'min'=>0, 'max'=>1},
          'opticalActivity' => {'type'=>'CodeableConcept', 'path'=>'Structure.opticalActivity', 'min'=>0, 'max'=>1},
          'molecularFormula' => {'type'=>'string', 'path'=>'Structure.molecularFormula', 'min'=>0, 'max'=>1},
          '_molecularFormula' => {'type'=>'Element', 'path'=>'Structure._molecularFormula', 'min'=>0, 'max'=>1},
          'molecularFormulaByMoiety' => {'type'=>'string', 'path'=>'Structure.molecularFormulaByMoiety', 'min'=>0, 'max'=>1},
          '_molecularFormulaByMoiety' => {'type'=>'Element', 'path'=>'Structure._molecularFormulaByMoiety', 'min'=>0, 'max'=>1},
          'isotope' => {'type'=>'SubstanceSpecification::Structure::Isotope', 'path'=>'Structure.isotope', 'min'=>0, 'max'=>Float::INFINITY},
          'molecularWeight' => {'type'=>'SubstanceSpecification::Structure::Isotope::MolecularWeight', 'path'=>'Structure.molecularWeight', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Structure.source', 'min'=>0, 'max'=>Float::INFINITY},
          'representation' => {'type'=>'SubstanceSpecification::Structure::Representation', 'path'=>'Structure.representation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Isotope < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Isotope.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Isotope._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Isotope.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Isotope.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'identifier' => {'type'=>'Identifier', 'path'=>'Isotope.identifier', 'min'=>0, 'max'=>1},
            'name' => {'type'=>'CodeableConcept', 'path'=>'Isotope.name', 'min'=>0, 'max'=>1},
            'substitution' => {'type'=>'CodeableConcept', 'path'=>'Isotope.substitution', 'min'=>0, 'max'=>1},
            'halfLife' => {'type'=>'Quantity', 'path'=>'Isotope.halfLife', 'min'=>0, 'max'=>1},
            'molecularWeight' => {'type'=>'SubstanceSpecification::Structure::Isotope::MolecularWeight', 'path'=>'Isotope.molecularWeight', 'min'=>0, 'max'=>1}
          }

          class MolecularWeight < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'MolecularWeight.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'MolecularWeight._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'MolecularWeight.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'MolecularWeight.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'method' => {'local_name'=>'local_method', 'type'=>'CodeableConcept', 'path'=>'MolecularWeight.method', 'min'=>0, 'max'=>1},
              'type' => {'type'=>'CodeableConcept', 'path'=>'MolecularWeight.type', 'min'=>0, 'max'=>1},
              'amount' => {'type'=>'Quantity', 'path'=>'MolecularWeight.amount', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :local_method      # 0-1 CodeableConcept
            attr_accessor :type              # 0-1 CodeableConcept
            attr_accessor :amount            # 0-1 Quantity
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :identifier        # 0-1 Identifier
          attr_accessor :name              # 0-1 CodeableConcept
          attr_accessor :substitution      # 0-1 CodeableConcept
          attr_accessor :halfLife          # 0-1 Quantity
          attr_accessor :molecularWeight   # 0-1 SubstanceSpecification::Structure::Isotope::MolecularWeight
        end

        class Representation < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Representation.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Representation._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Representation.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Representation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'type'=>'CodeableConcept', 'path'=>'Representation.type', 'min'=>0, 'max'=>1},
            'representation' => {'type'=>'string', 'path'=>'Representation.representation', 'min'=>0, 'max'=>1},
            '_representation' => {'type'=>'Element', 'path'=>'Representation._representation', 'min'=>0, 'max'=>1},
            'attachment' => {'type'=>'Attachment', 'path'=>'Representation.attachment', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :representation    # 0-1 string
          attr_accessor :_representation   # 0-1 Element
          attr_accessor :attachment        # 0-1 Attachment
        end

        attr_accessor :id                        # 0-1 string
        attr_accessor :_id                       # 0-1 Element
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :stereochemistry           # 0-1 CodeableConcept
        attr_accessor :opticalActivity           # 0-1 CodeableConcept
        attr_accessor :molecularFormula          # 0-1 string
        attr_accessor :_molecularFormula         # 0-1 Element
        attr_accessor :molecularFormulaByMoiety  # 0-1 string
        attr_accessor :_molecularFormulaByMoiety # 0-1 Element
        attr_accessor :isotope                   # 0-* [ SubstanceSpecification::Structure::Isotope ]
        attr_accessor :molecularWeight           # 0-1 SubstanceSpecification::Structure::Isotope::MolecularWeight
        attr_accessor :source                    # 0-* [ Reference(DocumentReference) ]
        attr_accessor :representation            # 0-* [ SubstanceSpecification::Structure::Representation ]
      end

      class Code < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Code.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Code._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Code.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Code.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'CodeableConcept', 'path'=>'Code.code', 'min'=>0, 'max'=>1},
          'status' => {'type'=>'CodeableConcept', 'path'=>'Code.status', 'min'=>0, 'max'=>1},
          'statusDate' => {'type'=>'dateTime', 'path'=>'Code.statusDate', 'min'=>0, 'max'=>1},
          '_statusDate' => {'type'=>'Element', 'path'=>'Code._statusDate', 'min'=>0, 'max'=>1},
          'comment' => {'type'=>'string', 'path'=>'Code.comment', 'min'=>0, 'max'=>1},
          '_comment' => {'type'=>'Element', 'path'=>'Code._comment', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Code.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :status            # 0-1 CodeableConcept
        attr_accessor :statusDate        # 0-1 dateTime
        attr_accessor :_statusDate       # 0-1 Element
        attr_accessor :comment           # 0-1 string
        attr_accessor :_comment          # 0-1 Element
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
      end

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
          'name' => {'type'=>'string', 'path'=>'Name.name', 'min'=>1, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Name._name', 'min'=>0, 'max'=>1},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Name.type', 'min'=>0, 'max'=>1},
          'status' => {'type'=>'CodeableConcept', 'path'=>'Name.status', 'min'=>0, 'max'=>1},
          'preferred' => {'type'=>'boolean', 'path'=>'Name.preferred', 'min'=>0, 'max'=>1},
          '_preferred' => {'type'=>'Element', 'path'=>'Name._preferred', 'min'=>0, 'max'=>1},
          'language' => {'type'=>'CodeableConcept', 'path'=>'Name.language', 'min'=>0, 'max'=>Float::INFINITY},
          'domain' => {'type'=>'CodeableConcept', 'path'=>'Name.domain', 'min'=>0, 'max'=>Float::INFINITY},
          'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'Name.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY},
          'synonym' => {'type'=>'SubstanceSpecification::Name', 'path'=>'Name.synonym', 'min'=>0, 'max'=>Float::INFINITY},
          'translation' => {'type'=>'SubstanceSpecification::Name', 'path'=>'Name.translation', 'min'=>0, 'max'=>Float::INFINITY},
          'official' => {'type'=>'SubstanceSpecification::Name::Official', 'path'=>'Name.official', 'min'=>0, 'max'=>Float::INFINITY},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Name.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Official < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Official.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Official._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Official.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Official.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'authority' => {'type'=>'CodeableConcept', 'path'=>'Official.authority', 'min'=>0, 'max'=>1},
            'status' => {'type'=>'CodeableConcept', 'path'=>'Official.status', 'min'=>0, 'max'=>1},
            'date' => {'type'=>'dateTime', 'path'=>'Official.date', 'min'=>0, 'max'=>1},
            '_date' => {'type'=>'Element', 'path'=>'Official._date', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :authority         # 0-1 CodeableConcept
          attr_accessor :status            # 0-1 CodeableConcept
          attr_accessor :date              # 0-1 dateTime
          attr_accessor :_date             # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :_name             # 0-1 Element
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :status            # 0-1 CodeableConcept
        attr_accessor :preferred         # 0-1 boolean
        attr_accessor :_preferred        # 0-1 Element
        attr_accessor :language          # 0-* [ CodeableConcept ]
        attr_accessor :domain            # 0-* [ CodeableConcept ]
        attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
        attr_accessor :synonym           # 0-* [ SubstanceSpecification::Name ]
        attr_accessor :translation       # 0-* [ SubstanceSpecification::Name ]
        attr_accessor :official          # 0-* [ SubstanceSpecification::Name::Official ]
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
      end

      class Relationship < FHIR::Model
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
          'substance' => ['Reference', 'CodeableConcept'],
          'amount' => ['Quantity', 'Range', 'Ratio', 'string']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Relationship.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Relationship._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Relationship.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Relationship.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'substanceReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceSpecification'], 'type'=>'Reference', 'path'=>'Relationship.substance[x]', 'min'=>0, 'max'=>1},
          'substanceCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Relationship.substance[x]', 'min'=>0, 'max'=>1},
          'relationship' => {'type'=>'CodeableConcept', 'path'=>'Relationship.relationship', 'min'=>0, 'max'=>1},
          'isDefining' => {'type'=>'boolean', 'path'=>'Relationship.isDefining', 'min'=>0, 'max'=>1},
          '_isDefining' => {'type'=>'Element', 'path'=>'Relationship._isDefining', 'min'=>0, 'max'=>1},
          'amountQuantity' => {'type'=>'Quantity', 'path'=>'Relationship.amount[x]', 'min'=>0, 'max'=>1},
          'amountRange' => {'type'=>'Range', 'path'=>'Relationship.amount[x]', 'min'=>0, 'max'=>1},
          'amountRatio' => {'type'=>'Ratio', 'path'=>'Relationship.amount[x]', 'min'=>0, 'max'=>1},
          'amountString' => {'type'=>'string', 'path'=>'Relationship.amount[x]', 'min'=>0, 'max'=>1},
          '_amountString' => {'type'=>'Element', 'path'=>'Relationship.amount[x]', 'min'=>0, 'max'=>1},
          'amountRatioLowLimit' => {'type'=>'Ratio', 'path'=>'Relationship.amountRatioLowLimit', 'min'=>0, 'max'=>1},
          'amountType' => {'type'=>'CodeableConcept', 'path'=>'Relationship.amountType', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Relationship.source', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :_id                      # 0-1 Element
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :substanceReference       # 0-1 Reference(SubstanceSpecification)
        attr_accessor :substanceCodeableConcept # 0-1 CodeableConcept
        attr_accessor :relationship             # 0-1 CodeableConcept
        attr_accessor :isDefining               # 0-1 boolean
        attr_accessor :_isDefining              # 0-1 Element
        attr_accessor :amountQuantity           # 0-1 Quantity
        attr_accessor :amountRange              # 0-1 Range
        attr_accessor :amountRatio              # 0-1 Ratio
        attr_accessor :amountString             # 0-1 string
        attr_accessor :_amountString            # 0-1 Element
        attr_accessor :amountRatioLowLimit      # 0-1 Ratio
        attr_accessor :amountType               # 0-1 CodeableConcept
        attr_accessor :source                   # 0-* [ Reference(DocumentReference) ]
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
      attr_accessor :type                 # 0-1 CodeableConcept
      attr_accessor :status               # 0-1 CodeableConcept
      attr_accessor :domain               # 0-1 CodeableConcept
      attr_accessor :description          # 0-1 string
      attr_accessor :_description         # 0-1 Element
      attr_accessor :source               # 0-* [ Reference(DocumentReference) ]
      attr_accessor :comment              # 0-1 string
      attr_accessor :_comment             # 0-1 Element
      attr_accessor :moiety               # 0-* [ SubstanceSpecification::Moiety ]
      attr_accessor :property             # 0-* [ SubstanceSpecification::Property ]
      attr_accessor :referenceInformation # 0-1 Reference(SubstanceReferenceInformation)
      attr_accessor :structure            # 0-1 SubstanceSpecification::Structure
      attr_accessor :code                 # 0-* [ SubstanceSpecification::Code ]
      attr_accessor :name                 # 0-* [ SubstanceSpecification::Name ]
      attr_accessor :molecularWeight      # 0-* [ SubstanceSpecification::Structure::Isotope::MolecularWeight ]
      attr_accessor :relationship         # 0-* [ SubstanceSpecification::Relationship ]
      attr_accessor :nucleicAcid          # 0-1 Reference(SubstanceNucleicAcid)
      attr_accessor :polymer              # 0-1 Reference(SubstancePolymer)
      attr_accessor :protein              # 0-1 Reference(SubstanceProtein)
      attr_accessor :sourceMaterial       # 0-1 Reference(SubstanceSourceMaterial)

      def resourceType
        'SubstanceSpecification'
      end
    end
  end
  SubstanceSpecification = FHIR::R4::SubstanceSpecification
end