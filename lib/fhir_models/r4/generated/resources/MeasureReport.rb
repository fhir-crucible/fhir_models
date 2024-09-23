module FHIR
  module R4
    class MeasureReport < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['date', 'evaluated-resource', 'identifier', 'measure', 'patient', 'period', 'reporter', 'status', 'subject']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MeasureReport.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MeasureReport._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MeasureReport.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MeasureReport.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MeasureReport._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MeasureReport.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MeasureReport._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MeasureReport.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MeasureReport.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MeasureReport.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MeasureReport.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'MeasureReport.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/measure-report-status'=>['complete', 'pending', 'error']}, 'type'=>'code', 'path'=>'MeasureReport.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-report-status'}},
        '_status' => {'type'=>'Element', 'path'=>'MeasureReport._status', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/measure-report-type'=>['individual', 'subject-list', 'summary', 'data-collection']}, 'type'=>'code', 'path'=>'MeasureReport.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-report-type'}},
        '_type' => {'type'=>'Element', 'path'=>'MeasureReport._type', 'min'=>0, 'max'=>1},
        'measure' => {'type'=>'canonical', 'path'=>'MeasureReport.measure', 'min'=>1, 'max'=>1},
        '_measure' => {'type'=>'Element', 'path'=>'MeasureReport._measure', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'MeasureReport.subject', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'MeasureReport.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'MeasureReport._date', 'min'=>0, 'max'=>1},
        'reporter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'MeasureReport.reporter', 'min'=>0, 'max'=>1},
        'period' => {'type'=>'Period', 'path'=>'MeasureReport.period', 'min'=>1, 'max'=>1},
        'improvementNotation' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-improvement-notation'=>['increase', 'decrease']}, 'type'=>'CodeableConcept', 'path'=>'MeasureReport.improvementNotation', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-improvement-notation'}},
        'group' => {'type'=>'MeasureReport::Group', 'path'=>'MeasureReport.group', 'min'=>0, 'max'=>Float::INFINITY},
        'evaluatedResource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'MeasureReport.evaluatedResource', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Group < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Group.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Group._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Group.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Group.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'CodeableConcept', 'path'=>'Group.code', 'min'=>0, 'max'=>1},
          'population' => {'type'=>'MeasureReport::Group::Population', 'path'=>'Group.population', 'min'=>0, 'max'=>Float::INFINITY},
          'measureScore' => {'type'=>'Quantity', 'path'=>'Group.measureScore', 'min'=>0, 'max'=>1},
          'stratifier' => {'type'=>'MeasureReport::Group::Stratifier', 'path'=>'Group.stratifier', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Population < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Population.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Population._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Population.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Population.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-population'=>['initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-observation']}, 'type'=>'CodeableConcept', 'path'=>'Population.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-population'}},
            'count' => {'type'=>'integer', 'path'=>'Population.count', 'min'=>0, 'max'=>1},
            '_count' => {'type'=>'Element', 'path'=>'Population._count', 'min'=>0, 'max'=>1},
            'subjectResults' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/List'], 'type'=>'Reference', 'path'=>'Population.subjectResults', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 0-1 CodeableConcept
          attr_accessor :count             # 0-1 integer
          attr_accessor :_count            # 0-1 Element
          attr_accessor :subjectResults    # 0-1 Reference(List)
        end

        class Stratifier < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Stratifier.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Stratifier._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Stratifier.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Stratifier.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'type'=>'CodeableConcept', 'path'=>'Stratifier.code', 'min'=>0, 'max'=>Float::INFINITY},
            'stratum' => {'type'=>'MeasureReport::Group::Stratifier::Stratum', 'path'=>'Stratifier.stratum', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Stratum < FHIR::Model
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
              'id' => {'type'=>'string', 'path'=>'Stratum.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Stratum._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Stratum.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Stratum.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'value' => {'type'=>'CodeableConcept', 'path'=>'Stratum.value', 'min'=>0, 'max'=>1},
              'component' => {'type'=>'MeasureReport::Group::Stratifier::Stratum::Component', 'path'=>'Stratum.component', 'min'=>0, 'max'=>Float::INFINITY},
              'population' => {'type'=>'MeasureReport::Group::Stratifier::Stratum::Population', 'path'=>'Stratum.population', 'min'=>0, 'max'=>Float::INFINITY},
              'measureScore' => {'type'=>'Quantity', 'path'=>'Stratum.measureScore', 'min'=>0, 'max'=>1}
            }

            class Component < FHIR::Model
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
                'id' => {'type'=>'string', 'path'=>'Component.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'Component._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'Component.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'Component.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'code' => {'type'=>'CodeableConcept', 'path'=>'Component.code', 'min'=>1, 'max'=>1},
                'value' => {'type'=>'CodeableConcept', 'path'=>'Component.value', 'min'=>1, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :code              # 1-1 CodeableConcept
              attr_accessor :value             # 1-1 CodeableConcept
            end

            class Population < FHIR::Model
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
                'id' => {'type'=>'string', 'path'=>'Population.id', 'min'=>0, 'max'=>1},
                '_id' => {'type'=>'Element', 'path'=>'Population._id', 'min'=>0, 'max'=>1},
                'extension' => {'type'=>'Extension', 'path'=>'Population.extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'type'=>'Extension', 'path'=>'Population.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
                'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-population'=>['initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-observation']}, 'type'=>'CodeableConcept', 'path'=>'Population.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-population'}},
                'count' => {'type'=>'integer', 'path'=>'Population.count', 'min'=>0, 'max'=>1},
                '_count' => {'type'=>'Element', 'path'=>'Population._count', 'min'=>0, 'max'=>1},
                'subjectResults' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/List'], 'type'=>'Reference', 'path'=>'Population.subjectResults', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :_id               # 0-1 Element
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :code              # 0-1 CodeableConcept
              attr_accessor :count             # 0-1 integer
              attr_accessor :_count            # 0-1 Element
              attr_accessor :subjectResults    # 0-1 Reference(List)
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :_id               # 0-1 Element
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :value             # 0-1 CodeableConcept
            attr_accessor :component         # 0-* [ MeasureReport::Group::Stratifier::Stratum::Component ]
            attr_accessor :population        # 0-* [ MeasureReport::Group::Stratifier::Stratum::Population ]
            attr_accessor :measureScore      # 0-1 Quantity
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 0-* [ CodeableConcept ]
          attr_accessor :stratum           # 0-* [ MeasureReport::Group::Stratifier::Stratum ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :population        # 0-* [ MeasureReport::Group::Population ]
        attr_accessor :measureScore      # 0-1 Quantity
        attr_accessor :stratifier        # 0-* [ MeasureReport::Group::Stratifier ]
      end

      attr_accessor :id                  # 0-1 id
      attr_accessor :_id                 # 0-1 Element
      attr_accessor :meta                # 0-1 Meta
      attr_accessor :implicitRules       # 0-1 uri
      attr_accessor :_implicitRules      # 0-1 Element
      attr_accessor :language            # 0-1 code
      attr_accessor :_language           # 0-1 Element
      attr_accessor :text                # 0-1 Narrative
      attr_accessor :contained           # 0-* [ Resource ]
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :identifier          # 0-* [ Identifier ]
      attr_accessor :status              # 1-1 code
      attr_accessor :_status             # 0-1 Element
      attr_accessor :type                # 1-1 code
      attr_accessor :_type               # 0-1 Element
      attr_accessor :measure             # 1-1 canonical
      attr_accessor :_measure            # 0-1 Element
      attr_accessor :subject             # 0-1 Reference(Patient|Practitioner|PractitionerRole|Location|Device|RelatedPerson|Group)
      attr_accessor :date                # 0-1 dateTime
      attr_accessor :_date               # 0-1 Element
      attr_accessor :reporter            # 0-1 Reference(Practitioner|PractitionerRole|Location|Organization)
      attr_accessor :period              # 1-1 Period
      attr_accessor :improvementNotation # 0-1 CodeableConcept
      attr_accessor :group               # 0-* [ MeasureReport::Group ]
      attr_accessor :evaluatedResource   # 0-* [ Reference(Resource) ]

      def resourceType
        'MeasureReport'
      end
    end
  end
  MeasureReport = FHIR::R4::MeasureReport
end