module FHIR
  module R4
    class Immunization < FHIR::Model
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
        'occurrence' => ['dateTime', 'string']
      }
      SEARCH_PARAMS = ['date', 'identifier', 'location', 'lot-number', 'manufacturer', 'patient', 'performer', 'reaction', 'reaction-date', 'reason-code', 'reason-reference', 'series', 'status', 'status-reason', 'target-disease', 'vaccine-code']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Immunization.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Immunization._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Immunization.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Immunization.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Immunization._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Immunization.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Immunization._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'Immunization.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Immunization.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Immunization.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Immunization.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Immunization.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/event-status'=>['completed', 'entered-in-error', 'not-done']}, 'type'=>'code', 'path'=>'Immunization.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-status'}},
        '_status' => {'type'=>'Element', 'path'=>'Immunization._status', 'min'=>0, 'max'=>1},
        'statusReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['IMMUNE', 'MEDPREC', 'OSTOCK', 'PATOBJ'], 'http://snomed.info/sct'=>['171257003', '171265000', '171266004', '171267008', '171268003', '171269006', '171270007', '171271006', '171272004', '171280006', '171283008', '171285001', '171286000', '171291004', '171292006', '171293001', '268559007', '310839003', '310840001', '314768003', '314769006', '314936001', '407598009']}, 'type'=>'CodeableConcept', 'path'=>'Immunization.statusReason', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-status-reason'}},
        'vaccineCode' => {'valid_codes'=>{'http://hl7.org/fhir/sid/cvx'=>['143', '54', '55', '82', '24', '181', '801', '19', '27', '173', '174', '26', '172', '29', '56', '12', '28', '20', '106', '107', '146', '110', '50', '120', '130', '132', '170', '01', '22', '102', '57', '30', '52', '154', '169', '83', '84', '31', '85', '104', '193', '08', '42', '43', '44', '45', '58', '59', '189', '60', '47', '46', '49', '48', '17', '51', '61', '118', '62', '137', '165', '86', '14', '87', '160', '151', '123', '135', '153', '171', '186', '158', '150', '161', '166', '111', '149', '155', '185', '141', '140', '144', '15', '168', '88', '16', '10', '134', '39', '129', '63', '64', '65', '66', '04', '67', '05', '68', '191', '192', '108', '163', '162', '164', '103', '148', '147', '136', '114', '32', '167', '03', '94', '07', '127', '128', '125', '126', '02', '179', '178', '182', '69', '177', '11', '23', '133', '100', '152', '33', '109', '89', '70', '175', '176', '40', '18', '90', '72', '159', '157', '156', '73', '34', '119', '116', '74', '122', '71', '93', '145', '06', '38', '76', '138', '09', '113', '139', '115', '180', '35', '142', '112', '77', '13', '98', '95', '96', '97', '78', '190', '25', '41', '53', '91', '101', '131', '75', '105', '79', '21', '81', '80', '92', '36', '117', '37', '183', '184', '121', '187', '188', '998', '99', '999'], 'urn:oid:1.2.36.1.2001.1005.17'=>['AGRPAL', 'AVAXM', 'BCG', 'CDT', 'CMX', 'DTP', 'DTPA', 'ENGP', 'FLRIX', 'FLUVAX', 'FLVRN', 'FVXJNR', 'GNDIP', 'GNFLU', 'GNHEP', 'GNHIB', 'GNHPA', 'GNJEN', 'GNMEA', 'GNMEN', 'GNMUM', 'GNPNE', 'GNPOL', 'GNROX', 'GNRUB', 'GNTET', 'GNVAR', 'HATWNJ', 'HAVAQ', 'HAVJ', 'HBOC', 'HBV', 'HBVP', 'HBX', 'IFHX', 'IFIP', 'IFPA', 'IFX', 'IFXB', 'INFLUV', 'IPV', 'JEVAX', 'MENJUG', 'MENTEC', 'MENUME', 'MENVAX', 'MMR', 'MMRCSL', 'MMRSKB', 'MNTRX', 'NEISVC', 'OPV', 'P', 'PANVAX', 'PDCL', 'PLCL', 'PNEUMO', 'PRPD', 'PROQAD', 'PRPOMP', 'PRPT', 'PRVNR', 'PRVTH', 'PRXTEX', 'QDCL', 'ROTRIX', 'ROTTEQ', 'SYNFLX', 'TCL', 'VAXGRP', 'VGRJNR', 'VLRIX', 'VRVAX']}, 'type'=>'CodeableConcept', 'path'=>'Immunization.vaccineCode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vaccine-code'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'Immunization.patient', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'type'=>'Reference', 'path'=>'Immunization.encounter', 'min'=>0, 'max'=>1},
        'occurrenceDateTime' => {'type'=>'dateTime', 'path'=>'Immunization.occurrence[x]', 'min'=>1, 'max'=>1},
        '_occurrenceDateTime' => {'type'=>'Element', 'path'=>'Immunization.occurrence[x]', 'min'=>0, 'max'=>1},
        'occurrenceString' => {'type'=>'string', 'path'=>'Immunization.occurrence[x]', 'min'=>1, 'max'=>1},
        '_occurrenceString' => {'type'=>'Element', 'path'=>'Immunization.occurrence[x]', 'min'=>0, 'max'=>1},
        'recorded' => {'type'=>'dateTime', 'path'=>'Immunization.recorded', 'min'=>0, 'max'=>1},
        '_recorded' => {'type'=>'Element', 'path'=>'Immunization._recorded', 'min'=>0, 'max'=>1},
        'primarySource' => {'type'=>'boolean', 'path'=>'Immunization.primarySource', 'min'=>0, 'max'=>1},
        '_primarySource' => {'type'=>'Element', 'path'=>'Immunization._primarySource', 'min'=>0, 'max'=>1},
        'reportOrigin' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-origin'=>['provider', 'record', 'recall', 'school']}, 'type'=>'CodeableConcept', 'path'=>'Immunization.reportOrigin', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-origin'}},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Immunization.location', 'min'=>0, 'max'=>1},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Immunization.manufacturer', 'min'=>0, 'max'=>1},
        'lotNumber' => {'type'=>'string', 'path'=>'Immunization.lotNumber', 'min'=>0, 'max'=>1},
        '_lotNumber' => {'type'=>'Element', 'path'=>'Immunization._lotNumber', 'min'=>0, 'max'=>1},
        'expirationDate' => {'type'=>'date', 'path'=>'Immunization.expirationDate', 'min'=>0, 'max'=>1},
        '_expirationDate' => {'type'=>'Element', 'path'=>'Immunization._expirationDate', 'min'=>0, 'max'=>1},
        'site' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActSite'=>['LA', 'RA']}, 'type'=>'CodeableConcept', 'path'=>'Immunization.site', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-site'}},
        'route' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration'=>['IDINJ', 'IM', 'NASINHLC', 'IVINJ', 'PO', 'SQ', 'TRNSDERM']}, 'type'=>'CodeableConcept', 'path'=>'Immunization.route', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-route'}},
        'doseQuantity' => {'type'=>'Quantity', 'path'=>'Immunization.doseQuantity', 'min'=>0, 'max'=>1},
        'performer' => {'type'=>'Immunization::Performer', 'path'=>'Immunization.performer', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'type'=>'Annotation', 'path'=>'Immunization.note', 'min'=>0, 'max'=>Float::INFINITY},
        'reasonCode' => {'valid_codes'=>{'http://snomed.info/sct'=>['429060002', '281657000']}, 'type'=>'CodeableConcept', 'path'=>'Immunization.reasonCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-reason'}},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport'], 'type'=>'Reference', 'path'=>'Immunization.reasonReference', 'min'=>0, 'max'=>Float::INFINITY},
        'isSubpotent' => {'type'=>'boolean', 'path'=>'Immunization.isSubpotent', 'min'=>0, 'max'=>1},
        '_isSubpotent' => {'type'=>'Element', 'path'=>'Immunization._isSubpotent', 'min'=>0, 'max'=>1},
        'subpotentReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-subpotent-reason'=>['partial', 'coldchainbreak', 'recall']}, 'type'=>'CodeableConcept', 'path'=>'Immunization.subpotentReason', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-subpotent-reason'}},
        'education' => {'type'=>'Immunization::Education', 'path'=>'Immunization.education', 'min'=>0, 'max'=>Float::INFINITY},
        'programEligibility' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-program-eligibility'=>['ineligible', 'uninsured']}, 'type'=>'CodeableConcept', 'path'=>'Immunization.programEligibility', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-program-eligibility'}},
        'fundingSource' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-funding-source'=>['private', 'public']}, 'type'=>'CodeableConcept', 'path'=>'Immunization.fundingSource', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-funding-source'}},
        'reaction' => {'type'=>'Immunization::Reaction', 'path'=>'Immunization.reaction', 'min'=>0, 'max'=>Float::INFINITY},
        'protocolApplied' => {'type'=>'Immunization::ProtocolApplied', 'path'=>'Immunization.protocolApplied', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Performer < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4'
        end

        def module_version
          FHIR::R4
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Performer.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Performer._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Performer.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Performer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'function' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0443'=>['OP', 'AP']}, 'type'=>'CodeableConcept', 'path'=>'Performer.function', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-function'}},
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Performer.actor', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :function          # 0-1 CodeableConcept
        attr_accessor :actor             # 1-1 Reference(Practitioner|PractitionerRole|Organization)
      end

      class Education < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4'
        end

        def module_version
          FHIR::R4
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Education.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Education._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Education.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Education.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'documentType' => {'type'=>'string', 'path'=>'Education.documentType', 'min'=>0, 'max'=>1},
          '_documentType' => {'type'=>'Element', 'path'=>'Education._documentType', 'min'=>0, 'max'=>1},
          'reference' => {'type'=>'uri', 'path'=>'Education.reference', 'min'=>0, 'max'=>1},
          '_reference' => {'type'=>'Element', 'path'=>'Education._reference', 'min'=>0, 'max'=>1},
          'publicationDate' => {'type'=>'dateTime', 'path'=>'Education.publicationDate', 'min'=>0, 'max'=>1},
          '_publicationDate' => {'type'=>'Element', 'path'=>'Education._publicationDate', 'min'=>0, 'max'=>1},
          'presentationDate' => {'type'=>'dateTime', 'path'=>'Education.presentationDate', 'min'=>0, 'max'=>1},
          '_presentationDate' => {'type'=>'Element', 'path'=>'Education._presentationDate', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :documentType      # 0-1 string
        attr_accessor :_documentType     # 0-1 Element
        attr_accessor :reference         # 0-1 uri
        attr_accessor :_reference        # 0-1 Element
        attr_accessor :publicationDate   # 0-1 dateTime
        attr_accessor :_publicationDate  # 0-1 Element
        attr_accessor :presentationDate  # 0-1 dateTime
        attr_accessor :_presentationDate # 0-1 Element
      end

      class Reaction < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4'
        end

        def module_version
          FHIR::R4
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Reaction.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Reaction._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Reaction.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Reaction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'date' => {'type'=>'dateTime', 'path'=>'Reaction.date', 'min'=>0, 'max'=>1},
          '_date' => {'type'=>'Element', 'path'=>'Reaction._date', 'min'=>0, 'max'=>1},
          'detail' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Observation'], 'type'=>'Reference', 'path'=>'Reaction.detail', 'min'=>0, 'max'=>1},
          'reported' => {'type'=>'boolean', 'path'=>'Reaction.reported', 'min'=>0, 'max'=>1},
          '_reported' => {'type'=>'Element', 'path'=>'Reaction._reported', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :date              # 0-1 dateTime
        attr_accessor :_date             # 0-1 Element
        attr_accessor :detail            # 0-1 Reference(Observation)
        attr_accessor :reported          # 0-1 boolean
        attr_accessor :_reported         # 0-1 Element
      end

      class ProtocolApplied < FHIR::Model
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
          'doseNumber' => ['positiveInt', 'string'],
          'seriesDoses' => ['positiveInt', 'string']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'ProtocolApplied.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'ProtocolApplied._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ProtocolApplied.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'ProtocolApplied.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'series' => {'type'=>'string', 'path'=>'ProtocolApplied.series', 'min'=>0, 'max'=>1},
          '_series' => {'type'=>'Element', 'path'=>'ProtocolApplied._series', 'min'=>0, 'max'=>1},
          'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ProtocolApplied.authority', 'min'=>0, 'max'=>1},
          'targetDisease' => {'valid_codes'=>{'http://snomed.info/sct'=>['1857005', '397430003', '14189004', '36989005', '36653000', '76902006', '709410003', '27836007', '398102009']}, 'type'=>'CodeableConcept', 'path'=>'ProtocolApplied.targetDisease', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-target-disease'}},
          'doseNumberPositiveInt' => {'type'=>'positiveInt', 'path'=>'ProtocolApplied.doseNumber[x]', 'min'=>1, 'max'=>1},
          '_doseNumberPositiveInt' => {'type'=>'Element', 'path'=>'ProtocolApplied.doseNumber[x]', 'min'=>0, 'max'=>1},
          'doseNumberString' => {'type'=>'string', 'path'=>'ProtocolApplied.doseNumber[x]', 'min'=>1, 'max'=>1},
          '_doseNumberString' => {'type'=>'Element', 'path'=>'ProtocolApplied.doseNumber[x]', 'min'=>0, 'max'=>1},
          'seriesDosesPositiveInt' => {'type'=>'positiveInt', 'path'=>'ProtocolApplied.seriesDoses[x]', 'min'=>0, 'max'=>1},
          '_seriesDosesPositiveInt' => {'type'=>'Element', 'path'=>'ProtocolApplied.seriesDoses[x]', 'min'=>0, 'max'=>1},
          'seriesDosesString' => {'type'=>'string', 'path'=>'ProtocolApplied.seriesDoses[x]', 'min'=>0, 'max'=>1},
          '_seriesDosesString' => {'type'=>'Element', 'path'=>'ProtocolApplied.seriesDoses[x]', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                      # 0-1 string
        attr_accessor :_id                     # 0-1 Element
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :series                  # 0-1 string
        attr_accessor :_series                 # 0-1 Element
        attr_accessor :authority               # 0-1 Reference(Organization)
        attr_accessor :targetDisease           # 0-* [ CodeableConcept ]
        attr_accessor :doseNumberPositiveInt   # 1-1 positiveInt
        attr_accessor :_doseNumberPositiveInt  # 0-1 Element
        attr_accessor :doseNumberString        # 1-1 string
        attr_accessor :_doseNumberString       # 0-1 Element
        attr_accessor :seriesDosesPositiveInt  # 0-1 positiveInt
        attr_accessor :_seriesDosesPositiveInt # 0-1 Element
        attr_accessor :seriesDosesString       # 0-1 string
        attr_accessor :_seriesDosesString      # 0-1 Element
      end

      attr_accessor :id                  # 0-1 id
      attr_accessor :_id                 # 0-1 Element
      attr_accessor :meta                # 0-1 Meta
      attr_accessor :implicitRules       # 0-1 uri
      attr_accessor :_implicitRules      # 0-1 Element
      attr_accessor :language            # 0-1 code
      attr_accessor :_language           # 0-1 Element
      attr_accessor :text                # 0-1 Narrative
      attr_accessor :contained           # 0-* [ Resource ]
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :identifier          # 0-* [ Identifier ]
      attr_accessor :status              # 1-1 code
      attr_accessor :_status             # 0-1 Element
      attr_accessor :statusReason        # 0-1 CodeableConcept
      attr_accessor :vaccineCode         # 1-1 CodeableConcept
      attr_accessor :patient             # 1-1 Reference(Patient)
      attr_accessor :encounter           # 0-1 Reference(Encounter)
      attr_accessor :occurrenceDateTime  # 1-1 dateTime
      attr_accessor :_occurrenceDateTime # 0-1 Element
      attr_accessor :occurrenceString    # 1-1 string
      attr_accessor :_occurrenceString   # 0-1 Element
      attr_accessor :recorded            # 0-1 dateTime
      attr_accessor :_recorded           # 0-1 Element
      attr_accessor :primarySource       # 0-1 boolean
      attr_accessor :_primarySource      # 0-1 Element
      attr_accessor :reportOrigin        # 0-1 CodeableConcept
      attr_accessor :location            # 0-1 Reference(Location)
      attr_accessor :manufacturer        # 0-1 Reference(Organization)
      attr_accessor :lotNumber           # 0-1 string
      attr_accessor :_lotNumber          # 0-1 Element
      attr_accessor :expirationDate      # 0-1 date
      attr_accessor :_expirationDate     # 0-1 Element
      attr_accessor :site                # 0-1 CodeableConcept
      attr_accessor :route               # 0-1 CodeableConcept
      attr_accessor :doseQuantity        # 0-1 Quantity
      attr_accessor :performer           # 0-* [ Immunization::Performer ]
      attr_accessor :note                # 0-* [ Annotation ]
      attr_accessor :reasonCode          # 0-* [ CodeableConcept ]
      attr_accessor :reasonReference     # 0-* [ Reference(Condition|Observation|DiagnosticReport) ]
      attr_accessor :isSubpotent         # 0-1 boolean
      attr_accessor :_isSubpotent        # 0-1 Element
      attr_accessor :subpotentReason     # 0-* [ CodeableConcept ]
      attr_accessor :education           # 0-* [ Immunization::Education ]
      attr_accessor :programEligibility  # 0-* [ CodeableConcept ]
      attr_accessor :fundingSource       # 0-1 CodeableConcept
      attr_accessor :reaction            # 0-* [ Immunization::Reaction ]
      attr_accessor :protocolApplied     # 0-* [ Immunization::ProtocolApplied ]

      def resourceType
        'Immunization'
      end
    end
  end
  Immunization = FHIR::R4::Immunization
end