module FHIR
  module R4
    class Period < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'Period.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Period._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Period.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'start' => {'type'=>'dateTime', 'path'=>'Period.start', 'min'=>0, 'max'=>1},
        '_start' => {'type'=>'Element', 'path'=>'Period._start', 'min'=>0, 'max'=>1},
        'end' => {'type'=>'dateTime', 'path'=>'Period.end', 'min'=>0, 'max'=>1},
        '_end' => {'type'=>'Element', 'path'=>'Period._end', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :_id       # 0-1 Element
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :start     # 0-1 dateTime
      attr_accessor :_start    # 0-1 Element
      attr_accessor :end       # 0-1 dateTime
      attr_accessor :_end      # 0-1 Element
    end
  end
  Period = FHIR::R4::Period
end