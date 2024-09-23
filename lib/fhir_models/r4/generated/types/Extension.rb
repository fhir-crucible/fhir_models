module FHIR
  module R4
    class Extension < FHIR::Model
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
        'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Extension.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Extension._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Extension.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'Extension.url', 'min'=>1, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'Extension._url', 'min'=>0, 'max'=>1},
        'valueBase64Binary' => {'type'=>'base64Binary', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueBase64Binary' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueBoolean' => {'type'=>'boolean', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueBoolean' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueCanonical' => {'type'=>'canonical', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueCanonical' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueCode' => {'type'=>'code', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueCode' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueDate' => {'type'=>'date', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueDate' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueDateTime' => {'type'=>'dateTime', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueDateTime' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueDecimal' => {'type'=>'decimal', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueDecimal' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueId' => {'type'=>'id', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueId' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueInstant' => {'type'=>'instant', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueInstant' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueInteger' => {'type'=>'integer', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueInteger' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueMarkdown' => {'type'=>'markdown', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueMarkdown' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueOid' => {'type'=>'oid', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueOid' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valuePositiveInt' => {'type'=>'positiveInt', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valuePositiveInt' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueString' => {'type'=>'string', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueString' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueTime' => {'type'=>'time', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueTime' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueUnsignedInt' => {'type'=>'unsignedInt', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueUnsignedInt' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueUri' => {'type'=>'uri', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueUri' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueUrl' => {'type'=>'url', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueUrl' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueUuid' => {'type'=>'uuid', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        '_valueUuid' => {'type'=>'Element', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueAddress' => {'type'=>'Address', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueAge' => {'type'=>'Age', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueAnnotation' => {'type'=>'Annotation', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueAttachment' => {'type'=>'Attachment', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueCoding' => {'type'=>'Coding', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueContactPoint' => {'type'=>'ContactPoint', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueCount' => {'type'=>'Count', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueDistance' => {'type'=>'Distance', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueDuration' => {'type'=>'Duration', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueHumanName' => {'type'=>'HumanName', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueIdentifier' => {'type'=>'Identifier', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueMoney' => {'type'=>'Money', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valuePeriod' => {'type'=>'Period', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueQuantity' => {'type'=>'Quantity', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueRange' => {'type'=>'Range', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueRatio' => {'type'=>'Ratio', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueReference' => {'type'=>'Reference', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueSampledData' => {'type'=>'SampledData', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueSignature' => {'type'=>'Signature', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueTiming' => {'type'=>'Timing', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueContactDetail' => {'type'=>'ContactDetail', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueContributor' => {'type'=>'Contributor', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueDataRequirement' => {'type'=>'DataRequirement', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueExpression' => {'type'=>'Expression', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueParameterDefinition' => {'type'=>'ParameterDefinition', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueRelatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueTriggerDefinition' => {'type'=>'TriggerDefinition', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueUsageContext' => {'type'=>'UsageContext', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueDosage' => {'type'=>'Dosage', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1},
        'valueMeta' => {'type'=>'Meta', 'path'=>'Extension.value[x]', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                       # 0-1 string
      attr_accessor :_id                      # 0-1 Element
      attr_accessor :extension                # 0-* [ Extension ]
      attr_accessor :url                      # 1-1 uri
      attr_accessor :_url                     # 0-1 Element
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
    end
  end
  Extension = FHIR::R4::Extension
end