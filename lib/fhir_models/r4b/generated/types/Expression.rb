module FHIR
  module R4B
    class Expression < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'Expression.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Expression._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Expression.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'string', 'path'=>'Expression.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'Expression._description', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'id', 'path'=>'Expression.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'Expression._name', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'http://hl7.org/fhir/expression-language'=>['text/cql', 'text/fhirpath', 'application/x-fhir-query', 'text/cql-identifier', 'text/cql-expression']}, 'type'=>'code', 'path'=>'Expression.language', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/expression-language'}},
        '_language' => {'type'=>'Element', 'path'=>'Expression._language', 'min'=>0, 'max'=>1},
        'expression' => {'type'=>'string', 'path'=>'Expression.expression', 'min'=>0, 'max'=>1},
        '_expression' => {'type'=>'Element', 'path'=>'Expression._expression', 'min'=>0, 'max'=>1},
        'reference' => {'type'=>'uri', 'path'=>'Expression.reference', 'min'=>0, 'max'=>1},
        '_reference' => {'type'=>'Element', 'path'=>'Expression._reference', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id           # 0-1 string
      attr_accessor :_id          # 0-1 Element
      attr_accessor :extension    # 0-* [ Extension ]
      attr_accessor :description  # 0-1 string
      attr_accessor :_description # 0-1 Element
      attr_accessor :name         # 0-1 id
      attr_accessor :_name        # 0-1 Element
      attr_accessor :language     # 1-1 code
      attr_accessor :_language    # 0-1 Element
      attr_accessor :expression   # 0-1 string
      attr_accessor :_expression  # 0-1 Element
      attr_accessor :reference    # 0-1 uri
      attr_accessor :_reference   # 0-1 Element
    end
  end
end