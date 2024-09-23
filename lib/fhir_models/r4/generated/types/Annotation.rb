module FHIR
  module R4
    class Annotation < FHIR::Model
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
        'author' => ['Reference', 'string']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Annotation.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Annotation._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Annotation.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'authorReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Annotation.author[x]', 'min'=>0, 'max'=>1},
        'authorString' => {'type'=>'string', 'path'=>'Annotation.author[x]', 'min'=>0, 'max'=>1},
        '_authorString' => {'type'=>'Element', 'path'=>'Annotation.author[x]', 'min'=>0, 'max'=>1},
        'time' => {'type'=>'dateTime', 'path'=>'Annotation.time', 'min'=>0, 'max'=>1},
        '_time' => {'type'=>'Element', 'path'=>'Annotation._time', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'markdown', 'path'=>'Annotation.text', 'min'=>1, 'max'=>1},
        '_text' => {'type'=>'Element', 'path'=>'Annotation._text', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id              # 0-1 string
      attr_accessor :_id             # 0-1 Element
      attr_accessor :extension       # 0-* [ Extension ]
      attr_accessor :authorReference # 0-1 Reference(Practitioner|Patient|RelatedPerson|Organization)
      attr_accessor :authorString    # 0-1 string
      attr_accessor :_authorString   # 0-1 Element
      attr_accessor :time            # 0-1 dateTime
      attr_accessor :_time           # 0-1 Element
      attr_accessor :text            # 1-1 markdown
      attr_accessor :_text           # 0-1 Element
    end
  end
  Annotation = FHIR::R4::Annotation
end