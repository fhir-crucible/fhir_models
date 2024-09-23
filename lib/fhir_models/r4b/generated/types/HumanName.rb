module FHIR
  module R4B
    class HumanName < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'HumanName.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'HumanName._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'HumanName.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/name-use'=>['usual', 'official', 'temp', 'nickname', 'anonymous', 'old', 'maiden']}, 'type'=>'code', 'path'=>'HumanName.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/name-use'}},
        '_use' => {'type'=>'Element', 'path'=>'HumanName._use', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'string', 'path'=>'HumanName.text', 'min'=>0, 'max'=>1},
        '_text' => {'type'=>'Element', 'path'=>'HumanName._text', 'min'=>0, 'max'=>1},
        'family' => {'type'=>'string', 'path'=>'HumanName.family', 'min'=>0, 'max'=>1},
        '_family' => {'type'=>'Element', 'path'=>'HumanName._family', 'min'=>0, 'max'=>1},
        'given' => {'type'=>'string', 'path'=>'HumanName.given', 'min'=>0, 'max'=>Float::INFINITY},
        '_given' => {'type'=>'Element', 'path'=>'HumanName._given', 'min'=>0, 'max'=>Float::INFINITY},
        'prefix' => {'type'=>'string', 'path'=>'HumanName.prefix', 'min'=>0, 'max'=>Float::INFINITY},
        '_prefix' => {'type'=>'Element', 'path'=>'HumanName._prefix', 'min'=>0, 'max'=>Float::INFINITY},
        'suffix' => {'type'=>'string', 'path'=>'HumanName.suffix', 'min'=>0, 'max'=>Float::INFINITY},
        '_suffix' => {'type'=>'Element', 'path'=>'HumanName._suffix', 'min'=>0, 'max'=>Float::INFINITY},
        'period' => {'type'=>'Period', 'path'=>'HumanName.period', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :_id       # 0-1 Element
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :use       # 0-1 code
      attr_accessor :_use      # 0-1 Element
      attr_accessor :text      # 0-1 string
      attr_accessor :_text     # 0-1 Element
      attr_accessor :family    # 0-1 string
      attr_accessor :_family   # 0-1 Element
      attr_accessor :given     # 0-* [ string ]
      attr_accessor :_given    # 0-* [ Element ]
      attr_accessor :prefix    # 0-* [ string ]
      attr_accessor :_prefix   # 0-* [ Element ]
      attr_accessor :suffix    # 0-* [ string ]
      attr_accessor :_suffix   # 0-* [ Element ]
      attr_accessor :period    # 0-1 Period
    end
  end
end