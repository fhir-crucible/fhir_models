module FHIR
  module R4
    class UsageContext < FHIR::Model
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
        'value' => ['CodeableConcept', 'Quantity', 'Range', 'Reference']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'UsageContext.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'UsageContext._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'UsageContext.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/usage-context-type'=>['gender', 'age', 'focus', 'user', 'workflow', 'task', 'venue', 'species', 'program']}, 'type'=>'Coding', 'path'=>'UsageContext.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/usage-context-type'}},
        'valueCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'UsageContext.value[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/use-context'}},
        'valueQuantity' => {'type'=>'Quantity', 'path'=>'UsageContext.value[x]', 'min'=>1, 'max'=>1},
        'valueRange' => {'type'=>'Range', 'path'=>'UsageContext.value[x]', 'min'=>1, 'max'=>1},
        'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/PlanDefinition', 'http://hl7.org/fhir/StructureDefinition/ResearchStudy', 'http://hl7.org/fhir/StructureDefinition/InsurancePlan', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'UsageContext.value[x]', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id                   # 0-1 string
      attr_accessor :_id                  # 0-1 Element
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :code                 # 1-1 Coding
      attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
      attr_accessor :valueQuantity        # 1-1 Quantity
      attr_accessor :valueRange           # 1-1 Range
      attr_accessor :valueReference       # 1-1 Reference(PlanDefinition|ResearchStudy|InsurancePlan|HealthcareService|Group|Location|Organization)
    end
  end
  UsageContext = FHIR::R4::UsageContext
end