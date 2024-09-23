module FHIR
  module R4
    class ContactPoint < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'ContactPoint.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ContactPoint._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'ContactPoint.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'system' => {'valid_codes'=>{'http://hl7.org/fhir/contact-point-system'=>['phone', 'fax', 'email', 'pager', 'url', 'sms', 'other']}, 'type'=>'code', 'path'=>'ContactPoint.system', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contact-point-system'}},
        '_system' => {'type'=>'Element', 'path'=>'ContactPoint._system', 'min'=>0, 'max'=>1},
        'value' => {'type'=>'string', 'path'=>'ContactPoint.value', 'min'=>0, 'max'=>1},
        '_value' => {'type'=>'Element', 'path'=>'ContactPoint._value', 'min'=>0, 'max'=>1},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/contact-point-use'=>['home', 'work', 'temp', 'old', 'mobile']}, 'type'=>'code', 'path'=>'ContactPoint.use', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contact-point-use'}},
        '_use' => {'type'=>'Element', 'path'=>'ContactPoint._use', 'min'=>0, 'max'=>1},
        'rank' => {'type'=>'positiveInt', 'path'=>'ContactPoint.rank', 'min'=>0, 'max'=>1},
        '_rank' => {'type'=>'Element', 'path'=>'ContactPoint._rank', 'min'=>0, 'max'=>1},
        'period' => {'type'=>'Period', 'path'=>'ContactPoint.period', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :_id       # 0-1 Element
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :system    # 0-1 code
      attr_accessor :_system   # 0-1 Element
      attr_accessor :value     # 0-1 string
      attr_accessor :_value    # 0-1 Element
      attr_accessor :use       # 0-1 code
      attr_accessor :_use      # 0-1 Element
      attr_accessor :rank      # 0-1 positiveInt
      attr_accessor :_rank     # 0-1 Element
      attr_accessor :period    # 0-1 Period
    end
  end
  ContactPoint = FHIR::R4::ContactPoint
end