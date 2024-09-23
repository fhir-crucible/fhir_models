module FHIR
  module R4B
    class Location < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'endpoint', 'identifier', 'name', 'near', 'operational-status', 'organization', 'partof', 'status', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Location.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Location._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Location.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Location.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Location._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Location.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Location._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Location.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Location.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Location.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Location.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Location.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/location-status'=>['active', 'suspended', 'inactive']}, 'type'=>'code', 'path'=>'Location.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/location-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Location._status', 'min'=>0, 'max'=>1},
        'operationalStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0116'=>['C', 'H', 'O', 'U', 'K', 'I']}, 'type'=>'Coding', 'path'=>'Location.operationalStatus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0116'}},
        'name' => {'type'=>'string', 'path'=>'Location.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'Location._name', 'min'=>0, 'max'=>1},
        'alias' => {'type'=>'string', 'path'=>'Location.alias', 'min'=>0, 'max'=>Float::INFINITY},
        '_alias' => {'type'=>'Element', 'path'=>'Location._alias', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'string', 'path'=>'Location.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'Location._description', 'min'=>0, 'max'=>1},
        'mode' => {'valid_codes'=>{'http://hl7.org/fhir/location-mode'=>['instance', 'kind']}, 'type'=>'code', 'path'=>'Location.mode', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/location-mode'}},
        '_mode' => {'type'=>'Element', 'path'=>'Location._mode', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-RoleCode'=>['_DedicatedServiceDeliveryLocationRoleType', '_DedicatedClinicalLocationRoleType', 'DX', 'CVDX', 'CATH', 'ECHO', 'GIDX', 'ENDOS', 'RADDX', 'RADO', 'RNEU', 'HOSP', 'CHR', 'GACH', 'MHSP', 'PSYCHF', 'RH', 'RHAT', 'RHII', 'RHMAD', 'RHPI', 'RHPIH', 'RHPIMS', 'RHPIVS', 'RHYAD', 'HU', 'BMTU', 'CCU', 'CHEST', 'EPIL', 'ER', 'ETU', 'HD', 'HLAB', 'INLAB', 'OUTLAB', 'HRAD', 'HUSCS', 'ICU', 'PEDICU', 'PEDNICU', 'INPHARM', 'MBL', 'NCCS', 'NS', 'OUTPHARM', 'PEDU', 'PHU', 'RHU', 'SLEEP', 'NCCF', 'SNF', 'OF', 'ALL', 'AMPUT', 'BMTC', 'BREAST', 'CANC', 'CAPC', 'CARD', 'PEDCARD', 'COAG', 'CRS', 'DERM', 'ENDO', 'PEDE', 'ENT', 'FMC', 'GI', 'PEDGI', 'GIM', 'GYN', 'HEM', 'PEDHEM', 'HTN', 'IEC', 'INFD', 'PEDID', 'INV', 'LYMPH', 'MGEN', 'NEPH', 'PEDNEPH', 'NEUR', 'OB', 'OMS', 'ONCL', 'PEDHO', 'OPH', 'OPTC', 'ORTHO', 'HAND', 'PAINCL', 'PC', 'PEDC', 'PEDRHEUM', 'POD', 'PREV', 'PROCTO', 'PROFF', 'PROS', 'PSI', 'PSY', 'RHEUM', 'SPMED', 'SU', 'PLS', 'URO', 'TR', 'TRAVEL', 'WND', 'RTF', 'PRC', 'SURF', '_DedicatedNonClinicalLocationRoleType', 'DADDR', 'MOBL', 'AMB', 'PHARM', '_IncidentalServiceDeliveryLocationRoleType', 'ACC', 'COMM', 'CSC', 'PTRES', 'SCHOOL', 'UPC', 'WORK']}, 'type'=>'CodeableConcept', 'path'=>'Location.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType'}},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'Location.telecom', 'min'=>0, 'max'=>Float::INFINITY},
        'address' => {'type'=>'Address', 'path'=>'Location.address', 'min'=>0, 'max'=>1},
        'physicalType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/location-physical-type'=>['si', 'bu', 'wi', 'wa', 'lvl', 'co', 'ro', 'bd', 've', 'ho', 'ca', 'rd', 'area', 'jdn']}, 'type'=>'CodeableConcept', 'path'=>'Location.physicalType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/location-physical-type'}},
        'position' => {'type'=>'Location::Position', 'path'=>'Location.position', 'min'=>0, 'max'=>1},
        'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Location.managingOrganization', 'min'=>0, 'max'=>1},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Location.partOf', 'min'=>0, 'max'=>1},
        'hoursOfOperation' => {'type'=>'Location::HoursOfOperation', 'path'=>'Location.hoursOfOperation', 'min'=>0, 'max'=>Float::INFINITY},
        'availabilityExceptions' => {'type'=>'string', 'path'=>'Location.availabilityExceptions', 'min'=>0, 'max'=>1},
        '_availabilityExceptions' => {'type'=>'Element', 'path'=>'Location._availabilityExceptions', 'min'=>0, 'max'=>1},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'type'=>'Reference', 'path'=>'Location.endpoint', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Position < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Position.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Position._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Position.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Position.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'longitude' => {'type'=>'decimal', 'path'=>'Position.longitude', 'min'=>1, 'max'=>1},
          '_longitude' => {'type'=>'Element', 'path'=>'Position._longitude', 'min'=>0, 'max'=>1},
          'latitude' => {'type'=>'decimal', 'path'=>'Position.latitude', 'min'=>1, 'max'=>1},
          '_latitude' => {'type'=>'Element', 'path'=>'Position._latitude', 'min'=>0, 'max'=>1},
          'altitude' => {'type'=>'decimal', 'path'=>'Position.altitude', 'min'=>0, 'max'=>1},
          '_altitude' => {'type'=>'Element', 'path'=>'Position._altitude', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :longitude         # 1-1 decimal
        attr_accessor :_longitude        # 0-1 Element
        attr_accessor :latitude          # 1-1 decimal
        attr_accessor :_latitude         # 0-1 Element
        attr_accessor :altitude          # 0-1 decimal
        attr_accessor :_altitude         # 0-1 Element
      end

      class HoursOfOperation < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'HoursOfOperation.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'HoursOfOperation._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'HoursOfOperation.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'HoursOfOperation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'daysOfWeek' => {'valid_codes'=>{'http://hl7.org/fhir/days-of-week'=>['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']}, 'type'=>'code', 'path'=>'HoursOfOperation.daysOfWeek', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/days-of-week'}},
          '_daysOfWeek' => {'type'=>'Element', 'path'=>'HoursOfOperation._daysOfWeek', 'min'=>0, 'max'=>Float::INFINITY},
          'allDay' => {'type'=>'boolean', 'path'=>'HoursOfOperation.allDay', 'min'=>0, 'max'=>1},
          '_allDay' => {'type'=>'Element', 'path'=>'HoursOfOperation._allDay', 'min'=>0, 'max'=>1},
          'openingTime' => {'type'=>'time', 'path'=>'HoursOfOperation.openingTime', 'min'=>0, 'max'=>1},
          '_openingTime' => {'type'=>'Element', 'path'=>'HoursOfOperation._openingTime', 'min'=>0, 'max'=>1},
          'closingTime' => {'type'=>'time', 'path'=>'HoursOfOperation.closingTime', 'min'=>0, 'max'=>1},
          '_closingTime' => {'type'=>'Element', 'path'=>'HoursOfOperation._closingTime', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :daysOfWeek        # 0-* [ code ]
        attr_accessor :_daysOfWeek       # 0-* [ Element ]
        attr_accessor :allDay            # 0-1 boolean
        attr_accessor :_allDay           # 0-1 Element
        attr_accessor :openingTime       # 0-1 time
        attr_accessor :_openingTime      # 0-1 Element
        attr_accessor :closingTime       # 0-1 time
        attr_accessor :_closingTime      # 0-1 Element
      end

      attr_accessor :id                      # 0-1 id
      attr_accessor :_id                     # 0-1 Element
      attr_accessor :meta                    # 0-1 Meta
      attr_accessor :implicitRules           # 0-1 uri
      attr_accessor :_implicitRules          # 0-1 Element
      attr_accessor :language                # 0-1 code
      attr_accessor :_language               # 0-1 Element
      attr_accessor :text                    # 0-1 Narrative
      attr_accessor :contained               # 0-* [ Resource ]
      attr_accessor :extension               # 0-* [ Extension ]
      attr_accessor :modifierExtension       # 0-* [ Extension ]
      attr_accessor :identifier              # 0-* [ Identifier ]
      attr_accessor :status                  # 0-1 code
      attr_accessor :_status                 # 0-1 Element
      attr_accessor :operationalStatus       # 0-1 Coding
      attr_accessor :name                    # 0-1 string
      attr_accessor :_name                   # 0-1 Element
      attr_accessor :alias                   # 0-* [ string ]
      attr_accessor :_alias                  # 0-* [ Element ]
      attr_accessor :description             # 0-1 string
      attr_accessor :_description            # 0-1 Element
      attr_accessor :mode                    # 0-1 code
      attr_accessor :_mode                   # 0-1 Element
      attr_accessor :type                    # 0-* [ CodeableConcept ]
      attr_accessor :telecom                 # 0-* [ ContactPoint ]
      attr_accessor :address                 # 0-1 Address
      attr_accessor :physicalType            # 0-1 CodeableConcept
      attr_accessor :position                # 0-1 Location::Position
      attr_accessor :managingOrganization    # 0-1 Reference(Organization)
      attr_accessor :partOf                  # 0-1 Reference(Location)
      attr_accessor :hoursOfOperation        # 0-* [ Location::HoursOfOperation ]
      attr_accessor :availabilityExceptions  # 0-1 string
      attr_accessor :_availabilityExceptions # 0-1 Element
      attr_accessor :endpoint                # 0-* [ Reference(Endpoint) ]

      def resourceType
        'Location'
      end
    end
  end
end