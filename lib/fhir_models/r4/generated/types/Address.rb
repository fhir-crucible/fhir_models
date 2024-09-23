module FHIR
  module R4
    class Address < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'Address.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Address._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Address.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/address-use'=>['home', 'work', 'temp', 'old', 'billing']}, 'type'=>'code', 'path'=>'Address.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/address-use'}},
        '_use' => {'type'=>'Element', 'path'=>'Address._use', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/address-type'=>['postal', 'physical', 'both']}, 'type'=>'code', 'path'=>'Address.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/address-type'}},
        '_type' => {'type'=>'Element', 'path'=>'Address._type', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'string', 'path'=>'Address.text', 'min'=>0, 'max'=>1},
        '_text' => {'type'=>'Element', 'path'=>'Address._text', 'min'=>0, 'max'=>1},
        'line' => {'type'=>'string', 'path'=>'Address.line', 'min'=>0, 'max'=>Float::INFINITY},
        '_line' => {'type'=>'Element', 'path'=>'Address._line', 'min'=>0, 'max'=>Float::INFINITY},
        'city' => {'type'=>'string', 'path'=>'Address.city', 'min'=>0, 'max'=>1},
        '_city' => {'type'=>'Element', 'path'=>'Address._city', 'min'=>0, 'max'=>1},
        'district' => {'type'=>'string', 'path'=>'Address.district', 'min'=>0, 'max'=>1},
        '_district' => {'type'=>'Element', 'path'=>'Address._district', 'min'=>0, 'max'=>1},
        'state' => {'type'=>'string', 'path'=>'Address.state', 'min'=>0, 'max'=>1},
        '_state' => {'type'=>'Element', 'path'=>'Address._state', 'min'=>0, 'max'=>1},
        'postalCode' => {'type'=>'string', 'path'=>'Address.postalCode', 'min'=>0, 'max'=>1},
        '_postalCode' => {'type'=>'Element', 'path'=>'Address._postalCode', 'min'=>0, 'max'=>1},
        'country' => {'type'=>'string', 'path'=>'Address.country', 'min'=>0, 'max'=>1},
        '_country' => {'type'=>'Element', 'path'=>'Address._country', 'min'=>0, 'max'=>1},
        'period' => {'type'=>'Period', 'path'=>'Address.period', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id          # 0-1 string
      attr_accessor :_id         # 0-1 Element
      attr_accessor :extension   # 0-* [ Extension ]
      attr_accessor :use         # 0-1 code
      attr_accessor :_use        # 0-1 Element
      attr_accessor :type        # 0-1 code
      attr_accessor :_type       # 0-1 Element
      attr_accessor :text        # 0-1 string
      attr_accessor :_text       # 0-1 Element
      attr_accessor :line        # 0-* [ string ]
      attr_accessor :_line       # 0-* [ Element ]
      attr_accessor :city        # 0-1 string
      attr_accessor :_city       # 0-1 Element
      attr_accessor :district    # 0-1 string
      attr_accessor :_district   # 0-1 Element
      attr_accessor :state       # 0-1 string
      attr_accessor :_state      # 0-1 Element
      attr_accessor :postalCode  # 0-1 string
      attr_accessor :_postalCode # 0-1 Element
      attr_accessor :country     # 0-1 string
      attr_accessor :_country    # 0-1 Element
      attr_accessor :period      # 0-1 Period
    end
  end
  Address = FHIR::R4::Address
end