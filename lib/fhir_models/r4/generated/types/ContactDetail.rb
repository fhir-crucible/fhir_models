module FHIR
  module R4
    class ContactDetail < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'ContactDetail.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ContactDetail._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'ContactDetail.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'string', 'path'=>'ContactDetail.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'ContactDetail._name', 'min'=>0, 'max'=>1},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'ContactDetail.telecom', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :_id       # 0-1 Element
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :name      # 0-1 string
      attr_accessor :_name     # 0-1 Element
      attr_accessor :telecom   # 0-* [ ContactPoint ]
    end
  end
  ContactDetail = FHIR::R4::ContactDetail
end