module FHIR
  module R4B
    class EvidenceVariable < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'description', 'identifier', 'name', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'EvidenceVariable.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Ev_idenceVariable._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'EvidenceVariable.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'EvidenceVariable.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'EvidenceVariable._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'EvidenceVariable.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'EvidenceVariable._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'EvidenceVariable.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'EvidenceVariable.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'EvidenceVariable.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'EvidenceVariable.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'EvidenceVariable.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'EvidenceVariable._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'EvidenceVariable.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'EvidenceVariable.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'EvidenceVariable._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'EvidenceVariable.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'EvidenceVariable._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'EvidenceVariable.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'EvidenceVariable._title', 'min'=>0, 'max'=>1},
        'shortTitle' => {'type'=>'string', 'path'=>'EvidenceVariable.shortTitle', 'min'=>0, 'max'=>1},
        '_shortTitle' => {'type'=>'Element', 'path'=>'EvidenceVariable._shortTitle', 'min'=>0, 'max'=>1},
        'subtitle' => {'type'=>'string', 'path'=>'EvidenceVariable.subtitle', 'min'=>0, 'max'=>1},
        '_subtitle' => {'type'=>'Element', 'path'=>'EvidenceVariable._subtitle', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'EvidenceVariable.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'EvidenceVariable._status', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'EvidenceVariable.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'EvidenceVariable._date', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'markdown', 'path'=>'EvidenceVariable.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'EvidenceVariable._description', 'min'=>0, 'max'=>1},
        'note' => {'type'=>'Annotation', 'path'=>'EvidenceVariable.note', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'type'=>'UsageContext', 'path'=>'EvidenceVariable.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'publisher' => {'type'=>'string', 'path'=>'EvidenceVariable.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'EvidenceVariable._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'author' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.author', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.editor', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.reviewer', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'type'=>'ContactDetail', 'path'=>'EvidenceVariable.endorser', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'EvidenceVariable.relatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'actual' => {'type'=>'boolean', 'path'=>'EvidenceVariable.actual', 'min'=>0, 'max'=>1},
        '_actual' => {'type'=>'Element', 'path'=>'EvidenceVariable._actual', 'min'=>0, 'max'=>1},
        'characteristicCombination' => {'valid_codes'=>{'http://hl7.org/fhir/characteristic-combination'=>['intersection', 'union']}, 'type'=>'code', 'path'=>'EvidenceVariable.characteristicCombination', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/characteristic-combination'}},
        '_characteristicCombination' => {'type'=>'Element', 'path'=>'EvidenceVariable._characteristicCombination', 'min'=>0, 'max'=>1},
        'characteristic' => {'type'=>'EvidenceVariable::Characteristic', 'path'=>'EvidenceVariable.characteristic', 'min'=>0, 'max'=>Float::INFINITY},
        'handling' => {'valid_codes'=>{'http://hl7.org/fhir/variable-handling'=>['continuous', 'dichotomous', 'ordinal', 'polychotomous']}, 'type'=>'code', 'path'=>'EvidenceVariable.handling', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/variable-handling'}},
        '_handling' => {'type'=>'Element', 'path'=>'EvidenceVariable._handling', 'min'=>0, 'max'=>1},
        'category' => {'type'=>'EvidenceVariable::Category', 'path'=>'EvidenceVariable.category', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Characteristic < FHIR::Model
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
          'definition' => ['Reference', 'canonical', 'CodeableConcept', 'Expression']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Characteristic.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Characteristic._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Characteristic.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Characteristic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Characteristic.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Characteristic._description', 'min'=>0, 'max'=>1},
          'definitionReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'type'=>'Reference', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'definitionCanonical' => {'type'=>'canonical', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          '_definitionCanonical' => {'type'=>'Element', 'path'=>'Characteristic.definition[x]', 'min'=>0, 'max'=>1},
          'definitionCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'definitionExpression' => {'type'=>'Expression', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/characteristic-method'=>['Default']}, 'type'=>'CodeableConcept', 'path'=>'Characteristic.method', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/characteristic-method'}},
          'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/DeviceMetric'], 'type'=>'Reference', 'path'=>'Characteristic.device', 'min'=>0, 'max'=>1},
          'exclude' => {'type'=>'boolean', 'path'=>'Characteristic.exclude', 'min'=>0, 'max'=>1},
          '_exclude' => {'type'=>'Element', 'path'=>'Characteristic._exclude', 'min'=>0, 'max'=>1},
          'timeFromStart' => {'type'=>'EvidenceVariable::Characteristic::TimeFromStart', 'path'=>'Characteristic.timeFromStart', 'min'=>0, 'max'=>1},
          'groupMeasure' => {'valid_codes'=>{'http://hl7.org/fhir/group-measure'=>['mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median']}, 'type'=>'code', 'path'=>'Characteristic.groupMeasure', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/group-measure'}},
          '_groupMeasure' => {'type'=>'Element', 'path'=>'Characteristic._groupMeasure', 'min'=>0, 'max'=>1}
        }

        class TimeFromStart < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'TimeFromStart.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'TimeFromStart._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'TimeFromStart.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'TimeFromStart.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'description' => {'type'=>'string', 'path'=>'TimeFromStart.description', 'min'=>0, 'max'=>1},
            '_description' => {'type'=>'Element', 'path'=>'TimeFromStart._description', 'min'=>0, 'max'=>1},
            'quantity' => {'type'=>'Quantity', 'path'=>'TimeFromStart.quantity', 'min'=>0, 'max'=>1},
            'range' => {'type'=>'Range', 'path'=>'TimeFromStart.range', 'min'=>0, 'max'=>1},
            'note' => {'type'=>'Annotation', 'path'=>'TimeFromStart.note', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :description       # 0-1 string
          attr_accessor :_description      # 0-1 Element
          attr_accessor :quantity          # 0-1 Quantity
          attr_accessor :range             # 0-1 Range
          attr_accessor :note              # 0-* [ Annotation ]
        end

        attr_accessor :id                        # 0-1 string
        attr_accessor :_id                       # 0-1 Element
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :description               # 0-1 string
        attr_accessor :_description              # 0-1 Element
        attr_accessor :definitionReference       # 1-1 Reference(Group|EvidenceVariable)
        attr_accessor :definitionCanonical       # 1-1 canonical
        attr_accessor :_definitionCanonical      # 0-1 Element
        attr_accessor :definitionCodeableConcept # 1-1 CodeableConcept
        attr_accessor :definitionExpression      # 1-1 Expression
        attr_accessor :local_method              # 0-1 CodeableConcept
        attr_accessor :device                    # 0-1 Reference(Device|DeviceMetric)
        attr_accessor :exclude                   # 0-1 boolean
        attr_accessor :_exclude                  # 0-1 Element
        attr_accessor :timeFromStart             # 0-1 EvidenceVariable::Characteristic::TimeFromStart
        attr_accessor :groupMeasure              # 0-1 code
        attr_accessor :_groupMeasure             # 0-1 Element
      end

      class Category < FHIR::Model
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
          'value' => ['CodeableConcept', 'Quantity', 'Range']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Category.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Category._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Category.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Category.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'Category.name', 'min'=>0, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Category._name', 'min'=>0, 'max'=>1},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Category.value[x]', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Category.value[x]', 'min'=>0, 'max'=>1},
          'valueRange' => {'type'=>'Range', 'path'=>'Category.value[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :_id                  # 0-1 Element
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :name                 # 0-1 string
        attr_accessor :_name                # 0-1 Element
        attr_accessor :valueCodeableConcept # 0-1 CodeableConcept
        attr_accessor :valueQuantity        # 0-1 Quantity
        attr_accessor :valueRange           # 0-1 Range
      end

      attr_accessor :id                         # 0-1 id
      attr_accessor :_id                        # 0-1 Element
      attr_accessor :meta                       # 0-1 Meta
      attr_accessor :implicitRules              # 0-1 uri
      attr_accessor :_implicitRules             # 0-1 Element
      attr_accessor :language                   # 0-1 code
      attr_accessor :_language                  # 0-1 Element
      attr_accessor :text                       # 0-1 Narrative
      attr_accessor :contained                  # 0-* [ Resource ]
      attr_accessor :extension                  # 0-* [ Extension ]
      attr_accessor :modifierExtension          # 0-* [ Extension ]
      attr_accessor :url                        # 0-1 uri
      attr_accessor :_url                       # 0-1 Element
      attr_accessor :identifier                 # 0-* [ Identifier ]
      attr_accessor :version                    # 0-1 string
      attr_accessor :_version                   # 0-1 Element
      attr_accessor :name                       # 0-1 string
      attr_accessor :_name                      # 0-1 Element
      attr_accessor :title                      # 0-1 string
      attr_accessor :_title                     # 0-1 Element
      attr_accessor :shortTitle                 # 0-1 string
      attr_accessor :_shortTitle                # 0-1 Element
      attr_accessor :subtitle                   # 0-1 string
      attr_accessor :_subtitle                  # 0-1 Element
      attr_accessor :status                     # 1-1 code
      attr_accessor :_status                    # 0-1 Element
      attr_accessor :date                       # 0-1 dateTime
      attr_accessor :_date                      # 0-1 Element
      attr_accessor :description                # 0-1 markdown
      attr_accessor :_description               # 0-1 Element
      attr_accessor :note                       # 0-* [ Annotation ]
      attr_accessor :useContext                 # 0-* [ UsageContext ]
      attr_accessor :publisher                  # 0-1 string
      attr_accessor :_publisher                 # 0-1 Element
      attr_accessor :contact                    # 0-* [ ContactDetail ]
      attr_accessor :author                     # 0-* [ ContactDetail ]
      attr_accessor :editor                     # 0-* [ ContactDetail ]
      attr_accessor :reviewer                   # 0-* [ ContactDetail ]
      attr_accessor :endorser                   # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact            # 0-* [ RelatedArtifact ]
      attr_accessor :actual                     # 0-1 boolean
      attr_accessor :_actual                    # 0-1 Element
      attr_accessor :characteristicCombination  # 0-1 code
      attr_accessor :_characteristicCombination # 0-1 Element
      attr_accessor :characteristic             # 0-* [ EvidenceVariable::Characteristic ]
      attr_accessor :handling                   # 0-1 code
      attr_accessor :_handling                  # 0-1 Element
      attr_accessor :category                   # 0-* [ EvidenceVariable::Category ]

      def resourceType
        'EvidenceVariable'
      end
    end
  end
end