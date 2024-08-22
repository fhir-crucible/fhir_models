module FHIR
  module R4B
    class ImmunizationRecommendation < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['date', 'identifier', 'information', 'patient', 'status', 'support', 'target-disease', 'vaccine-type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ImmunizationRecommendation.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ImmunizationRecommendation.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ImmunizationRecommendation.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'ImmunizationRecommendation.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'ImmunizationRecommendation.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ImmunizationRecommendation.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ImmunizationRecommendation.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ImmunizationRecommendation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'ImmunizationRecommendation.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'ImmunizationRecommendation.patient', 'min'=>1, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'ImmunizationRecommendation.date', 'min'=>1, 'max'=>1},
        'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ImmunizationRecommendation.authority', 'min'=>0, 'max'=>1},
        'recommendation' => {'type'=>'ImmunizationRecommendation::Recommendation', 'path'=>'ImmunizationRecommendation.recommendation', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Recommendation < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def module_version_name
          'R4B'
        end

        def module_version
          FHIR::R4B
        end

        MULTIPLE_TYPES = {
          'doseNumber' => ['positiveInt', 'string'],
          'seriesDoses' => ['positiveInt', 'string']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Recommendation.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Recommendation.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Recommendation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'vaccineCode' => {'valid_codes'=>{'http://hl7.org/fhir/sid/cvx'=>['54', '55', '82', '24', '19', '27', '26', '29', '56', '12', '28', '20', '106', '107', '110', '50', '120', '130', '01', '22', '102', '57', '52', '83', '84', '31', '85', '104', '30', '08', '42', '43', '44', '45', '58', '59', '60', '46', '47', '48', '49', '17', '51', '61', '118', '62', '86', '87', '14', '111', '15', '16', '88', '123', '10', '02', '89', '39', '63', '64', '65', '66', '03', '04', '94', '67', '05', '68', '32', '103', '114', '108', '07', '69', '11', '23', '33', '100', '109', '70', '18', '40', '90', '72', '73', '34', '119', '122', '116', '74', '71', '93', '06', '38', '76', '113', '09', '115', '35', '112', '77', '13', '95', '96', '97', '98', '78', '91', '25', '41', '53', '101', '75', '105', '79', '21', '81', '80', '92', '36', '117', '37', '121', '998', '999', '99', '133', '134', '137', '136', '135', '131', '132', '128', '125', '126', '127', '138', '139', '140', '129', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '801', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '200', '201', '202', '198', '203', '205', '206', '207', '208', '213', '210', '212', '204', '214', '211'], 'urn:oid:1.2.36.1.2001.1005.17'=>['AGRPAL', 'AVAXM', 'BCG', 'CDT', 'CMX', 'DTP', 'DTPA', 'ENGP', 'FLRIX', 'FLUVAX', 'FLVRN', 'FVXJNR', 'GNDIP', 'GNFLU', 'GNHEP', 'GNHIB', 'GNHPA', 'GNJEN', 'GNMEA', 'GNMEN', 'GNMUM', 'GNPNE', 'GNPOL', 'GNROX', 'GNRUB', 'GNTET', 'GNVAR', 'HATWNJ', 'HAVAQ', 'HAVJ', 'HBOC', 'HBV', 'HBVP', 'HBX', 'IFHX', 'IFIP', 'IFPA', 'IFX', 'IFXB', 'INFLUV', 'IPV', 'JEVAX', 'MENJUG', 'MENTEC', 'MENUME', 'MENVAX', 'MMR', 'MMRCSL', 'MMRSKB', 'MNTRX', 'NEISVC', 'OPV', 'P', 'PANVAX', 'PDCL', 'PLCL', 'PNEUMO', 'PRPD', 'PROQAD', 'PRPOMP', 'PRPT', 'PRVNR', 'PRVTH', 'PRXTEX', 'QDCL', 'ROTRIX', 'ROTTEQ', 'SYNFLX', 'TCL', 'VAXGRP', 'VGRJNR', 'VLRIX', 'VRVAX']}, 'type'=>'CodeableConcept', 'path'=>'Recommendation.vaccineCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vaccine-code'}},
          'targetDisease' => {'valid_codes'=>{'http://snomed.info/sct'=>['1857005', '397430003', '14189004', '36989005', '36653000', '76902006', '709410003', '27836007', '398102009']}, 'type'=>'CodeableConcept', 'path'=>'Recommendation.targetDisease', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-target-disease'}},
          'contraindicatedVaccineCode' => {'valid_codes'=>{'http://hl7.org/fhir/sid/cvx'=>['54', '55', '82', '24', '19', '27', '26', '29', '56', '12', '28', '20', '106', '107', '110', '50', '120', '130', '01', '22', '102', '57', '52', '83', '84', '31', '85', '104', '30', '08', '42', '43', '44', '45', '58', '59', '60', '46', '47', '48', '49', '17', '51', '61', '118', '62', '86', '87', '14', '111', '15', '16', '88', '123', '10', '02', '89', '39', '63', '64', '65', '66', '03', '04', '94', '67', '05', '68', '32', '103', '114', '108', '07', '69', '11', '23', '33', '100', '109', '70', '18', '40', '90', '72', '73', '34', '119', '122', '116', '74', '71', '93', '06', '38', '76', '113', '09', '115', '35', '112', '77', '13', '95', '96', '97', '98', '78', '91', '25', '41', '53', '101', '75', '105', '79', '21', '81', '80', '92', '36', '117', '37', '121', '998', '999', '99', '133', '134', '137', '136', '135', '131', '132', '128', '125', '126', '127', '138', '139', '140', '129', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '801', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '200', '201', '202', '198', '203', '205', '206', '207', '208', '213', '210', '212', '204', '214', '211'], 'urn:oid:1.2.36.1.2001.1005.17'=>['AGRPAL', 'AVAXM', 'BCG', 'CDT', 'CMX', 'DTP', 'DTPA', 'ENGP', 'FLRIX', 'FLUVAX', 'FLVRN', 'FVXJNR', 'GNDIP', 'GNFLU', 'GNHEP', 'GNHIB', 'GNHPA', 'GNJEN', 'GNMEA', 'GNMEN', 'GNMUM', 'GNPNE', 'GNPOL', 'GNROX', 'GNRUB', 'GNTET', 'GNVAR', 'HATWNJ', 'HAVAQ', 'HAVJ', 'HBOC', 'HBV', 'HBVP', 'HBX', 'IFHX', 'IFIP', 'IFPA', 'IFX', 'IFXB', 'INFLUV', 'IPV', 'JEVAX', 'MENJUG', 'MENTEC', 'MENUME', 'MENVAX', 'MMR', 'MMRCSL', 'MMRSKB', 'MNTRX', 'NEISVC', 'OPV', 'P', 'PANVAX', 'PDCL', 'PLCL', 'PNEUMO', 'PRPD', 'PROQAD', 'PRPOMP', 'PRPT', 'PRVNR', 'PRVTH', 'PRXTEX', 'QDCL', 'ROTRIX', 'ROTTEQ', 'SYNFLX', 'TCL', 'VAXGRP', 'VGRJNR', 'VLRIX', 'VRVAX']}, 'type'=>'CodeableConcept', 'path'=>'Recommendation.contraindicatedVaccineCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vaccine-code'}},
          'forecastStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-recommendation-status'=>['due', 'overdue', 'immune', 'contraindicated', 'complete']}, 'type'=>'CodeableConcept', 'path'=>'Recommendation.forecastStatus', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-status'}},
          'forecastReason' => {'valid_codes'=>{'http://snomed.info/sct'=>['77176002', '77386006']}, 'type'=>'CodeableConcept', 'path'=>'Recommendation.forecastReason', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-reason'}},
          'dateCriterion' => {'type'=>'ImmunizationRecommendation::Recommendation::DateCriterion', 'path'=>'Recommendation.dateCriterion', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'Recommendation.description', 'min'=>0, 'max'=>1},
          'series' => {'type'=>'string', 'path'=>'Recommendation.series', 'min'=>0, 'max'=>1},
          'doseNumberPositiveInt' => {'type'=>'positiveInt', 'path'=>'Recommendation.doseNumber[x]', 'min'=>0, 'max'=>1},
          'doseNumberString' => {'type'=>'string', 'path'=>'Recommendation.doseNumber[x]', 'min'=>0, 'max'=>1},
          'seriesDosesPositiveInt' => {'type'=>'positiveInt', 'path'=>'Recommendation.seriesDoses[x]', 'min'=>0, 'max'=>1},
          'seriesDosesString' => {'type'=>'string', 'path'=>'Recommendation.seriesDoses[x]', 'min'=>0, 'max'=>1},
          'supportingImmunization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Immunization', 'http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation'], 'type'=>'Reference', 'path'=>'Recommendation.supportingImmunization', 'min'=>0, 'max'=>Float::INFINITY},
          'supportingPatientInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Recommendation.supportingPatientInformation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class DateCriterion < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'DateCriterion.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'DateCriterion.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'DateCriterion.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://loinc.org'=>['30981-5', '30980-7', '59777-3', '59778-1']}, 'type'=>'CodeableConcept', 'path'=>'DateCriterion.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-date-criterion'}},
            'value' => {'type'=>'dateTime', 'path'=>'DateCriterion.value', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 CodeableConcept
          attr_accessor :value             # 1-1 dateTime
        end

        attr_accessor :id                           # 0-1 string
        attr_accessor :extension                    # 0-* [ Extension ]
        attr_accessor :modifierExtension            # 0-* [ Extension ]
        attr_accessor :vaccineCode                  # 0-* [ CodeableConcept ]
        attr_accessor :targetDisease                # 0-1 CodeableConcept
        attr_accessor :contraindicatedVaccineCode   # 0-* [ CodeableConcept ]
        attr_accessor :forecastStatus               # 1-1 CodeableConcept
        attr_accessor :forecastReason               # 0-* [ CodeableConcept ]
        attr_accessor :dateCriterion                # 0-* [ ImmunizationRecommendation::Recommendation::DateCriterion ]
        attr_accessor :description                  # 0-1 string
        attr_accessor :series                       # 0-1 string
        attr_accessor :doseNumberPositiveInt        # 0-1 positiveInt
        attr_accessor :doseNumberString             # 0-1 string
        attr_accessor :seriesDosesPositiveInt       # 0-1 positiveInt
        attr_accessor :seriesDosesString            # 0-1 string
        attr_accessor :supportingImmunization       # 0-* [ Reference(Immunization|ImmunizationEvaluation) ]
        attr_accessor :supportingPatientInformation # 0-* [ Reference(Resource) ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :date              # 1-1 dateTime
      attr_accessor :authority         # 0-1 Reference(Organization)
      attr_accessor :recommendation    # 1-* [ ImmunizationRecommendation::Recommendation ]

      def resourceType
        'ImmunizationRecommendation'
      end
    end
  end
end