module FHIR
  module R4
    class Timing < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'Timing.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Timing._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Timing.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Timing.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'event' => {'type'=>'dateTime', 'path'=>'Timing.event', 'min'=>0, 'max'=>Float::INFINITY},
        '_event' => {'type'=>'Element', 'path'=>'Timing._event', 'min'=>0, 'max'=>Float::INFINITY},
        'repeat' => {'type'=>'Timing::Repeat', 'path'=>'Timing.repeat', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation'=>['BID', 'TID', 'QID', 'AM', 'PM', 'QD', 'QOD', 'Q1H', 'Q2H', 'Q3H', 'Q4H', 'Q6H', 'Q8H', 'BED', 'WK', 'MO']}, 'type'=>'CodeableConcept', 'path'=>'Timing.code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/timing-abbreviation'}}
      }

      class Repeat < FHIR::Model
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
          'bounds' => ['Duration', 'Range', 'Period']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Repeat.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Repeat._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Repeat.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'boundsDuration' => {'type'=>'Duration', 'path'=>'Repeat.bounds[x]', 'min'=>0, 'max'=>1},
          'boundsRange' => {'type'=>'Range', 'path'=>'Repeat.bounds[x]', 'min'=>0, 'max'=>1},
          'boundsPeriod' => {'type'=>'Period', 'path'=>'Repeat.bounds[x]', 'min'=>0, 'max'=>1},
          'count' => {'type'=>'positiveInt', 'path'=>'Repeat.count', 'min'=>0, 'max'=>1},
          '_count' => {'type'=>'Element', 'path'=>'Repeat._count', 'min'=>0, 'max'=>1},
          'countMax' => {'type'=>'positiveInt', 'path'=>'Repeat.countMax', 'min'=>0, 'max'=>1},
          '_countMax' => {'type'=>'Element', 'path'=>'Repeat._countMax', 'min'=>0, 'max'=>1},
          'duration' => {'type'=>'decimal', 'path'=>'Repeat.duration', 'min'=>0, 'max'=>1},
          '_duration' => {'type'=>'Element', 'path'=>'Repeat._duration', 'min'=>0, 'max'=>1},
          'durationMax' => {'type'=>'decimal', 'path'=>'Repeat.durationMax', 'min'=>0, 'max'=>1},
          '_durationMax' => {'type'=>'Element', 'path'=>'Repeat._durationMax', 'min'=>0, 'max'=>1},
          'durationUnit' => {'valid_codes'=>{'http://unitsofmeasure.org'=>['s', 'min', 'h', 'd', 'wk', 'mo', 'a']}, 'type'=>'code', 'path'=>'Repeat.durationUnit', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/units-of-time'}},
          '_durationUnit' => {'type'=>'Element', 'path'=>'Repeat._durationUnit', 'min'=>0, 'max'=>1},
          'frequency' => {'type'=>'positiveInt', 'path'=>'Repeat.frequency', 'min'=>0, 'max'=>1},
          '_frequency' => {'type'=>'Element', 'path'=>'Repeat._frequency', 'min'=>0, 'max'=>1},
          'frequencyMax' => {'type'=>'positiveInt', 'path'=>'Repeat.frequencyMax', 'min'=>0, 'max'=>1},
          '_frequencyMax' => {'type'=>'Element', 'path'=>'Repeat._frequencyMax', 'min'=>0, 'max'=>1},
          'period' => {'type'=>'decimal', 'path'=>'Repeat.period', 'min'=>0, 'max'=>1},
          '_period' => {'type'=>'Element', 'path'=>'Repeat._period', 'min'=>0, 'max'=>1},
          'periodMax' => {'type'=>'decimal', 'path'=>'Repeat.periodMax', 'min'=>0, 'max'=>1},
          '_periodMax' => {'type'=>'Element', 'path'=>'Repeat._periodMax', 'min'=>0, 'max'=>1},
          'periodUnit' => {'valid_codes'=>{'http://unitsofmeasure.org'=>['s', 'min', 'h', 'd', 'wk', 'mo', 'a']}, 'type'=>'code', 'path'=>'Repeat.periodUnit', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/units-of-time'}},
          '_periodUnit' => {'type'=>'Element', 'path'=>'Repeat._periodUnit', 'min'=>0, 'max'=>1},
          'dayOfWeek' => {'valid_codes'=>{'http://hl7.org/fhir/days-of-week'=>['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']}, 'type'=>'code', 'path'=>'Repeat.dayOfWeek', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/days-of-week'}},
          '_dayOfWeek' => {'type'=>'Element', 'path'=>'Repeat._dayOfWeek', 'min'=>0, 'max'=>Float::INFINITY},
          'timeOfDay' => {'type'=>'time', 'path'=>'Repeat.timeOfDay', 'min'=>0, 'max'=>Float::INFINITY},
          '_timeOfDay' => {'type'=>'Element', 'path'=>'Repeat._timeOfDay', 'min'=>0, 'max'=>Float::INFINITY},
          'when' => {'valid_codes'=>{'http://hl7.org/fhir/event-timing'=>['MORN', 'MORN.early', 'MORN.late', 'NOON', 'AFT', 'AFT.early', 'AFT.late', 'EVE', 'EVE.early', 'EVE.late', 'NIGHT', 'PHS'], 'http://terminology.hl7.org/CodeSystem/v3-TimingEvent'=>['HS', 'WAKE', 'C', 'CM', 'CD', 'CV', 'AC', 'ACM', 'ACD', 'ACV', 'PC', 'PCM', 'PCD', 'PCV']}, 'type'=>'code', 'path'=>'Repeat.when', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/event-timing'}},
          '_when' => {'type'=>'Element', 'path'=>'Repeat._when', 'min'=>0, 'max'=>Float::INFINITY},
          'offset' => {'type'=>'unsignedInt', 'path'=>'Repeat.offset', 'min'=>0, 'max'=>1},
          '_offset' => {'type'=>'Element', 'path'=>'Repeat._offset', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id             # 0-1 string
        attr_accessor :_id            # 0-1 Element
        attr_accessor :extension      # 0-* [ Extension ]
        attr_accessor :boundsDuration # 0-1 Duration
        attr_accessor :boundsRange    # 0-1 Range
        attr_accessor :boundsPeriod   # 0-1 Period
        attr_accessor :count          # 0-1 positiveInt
        attr_accessor :_count         # 0-1 Element
        attr_accessor :countMax       # 0-1 positiveInt
        attr_accessor :_countMax      # 0-1 Element
        attr_accessor :duration       # 0-1 decimal
        attr_accessor :_duration      # 0-1 Element
        attr_accessor :durationMax    # 0-1 decimal
        attr_accessor :_durationMax   # 0-1 Element
        attr_accessor :durationUnit   # 0-1 code
        attr_accessor :_durationUnit  # 0-1 Element
        attr_accessor :frequency      # 0-1 positiveInt
        attr_accessor :_frequency     # 0-1 Element
        attr_accessor :frequencyMax   # 0-1 positiveInt
        attr_accessor :_frequencyMax  # 0-1 Element
        attr_accessor :period         # 0-1 decimal
        attr_accessor :_period        # 0-1 Element
        attr_accessor :periodMax      # 0-1 decimal
        attr_accessor :_periodMax     # 0-1 Element
        attr_accessor :periodUnit     # 0-1 code
        attr_accessor :_periodUnit    # 0-1 Element
        attr_accessor :dayOfWeek      # 0-* [ code ]
        attr_accessor :_dayOfWeek     # 0-* [ Element ]
        attr_accessor :timeOfDay      # 0-* [ time ]
        attr_accessor :_timeOfDay     # 0-* [ Element ]
        attr_accessor :when           # 0-* [ code ]
        attr_accessor :_when          # 0-* [ Element ]
        attr_accessor :offset         # 0-1 unsignedInt
        attr_accessor :_offset        # 0-1 Element
      end

      attr_accessor :id                # 0-1 string
      attr_accessor :_id               # 0-1 Element
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :event             # 0-* [ dateTime ]
      attr_accessor :_event            # 0-* [ Element ]
      attr_accessor :repeat            # 0-1 Timing::Repeat
      attr_accessor :code              # 0-1 CodeableConcept
    end
  end
  Timing = FHIR::R4::Timing
end