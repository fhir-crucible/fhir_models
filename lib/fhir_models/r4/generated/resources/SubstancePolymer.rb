module FHIR
  module R4
    class SubstancePolymer < FHIR::Model
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
        'id' => {'type'=>'id', 'path'=>'SubstancePolymer.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'SubstancePolymer._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SubstancePolymer.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SubstancePolymer.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'SubstancePolymer._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SubstancePolymer.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'SubstancePolymer._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'SubstancePolymer.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SubstancePolymer.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SubstancePolymer.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SubstancePolymer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'class' => {'local_name'=>'local_class', 'type'=>'CodeableConcept', 'path'=>'SubstancePolymer.class', 'min'=>0, 'max'=>1},
        'geometry' => {'type'=>'CodeableConcept', 'path'=>'SubstancePolymer.geometry', 'min'=>0, 'max'=>1},
        'copolymerConnectivity' => {'type'=>'CodeableConcept', 'path'=>'SubstancePolymer.copolymerConnectivity', 'min'=>0, 'max'=>Float::INFINITY},
        'modification' => {'type'=>'string', 'path'=>'SubstancePolymer.modification', 'min'=>0, 'max'=>Float::INFINITY},
        '_modification' => {'type'=>'Element', 'path'=>'SubstancePolymer._modification', 'min'=>0, 'max'=>Float::INFINITY},
        'monomerSet' => {'type'=>'SubstancePolymer::MonomerSet', 'path'=>'SubstancePolymer.monomerSet', 'min'=>0, 'max'=>Float::INFINITY},
        'repeat' => {'type'=>'SubstancePolymer::Repeat', 'path'=>'SubstancePolymer.repeat', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class MonomerSet < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'MonomerSet.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'MonomerSet._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'MonomerSet.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'MonomerSet.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'ratioType' => {'type'=>'CodeableConcept', 'path'=>'MonomerSet.ratioType', 'min'=>0, 'max'=>1},
          'startingMaterial' => {'type'=>'SubstancePolymer::MonomerSet::StartingMaterial', 'path'=>'MonomerSet.startingMaterial', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class StartingMaterial < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'StartingMaterial.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'StartingMaterial._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'StartingMaterial.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'StartingMaterial.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'material' => {'type'=>'CodeableConcept', 'path'=>'StartingMaterial.material', 'min'=>0, 'max'=>1},
            'type' => {'type'=>'CodeableConcept', 'path'=>'StartingMaterial.type', 'min'=>0, 'max'=>1},
            'isDefining' => {'type'=>'boolean', 'path'=>'StartingMaterial.isDefining', 'min'=>0, 'max'=>1},
            '_isDefining' => {'type'=>'Element', 'path'=>'StartingMaterial._isDefining', 'min'=>0, 'max'=>1},
            'amount' => {'type'=>'SubstanceAmount', 'path'=>'StartingMaterial.amount', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :material          # 0-1 CodeableConcept
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :isDefining        # 0-1 boolean
          attr_accessor :_isDefining       # 0-1 Element
          attr_accessor :amount            # 0-1 SubstanceAmount
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :ratioType         # 0-1 CodeableConcept
        attr_accessor :startingMaterial  # 0-* [ SubstancePolymer::MonomerSet::StartingMaterial ]
      end

      class Repeat < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Repeat.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Repeat._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Repeat.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Repeat.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'numberOfUnits' => {'type'=>'integer', 'path'=>'Repeat.numberOfUnits', 'min'=>0, 'max'=>1},
          '_numberOfUnits' => {'type'=>'Element', 'path'=>'Repeat._numberOfUnits', 'min'=>0, 'max'=>1},
          'averageMolecularFormula' => {'type'=>'string', 'path'=>'Repeat.averageMolecularFormula', 'min'=>0, 'max'=>1},
          '_averageMolecularFormula' => {'type'=>'Element', 'path'=>'Repeat._averageMolecularFormula', 'min'=>0, 'max'=>1},
          'repeatUnitAmountType' => {'type'=>'CodeableConcept', 'path'=>'Repeat.repeatUnitAmountType', 'min'=>0, 'max'=>1},
          'repeatUnit' => {'type'=>'SubstancePolymer::Repeat::RepeatUnit', 'path'=>'Repeat.repeatUnit', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class RepeatUnit < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'RepeatUnit.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'RepeatUnit._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'RepeatUnit.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'RepeatUnit.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'orientationOfPolymerisation' => {'type'=>'CodeableConcept', 'path'=>'RepeatUnit.orientationOfPolymerisation', 'min'=>0, 'max'=>1},
            'repeatUnit' => {'type'=>'string', 'path'=>'RepeatUnit.repeatUnit', 'min'=>0, 'max'=>1},
            '_repeatUnit' => {'type'=>'Element', 'path'=>'RepeatUnit._repeatUnit', 'min'=>0, 'max'=>1},
            'amount' => {'type'=>'SubstanceAmount', 'path'=>'RepeatUnit.amount', 'min'=>0, 'max'=>1},
            'degreeOfPolymerisation' => {'type'=>'SubstancePolymer::Repeat::RepeatUnit::DegreeOfPolymerisation', 'path'=>'RepeatUnit.degreeOfPolymerisation', 'min'=>0, 'max'=>Float::INFINITY},
            'structuralRepresentation' => {'type'=>'SubstancePolymer::Repeat::RepeatUnit::StructuralRepresentation', 'path'=>'RepeatUnit.structuralRepresentation', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class DegreeOfPolymerisation < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'DegreeOfPolymerisation.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'DegreeOfPolymerisation._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'DegreeOfPolymerisation.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'DegreeOfPolymerisation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'degree' => {'type'=>'CodeableConcept', 'path'=>'DegreeOfPolymerisation.degree', 'min'=>0, 'max'=>1},
              'amount' => {'type'=>'SubstanceAmount', 'path'=>'DegreeOfPolymerisation.amount', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :degree            # 0-1 CodeableConcept
            attr_accessor :amount            # 0-1 SubstanceAmount
          end

          class StructuralRepresentation < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'StructuralRepresentation.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'StructuralRepresentation._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'StructuralRepresentation.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'StructuralRepresentation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'type'=>'CodeableConcept', 'path'=>'StructuralRepresentation.type', 'min'=>0, 'max'=>1},
              'representation' => {'type'=>'string', 'path'=>'StructuralRepresentation.representation', 'min'=>0, 'max'=>1},
              '_representation' => {'type'=>'Element', 'path'=>'StructuralRepresentation._representation', 'min'=>0, 'max'=>1},
              'attachment' => {'type'=>'Attachment', 'path'=>'StructuralRepresentation.attachment', 'min'=>0, 'max'=>1}
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

          attr_accessor :id                          # 0-1 string
          attr_accessor :_id                         # 0-1 Element
          attr_accessor :extension                   # 0-* [ Extension ]
          attr_accessor :modifierExtension           # 0-* [ Extension ]
          attr_accessor :orientationOfPolymerisation # 0-1 CodeableConcept
          attr_accessor :repeatUnit                  # 0-1 string
          attr_accessor :_repeatUnit                 # 0-1 Element
          attr_accessor :amount                      # 0-1 SubstanceAmount
          attr_accessor :degreeOfPolymerisation      # 0-* [ SubstancePolymer::Repeat::RepeatUnit::DegreeOfPolymerisation ]
          attr_accessor :structuralRepresentation    # 0-* [ SubstancePolymer::Repeat::RepeatUnit::StructuralRepresentation ]
        end

        attr_accessor :id                       # 0-1 string
        attr_accessor :_id                      # 0-1 Element
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :numberOfUnits            # 0-1 integer
        attr_accessor :_numberOfUnits           # 0-1 Element
        attr_accessor :averageMolecularFormula  # 0-1 string
        attr_accessor :_averageMolecularFormula # 0-1 Element
        attr_accessor :repeatUnitAmountType     # 0-1 CodeableConcept
        attr_accessor :repeatUnit               # 0-* [ SubstancePolymer::Repeat::RepeatUnit ]
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
      attr_accessor :local_class           # 0-1 CodeableConcept
      attr_accessor :geometry              # 0-1 CodeableConcept
      attr_accessor :copolymerConnectivity # 0-* [ CodeableConcept ]
      attr_accessor :modification          # 0-* [ string ]
      attr_accessor :_modification         # 0-* [ Element ]
      attr_accessor :monomerSet            # 0-* [ SubstancePolymer::MonomerSet ]
      attr_accessor :repeat                # 0-* [ SubstancePolymer::Repeat ]

      def resourceType
        'SubstancePolymer'
      end
    end
  end
  SubstancePolymer = FHIR::R4::SubstancePolymer
end