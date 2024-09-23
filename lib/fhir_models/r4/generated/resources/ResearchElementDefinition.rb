module FHIR
  module R4
    class ResearchElementDefinition < FHIR::Model
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
        'subject' => ['CodeableConcept', 'Reference']
      }
      SEARCH_PARAMS = ['composed-of', 'context', 'context-quantity', 'context-type', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ResearchElementDefinition.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ResearchElementDefinition.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ResearchElementDefinition.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'ResearchElementDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'ResearchElementDefinition.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ResearchElementDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ResearchElementDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ResearchElementDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'ResearchElementDefinition.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'ResearchElementDefinition.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'ResearchElementDefinition.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'ResearchElementDefinition.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'ResearchElementDefinition.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._title', 'min'=>0, 'max'=>1},
        'shortTitle' => {'type'=>'string', 'path'=>'ResearchElementDefinition.shortTitle', 'min'=>0, 'max'=>1},
        '_shortTitle' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._shortTitle', 'min'=>0, 'max'=>1},
        'subtitle' => {'type'=>'string', 'path'=>'ResearchElementDefinition.subtitle', 'min'=>0, 'max'=>1},
        '_subtitle' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._subtitle', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'ResearchElementDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'ResearchElementDefinition.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._experimental', 'min'=>0, 'max'=>1},
        'subjectCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Patient', 'Practitioner', 'Organization', 'Location', 'Device']}, 'type'=>'CodeableConcept', 'path'=>'ResearchElementDefinition.subject[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subject-type'}},
        'subjectReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'ResearchElementDefinition.subject[x]', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'ResearchElementDefinition.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'ResearchElementDefinition.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'ResearchElementDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'ResearchElementDefinition.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._description', 'min'=>0, 'max'=>1},
        'comment' => {'type'=>'string', 'path'=>'ResearchElementDefinition.comment', 'min'=>0, 'max'=>Float::INFINITY},
        '_comment' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._comment', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'type'=>'UsageContext', 'path'=>'ResearchElementDefinition.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'ResearchElementDefinition.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'ResearchElementDefinition.purpose', 'min'=>0, 'max'=>1},
        '_purpose' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._purpose', 'min'=>0, 'max'=>1},
        'usage' => {'type'=>'string', 'path'=>'ResearchElementDefinition.usage', 'min'=>0, 'max'=>1},
        '_usage' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._usage', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'ResearchElementDefinition.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._copyright', 'min'=>0, 'max'=>1},
        'approvalDate' => {'type'=>'date', 'path'=>'ResearchElementDefinition.approvalDate', 'min'=>0, 'max'=>1},
        '_approvalDate' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._approvalDate', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'type'=>'date', 'path'=>'ResearchElementDefinition.lastReviewDate', 'min'=>0, 'max'=>1},
        '_lastReviewDate' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._lastReviewDate', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'ResearchElementDefinition.effectivePeriod', 'min'=>0, 'max'=>1},
        'topic' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-topic'=>['treatment', 'education', 'assessment']}, 'type'=>'CodeableConcept', 'path'=>'ResearchElementDefinition.topic', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-topic'}},
        'author' => {'type'=>'ContactDetail', 'path'=>'ResearchElementDefinition.author', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'type'=>'ContactDetail', 'path'=>'ResearchElementDefinition.editor', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'type'=>'ContactDetail', 'path'=>'ResearchElementDefinition.reviewer', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'type'=>'ContactDetail', 'path'=>'ResearchElementDefinition.endorser', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'ResearchElementDefinition.relatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'library' => {'type'=>'canonical', 'path'=>'ResearchElementDefinition.library', 'min'=>0, 'max'=>Float::INFINITY},
        '_library' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._library', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/research-element-type'=>['population', 'exposure', 'outcome']}, 'type'=>'code', 'path'=>'ResearchElementDefinition.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/research-element-type'}},
        '_type' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._type', 'min'=>0, 'max'=>1},
        'variableType' => {'valid_codes'=>{'http://hl7.org/fhir/variable-type'=>['dichotomous', 'continuous', 'descriptive']}, 'type'=>'code', 'path'=>'ResearchElementDefinition.variableType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/variable-type'}},
        '_variableType' => {'type'=>'Element', 'path'=>'ResearchElementDefinition._variableType', 'min'=>0, 'max'=>1},
        'characteristic' => {'type'=>'ResearchElementDefinition::Characteristic', 'path'=>'ResearchElementDefinition.characteristic', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Characteristic < FHIR::Model
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
          'definition' => ['CodeableConcept', 'canonical', 'Expression', 'DataRequirement'],
          'studyEffective' => ['dateTime', 'Period', 'Duration', 'Timing'],
          'participantEffective' => ['dateTime', 'Period', 'Duration', 'Timing']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Characteristic.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Characteristic._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Characteristic.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Characteristic.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'definitionCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'definitionCanonical' => {'type'=>'canonical', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          '_definitionCanonical' => {'type'=>'Element', 'path'=>'Characteristic.definition[x]', 'min'=>0, 'max'=>1},
          'definitionExpression' => {'type'=>'Expression', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'definitionDataRequirement' => {'type'=>'DataRequirement', 'path'=>'Characteristic.definition[x]', 'min'=>1, 'max'=>1},
          'usageContext' => {'type'=>'UsageContext', 'path'=>'Characteristic.usageContext', 'min'=>0, 'max'=>Float::INFINITY},
          'exclude' => {'type'=>'boolean', 'path'=>'Characteristic.exclude', 'min'=>0, 'max'=>1},
          '_exclude' => {'type'=>'Element', 'path'=>'Characteristic._exclude', 'min'=>0, 'max'=>1},
          'unitOfMeasure' => {'valid_codes'=>{'http://unitsofmeasure.org'=>['%', '%/100{WBC}', '%{0to3Hours}', '%{Abnormal}', '%{Activity}', '%{BasalActivity}', '%{Binding}', '%{Blockade}', '%{Carboxyhemoglobin}', '%{Conversion}', '%{Cound}', '%{EosSeen}', '%{Excretion}', '%{Fat}', '%{FetalErythrocytes}', '%{Hemoglobin}', '%{HemoglobinA1C}', '%{HemoglobinSaturation}', '%{Hemolysis}', '%{HumanResponse}', '%{Index}', '%{Inhibition}', '%{Live}', '%{Negative Control}', '%{Normal}', '%{NormalControl}', '%{NormalPooledPlasma}', '%{ofAvailable}', '%{ofBacteria}', '%{OfLymphocytes}', '%{OfWBCs}', '%{Oxygen}', '%{Positive}', '%{Precipitate}', '%{Reactivity}', '%{response}', '%{risk}', '%{SpermMotility}', '%{Total}', '%{TotalProtein}', '%{Tot\'Cholesterol}', '%{Tot\'Hgb}', '%{Uptake}', '%{vol}', '%{WeightToWeight}', '/(12.h)', '/[arb\'U]', '/[HPF]', '/[iU]', '/[LPF]', '/{Entity}', '/{oif}', '/{Specimen}', '/{tot}', '/10*10', '/10*12', '/10*12{rbc}', '/10*6', '/10*9', '/100', '/100{cells}', '/100{neutrophils}', '/100{spermatozoa}', '/100{WBC}', '/100{WBCs}', '/a', '/cm[H2O]', '/d', '/dL', '/g', '/g{creat}', '/g{hgb}', '/g{tot\'nit}', '/g{tot\'prot}', '/g{wet\'tis}', '/h', '/kg', '/kg{body\'wt}', '/L', '/m2', '/mg', '/min', '/mL', '/mm3', '/mmol', '/mo', '/s', '/U', '/ug', '/uL', '/wk', '[APL\'U]', '[APL\'U]/mL', '[arb\'U]', '[arb\'U]/L', '[arb\'U]/mL', '[AU]', '[BAU]', '[beth\'U]', '[CFU]', '[CFU]/L', '[CFU]/mL', '[Ch]', '[cin_i]', '[cup_us]', '[degF]', '[dr_av]', '[drp]', '[drp]/[HPF]', '[drp]/h', '[drp]/min', '[drp]/mL', '[drp]/s', '[fdr_us]', '[foz_br]', '[foz_us]', '[ft_i]', '[fth_i]', '[gal_br]', '[gal_us]', '[GPL\'U]', '[gr]', '[in_i]', '[iU]', '[IU]/(2.h)', '[IU]/(24.h)', '[IU]/10*9{RBCs}', '[IU]/d', '[IU]/dL', '[IU]/g', '[IU]/g{Hb}', '[iU]/g{Hgb}', '[IU]/h', '[IU]/kg', '[IU]/kg/d', '[IU]/L', '[IU]/min', '[IU]/mL', '[lb_av]', '[mi_i]', '[mi_us]', '[min_us]', '[MPL\'U]', '[nmi_i]', '[oz_av]', '[oz_tr]', '[pH]', '[pi].rad/min', '[ppb]', '[ppm]', '[ppm]{v/v}', '[pptr]', '[ppth]', '[psi]', '[pt_br]', '[qt_br]', '[qt_us]', '[sft_i]', '[sin_i]', '[ston_av]', '[syd_i]', '[tbs_us]', '[tb\'U]', '[todd\'U]', '[tsp_us]', '[yd_i]', '{# of calculi}', '{# of donor informative markers}', '{# of fetuses}', '{# of informative markers}', '{#}', '{2 or 3 times}/d', '{3 times}/d', '{4 times}/d', '{5 times}/d', '{absorbance}', '{Absorbance\'U}', '{Absorbance\'U}/mL', '{activity}', '{ActivityCoefficient}', '{AHF\'U}', '{AntibodyResponse\'U}', '{Applicator}', '{APS\'U}', '{AspirinReaction\'U}', '{Bead}', '{Beats}/min', '{Bottle}', '{Bowls}/d', '{Breaths}/min', '{CAE\'U}', '{CagRepeat}', '{Can}', '{Cans}/wk', '{Capsule}', '{Cell}', '{cells}', '{cells}/[HPF]', '{Cells}/mL', '{cells}/uL', '{CfTiter}', '{cfu}', '{cfu}/mL', '{CGG_repeats}', '{CGG}', '{CH100\'U}', '{clock time}', '{clock_time}', '{ComplementActivityEnzyme\'U}', '{ComplementCH100\'U}', '{ComplementCH50\'U}', '{copies}/mL', '{copies}/ug', '{Copies}/uL', '{Count}', '{Counts}/min', '{Dalton}', '{DdTiter}', '{DeltaOpticalDensity}', '{Dilution}', '{Disintegrations}/min', '{Dose}', '{Drinks}/d', '{Each}', '{Ehrlich\'U}', '{Ehrlich\'U}/(2.h)', '{Ehrlich\'U}/100.g', '{Ehrlich\'U}/d', '{Ehrlich\'U}/dL', '{Ehrlich\'U}/mL', '{EIAIndex}', '{EIATiter}', '{EIA\'U}', '{EIA\'U}/U', '{ElisaIndex}', '{ELISA\'U}', '{Elisa\'U}/mL', '{ElisaValue}', '{ERY}/uL', '{Events}', '{FluorescenceIntensity\'U}', 'U{G}', '{GliadinIndexValue}', '{G-PortionPhospholipids}', '{HaTiter}', '{IfaIndex}', '{IfaTiter}', '{IgAAntiphosphatidyleserine\'U}', '{IgAPhospholipid\'U}', '{IgGAntiphosphatidyleserine\'U}', '{IgGIndex}', '{IgMAntiphosphatidyleserine\'U}', '{IgMIndex}', '{ImmuneComplex\'U}', '{ImmuneStatusRatio}', '{Immunity}', '{Index_val}', '{index}', '{IndexValue}', '{InhaledTobaccoUseAmountYears}', '{InhaledTobaccoUsePacks}/d', '{INR}', '{INR\'unit}', '{JDF\'U}', '{JDF\'U}/L', '{JuvenileDiabetesFound\'U}', '{KCT\'U}', '{KRONU\'U}/L', '{KRONU\'U}/mL', '{lgCopies}/ml', '{log_copies}/mL', '{log_IU}/mL', '{LymeIndexValue}', '{M.o.M.}', '{M.o.M}', '{Markers}', '{minidrp}', '{Molecule}/{Platelet}', '{M-PortionPhospholipids}', '{MPS\'U}', '{MPS\'U}/mL', '{MultOfMean}', '{NonspecificOunce}', '{Number}', '{OD_unit}', '{Once}/d', '{OpticalDensity}', '{OpticalDensityIndex}', '{OpticalDensityRatio}', '{P2Y12 Reaction Units}', '{Package}', '{Packs}/d', '{PackYears}', '{Patch}', '{Percentile}', '{Pill}', '{Pouches}/wk', '{RadioactiveT3UptakeRatio}', '{ratio}', '{RBC}/uL', '{RecTiter}', '{Relative\'U}', '{RelativeViscosity}', '{RPI\'U}', '{RubellaVirus}', '{SatIndex}', '{Scoop}', '{ScoreOf}', '{shift}', '{spermatozoa}/mL', '{spray}', '{StandardDeviation}', '{StandardIgA\'U}', '{StandardIgG\'U}', '{StandardIgM\'U}', '{StdDeviation\'U}', '{StimulatingIndex}', '{Streptozyme\'U}', '{ThyroxinUptake\'U}', '{TIBC\'U}', '{Times}/wk', '{Tine\'U}', '{titer}', '{ToxoplasmaIndexValue}', '{Vial}', '{Volume}/{Vvolume}', '{WeeksDays}', '{WhiteBloodCell}', '1/d', '1/min', '10*12/L', '10*3', '10*3.{RBC}', '10*3.U', '10*3/L', '10*3/mL', '10*3/uL', '10*3{Copies}/mL', '10*-3{Polarization\'U}', '10*5', '10*6', '10*6.[iU]', '10*6.eq/mL', '10*6.U', '10*6/{Specimen}', '10*6/kg', '10*6/L', '10*6/mL', '10*6/mm3', '10*6/uL', '10*-6{Immunofluorescence\'U}', '10*8', '10*9/L', '10*9/mL', '10*9/uL', '10.L/(min.m2)', '10.L/min', '10.uN.s/(cm.m2)', '10.uN.s/cm', '10.uN.s/cm2', 'a', 'A/m', 'att', 'bar', 'Cel', 'cg', 'cL', 'cm', 'cm[H2O]', 'cm[H2O]/(s.m)', 'cm[H2O]/L/s', 'cm[Hg]', 'cm2', 'cm2/s', 'cm3', 'cP', 'cSt', 'd', 'dB', 'deg', 'deg/s', 'dg', 'dL', 'dm', 'dm2/s2', 'eq', 'eq/L', 'eq/mL', 'eq/mmol', 'eq/umol', 'erg', 'eV', 'fg', 'fL', 'fL/nL', 'fm', 'fmol', 'fmol/g', 'fmol/L', 'fmol/mg', 'fmol/mL', 'g', 'g.m', 'g.m/({hb}.m2)', 'g.m/{hb}', 'g/(100.g)', 'g/(12.h)', 'g/(24.h)', 'g/(3.d)', 'g/(4.h)', 'g/(48.h)', 'g/(5.h)', 'g/(6.h)', 'g/(72.h)', 'g/(8.h)', 'g/(8.kg.h)', 'g/(kg.h)', 'g/(kg.min)', 'g/{TotalWeight}', 'g/d', 'g/dL', 'g/g', 'g/g{Cre}', 'g/g{creat}', 'g/g{tissue}', 'g/h', 'g/h/m2', 'g/kg', 'g/kg/d', 'g/L', 'g/m2', 'g/mg', 'g/min', 'g/mL', 'g/mmol', 'g/mmol{creat}', 'g/mol', 'GBq', 'h', 'hL', 'Hz', 'J', 'J/L', 'K', 'K/W', 'k[IU]/L', 'k[IU]/mL', 'kat/kg', 'kat/L', 'kBq', 'kcal', 'kcal/(8.h)', 'kcal/h', 'kg', 'kg.m/s', 'kg/(s.m2)', 'kg/h', 'kg/L', 'kg/m2', 'kg/m3', 'kg/min', 'kg/mol', 'kg/s', 'kL', 'km', 'kPa', 'ks', 'kU/g', 'kU/h', 'kU/L', 'kU/mL', 'L', 'L.s2/s', 'L/(8.h)', 'L/(min.m2)', 'L/d', 'L/h', 'L/kg', 'L/L', 'L/min', 'L/s', 'lm/m2', 'm', 'm/s', 'm/s2', 'm[iU]', 'm[IU]/L', 'm[IU]/mL', 'm2', 'm2/s', 'm3/s', 'mA', 'mbar', 'mbar.s/L', 'MBq', 'mCi', 'meq', 'meq/(12.h)', 'meq/(2.h)', 'meq/(24.h)', 'meq/(8.h)', 'meq/(8.h.kg)', 'meq/(kg.d)', 'meq/{Specimen}', 'meq/d', 'meq/dL', 'meq/g', 'meq/g{Cre}', 'meq/h', 'meq/kg', 'meq/kg/h', 'meq/kg/min', 'meq/L', 'meq/m2', 'meq/min', 'meq/mL', 'mg', 'mg/(10.h)', 'mg/(12.h)', 'mg/(18.h)', 'mg/(2.h)', 'mg/(24.h)', 'mg/(72.h)', 'mg/(8.h)', 'mg/(8.h.kg)', 'mg/(kg.h)', 'mg/{Hgb}/g', 'mg/{Specimen}', 'mg/{Tot\'Volume}', 'mg/{Volume}', 'mg/d', 'mg/d/(173.10*-2.m2)', 'mg/dL', 'mg/g', 'mg/g{Cre}', 'mg/g{creat}', 'mg/h', 'mg/kg', 'mg/kg/(24.h)', 'mg/kg/d', 'mg/kg/min', 'mg/L', 'mg/m2', 'mg/m3', 'mg/mg', 'mg/mg{cre}', 'mg/min', 'mg/mL', 'mg/mmol', 'mg/mmol{Cre}', 'mg/mmol{creat}', 'mg/wk', 'mg{Phenylketones}/dL', 'min', 'mL', 'mL/({h\'b}.m2)', 'mL/(10.h)', 'mL/(12.h)', 'mL/(2.h)', 'mL/(24.h)', 'mL/(4.h)', 'mL/(72.h)', 'mL/(8.h)', 'mL/(kg.min)', 'mL/[sin_i]', 'mL/{h\'b}', 'mL/cm[H2O]', 'mL/d', 'mL/dL', 'mL/h', 'mL/kg', 'mL/kg/(8.h)', 'mL/kg/d', 'mL/kg/h', 'mL/kg/min', 'mL/L', 'mL/m2', 'mL/mbar', 'mL/min', 'mL/min/(173.10*-2.m2)', 'mL/min/{1.73_m2}', 'mL/min/m2', 'mL/mm', 'mL/s', 'mm', 'mm/h', 'mm/min', 'mm[H2O]', 'mm[Hg]', 'mm2', 'mm3', 'mmol', 'mmol/(12.h)', 'mmol/(18.h)', 'mmol/(2.h)', 'mmol/(24.h)', 'mmol/(6.h)', 'mmol/(8.h)', 'mmol/(8.h.kg)', 'mmol/{Tot\'Volume}', 'mmol/d', 'mmol/dL', 'mmol/g', 'mmol/g{creat}', 'mmol/g{hemoglobin}', 'mmol/h', 'mmol/h/mg{Hb}', 'mmol/h/mg{protein}', 'mmol/kg', 'mmol/kg/d', 'mmol/kg/h', 'mmol/kg/min', 'mmol/kg{H2O}', 'mmol/L', 'mmol/L/s', 'mmol/m', 'mmol/m2', 'mmol/min', 'mmol/mmol', 'mmol/mol', 'mmol/mol{creat}', 'mmol/s/L', 'mo', 'mol', 'mol/d', 'mol/kg', 'mol/kg/s', 'mol/L', 'mol/m3', 'mol/mL', 'mol/mol', 'mol/mol{creat}', 'mol/s', 'mosm', 'mosm/kg', 'mosm/L', 'mPa', 'ms', 'mU', 'mU/g', 'mU/g{Hgb}', 'mU/L', 'mU/mg', 'mU/mg{Cre}', 'mU/min', 'mU/mL', 'mU/mL/min', 'mU/mmol{creatinine}', 'mU/mmol{RBCs}', 'mV', 'N', 'N.cm', 'N.s', 'nCi', 'ng', 'ng/(24.h)', 'ng/(8.h)', 'ng/(8.h.kg)', 'ng/(kg.d)', 'ng/(kg.h)', 'ng/(kg.min)', 'ng/10*6', 'ng/d', 'ng/dL', 'ng/dL/h', 'ng/g', 'ng/g{Cre}', 'ng/g{creat}', 'ng/h', 'ng/kg', 'ng/kg/(8.h)', 'ng/kg/h', 'ng/kg/min', 'ng/L', 'ng/m2', 'ng/mg', 'ng/mg/h', 'ng/mg{Protein}', 'ng/min', 'ng/mL', 'ng/mL/h', 'ng/mL{rbc}', 'ng/s', 'nkat', 'nL', 'nm', 'nm/s/L', 'nmol', 'nmol/(24.h)', 'nmol/d', 'nmol/dL', 'nmol/g', 'nmol/g{Cre}', 'nmol/g{creat}', 'nmol/g{dry_wt}', 'nmol/h/L', 'nmol/h/mg{protein}', 'nmol/h/mL', 'nmol/L', 'nmol/L/mmol{creat}', 'nmol/L/s', 'nmol/L{RBCs}', 'nmol/m/mg{protein}', 'nmol/mg', 'nmol/mg/h', 'nmol/min/mg{hemoglobin}', 'nmol/min/mg{protein}', 'nmol/min/mL', 'nmol/mL', 'nmol/mL/h', 'nmol/mL/min', 'nmol/mmol', 'nmol/mmol{Cre}', 'nmol/mmol{creat}', 'nmol/mol', 'nmol/nmol', 'nmol/s', 'nmol/s/L', 'nmol/umol{creat}', 'ns', 'Ohm', 'osm/kg', 'osm/L', 'Pa', 'pg', 'pg/dL', 'pg/L', 'pg/mg', 'pg/mL', 'pg/mm', 'pkat', 'pL', 'pm', 'pmol', 'pmol/d', 'pmol/dL', 'pmol/g', 'pmol/h/mg{protein}', 'pmol/h/mL', 'pmol/L', 'pmol/mg{protein}', 'pmol/min', 'pmol/min/mg{protein}', 'pmol/mL', 'pmol/mmol', 'pmol/mmol{creat}', 'pmol/mol', 'pmol/umol', 'pmol/umol{creat}', 'ps', 'pT', 's', 'St', 't', 'U', 'U/(1.h)', 'U/(12.h)', 'U/(18.h)', 'U/(2.h)', 'U/(24.h)', 'U/10*10{cells}', 'U/10*12', 'U/10*6', 'U/10*9', 'U/d', 'U/dL', 'U/g', 'U/g{Cre}', 'U/g{Hb}', 'U/g{hemoglobin}', 'U/g{Hgb}', 'U/h', 'U/kg/h', 'U/kg{Hb}', 'U/kg{hemoglobin}', 'U/L', 'U/min', 'U/mL', 'U/mL{RBC}', 'U/mL{RBCs}', 'U/mmol{creat}', 'U/mol', 'U/s', 'U/umol', 'u[IU]', 'u[IU]/L', 'u[IU]/mL', 'ueq', 'ueq/L', 'ueq/mL', 'ug', 'ug/(24.h)', 'ug/(8.h)', 'ug/(kg.d)', 'ug/(kg.h)', 'ug/{Specimen}', 'ug/{TotalVolume}', 'ug/d', 'ug/dL', 'ug/dL{rbc}', 'ug/g', 'ug/g{Cre}', 'ug/g{creat}', 'ug/g{DryWeight}', 'ug/g{Hgb}', 'ug/g{Tissue}', 'ug/h', 'ug/kg', 'ug/kg/(8.h)', 'ug/kg/d', 'ug/kg/h', 'ug/kg/min', 'ug/L', 'ug/L/(24.h)', 'ug/L{DDU}', 'ug/m2', 'ug/mg', 'ug/mg{Cre}', 'ug/mg{creat}', 'ug/min', 'ug/mL', 'ug/mL{FEU}', 'ug/mmol', 'ug/ng', 'ug{T4}/dL', 'ukat', 'uL', 'uL/(2.h)', 'uL/h', 'um', 'um/s', 'umol', 'umol/(24.h)', 'umol/d', 'umol/dL', 'umol/g', 'umol/g{Cre}', 'umol/g{creat}', 'umol/g{Hb}', 'umol/g{hemoglobin}', 'umol/g{Hgb}', 'umol/h', 'umol/h/g', 'umol/h/L', 'umol/h/mg{protein}', 'umol/kg', 'umol/L', 'umol/L/h', 'umol/L{rbc}', 'umol/m', 'umol/mg', 'umol/mg{Cre}', 'umol/min', 'umol/min/g', 'umol/min/g{prot}', 'umol/min/g{protein}', 'umol/min/L', 'umol/mL', 'umol/mL/min', 'umol/mmol', 'umol/mol', 'umol/mol{Cre}', 'umol/mol{creat}', 'umol/mol{Hb}', 'umol/umol', 'uOhm', 'us', 'uU', 'uU/g', 'uU/L', 'uU/mL', 'uV', 'V', 'wk', '10.uN.s/(cm5.m2)', '10*4/uL', '24.h', 'A', '{ARU}', 'atm', 'ag/{cell}', 'Bq', '{binding_index}', '[bdsk\'U]', '{CAG_repeats}', 'cal', 'cm[H2O]/s/m', '{delta_OD}', '{copies}', '{count}', '{CPM}', '{CPM}/10*3{cell}', 'daL/min', 'daL/min/m2', '{dilution}', 'dyn.s/cm', 'dyn.s/(cm.m2)', '{EIA_index}', '{EIA_titer}', '{EV}', 'U/10', 'U/10*10', 'U/(10.g){feces}', 'U/g{creat}', 'U/g{protein}', 'U{25Cel}/L', 'U{37Cel}/L', 'U/10*12{RBCs}', 'F', 'fmol/mg{cytosol_protein}', 'fmol/mg{protein}', '{FIU}', '{fraction}', '{GAA_repeats}', '{genomes}/mL', '{Globules}/[HPF]', 'g.m/{beat}', 'g{creat}', 'g{Hb}', 'g{total_nit}', 'g{total_prot}', 'g{wet_tissue}', 'g/kg/(8.h)', 'g/(8.h){shift}', 'g/cm3', 'g/g{globulin}', 'g/kg/(8.h){shift}', 'g/kg/h', 'g/kg/min', 'g/mol{creat}', 'g/{specimen}', 'g/{total_output}', 'g/{total_weight}', 'Gy', '{beats}/min', 'H', '[HPF]', '[GPL\'U]/mL', '{GPS\'U}', '[MPL\'U]/mL', '{ISR}', '{IFA_index}', '{IFA_titer}', '[in_i\'H2O]', '{index_val}', '{HA_titer}', '[IU]', '[IU]/L{37Cel}', '[IU]/mg{creat}', 'kat', 'kU', 'kU/L{class}', 'kcal/d', 'kcal/kg/(24.h)', 'kcal/[oz_av]', '[ka\'U]', 'L/(24.h)', 'L/s/s2', '{Log_copies}/mL', '{Log_IU}', '{Log_IU}/mL', '{Log}', '[LPF]', 'lm', 'lm.m2', '{Lyme_index_value}', '[mclg\'U]', 'Ms', 'ug/g{feces}', 'ug{FEU}/mL', 'ug/(100.g)', 'ug/m3', 'ug/dL{RBCs}', 'ug/g{dry_tissue}', 'ug/g{dry_wt}', 'ug/g{hair}', 'ug/g{Hb}', 'ug/g{tissue}', 'ug/L{RBCs}', 'ug/mL{class}', 'ug/mL{eqv}', 'ug/mmol{creat}', 'ug/{specimen}', 'ug/[sft_i]', 'umol{BCE}/mol', 'umol/(2.h)', 'umol/(8.h)', 'umol/dL{GF}', 'umol/kg{feces}', 'umol/L{RBCs}', 'umol/umol{creat}', 'umol/mg{creat}', 'umol/mmol{creat}', 'umol/min/g{mucosa}', 'mU/mmol{creat}', 'mU/g{Hb}', 'mU/g{protein}']}, 'type'=>'CodeableConcept', 'path'=>'Characteristic.unitOfMeasure', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/ucum-units'}},
          'studyEffectiveDescription' => {'type'=>'string', 'path'=>'Characteristic.studyEffectiveDescription', 'min'=>0, 'max'=>1},
          '_studyEffectiveDescription' => {'type'=>'Element', 'path'=>'Characteristic._studyEffectiveDescription', 'min'=>0, 'max'=>1},
          'studyEffectiveDateTime' => {'type'=>'dateTime', 'path'=>'Characteristic.studyEffective[x]', 'min'=>0, 'max'=>1},
          '_studyEffectiveDateTime' => {'type'=>'Element', 'path'=>'Characteristic.studyEffective[x]', 'min'=>0, 'max'=>1},
          'studyEffectivePeriod' => {'type'=>'Period', 'path'=>'Characteristic.studyEffective[x]', 'min'=>0, 'max'=>1},
          'studyEffectiveDuration' => {'type'=>'Duration', 'path'=>'Characteristic.studyEffective[x]', 'min'=>0, 'max'=>1},
          'studyEffectiveTiming' => {'type'=>'Timing', 'path'=>'Characteristic.studyEffective[x]', 'min'=>0, 'max'=>1},
          'studyEffectiveTimeFromStart' => {'type'=>'Duration', 'path'=>'Characteristic.studyEffectiveTimeFromStart', 'min'=>0, 'max'=>1},
          'studyEffectiveGroupMeasure' => {'valid_codes'=>{'http://hl7.org/fhir/group-measure'=>['mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median']}, 'type'=>'code', 'path'=>'Characteristic.studyEffectiveGroupMeasure', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/group-measure'}},
          '_studyEffectiveGroupMeasure' => {'type'=>'Element', 'path'=>'Characteristic._studyEffectiveGroupMeasure', 'min'=>0, 'max'=>1},
          'participantEffectiveDescription' => {'type'=>'string', 'path'=>'Characteristic.participantEffectiveDescription', 'min'=>0, 'max'=>1},
          '_participantEffectiveDescription' => {'type'=>'Element', 'path'=>'Characteristic._participantEffectiveDescription', 'min'=>0, 'max'=>1},
          'participantEffectiveDateTime' => {'type'=>'dateTime', 'path'=>'Characteristic.participantEffective[x]', 'min'=>0, 'max'=>1},
          '_participantEffectiveDateTime' => {'type'=>'Element', 'path'=>'Characteristic.participantEffective[x]', 'min'=>0, 'max'=>1},
          'participantEffectivePeriod' => {'type'=>'Period', 'path'=>'Characteristic.participantEffective[x]', 'min'=>0, 'max'=>1},
          'participantEffectiveDuration' => {'type'=>'Duration', 'path'=>'Characteristic.participantEffective[x]', 'min'=>0, 'max'=>1},
          'participantEffectiveTiming' => {'type'=>'Timing', 'path'=>'Characteristic.participantEffective[x]', 'min'=>0, 'max'=>1},
          'participantEffectiveTimeFromStart' => {'type'=>'Duration', 'path'=>'Characteristic.participantEffectiveTimeFromStart', 'min'=>0, 'max'=>1},
          'participantEffectiveGroupMeasure' => {'valid_codes'=>{'http://hl7.org/fhir/group-measure'=>['mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median']}, 'type'=>'code', 'path'=>'Characteristic.participantEffectiveGroupMeasure', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/group-measure'}},
          '_participantEffectiveGroupMeasure' => {'type'=>'Element', 'path'=>'Characteristic._participantEffectiveGroupMeasure', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                                # 0-1 string
        attr_accessor :_id                               # 0-1 Element
        attr_accessor :extension                         # 0-* [ Extension ]
        attr_accessor :modifierExtension                 # 0-* [ Extension ]
        attr_accessor :definitionCodeableConcept         # 1-1 CodeableConcept
        attr_accessor :definitionCanonical               # 1-1 canonical
        attr_accessor :_definitionCanonical              # 0-1 Element
        attr_accessor :definitionExpression              # 1-1 Expression
        attr_accessor :definitionDataRequirement         # 1-1 DataRequirement
        attr_accessor :usageContext                      # 0-* [ UsageContext ]
        attr_accessor :exclude                           # 0-1 boolean
        attr_accessor :_exclude                          # 0-1 Element
        attr_accessor :unitOfMeasure                     # 0-1 CodeableConcept
        attr_accessor :studyEffectiveDescription         # 0-1 string
        attr_accessor :_studyEffectiveDescription        # 0-1 Element
        attr_accessor :studyEffectiveDateTime            # 0-1 dateTime
        attr_accessor :_studyEffectiveDateTime           # 0-1 Element
        attr_accessor :studyEffectivePeriod              # 0-1 Period
        attr_accessor :studyEffectiveDuration            # 0-1 Duration
        attr_accessor :studyEffectiveTiming              # 0-1 Timing
        attr_accessor :studyEffectiveTimeFromStart       # 0-1 Duration
        attr_accessor :studyEffectiveGroupMeasure        # 0-1 code
        attr_accessor :_studyEffectiveGroupMeasure       # 0-1 Element
        attr_accessor :participantEffectiveDescription   # 0-1 string
        attr_accessor :_participantEffectiveDescription  # 0-1 Element
        attr_accessor :participantEffectiveDateTime      # 0-1 dateTime
        attr_accessor :_participantEffectiveDateTime     # 0-1 Element
        attr_accessor :participantEffectivePeriod        # 0-1 Period
        attr_accessor :participantEffectiveDuration      # 0-1 Duration
        attr_accessor :participantEffectiveTiming        # 0-1 Timing
        attr_accessor :participantEffectiveTimeFromStart # 0-1 Duration
        attr_accessor :participantEffectiveGroupMeasure  # 0-1 code
        attr_accessor :_participantEffectiveGroupMeasure # 0-1 Element
      end

      attr_accessor :id                     # 0-1 id
      attr_accessor :_id                    # 0-1 Element
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :_implicitRules         # 0-1 Element
      attr_accessor :language               # 0-1 code
      attr_accessor :_language              # 0-1 Element
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :url                    # 0-1 uri
      attr_accessor :_url                   # 0-1 Element
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :version                # 0-1 string
      attr_accessor :_version               # 0-1 Element
      attr_accessor :name                   # 0-1 string
      attr_accessor :_name                  # 0-1 Element
      attr_accessor :title                  # 0-1 string
      attr_accessor :_title                 # 0-1 Element
      attr_accessor :shortTitle             # 0-1 string
      attr_accessor :_shortTitle            # 0-1 Element
      attr_accessor :subtitle               # 0-1 string
      attr_accessor :_subtitle              # 0-1 Element
      attr_accessor :status                 # 1-1 code
      attr_accessor :_status                # 0-1 Element
      attr_accessor :experimental           # 0-1 boolean
      attr_accessor :_experimental          # 0-1 Element
      attr_accessor :subjectCodeableConcept # 0-1 CodeableConcept
      attr_accessor :subjectReference       # 0-1 Reference(Group)
      attr_accessor :date                   # 0-1 dateTime
      attr_accessor :_date                  # 0-1 Element
      attr_accessor :publisher              # 0-1 string
      attr_accessor :_publisher             # 0-1 Element
      attr_accessor :contact                # 0-* [ ContactDetail ]
      attr_accessor :description            # 0-1 markdown
      attr_accessor :_description           # 0-1 Element
      attr_accessor :comment                # 0-* [ string ]
      attr_accessor :_comment               # 0-* [ Element ]
      attr_accessor :useContext             # 0-* [ UsageContext ]
      attr_accessor :jurisdiction           # 0-* [ CodeableConcept ]
      attr_accessor :purpose                # 0-1 markdown
      attr_accessor :_purpose               # 0-1 Element
      attr_accessor :usage                  # 0-1 string
      attr_accessor :_usage                 # 0-1 Element
      attr_accessor :copyright              # 0-1 markdown
      attr_accessor :_copyright             # 0-1 Element
      attr_accessor :approvalDate           # 0-1 date
      attr_accessor :_approvalDate          # 0-1 Element
      attr_accessor :lastReviewDate         # 0-1 date
      attr_accessor :_lastReviewDate        # 0-1 Element
      attr_accessor :effectivePeriod        # 0-1 Period
      attr_accessor :topic                  # 0-* [ CodeableConcept ]
      attr_accessor :author                 # 0-* [ ContactDetail ]
      attr_accessor :editor                 # 0-* [ ContactDetail ]
      attr_accessor :reviewer               # 0-* [ ContactDetail ]
      attr_accessor :endorser               # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact        # 0-* [ RelatedArtifact ]
      attr_accessor :library                # 0-* [ canonical ]
      attr_accessor :_library               # 0-* [ Element ]
      attr_accessor :type                   # 1-1 code
      attr_accessor :_type                  # 0-1 Element
      attr_accessor :variableType           # 0-1 code
      attr_accessor :_variableType          # 0-1 Element
      attr_accessor :characteristic         # 1-* [ ResearchElementDefinition::Characteristic ]

      def resourceType
        'ResearchElementDefinition'
      end
    end
  end
  ResearchElementDefinition = FHIR::R4::ResearchElementDefinition
end