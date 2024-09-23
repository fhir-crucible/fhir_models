module FHIR
  module R4
    class ImmunizationRecommendation < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['date', 'identifier', 'information', 'patient', 'status', 'support', 'target-disease', 'vaccine-type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ImmunizationRecommendation.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ImmunizationRecommendation._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ImmunizationRecommendation.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ImmunizationRecommendation.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'ImmunizationRecommendation._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'ImmunizationRecommendation.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'ImmunizationRecommendation._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'ImmunizationRecommendation.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ImmunizationRecommendation.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ImmunizationRecommendation.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ImmunizationRecommendation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'ImmunizationRecommendation.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'ImmunizationRecommendation.patient', 'min'=>1, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'ImmunizationRecommendation.date', 'min'=>1, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'ImmunizationRecommendation._date', 'min'=>0, 'max'=>1},
        'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ImmunizationRecommendation.authority', 'min'=>0, 'max'=>1},
        'recommendation' => {'type'=>'ImmunizationRecommendation::Recommendation', 'path'=>'ImmunizationRecommendation.recommendation', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Recommendation < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Recommendation.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Recommendation._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Recommendation.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Recommendation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'vaccineCode' => {'valid_codes'=>{'http://hl7.org/fhir/sid/cvx'=>['143', '54', '55', '82', '24', '181', '801', '19', '27', '173', '174', '26', '172', '29', '56', '12', '28', '20', '106', '107', '146', '110', '50', '120', '130', '132', '170', '01', '22', '102', '57', '30', '52', '154', '169', '83', '84', '31', '85', '104', '193', '08', '42', '43', '44', '45', '58', '59', '189', '60', '47', '46', '49', '48', '17', '51', '61', '118', '62', '137', '165', '86', '14', '87', '160', '151', '123', '135', '153', '171', '186', '158', '150', '161', '166', '111', '149', '155', '185', '141', '140', '144', '15', '168', '88', '16', '10', '134', '39', '129', '63', '64', '65', '66', '04', '67', '05', '68', '191', '192', '108', '163', '162', '164', '103', '148', '147', '136', '114', '32', '167', '03', '94', '07', '127', '128', '125', '126', '02', '179', '178', '182', '69', '177', '11', '23', '133', '100', '152', '33', '109', '89', '70', '175', '176', '40', '18', '90', '72', '159', '157', '156', '73', '34', '119', '116', '74', '122', '71', '93', '145', '06', '38', '76', '138', '09', '113', '139', '115', '180', '35', '142', '112', '77', '13', '98', '95', '96', '97', '78', '190', '25', '41', '53', '91', '101', '131', '75', '105', '79', '21', '81', '80', '92', '36', '117', '37', '183', '184', '121', '187', '188', '998', '99', '999'], 'urn:oid:1.2.36.1.2001.1005.17'=>['AGRPAL', 'AVAXM', 'BCG', 'CDT', 'CMX', 'DTP', 'DTPA', 'ENGP', 'FLRIX', 'FLUVAX', 'FLVRN', 'FVXJNR', 'GNDIP', 'GNFLU', 'GNHEP', 'GNHIB', 'GNHPA', 'GNJEN', 'GNMEA', 'GNMEN', 'GNMUM', 'GNPNE', 'GNPOL', 'GNROX', 'GNRUB', 'GNTET', 'GNVAR', 'HATWNJ', 'HAVAQ', 'HAVJ', 'HBOC', 'HBV', 'HBVP', 'HBX', 'IFHX', 'IFIP', 'IFPA', 'IFX', 'IFXB', 'INFLUV', 'IPV', 'JEVAX', 'MENJUG', 'MENTEC', 'MENUME', 'MENVAX', 'MMR', 'MMRCSL', 'MMRSKB', 'MNTRX', 'NEISVC', 'OPV', 'P', 'PANVAX', 'PDCL', 'PLCL', 'PNEUMO', 'PRPD', 'PROQAD', 'PRPOMP', 'PRPT', 'PRVNR', 'PRVTH', 'PRXTEX', 'QDCL', 'ROTRIX', 'ROTTEQ', 'SYNFLX', 'TCL', 'VAXGRP', 'VGRJNR', 'VLRIX', 'VRVAX']}, 'type'=>'CodeableConcept', 'path'=>'Recommendation.vaccineCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vaccine-code'}},
          'targetDisease' => {'valid_codes'=>{'http://snomed.info/sct'=>['1857005', '397430003', '14189004', '36989005', '36653000', '76902006', '709410003', '27836007', '398102009']}, 'type'=>'CodeableConcept', 'path'=>'Recommendation.targetDisease', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-target-disease'}},
          'contraindicatedVaccineCode' => {'valid_codes'=>{'http://hl7.org/fhir/sid/cvx'=>['143', '54', '55', '82', '24', '181', '801', '19', '27', '173', '174', '26', '172', '29', '56', '12', '28', '20', '106', '107', '146', '110', '50', '120', '130', '132', '170', '01', '22', '102', '57', '30', '52', '154', '169', '83', '84', '31', '85', '104', '193', '08', '42', '43', '44', '45', '58', '59', '189', '60', '47', '46', '49', '48', '17', '51', '61', '118', '62', '137', '165', '86', '14', '87', '160', '151', '123', '135', '153', '171', '186', '158', '150', '161', '166', '111', '149', '155', '185', '141', '140', '144', '15', '168', '88', '16', '10', '134', '39', '129', '63', '64', '65', '66', '04', '67', '05', '68', '191', '192', '108', '163', '162', '164', '103', '148', '147', '136', '114', '32', '167', '03', '94', '07', '127', '128', '125', '126', '02', '179', '178', '182', '69', '177', '11', '23', '133', '100', '152', '33', '109', '89', '70', '175', '176', '40', '18', '90', '72', '159', '157', '156', '73', '34', '119', '116', '74', '122', '71', '93', '145', '06', '38', '76', '138', '09', '113', '139', '115', '180', '35', '142', '112', '77', '13', '98', '95', '96', '97', '78', '190', '25', '41', '53', '91', '101', '131', '75', '105', '79', '21', '81', '80', '92', '36', '117', '37', '183', '184', '121', '187', '188', '998', '99', '999'], 'urn:oid:1.2.36.1.2001.1005.17'=>['AGRPAL', 'AVAXM', 'BCG', 'CDT', 'CMX', 'DTP', 'DTPA', 'ENGP', 'FLRIX', 'FLUVAX', 'FLVRN', 'FVXJNR', 'GNDIP', 'GNFLU', 'GNHEP', 'GNHIB', 'GNHPA', 'GNJEN', 'GNMEA', 'GNMEN', 'GNMUM', 'GNPNE', 'GNPOL', 'GNROX', 'GNRUB', 'GNTET', 'GNVAR', 'HATWNJ', 'HAVAQ', 'HAVJ', 'HBOC', 'HBV', 'HBVP', 'HBX', 'IFHX', 'IFIP', 'IFPA', 'IFX', 'IFXB', 'INFLUV', 'IPV', 'JEVAX', 'MENJUG', 'MENTEC', 'MENUME', 'MENVAX', 'MMR', 'MMRCSL', 'MMRSKB', 'MNTRX', 'NEISVC', 'OPV', 'P', 'PANVAX', 'PDCL', 'PLCL', 'PNEUMO', 'PRPD', 'PROQAD', 'PRPOMP', 'PRPT', 'PRVNR', 'PRVTH', 'PRXTEX', 'QDCL', 'ROTRIX', 'ROTTEQ', 'SYNFLX', 'TCL', 'VAXGRP', 'VGRJNR', 'VLRIX', 'VRVAX']}, 'type'=>'CodeableConcept', 'path'=>'Recommendation.contraindicatedVaccineCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vaccine-code'}},
          'forecastStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-recommendation-status'=>['due', 'overdue', 'immune', 'contraindicated', 'complete']}, 'type'=>'CodeableConcept', 'path'=>'Recommendation.forecastStatus', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-status'}},
          'forecastReason' => {'valid_codes'=>{'http://snomed.info/sct'=>['77176002', '77386006']}, 'type'=>'CodeableConcept', 'path'=>'Recommendation.forecastReason', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-reason'}},
          'dateCriterion' => {'type'=>'ImmunizationRecommendation::Recommendation::DateCriterion', 'path'=>'Recommendation.dateCriterion', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Recommendation.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'Recommendation._description', 'min'=>0, 'max'=>1},
          'series' => {'type'=>'string', 'path'=>'Recommendation.series', 'min'=>0, 'max'=>1},
          '_series' => {'type'=>'Element', 'path'=>'Recommendation._series', 'min'=>0, 'max'=>1},
          'doseNumberPositiveInt' => {'type'=>'positiveInt', 'path'=>'Recommendation.doseNumber[x]', 'min'=>0, 'max'=>1},
          '_doseNumberPositiveInt' => {'type'=>'Element', 'path'=>'Recommendation.doseNumber[x]', 'min'=>0, 'max'=>1},
          'doseNumberString' => {'type'=>'string', 'path'=>'Recommendation.doseNumber[x]', 'min'=>0, 'max'=>1},
          '_doseNumberString' => {'type'=>'Element', 'path'=>'Recommendation.doseNumber[x]', 'min'=>0, 'max'=>1},
          'seriesDosesPositiveInt' => {'type'=>'positiveInt', 'path'=>'Recommendation.seriesDoses[x]', 'min'=>0, 'max'=>1},
          '_seriesDosesPositiveInt' => {'type'=>'Element', 'path'=>'Recommendation.seriesDoses[x]', 'min'=>0, 'max'=>1},
          'seriesDosesString' => {'type'=>'string', 'path'=>'Recommendation.seriesDoses[x]', 'min'=>0, 'max'=>1},
          '_seriesDosesString' => {'type'=>'Element', 'path'=>'Recommendation.seriesDoses[x]', 'min'=>0, 'max'=>1},
          'supportingImmunization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Immunization', 'http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation'], 'type'=>'Reference', 'path'=>'Recommendation.supportingImmunization', 'min'=>0, 'max'=>Float::INFINITY},
          'supportingPatientInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Recommendation.supportingPatientInformation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class DateCriterion < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'DateCriterion.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'DateCriterion._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'DateCriterion.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'DateCriterion.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://loinc.org'=>['30981-5', '30980-7', '59777-3', '59778-1']}, 'type'=>'CodeableConcept', 'path'=>'DateCriterion.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-date-criterion'}},
            'value' => {'type'=>'dateTime', 'path'=>'DateCriterion.value', 'min'=>1, 'max'=>1},
            '_value' => {'type'=>'Element', 'path'=>'DateCriterion._value', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 CodeableConcept
          attr_accessor :value             # 1-1 dateTime
          attr_accessor :_value            # 0-1 Element
        end

        attr_accessor :id                           # 0-1 string
        attr_accessor :_id                          # 0-1 Element
        attr_accessor :extension                    # 0-* [ Extension ]
        attr_accessor :modifierExtension            # 0-* [ Extension ]
        attr_accessor :vaccineCode                  # 0-* [ CodeableConcept ]
        attr_accessor :targetDisease                # 0-1 CodeableConcept
        attr_accessor :contraindicatedVaccineCode   # 0-* [ CodeableConcept ]
        attr_accessor :forecastStatus               # 1-1 CodeableConcept
        attr_accessor :forecastReason               # 0-* [ CodeableConcept ]
        attr_accessor :dateCriterion                # 0-* [ ImmunizationRecommendation::Recommendation::DateCriterion ]
        attr_accessor :description                  # 0-1 string
        attr_accessor :_description                 # 0-1 Element
        attr_accessor :series                       # 0-1 string
        attr_accessor :_series                      # 0-1 Element
        attr_accessor :doseNumberPositiveInt        # 0-1 positiveInt
        attr_accessor :_doseNumberPositiveInt       # 0-1 Element
        attr_accessor :doseNumberString             # 0-1 string
        attr_accessor :_doseNumberString            # 0-1 Element
        attr_accessor :seriesDosesPositiveInt       # 0-1 positiveInt
        attr_accessor :_seriesDosesPositiveInt      # 0-1 Element
        attr_accessor :seriesDosesString            # 0-1 string
        attr_accessor :_seriesDosesString           # 0-1 Element
        attr_accessor :supportingImmunization       # 0-* [ Reference(Immunization|ImmunizationEvaluation) ]
        attr_accessor :supportingPatientInformation # 0-* [ Reference(Resource) ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :_id               # 0-1 Element
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :_implicitRules    # 0-1 Element
      attr_accessor :language          # 0-1 code
      attr_accessor :_language         # 0-1 Element
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :date              # 1-1 dateTime
      attr_accessor :_date             # 0-1 Element
      attr_accessor :authority         # 0-1 Reference(Organization)
      attr_accessor :recommendation    # 1-* [ ImmunizationRecommendation::Recommendation ]

      def resourceType
        'ImmunizationRecommendation'
      end
    end
  end
  ImmunizationRecommendation = FHIR::R4::ImmunizationRecommendation
end