module FHIR
  module R4B
    class Parameters < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Parameters.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Parameters._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Parameters.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Parameters.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Parameters._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Parameters.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Parameters._language', 'min'=>0, 'max'=>1},
        'parameter' => {'type'=>'Parameters::Parameter', 'path'=>'Parameters.parameter', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Parameter < FHIR::Model
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
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Parameter.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Parameter._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Parameter.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Parameter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'Parameter.name', 'min'=>1, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Parameter._name', 'min'=>0, 'max'=>1},
          'valueBase64Binary' => {'type'=>'base64Binary', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueBase64Binary' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'type'=>'boolean', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueBoolean' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueCanonical' => {'type'=>'canonical', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueCanonical' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueCode' => {'type'=>'code', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueCode' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueDate' => {'type'=>'date', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueDate' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueDateTime' => {'type'=>'dateTime', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueDateTime' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueDecimal' => {'type'=>'decimal', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueDecimal' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueId' => {'type'=>'id', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueId' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueInstant' => {'type'=>'instant', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueInstant' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueInteger' => {'type'=>'integer', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueInteger' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueMarkdown' => {'type'=>'markdown', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueMarkdown' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueOid' => {'type'=>'oid', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueOid' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valuePositiveInt' => {'type'=>'positiveInt', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valuePositiveInt' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueString' => {'type'=>'string', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueString' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueTime' => {'type'=>'time', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueTime' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueUnsignedInt' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueUri' => {'type'=>'uri', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueUri' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueUrl' => {'type'=>'url', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueUrl' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueUuid' => {'type'=>'uuid', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          '_valueUuid' => {'type'=>'Element', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueAddress' => {'type'=>'Address', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueAge' => {'type'=>'Age', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueAnnotation' => {'type'=>'Annotation', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueAttachment' => {'type'=>'Attachment', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueCoding' => {'type'=>'Coding', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueContactPoint' => {'type'=>'ContactPoint', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueCount' => {'type'=>'Count', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueDistance' => {'type'=>'Distance', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueDuration' => {'type'=>'Duration', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueHumanName' => {'type'=>'HumanName', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueIdentifier' => {'type'=>'Identifier', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueMoney' => {'type'=>'Money', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valuePeriod' => {'type'=>'Period', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'type'=>'Quantity', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueRange' => {'type'=>'Range', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueRatio' => {'type'=>'Ratio', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueReference' => {'type'=>'Reference', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueSampledData' => {'type'=>'SampledData', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueSignature' => {'type'=>'Signature', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueTiming' => {'type'=>'Timing', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueContactDetail' => {'type'=>'ContactDetail', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueContributor' => {'type'=>'Contributor', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueDataRequirement' => {'type'=>'DataRequirement', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueExpression' => {'type'=>'Expression', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueParameterDefinition' => {'type'=>'ParameterDefinition', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueRelatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueTriggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueUsageContext' => {'type'=>'UsageContext', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueDosage' => {'type'=>'Dosage', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'valueMeta' => {'type'=>'Meta', 'path'=>'Parameter.value[x]', 'min'=>0, 'max'=>1},
          'resource' => {'type'=>'Resource', 'path'=>'Parameter.resource', 'min'=>0, 'max'=>1},
          'part' => {'type'=>'Parameters::Parameter', 'path'=>'Parameter.part', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :_id                      # 0-1 Element
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :name                     # 1-1 string
        attr_accessor :_name                    # 0-1 Element
        attr_accessor :valueBase64Binary        # 0-1 base64Binary
        attr_accessor :_valueBase64Binary       # 0-1 Element
        attr_accessor :valueBoolean             # 0-1 boolean
        attr_accessor :_valueBoolean            # 0-1 Element
        attr_accessor :valueCanonical           # 0-1 canonical
        attr_accessor :_valueCanonical          # 0-1 Element
        attr_accessor :valueCode                # 0-1 code
        attr_accessor :_valueCode               # 0-1 Element
        attr_accessor :valueDate                # 0-1 date
        attr_accessor :_valueDate               # 0-1 Element
        attr_accessor :valueDateTime            # 0-1 dateTime
        attr_accessor :_valueDateTime           # 0-1 Element
        attr_accessor :valueDecimal             # 0-1 decimal
        attr_accessor :_valueDecimal            # 0-1 Element
        attr_accessor :valueId                  # 0-1 id
        attr_accessor :_valueId                 # 0-1 Element
        attr_accessor :valueInstant             # 0-1 instant
        attr_accessor :_valueInstant            # 0-1 Element
        attr_accessor :valueInteger             # 0-1 integer
        attr_accessor :_valueInteger            # 0-1 Element
        attr_accessor :valueMarkdown            # 0-1 markdown
        attr_accessor :_valueMarkdown           # 0-1 Element
        attr_accessor :valueOid                 # 0-1 oid
        attr_accessor :_valueOid                # 0-1 Element
        attr_accessor :valuePositiveInt         # 0-1 positiveInt
        attr_accessor :_valuePositiveInt        # 0-1 Element
        attr_accessor :valueString              # 0-1 string
        attr_accessor :_valueString             # 0-1 Element
        attr_accessor :valueTime                # 0-1 time
        attr_accessor :_valueTime               # 0-1 Element
        attr_accessor :valueUnsignedInt         # 0-1 unsignedInt
        attr_accessor :_valueUnsignedInt        # 0-1 Element
        attr_accessor :valueUri                 # 0-1 uri
        attr_accessor :_valueUri                # 0-1 Element
        attr_accessor :valueUrl                 # 0-1 url
        attr_accessor :_valueUrl                # 0-1 Element
        attr_accessor :valueUuid                # 0-1 uuid
        attr_accessor :_valueUuid               # 0-1 Element
        attr_accessor :valueAddress             # 0-1 Address
        attr_accessor :valueAge                 # 0-1 Age
        attr_accessor :valueAnnotation          # 0-1 Annotation
        attr_accessor :valueAttachment          # 0-1 Attachment
        attr_accessor :valueCodeableConcept     # 0-1 CodeableConcept
        attr_accessor :valueCoding              # 0-1 Coding
        attr_accessor :valueContactPoint        # 0-1 ContactPoint
        attr_accessor :valueCount               # 0-1 Count
        attr_accessor :valueDistance            # 0-1 Distance
        attr_accessor :valueDuration            # 0-1 Duration
        attr_accessor :valueHumanName           # 0-1 HumanName
        attr_accessor :valueIdentifier          # 0-1 Identifier
        attr_accessor :valueMoney               # 0-1 Money
        attr_accessor :valuePeriod              # 0-1 Period
        attr_accessor :valueQuantity            # 0-1 Quantity
        attr_accessor :valueRange               # 0-1 Range
        attr_accessor :valueRatio               # 0-1 Ratio
        attr_accessor :valueReference           # 0-1 Reference()
        attr_accessor :valueSampledData         # 0-1 SampledData
        attr_accessor :valueSignature           # 0-1 Signature
        attr_accessor :valueTiming              # 0-1 Timing
        attr_accessor :valueContactDetail       # 0-1 ContactDetail
        attr_accessor :valueContributor         # 0-1 Contributor
        attr_accessor :valueDataRequirement     # 0-1 DataRequirement
        attr_accessor :valueExpression          # 0-1 Expression
        attr_accessor :valueParameterDefinition # 0-1 ParameterDefinition
        attr_accessor :valueRelatedArtifact     # 0-1 RelatedArtifact
        attr_accessor :valueTriggerDefinition   # 0-1 TriggerDefinition
        attr_accessor :valueUsageContext        # 0-1 UsageContext
        attr_accessor :valueDosage              # 0-1 Dosage
        attr_accessor :valueMeta                # 0-1 Meta
        attr_accessor :resource                 # 0-1 Resource
        attr_accessor :part                     # 0-* [ Parameters::Parameter ]
      end

      attr_accessor :id             # 0-1 id
      attr_accessor :_id            # 0-1 Element
      attr_accessor :meta           # 0-1 Meta
      attr_accessor :implicitRules  # 0-1 uri
      attr_accessor :_implicitRules # 0-1 Element
      attr_accessor :language       # 0-1 code
      attr_accessor :_language      # 0-1 Element
      attr_accessor :parameter      # 0-* [ Parameters::Parameter ]

      def resourceType
        'Parameters'
      end
    end
  end
end