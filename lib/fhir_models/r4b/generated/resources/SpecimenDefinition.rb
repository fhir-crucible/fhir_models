module FHIR
  module R4B
    class SpecimenDefinition < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['container', 'identifier', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'SpecimenDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'SpecimenDefinition._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'SpecimenDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'SpecimenDefinition.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'SpecimenDefinition._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SpecimenDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'SpecimenDefinition._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'SpecimenDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'SpecimenDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'SpecimenDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'SpecimenDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'SpecimenDefinition.identifier', 'min'=>0, 'max'=>1},
        'typeCollected' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0487'=>['ABS', '...', 'ACNE', 'ACNFLD', 'AIRS', 'ALL', 'AMN', 'AMP', 'ANGI', 'ARTC', 'ASERU', 'ASP', 'ATTE', 'AUTOA', 'AUTOC', 'AUTP', 'BBL', 'BCYST', 'BDY', 'BIFL', 'BITE', 'BLD', 'BLDA', 'BLDCO', 'BLDV', 'BLEB', 'BLIST', 'BOIL', 'BON', 'BOWL', 'BPH', 'BPU', 'BRN', 'BRSH', 'BRTH', 'BRUS', 'BUB', 'BULLA', 'BX', 'CALC', 'BONE', 'CARBU', 'CAT', 'CBITE', 'CDM', 'CLIPP', 'CNJT', 'CNL', 'COL', 'CONE', 'CSCR', 'CSERU', 'CSF', 'CSITE', 'CSMY', 'CST', 'CSVR', 'CTP', 'CUR', 'CVM', 'CVPS', 'CVPT', 'CYN', 'CYST', 'DBITE', 'DCS', 'DEC', 'DEION', 'DIA', 'DIAF', 'DISCHG', 'DIV', 'DRN', 'DRNG', 'DRNGP', 'DUFL', 'EARW', 'EBRUSH', 'EEYE', 'EFF', 'EFFUS', 'EFOD', 'EISO', 'ELT', 'ENVIR', 'EOS', 'EOTH', 'ESOI', 'ESOS', 'ETA', 'ETTP', 'ETTUB', 'EWHI', 'EXG', 'EXS', 'EXUDTE', 'FAW', 'FBLOOD', 'FGA', 'FIB', 'FIST', 'FLD', 'FLT', 'FLU', 'FLUID', 'FOLEY', 'FRS', 'FSCLP', 'FUR', 'GAS', 'GASA', 'GASAN', 'GASBR', 'GASD', 'GAST', 'GENL', 'GENV', 'GRAFT', 'GRAFTS', 'GRANU', 'GROSH', 'GSOL', 'GSPEC', 'GT', 'GTUBE', 'HAR', 'HBITE', 'HBLUD', 'HEMAQ', 'HEMO', 'HERNI', 'HEV', 'HIC', 'HYDC', 'IBITE', 'ICYST', 'IDC', 'IHG', 'ILEO', 'ILLEG', 'IMP', 'INCI', 'INFIL', 'INS', 'INTRD', 'ISLT', 'IT', 'IUD', 'IVCAT', 'IVFLD', 'IVTIP', 'JEJU', 'JNTFLD', 'JP', 'KELOI', 'KIDFLD', 'LAVG', 'LAVGG', 'LAVGP', 'LAVPG', 'LENS1', 'LENS2', 'LESN', 'LIQ', 'LIQO', 'LNA', 'LNV', 'LSAC', 'LYM', 'MAC', 'MAHUR', 'MAR', 'MASS', 'MBLD', 'MEC', 'MILK', 'MLK', 'MUCOS', 'MUCUS', 'NAIL', 'NASDR', 'NEDL', 'NEPH', 'NGASP', 'NGAST', 'NGS', 'NODUL', 'NSECR', 'ORH', 'ORL', 'OTH', 'PACEM', 'PAFL', 'PCFL', 'PDSIT', 'PDTS', 'PELVA', 'PENIL', 'PERIA', 'PILOC', 'PINS', 'PIS', 'PLAN', 'PLAS', 'PLB', 'PLC', 'PLEVS', 'PLR', 'PMN', 'PND', 'POL', 'POPGS', 'POPLG', 'POPLV', 'PORTA', 'PPP', 'PROST', 'PRP', 'PSC', 'PUNCT', 'PUS', 'PUSFR', 'PUST', 'QC3', 'RANDU', 'RBC', 'RBITE', 'RECT', 'RECTA', 'RENALC', 'RENC', 'RES', 'SAL', 'SCAR', 'SCLV', 'SCROA', 'SECRE', 'SER', 'SHU', 'SHUNF', 'SHUNT', 'SITE', 'SKBP', 'SKN', 'SMM', 'SMN', 'SNV', 'SPRM', 'SPRP', 'SPRPB', 'SPS', 'SPT', 'SPTC', 'SPTT', 'SPUT1', 'SPUTIN', 'SPUTSP', 'STER', 'STL', 'STONE', 'SUBMA', 'SUBMX', 'SUMP', 'SUP', 'SUTUR', 'SWGZ', 'SWT', 'TASP', 'TEAR', 'THRB', 'TISS', 'TISU', 'TLC', 'TRAC', 'TRANS', 'TSERU', 'TSTES', 'TTRA', 'TUBES', 'TUMOR', 'TZANC', 'UDENT', 'UMED', 'UR', 'URC', 'URINB', 'URINC', 'URINM', 'URINN', 'URINP', 'URNS', 'URT', 'USCOP', 'USPEC', 'USUB', 'VASTIP', 'VENT', 'VITF', 'VOM', 'WASH', 'WASI', 'WAT', 'WB', 'WBC', 'WEN', 'WICK', 'WND', 'WNDA', 'WNDD', 'WNDE', 'WORM', 'WRT', 'WWA', 'WWO', 'WWT']}, 'type'=>'CodeableConcept', 'path'=>'SpecimenDefinition.typeCollected', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0487'}},
        'patientPreparation' => {'valid_codes'=>{'http://snomed.info/sct'=>['703763000', '2546009', '3658006', '41847000', '115499008', '115500004', '255214003', '255226008', '255240009', '255241008', '255242001', '255243006', '255244000', '255245004', '255270004', '255398004', '255399007', '255407002', '255566006', '261829003', '262459003', '263659003', '263678003', '271872005', '282032007', '303112003', '303113008', '303114002', '303115001', '307166007', '309601007', '309604004', '371578004', '450426006', '703760002', '703761003', '703762005', '703764006', '703765007', '703766008', '703767004', '703768009', '703769001', '703770000', '703771001', '703772008', '703773003', '703774009', '703775005', '707707000', '707708005', '707709002', '707710007', '707712004', '707714003', '707715002', '707716001', '707717005', '707718000', '707719008', '707720002', '707721003', '707722005', '707723000', '707757008', '707758003', '707759006', '707760001', '707761002', '707762009', '707763004', '707764005', '707765006', '707815009', '707816005', '707817001', '707818006', '707819003', '707820009', '713152004', '713153009', '717830007', '723238007', '723279008', '726054005', '726055006', '726056007', '733986001', '733987005', '733988000', '737382006', '739029001', '739030006', '739031005', '762642007', '762643002', '764868004', '767023003']}, 'type'=>'CodeableConcept', 'path'=>'SpecimenDefinition.patientPreparation', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/prepare-patient-prior-specimen-collection'}},
        'timeAspect' => {'type'=>'string', 'path'=>'SpecimenDefinition.timeAspect', 'min'=>0, 'max'=>1},
        '_timeAspect' => {'type'=>'Element', 'path'=>'SpecimenDefinition._timeAspect', 'min'=>0, 'max'=>1},
        'collection' => {'valid_codes'=>{'http://snomed.info/sct'=>['129316008', '129314006', '129300006', '129304002', '129323009', '73416001', '225113003', '70777001', '386089008', '278450005']}, 'type'=>'CodeableConcept', 'path'=>'SpecimenDefinition.collection', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/specimen-collection'}},
        'typeTested' => {'type'=>'SpecimenDefinition::TypeTested', 'path'=>'SpecimenDefinition.typeTested', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class TypeTested < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'TypeTested.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'TypeTested._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'TypeTested.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'TypeTested.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'isDerived' => {'type'=>'boolean', 'path'=>'TypeTested.isDerived', 'min'=>0, 'max'=>1},
          '_isDerived' => {'type'=>'Element', 'path'=>'TypeTested._isDerived', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0487'=>['ABS', '...', 'ACNE', 'ACNFLD', 'AIRS', 'ALL', 'AMN', 'AMP', 'ANGI', 'ARTC', 'ASERU', 'ASP', 'ATTE', 'AUTOA', 'AUTOC', 'AUTP', 'BBL', 'BCYST', 'BDY', 'BIFL', 'BITE', 'BLD', 'BLDA', 'BLDCO', 'BLDV', 'BLEB', 'BLIST', 'BOIL', 'BON', 'BOWL', 'BPH', 'BPU', 'BRN', 'BRSH', 'BRTH', 'BRUS', 'BUB', 'BULLA', 'BX', 'CALC', 'BONE', 'CARBU', 'CAT', 'CBITE', 'CDM', 'CLIPP', 'CNJT', 'CNL', 'COL', 'CONE', 'CSCR', 'CSERU', 'CSF', 'CSITE', 'CSMY', 'CST', 'CSVR', 'CTP', 'CUR', 'CVM', 'CVPS', 'CVPT', 'CYN', 'CYST', 'DBITE', 'DCS', 'DEC', 'DEION', 'DIA', 'DIAF', 'DISCHG', 'DIV', 'DRN', 'DRNG', 'DRNGP', 'DUFL', 'EARW', 'EBRUSH', 'EEYE', 'EFF', 'EFFUS', 'EFOD', 'EISO', 'ELT', 'ENVIR', 'EOS', 'EOTH', 'ESOI', 'ESOS', 'ETA', 'ETTP', 'ETTUB', 'EWHI', 'EXG', 'EXS', 'EXUDTE', 'FAW', 'FBLOOD', 'FGA', 'FIB', 'FIST', 'FLD', 'FLT', 'FLU', 'FLUID', 'FOLEY', 'FRS', 'FSCLP', 'FUR', 'GAS', 'GASA', 'GASAN', 'GASBR', 'GASD', 'GAST', 'GENL', 'GENV', 'GRAFT', 'GRAFTS', 'GRANU', 'GROSH', 'GSOL', 'GSPEC', 'GT', 'GTUBE', 'HAR', 'HBITE', 'HBLUD', 'HEMAQ', 'HEMO', 'HERNI', 'HEV', 'HIC', 'HYDC', 'IBITE', 'ICYST', 'IDC', 'IHG', 'ILEO', 'ILLEG', 'IMP', 'INCI', 'INFIL', 'INS', 'INTRD', 'ISLT', 'IT', 'IUD', 'IVCAT', 'IVFLD', 'IVTIP', 'JEJU', 'JNTFLD', 'JP', 'KELOI', 'KIDFLD', 'LAVG', 'LAVGG', 'LAVGP', 'LAVPG', 'LENS1', 'LENS2', 'LESN', 'LIQ', 'LIQO', 'LNA', 'LNV', 'LSAC', 'LYM', 'MAC', 'MAHUR', 'MAR', 'MASS', 'MBLD', 'MEC', 'MILK', 'MLK', 'MUCOS', 'MUCUS', 'NAIL', 'NASDR', 'NEDL', 'NEPH', 'NGASP', 'NGAST', 'NGS', 'NODUL', 'NSECR', 'ORH', 'ORL', 'OTH', 'PACEM', 'PAFL', 'PCFL', 'PDSIT', 'PDTS', 'PELVA', 'PENIL', 'PERIA', 'PILOC', 'PINS', 'PIS', 'PLAN', 'PLAS', 'PLB', 'PLC', 'PLEVS', 'PLR', 'PMN', 'PND', 'POL', 'POPGS', 'POPLG', 'POPLV', 'PORTA', 'PPP', 'PROST', 'PRP', 'PSC', 'PUNCT', 'PUS', 'PUSFR', 'PUST', 'QC3', 'RANDU', 'RBC', 'RBITE', 'RECT', 'RECTA', 'RENALC', 'RENC', 'RES', 'SAL', 'SCAR', 'SCLV', 'SCROA', 'SECRE', 'SER', 'SHU', 'SHUNF', 'SHUNT', 'SITE', 'SKBP', 'SKN', 'SMM', 'SMN', 'SNV', 'SPRM', 'SPRP', 'SPRPB', 'SPS', 'SPT', 'SPTC', 'SPTT', 'SPUT1', 'SPUTIN', 'SPUTSP', 'STER', 'STL', 'STONE', 'SUBMA', 'SUBMX', 'SUMP', 'SUP', 'SUTUR', 'SWGZ', 'SWT', 'TASP', 'TEAR', 'THRB', 'TISS', 'TISU', 'TLC', 'TRAC', 'TRANS', 'TSERU', 'TSTES', 'TTRA', 'TUBES', 'TUMOR', 'TZANC', 'UDENT', 'UMED', 'UR', 'URC', 'URINB', 'URINC', 'URINM', 'URINN', 'URINP', 'URNS', 'URT', 'USCOP', 'USPEC', 'USUB', 'VASTIP', 'VENT', 'VITF', 'VOM', 'WASH', 'WASI', 'WAT', 'WB', 'WBC', 'WEN', 'WICK', 'WND', 'WNDA', 'WNDD', 'WNDE', 'WORM', 'WRT', 'WWA', 'WWO', 'WWT']}, 'type'=>'CodeableConcept', 'path'=>'TypeTested.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0487'}},
          'preference' => {'valid_codes'=>{'http://hl7.org/fhir/specimen-contained-preference'=>['preferred', 'alternate']}, 'type'=>'code', 'path'=>'TypeTested.preference', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/specimen-contained-preference'}},
          '_preference' => {'type'=>'Element', 'path'=>'TypeTested._preference', 'min'=>0, 'max'=>1},
          'container' => {'type'=>'SpecimenDefinition::TypeTested::Container', 'path'=>'TypeTested.container', 'min'=>0, 'max'=>1},
          'requirement' => {'type'=>'string', 'path'=>'TypeTested.requirement', 'min'=>0, 'max'=>1},
          '_requirement' => {'type'=>'Element', 'path'=>'TypeTested._requirement', 'min'=>0, 'max'=>1},
          'retentionTime' => {'type'=>'Duration', 'path'=>'TypeTested.retentionTime', 'min'=>0, 'max'=>1},
          'rejectionCriterion' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/rejection-criteria'=>['hemolized', 'insufficient', 'broken', 'clotted', 'wrong-temperature']}, 'type'=>'CodeableConcept', 'path'=>'TypeTested.rejectionCriterion', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/rejection-criteria'}},
          'handling' => {'type'=>'SpecimenDefinition::TypeTested::Handling', 'path'=>'TypeTested.handling', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Container < FHIR::Model
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
            'minimumVolume' => ['Quantity', 'string']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Container.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Container._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Container.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Container.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'material' => {'valid_codes'=>{'http://snomed.info/sct'=>['32039001', '61088005', '425620007']}, 'type'=>'CodeableConcept', 'path'=>'Container.material', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/container-material'}},
            'type' => {'valid_codes'=>{'http://snomed.info/sct'=>['434711009', '434746001', '434822004', '713791004']}, 'type'=>'CodeableConcept', 'path'=>'Container.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/specimen-container-type'}},
            'cap' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/container-cap'=>['red', 'yellow', 'dark-yellow', 'grey', 'light-blue', 'black', 'green', 'light-green', 'lavender', 'brown', 'white', 'pink']}, 'type'=>'CodeableConcept', 'path'=>'Container.cap', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/container-cap'}},
            'description' => {'type'=>'string', 'path'=>'Container.description', 'min'=>0, 'max'=>1},
            '_description' => {'type'=>'Element', 'path'=>'Container._description', 'min'=>0, 'max'=>1},
            'capacity' => {'type'=>'Quantity', 'path'=>'Container.capacity', 'min'=>0, 'max'=>1},
            'minimumVolumeQuantity' => {'type'=>'Quantity', 'path'=>'Container.minimumVolume[x]', 'min'=>0, 'max'=>1},
            'minimumVolumeString' => {'type'=>'string', 'path'=>'Container.minimumVolume[x]', 'min'=>0, 'max'=>1},
            '_minimumVolumeString' => {'type'=>'Element', 'path'=>'Container.minimumVolume[x]', 'min'=>0, 'max'=>1},
            'additive' => {'type'=>'SpecimenDefinition::TypeTested::Container::Additive', 'path'=>'Container.additive', 'min'=>0, 'max'=>Float::INFINITY},
            'preparation' => {'type'=>'string', 'path'=>'Container.preparation', 'min'=>0, 'max'=>1},
            '_preparation' => {'type'=>'Element', 'path'=>'Container._preparation', 'min'=>0, 'max'=>1}
          }

          class Additive < FHIR::Model
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
              'additive' => ['CodeableConcept', 'Reference']
            }
            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Additive.id', 'min'=>0, 'max'=>1},
              '_id' => {'type'=>'Element', 'path'=>'Additive._id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Additive.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Additive.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'additiveCodeableConcept' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0371'=>['F10', 'C32', 'C38', 'HCL6', 'ACDA', 'ACDB', 'ACET', 'AMIES', 'HEPA', 'BACTM', 'BOR', 'BOUIN', 'BF10', 'WEST', 'BSKM', 'CARS', 'CARY', 'CHLTM', 'CTAD', 'ENT', 'ENT+', 'JKM', 'KARN', 'LIA', 'HEPL', 'M4', 'M4RT', 'M5', 'MICHTM', 'MMDTM', 'HNO3', 'NONE', 'PAGE', 'PHENOL', 'KOX', 'EDTK', 'EDTK15', 'EDTK75', 'PVA', 'RLM', 'SST', 'SILICA', 'NAF', 'FL100', 'FL10', 'NAPS', 'HEPN', 'EDTN', 'SPS', 'STUTM', 'THROM', 'FDP', 'THYMOL', 'THYO', 'TOLU', 'URETM', 'VIRTM']}, 'type'=>'CodeableConcept', 'path'=>'Additive.additive[x]', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0371'}},
              'additiveReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Substance'], 'type'=>'Reference', 'path'=>'Additive.additive[x]', 'min'=>1, 'max'=>1}
            }

            attr_accessor :id                      # 0-1 string
            attr_accessor :_id                     # 0-1 Element
            attr_accessor :extension               # 0-* [ Extension ]
            attr_accessor :modifierExtension       # 0-* [ Extension ]
            attr_accessor :additiveCodeableConcept # 1-1 CodeableConcept
            attr_accessor :additiveReference       # 1-1 Reference(Substance)
          end

          attr_accessor :id                    # 0-1 string
          attr_accessor :_id                   # 0-1 Element
          attr_accessor :extension             # 0-* [ Extension ]
          attr_accessor :modifierExtension     # 0-* [ Extension ]
          attr_accessor :material              # 0-1 CodeableConcept
          attr_accessor :type                  # 0-1 CodeableConcept
          attr_accessor :cap                   # 0-1 CodeableConcept
          attr_accessor :description           # 0-1 string
          attr_accessor :_description          # 0-1 Element
          attr_accessor :capacity              # 0-1 Quantity
          attr_accessor :minimumVolumeQuantity # 0-1 Quantity
          attr_accessor :minimumVolumeString   # 0-1 string
          attr_accessor :_minimumVolumeString  # 0-1 Element
          attr_accessor :additive              # 0-* [ SpecimenDefinition::TypeTested::Container::Additive ]
          attr_accessor :preparation           # 0-1 string
          attr_accessor :_preparation          # 0-1 Element
        end

        class Handling < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Handling.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Handling._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Handling.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Handling.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'temperatureQualifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/handling-condition'=>['room', 'refrigerated', 'frozen']}, 'type'=>'CodeableConcept', 'path'=>'Handling.temperatureQualifier', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/handling-condition'}},
            'temperatureRange' => {'type'=>'Range', 'path'=>'Handling.temperatureRange', 'min'=>0, 'max'=>1},
            'maxDuration' => {'type'=>'Duration', 'path'=>'Handling.maxDuration', 'min'=>0, 'max'=>1},
            'instruction' => {'type'=>'string', 'path'=>'Handling.instruction', 'min'=>0, 'max'=>1},
            '_instruction' => {'type'=>'Element', 'path'=>'Handling._instruction', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                   # 0-1 string
          attr_accessor :_id                  # 0-1 Element
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :temperatureQualifier # 0-1 CodeableConcept
          attr_accessor :temperatureRange     # 0-1 Range
          attr_accessor :maxDuration          # 0-1 Duration
          attr_accessor :instruction          # 0-1 string
          attr_accessor :_instruction         # 0-1 Element
        end

        attr_accessor :id                 # 0-1 string
        attr_accessor :_id                # 0-1 Element
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :isDerived          # 0-1 boolean
        attr_accessor :_isDerived         # 0-1 Element
        attr_accessor :type               # 0-1 CodeableConcept
        attr_accessor :preference         # 1-1 code
        attr_accessor :_preference        # 0-1 Element
        attr_accessor :container          # 0-1 SpecimenDefinition::TypeTested::Container
        attr_accessor :requirement        # 0-1 string
        attr_accessor :_requirement       # 0-1 Element
        attr_accessor :retentionTime      # 0-1 Duration
        attr_accessor :rejectionCriterion # 0-* [ CodeableConcept ]
        attr_accessor :handling           # 0-* [ SpecimenDefinition::TypeTested::Handling ]
      end

      attr_accessor :id                 # 0-1 id
      attr_accessor :_id                # 0-1 Element
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :_implicitRules     # 0-1 Element
      attr_accessor :language           # 0-1 code
      attr_accessor :_language          # 0-1 Element
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :identifier         # 0-1 Identifier
      attr_accessor :typeCollected      # 0-1 CodeableConcept
      attr_accessor :patientPreparation # 0-* [ CodeableConcept ]
      attr_accessor :timeAspect         # 0-1 string
      attr_accessor :_timeAspect        # 0-1 Element
      attr_accessor :collection         # 0-* [ CodeableConcept ]
      attr_accessor :typeTested         # 0-* [ SpecimenDefinition::TypeTested ]

      def resourceType
        'SpecimenDefinition'
      end
    end
  end
end