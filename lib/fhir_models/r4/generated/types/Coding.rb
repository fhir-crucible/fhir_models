module FHIR
  module R4
    class Coding < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'Coding.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Coding._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Coding.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'system' => {'type'=>'uri', 'path'=>'Coding.system', 'min'=>0, 'max'=>1},
        '_system' => {'type'=>'Element', 'path'=>'Coding._system', 'min'=>0, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'Coding.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'Coding._version', 'min'=>0, 'max'=>1},
        'code' => {'type'=>'code', 'path'=>'Coding.code', 'min'=>0, 'max'=>1},
        '_code' => {'type'=>'Element', 'path'=>'Coding._code', 'min'=>0, 'max'=>1},
        'display' => {'type'=>'string', 'path'=>'Coding.display', 'min'=>0, 'max'=>1},
        '_display' => {'type'=>'Element', 'path'=>'Coding._display', 'min'=>0, 'max'=>1},
        'userSelected' => {'type'=>'boolean', 'path'=>'Coding.userSelected', 'min'=>0, 'max'=>1},
        '_userSelected' => {'type'=>'Element', 'path'=>'Coding._userSelected', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id            # 0-1 string
      attr_accessor :_id           # 0-1 Element
      attr_accessor :extension     # 0-* [ Extension ]
      attr_accessor :system        # 0-1 uri
      attr_accessor :_system       # 0-1 Element
      attr_accessor :version       # 0-1 string
      attr_accessor :_version      # 0-1 Element
      attr_accessor :code          # 0-1 code
      attr_accessor :_code         # 0-1 Element
      attr_accessor :display       # 0-1 string
      attr_accessor :_display      # 0-1 Element
      attr_accessor :userSelected  # 0-1 boolean
      attr_accessor :_userSelected # 0-1 Element
    end
  end
  Coding = FHIR::R4::Coding
end