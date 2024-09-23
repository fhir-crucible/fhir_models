module FHIR
  module R4
    class EffectEvidenceSynthesis < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'EffectEvidenceSynthesis.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'EffectEv_idenceSynthesis._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'EffectEvidenceSynthesis.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'EffectEvidenceSynthesis.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'EffectEvidenceSynthesis.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'EffectEvidenceSynthesis.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'EffectEvidenceSynthesis.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'EffectEvidenceSynthesis.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'EffectEvidenceSynthesis.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'EffectEvidenceSynthesis.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'EffectEvidenceSynthesis.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'EffectEvidenceSynthesis.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'EffectEvidenceSynthesis.name', 'min'=>0, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'EffectEvidenceSynthesis.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'EffectEvidenceSynthesis.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._status', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'EffectEvidenceSynthesis.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'EffectEvidenceSynthesis.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'EffectEvidenceSynthesis.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'EffectEvidenceSynthesis.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._description', 'min'=>0, 'max'=>1},
        'note' => {'type'=>'Annotation', 'path'=>'EffectEvidenceSynthesis.note', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'type'=>'UsageContext', 'path'=>'EffectEvidenceSynthesis.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'EffectEvidenceSynthesis.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'type'=>'markdown', 'path'=>'EffectEvidenceSynthesis.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._copyright', 'min'=>0, 'max'=>1},
        'approvalDate' => {'type'=>'date', 'path'=>'EffectEvidenceSynthesis.approvalDate', 'min'=>0, 'max'=>1},
        '_approvalDate' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._approvalDate', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'type'=>'date', 'path'=>'EffectEvidenceSynthesis.lastReviewDate', 'min'=>0, 'max'=>1},
        '_lastReviewDate' => {'type'=>'Element', 'path'=>'EffectEvidenceSynthesis._lastReviewDate', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'type'=>'Period', 'path'=>'EffectEvidenceSynthesis.effectivePeriod', 'min'=>0, 'max'=>1},
        'topic' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-topic'=>['treatment', 'education', 'assessment']}, 'type'=>'CodeableConcept', 'path'=>'EffectEvidenceSynthesis.topic', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-topic'}},
        'author' => {'type'=>'ContactDetail', 'path'=>'EffectEvidenceSynthesis.author', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'type'=>'ContactDetail', 'path'=>'EffectEvidenceSynthesis.editor', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'type'=>'ContactDetail', 'path'=>'EffectEvidenceSynthesis.reviewer', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'type'=>'ContactDetail', 'path'=>'EffectEvidenceSynthesis.endorser', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'type'=>'RelatedArtifact', 'path'=>'EffectEvidenceSynthesis.relatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'synthesisType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/synthesis-type'=>['std-MA', 'IPD-MA', 'indirect-NMA', 'combined-NMA', 'range', 'classification']}, 'type'=>'CodeableConcept', 'path'=>'EffectEvidenceSynthesis.synthesisType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/synthesis-type'}},
        'studyType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/study-type'=>['RCT', 'CCT', 'cohort', 'case-control', 'series', 'case-report', 'mixed']}, 'type'=>'CodeableConcept', 'path'=>'EffectEvidenceSynthesis.studyType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/study-type'}},
        'population' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'type'=>'Reference', 'path'=>'EffectEvidenceSynthesis.population', 'min'=>1, 'max'=>1},
        'exposure' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'type'=>'Reference', 'path'=>'EffectEvidenceSynthesis.exposure', 'min'=>1, 'max'=>1},
        'exposureAlternative' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'type'=>'Reference', 'path'=>'EffectEvidenceSynthesis.exposureAlternative', 'min'=>1, 'max'=>1},
        'outcome' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'type'=>'Reference', 'path'=>'EffectEvidenceSynthesis.outcome', 'min'=>1, 'max'=>1},
        'sampleSize' => {'type'=>'EffectEvidenceSynthesis::SampleSize', 'path'=>'EffectEvidenceSynthesis.sampleSize', 'min'=>0, 'max'=>1},
        'resultsByExposure' => {'type'=>'EffectEvidenceSynthesis::ResultsByExposure', 'path'=>'EffectEvidenceSynthesis.resultsByExposure', 'min'=>0, 'max'=>Float::INFINITY},
        'effectEstimate' => {'type'=>'EffectEvidenceSynthesis::EffectEstimate', 'path'=>'EffectEvidenceSynthesis.effectEstimate', 'min'=>0, 'max'=>Float::INFINITY},
        'certainty' => {'type'=>'EffectEvidenceSynthesis::Certainty', 'path'=>'EffectEvidenceSynthesis.certainty', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class SampleSize < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'SampleSize.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'SampleSize._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'SampleSize.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'SampleSize.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'SampleSize.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'SampleSize._description', 'min'=>0, 'max'=>1},
          'numberOfStudies' => {'type'=>'integer', 'path'=>'SampleSize.numberOfStudies', 'min'=>0, 'max'=>1},
          '_numberOfStudies' => {'type'=>'Element', 'path'=>'SampleSize._numberOfStudies', 'min'=>0, 'max'=>1},
          'numberOfParticipants' => {'type'=>'integer', 'path'=>'SampleSize.numberOfParticipants', 'min'=>0, 'max'=>1},
          '_numberOfParticipants' => {'type'=>'Element', 'path'=>'SampleSize._numberOfParticipants', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                    # 0-1 string
        attr_accessor :_id                   # 0-1 Element
        attr_accessor :extension             # 0-* [ Extension ]
        attr_accessor :modifierExtension     # 0-* [ Extension ]
        attr_accessor :description           # 0-1 string
        attr_accessor :_description          # 0-1 Element
        attr_accessor :numberOfStudies       # 0-1 integer
        attr_accessor :_numberOfStudies      # 0-1 Element
        attr_accessor :numberOfParticipants  # 0-1 integer
        attr_accessor :_numberOfParticipants # 0-1 Element
      end

      class ResultsByExposure < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'ResultsByExposure.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'ResultsByExposure._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ResultsByExposure.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'ResultsByExposure.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'ResultsByExposure.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'ResultsByExposure._description', 'min'=>0, 'max'=>1},
          'exposureState' => {'valid_codes'=>{'http://hl7.org/fhir/exposure-state'=>['exposure', 'exposure-alternative']}, 'type'=>'code', 'path'=>'ResultsByExposure.exposureState', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/exposure-state'}},
          '_exposureState' => {'type'=>'Element', 'path'=>'ResultsByExposure._exposureState', 'min'=>0, 'max'=>1},
          'variantState' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/evidence-variant-state'=>['low-risk', 'medium-risk', 'high-risk']}, 'type'=>'CodeableConcept', 'path'=>'ResultsByExposure.variantState', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-variant-state'}},
          'riskEvidenceSynthesis' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/RiskEvidenceSynthesis'], 'type'=>'Reference', 'path'=>'ResultsByExposure.riskEvidenceSynthesis', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                    # 0-1 string
        attr_accessor :_id                   # 0-1 Element
        attr_accessor :extension             # 0-* [ Extension ]
        attr_accessor :modifierExtension     # 0-* [ Extension ]
        attr_accessor :description           # 0-1 string
        attr_accessor :_description          # 0-1 Element
        attr_accessor :exposureState         # 0-1 code
        attr_accessor :_exposureState        # 0-1 Element
        attr_accessor :variantState          # 0-1 CodeableConcept
        attr_accessor :riskEvidenceSynthesis # 1-1 Reference(RiskEvidenceSynthesis)
      end

      class EffectEstimate < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'EffectEstimate.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'EffectEstimate._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'EffectEstimate.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'EffectEstimate.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'string', 'path'=>'EffectEstimate.description', 'min'=>0, 'max'=>1},
          '_description' => {'type'=>'Element', 'path'=>'EffectEstimate._description', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/effect-estimate-type'=>['relative-RR', 'relative-OR', 'relative-HR', 'absolute-ARD', 'absolute-MeanDiff', 'absolute-SMD', 'absolute-MedianDiff']}, 'type'=>'CodeableConcept', 'path'=>'EffectEstimate.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/effect-estimate-type'}},
          'variantState' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/evidence-variant-state'=>['low-risk', 'medium-risk', 'high-risk']}, 'type'=>'CodeableConcept', 'path'=>'EffectEstimate.variantState', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-variant-state'}},
          'value' => {'type'=>'decimal', 'path'=>'EffectEstimate.value', 'min'=>0, 'max'=>1},
          '_value' => {'type'=>'Element', 'path'=>'EffectEstimate._value', 'min'=>0, 'max'=>1},
          'unitOfMeasure' => {'valid_codes'=>{'http://unitsofmeasure.org'=>['%', '%/100{WBC}', '%{0to3Hours}', '%{Abnormal}', '%{Activity}', '%{BasalActivity}', '%{Binding}', '%{Blockade}', '%{Carboxyhemoglobin}', '%{Conversion}', '%{Cound}', '%{EosSeen}', '%{Excretion}', '%{Fat}', '%{FetalErythrocytes}', '%{Hemoglobin}', '%{HemoglobinA1C}', '%{HemoglobinSaturation}', '%{Hemolysis}', '%{HumanResponse}', '%{Index}', '%{Inhibition}', '%{Live}', '%{Negative Control}', '%{Normal}', '%{NormalControl}', '%{NormalPooledPlasma}', '%{ofAvailable}', '%{ofBacteria}', '%{OfLymphocytes}', '%{OfWBCs}', '%{Oxygen}', '%{Positive}', '%{Precipitate}', '%{Reactivity}', '%{response}', '%{risk}', '%{SpermMotility}', '%{Total}', '%{TotalProtein}', '%{Tot\'Cholesterol}', '%{Tot\'Hgb}', '%{Uptake}', '%{vol}', '%{WeightToWeight}', '/(12.h)', '/[arb\'U]', '/[HPF]', '/[iU]', '/[LPF]', '/{Entity}', '/{oif}', '/{Specimen}', '/{tot}', '/10*10', '/10*12', '/10*12{rbc}', '/10*6', '/10*9', '/100', '/100{cells}', '/100{neutrophils}', '/100{spermatozoa}', '/100{WBC}', '/100{WBCs}', '/a', '/cm[H2O]', '/d', '/dL', '/g', '/g{creat}', '/g{hgb}', '/g{tot\'nit}', '/g{tot\'prot}', '/g{wet\'tis}', '/h', '/kg', '/kg{body\'wt}', '/L', '/m2', '/mg', '/min', '/mL', '/mm3', '/mmol', '/mo', '/s', '/U', '/ug', '/uL', '/wk', '[APL\'U]', '[APL\'U]/mL', '[arb\'U]', '[arb\'U]/L', '[arb\'U]/mL', '[AU]', '[BAU]', '[beth\'U]', '[CFU]', '[CFU]/L', '[CFU]/mL', '[Ch]', '[cin_i]', '[cup_us]', '[degF]', '[dr_av]', '[drp]', '[drp]/[HPF]', '[drp]/h', '[drp]/min', '[drp]/mL', '[drp]/s', '[fdr_us]', '[foz_br]', '[foz_us]', '[ft_i]', '[fth_i]', '[gal_br]', '[gal_us]', '[GPL\'U]', '[gr]', '[in_i]', '[iU]', '[IU]/(2.h)', '[IU]/(24.h)', '[IU]/10*9{RBCs}', '[IU]/d', '[IU]/dL', '[IU]/g', '[IU]/g{Hb}', '[iU]/g{Hgb}', '[IU]/h', '[IU]/kg', '[IU]/kg/d', '[IU]/L', '[IU]/min', '[IU]/mL', '[lb_av]', '[mi_i]', '[mi_us]', '[min_us]', '[MPL\'U]', '[nmi_i]', '[oz_av]', '[oz_tr]', '[pH]', '[pi].rad/min', '[ppb]', '[ppm]', '[ppm]{v/v}', '[pptr]', '[ppth]', '[psi]', '[pt_br]', '[qt_br]', '[qt_us]', '[sft_i]', '[sin_i]', '[ston_av]', '[syd_i]', '[tbs_us]', '[tb\'U]', '[todd\'U]', '[tsp_us]', '[yd_i]', '{# of calculi}', '{# of donor informative markers}', '{# of fetuses}', '{# of informative markers}', '{#}', '{2 or 3 times}/d', '{3 times}/d', '{4 times}/d', '{5 times}/d', '{absorbance}', '{Absorbance\'U}', '{Absorbance\'U}/mL', '{activity}', '{ActivityCoefficient}', '{AHF\'U}', '{AntibodyResponse\'U}', '{Applicator}', '{APS\'U}', '{AspirinReaction\'U}', '{Bead}', '{Beats}/min', '{Bottle}', '{Bowls}/d', '{Breaths}/min', '{CAE\'U}', '{CagRepeat}', '{Can}', '{Cans}/wk', '{Capsule}', '{Cell}', '{cells}', '{cells}/[HPF]', '{Cells}/mL', '{cells}/uL', '{CfTiter}', '{cfu}', '{cfu}/mL', '{CGG_repeats}', '{CGG}', '{CH100\'U}', '{clock time}', '{clock_time}', '{ComplementActivityEnzyme\'U}', '{ComplementCH100\'U}', '{ComplementCH50\'U}', '{copies}/mL', '{copies}/ug', '{Copies}/uL', '{Count}', '{Counts}/min', '{Dalton}', '{DdTiter}', '{DeltaOpticalDensity}', '{Dilution}', '{Disintegrations}/min', '{Dose}', '{Drinks}/d', '{Each}', '{Ehrlich\'U}', '{Ehrlich\'U}/(2.h)', '{Ehrlich\'U}/100.g', '{Ehrlich\'U}/d', '{Ehrlich\'U}/dL', '{Ehrlich\'U}/mL', '{EIAIndex}', '{EIATiter}', '{EIA\'U}', '{EIA\'U}/U', '{ElisaIndex}', '{ELISA\'U}', '{Elisa\'U}/mL', '{ElisaValue}', '{ERY}/uL', '{Events}', '{FluorescenceIntensity\'U}', 'U{G}', '{GliadinIndexValue}', '{G-PortionPhospholipids}', '{HaTiter}', '{IfaIndex}', '{IfaTiter}', '{IgAAntiphosphatidyleserine\'U}', '{IgAPhospholipid\'U}', '{IgGAntiphosphatidyleserine\'U}', '{IgGIndex}', '{IgMAntiphosphatidyleserine\'U}', '{IgMIndex}', '{ImmuneComplex\'U}', '{ImmuneStatusRatio}', '{Immunity}', '{Index_val}', '{index}', '{IndexValue}', '{InhaledTobaccoUseAmountYears}', '{InhaledTobaccoUsePacks}/d', '{INR}', '{INR\'unit}', '{JDF\'U}', '{JDF\'U}/L', '{JuvenileDiabetesFound\'U}', '{KCT\'U}', '{KRONU\'U}/L', '{KRONU\'U}/mL', '{lgCopies}/ml', '{log_copies}/mL', '{log_IU}/mL', '{LymeIndexValue}', '{M.o.M.}', '{M.o.M}', '{Markers}', '{minidrp}', '{Molecule}/{Platelet}', '{M-PortionPhospholipids}', '{MPS\'U}', '{MPS\'U}/mL', '{MultOfMean}', '{NonspecificOunce}', '{Number}', '{OD_unit}', '{Once}/d', '{OpticalDensity}', '{OpticalDensityIndex}', '{OpticalDensityRatio}', '{P2Y12 Reaction Units}', '{Package}', '{Packs}/d', '{PackYears}', '{Patch}', '{Percentile}', '{Pill}', '{Pouches}/wk', '{RadioactiveT3UptakeRatio}', '{ratio}', '{RBC}/uL', '{RecTiter}', '{Relative\'U}', '{RelativeViscosity}', '{RPI\'U}', '{RubellaVirus}', '{SatIndex}', '{Scoop}', '{ScoreOf}', '{shift}', '{spermatozoa}/mL', '{spray}', '{StandardDeviation}', '{StandardIgA\'U}', '{StandardIgG\'U}', '{StandardIgM\'U}', '{StdDeviation\'U}', '{StimulatingIndex}', '{Streptozyme\'U}', '{ThyroxinUptake\'U}', '{TIBC\'U}', '{Times}/wk', '{Tine\'U}', '{titer}', '{ToxoplasmaIndexValue}', '{Vial}', '{Volume}/{Vvolume}', '{WeeksDays}', '{WhiteBloodCell}', '1/d', '1/min', '10*12/L', '10*3', '10*3.{RBC}', '10*3.U', '10*3/L', '10*3/mL', '10*3/uL', '10*3{Copies}/mL', '10*-3{Polarization\'U}', '10*5', '10*6', '10*6.[iU]', '10*6.eq/mL', '10*6.U', '10*6/{Specimen}', '10*6/kg', '10*6/L', '10*6/mL', '10*6/mm3', '10*6/uL', '10*-6{Immunofluorescence\'U}', '10*8', '10*9/L', '10*9/mL', '10*9/uL', '10.L/(min.m2)', '10.L/min', '10.uN.s/(cm.m2)', '10.uN.s/cm', '10.uN.s/cm2', 'a', 'A/m', 'att', 'bar', 'Cel', 'cg', 'cL', 'cm', 'cm[H2O]', 'cm[H2O]/(s.m)', 'cm[H2O]/L/s', 'cm[Hg]', 'cm2', 'cm2/s', 'cm3', 'cP', 'cSt', 'd', 'dB', 'deg', 'deg/s', 'dg', 'dL', 'dm', 'dm2/s2', 'eq', 'eq/L', 'eq/mL', 'eq/mmol', 'eq/umol', 'erg', 'eV', 'fg', 'fL', 'fL/nL', 'fm', 'fmol', 'fmol/g', 'fmol/L', 'fmol/mg', 'fmol/mL', 'g', 'g.m', 'g.m/({hb}.m2)', 'g.m/{hb}', 'g/(100.g)', 'g/(12.h)', 'g/(24.h)', 'g/(3.d)', 'g/(4.h)', 'g/(48.h)', 'g/(5.h)', 'g/(6.h)', 'g/(72.h)', 'g/(8.h)', 'g/(8.kg.h)', 'g/(kg.h)', 'g/(kg.min)', 'g/{TotalWeight}', 'g/d', 'g/dL', 'g/g', 'g/g{Cre}', 'g/g{creat}', 'g/g{tissue}', 'g/h', 'g/h/m2', 'g/kg', 'g/kg/d', 'g/L', 'g/m2', 'g/mg', 'g/min', 'g/mL', 'g/mmol', 'g/mmol{creat}', 'g/mol', 'GBq', 'h', 'hL', 'Hz', 'J', 'J/L', 'K', 'K/W', 'k[IU]/L', 'k[IU]/mL', 'kat/kg', 'kat/L', 'kBq', 'kcal', 'kcal/(8.h)', 'kcal/h', 'kg', 'kg.m/s', 'kg/(s.m2)', 'kg/h', 'kg/L', 'kg/m2', 'kg/m3', 'kg/min', 'kg/mol', 'kg/s', 'kL', 'km', 'kPa', 'ks', 'kU/g', 'kU/h', 'kU/L', 'kU/mL', 'L', 'L.s2/s', 'L/(8.h)', 'L/(min.m2)', 'L/d', 'L/h', 'L/kg', 'L/L', 'L/min', 'L/s', 'lm/m2', 'm', 'm/s', 'm/s2', 'm[iU]', 'm[IU]/L', 'm[IU]/mL', 'm2', 'm2/s', 'm3/s', 'mA', 'mbar', 'mbar.s/L', 'MBq', 'mCi', 'meq', 'meq/(12.h)', 'meq/(2.h)', 'meq/(24.h)', 'meq/(8.h)', 'meq/(8.h.kg)', 'meq/(kg.d)', 'meq/{Specimen}', 'meq/d', 'meq/dL', 'meq/g', 'meq/g{Cre}', 'meq/h', 'meq/kg', 'meq/kg/h', 'meq/kg/min', 'meq/L', 'meq/m2', 'meq/min', 'meq/mL', 'mg', 'mg/(10.h)', 'mg/(12.h)', 'mg/(18.h)', 'mg/(2.h)', 'mg/(24.h)', 'mg/(72.h)', 'mg/(8.h)', 'mg/(8.h.kg)', 'mg/(kg.h)', 'mg/{Hgb}/g', 'mg/{Specimen}', 'mg/{Tot\'Volume}', 'mg/{Volume}', 'mg/d', 'mg/d/(173.10*-2.m2)', 'mg/dL', 'mg/g', 'mg/g{Cre}', 'mg/g{creat}', 'mg/h', 'mg/kg', 'mg/kg/(24.h)', 'mg/kg/d', 'mg/kg/min', 'mg/L', 'mg/m2', 'mg/m3', 'mg/mg', 'mg/mg{cre}', 'mg/min', 'mg/mL', 'mg/mmol', 'mg/mmol{Cre}', 'mg/mmol{creat}', 'mg/wk', 'mg{Phenylketones}/dL', 'min', 'mL', 'mL/({h\'b}.m2)', 'mL/(10.h)', 'mL/(12.h)', 'mL/(2.h)', 'mL/(24.h)', 'mL/(4.h)', 'mL/(72.h)', 'mL/(8.h)', 'mL/(kg.min)', 'mL/[sin_i]', 'mL/{h\'b}', 'mL/cm[H2O]', 'mL/d', 'mL/dL', 'mL/h', 'mL/kg', 'mL/kg/(8.h)', 'mL/kg/d', 'mL/kg/h', 'mL/kg/min', 'mL/L', 'mL/m2', 'mL/mbar', 'mL/min', 'mL/min/(173.10*-2.m2)', 'mL/min/{1.73_m2}', 'mL/min/m2', 'mL/mm', 'mL/s', 'mm', 'mm/h', 'mm/min', 'mm[H2O]', 'mm[Hg]', 'mm2', 'mm3', 'mmol', 'mmol/(12.h)', 'mmol/(18.h)', 'mmol/(2.h)', 'mmol/(24.h)', 'mmol/(6.h)', 'mmol/(8.h)', 'mmol/(8.h.kg)', 'mmol/{Tot\'Volume}', 'mmol/d', 'mmol/dL', 'mmol/g', 'mmol/g{creat}', 'mmol/g{hemoglobin}', 'mmol/h', 'mmol/h/mg{Hb}', 'mmol/h/mg{protein}', 'mmol/kg', 'mmol/kg/d', 'mmol/kg/h', 'mmol/kg/min', 'mmol/kg{H2O}', 'mmol/L', 'mmol/L/s', 'mmol/m', 'mmol/m2', 'mmol/min', 'mmol/mmol', 'mmol/mol', 'mmol/mol{creat}', 'mmol/s/L', 'mo', 'mol', 'mol/d', 'mol/kg', 'mol/kg/s', 'mol/L', 'mol/m3', 'mol/mL', 'mol/mol', 'mol/mol{creat}', 'mol/s', 'mosm', 'mosm/kg', 'mosm/L', 'mPa', 'ms', 'mU', 'mU/g', 'mU/g{Hgb}', 'mU/L', 'mU/mg', 'mU/mg{Cre}', 'mU/min', 'mU/mL', 'mU/mL/min', 'mU/mmol{creatinine}', 'mU/mmol{RBCs}', 'mV', 'N', 'N.cm', 'N.s', 'nCi', 'ng', 'ng/(24.h)', 'ng/(8.h)', 'ng/(8.h.kg)', 'ng/(kg.d)', 'ng/(kg.h)', 'ng/(kg.min)', 'ng/10*6', 'ng/d', 'ng/dL', 'ng/dL/h', 'ng/g', 'ng/g{Cre}', 'ng/g{creat}', 'ng/h', 'ng/kg', 'ng/kg/(8.h)', 'ng/kg/h', 'ng/kg/min', 'ng/L', 'ng/m2', 'ng/mg', 'ng/mg/h', 'ng/mg{Protein}', 'ng/min', 'ng/mL', 'ng/mL/h', 'ng/mL{rbc}', 'ng/s', 'nkat', 'nL', 'nm', 'nm/s/L', 'nmol', 'nmol/(24.h)', 'nmol/d', 'nmol/dL', 'nmol/g', 'nmol/g{Cre}', 'nmol/g{creat}', 'nmol/g{dry_wt}', 'nmol/h/L', 'nmol/h/mg{protein}', 'nmol/h/mL', 'nmol/L', 'nmol/L/mmol{creat}', 'nmol/L/s', 'nmol/L{RBCs}', 'nmol/m/mg{protein}', 'nmol/mg', 'nmol/mg/h', 'nmol/min/mg{hemoglobin}', 'nmol/min/mg{protein}', 'nmol/min/mL', 'nmol/mL', 'nmol/mL/h', 'nmol/mL/min', 'nmol/mmol', 'nmol/mmol{Cre}', 'nmol/mmol{creat}', 'nmol/mol', 'nmol/nmol', 'nmol/s', 'nmol/s/L', 'nmol/umol{creat}', 'ns', 'Ohm', 'osm/kg', 'osm/L', 'Pa', 'pg', 'pg/dL', 'pg/L', 'pg/mg', 'pg/mL', 'pg/mm', 'pkat', 'pL', 'pm', 'pmol', 'pmol/d', 'pmol/dL', 'pmol/g', 'pmol/h/mg{protein}', 'pmol/h/mL', 'pmol/L', 'pmol/mg{protein}', 'pmol/min', 'pmol/min/mg{protein}', 'pmol/mL', 'pmol/mmol', 'pmol/mmol{creat}', 'pmol/mol', 'pmol/umol', 'pmol/umol{creat}', 'ps', 'pT', 's', 'St', 't', 'U', 'U/(1.h)', 'U/(12.h)', 'U/(18.h)', 'U/(2.h)', 'U/(24.h)', 'U/10*10{cells}', 'U/10*12', 'U/10*6', 'U/10*9', 'U/d', 'U/dL', 'U/g', 'U/g{Cre}', 'U/g{Hb}', 'U/g{hemoglobin}', 'U/g{Hgb}', 'U/h', 'U/kg/h', 'U/kg{Hb}', 'U/kg{hemoglobin}', 'U/L', 'U/min', 'U/mL', 'U/mL{RBC}', 'U/mL{RBCs}', 'U/mmol{creat}', 'U/mol', 'U/s', 'U/umol', 'u[IU]', 'u[IU]/L', 'u[IU]/mL', 'ueq', 'ueq/L', 'ueq/mL', 'ug', 'ug/(24.h)', 'ug/(8.h)', 'ug/(kg.d)', 'ug/(kg.h)', 'ug/{Specimen}', 'ug/{TotalVolume}', 'ug/d', 'ug/dL', 'ug/dL{rbc}', 'ug/g', 'ug/g{Cre}', 'ug/g{creat}', 'ug/g{DryWeight}', 'ug/g{Hgb}', 'ug/g{Tissue}', 'ug/h', 'ug/kg', 'ug/kg/(8.h)', 'ug/kg/d', 'ug/kg/h', 'ug/kg/min', 'ug/L', 'ug/L/(24.h)', 'ug/L{DDU}', 'ug/m2', 'ug/mg', 'ug/mg{Cre}', 'ug/mg{creat}', 'ug/min', 'ug/mL', 'ug/mL{FEU}', 'ug/mmol', 'ug/ng', 'ug{T4}/dL', 'ukat', 'uL', 'uL/(2.h)', 'uL/h', 'um', 'um/s', 'umol', 'umol/(24.h)', 'umol/d', 'umol/dL', 'umol/g', 'umol/g{Cre}', 'umol/g{creat}', 'umol/g{Hb}', 'umol/g{hemoglobin}', 'umol/g{Hgb}', 'umol/h', 'umol/h/g', 'umol/h/L', 'umol/h/mg{protein}', 'umol/kg', 'umol/L', 'umol/L/h', 'umol/L{rbc}', 'umol/m', 'umol/mg', 'umol/mg{Cre}', 'umol/min', 'umol/min/g', 'umol/min/g{prot}', 'umol/min/g{protein}', 'umol/min/L', 'umol/mL', 'umol/mL/min', 'umol/mmol', 'umol/mol', 'umol/mol{Cre}', 'umol/mol{creat}', 'umol/mol{Hb}', 'umol/umol', 'uOhm', 'us', 'uU', 'uU/g', 'uU/L', 'uU/mL', 'uV', 'V', 'wk', '10.uN.s/(cm5.m2)', '10*4/uL', '24.h', 'A', '{ARU}', 'atm', 'ag/{cell}', 'Bq', '{binding_index}', '[bdsk\'U]', '{CAG_repeats}', 'cal', 'cm[H2O]/s/m', '{delta_OD}', '{copies}', '{count}', '{CPM}', '{CPM}/10*3{cell}', 'daL/min', 'daL/min/m2', '{dilution}', 'dyn.s/cm', 'dyn.s/(cm.m2)', '{EIA_index}', '{EIA_titer}', '{EV}', 'U/10', 'U/10*10', 'U/(10.g){feces}', 'U/g{creat}', 'U/g{protein}', 'U{25Cel}/L', 'U{37Cel}/L', 'U/10*12{RBCs}', 'F', 'fmol/mg{cytosol_protein}', 'fmol/mg{protein}', '{FIU}', '{fraction}', '{GAA_repeats}', '{genomes}/mL', '{Globules}/[HPF]', 'g.m/{beat}', 'g{creat}', 'g{Hb}', 'g{total_nit}', 'g{total_prot}', 'g{wet_tissue}', 'g/kg/(8.h)', 'g/(8.h){shift}', 'g/cm3', 'g/g{globulin}', 'g/kg/(8.h){shift}', 'g/kg/h', 'g/kg/min', 'g/mol{creat}', 'g/{specimen}', 'g/{total_output}', 'g/{total_weight}', 'Gy', '{beats}/min', 'H', '[HPF]', '[GPL\'U]/mL', '{GPS\'U}', '[MPL\'U]/mL', '{ISR}', '{IFA_index}', '{IFA_titer}', '[in_i\'H2O]', '{index_val}', '{HA_titer}', '[IU]', '[IU]/L{37Cel}', '[IU]/mg{creat}', 'kat', 'kU', 'kU/L{class}', 'kcal/d', 'kcal/kg/(24.h)', 'kcal/[oz_av]', '[ka\'U]', 'L/(24.h)', 'L/s/s2', '{Log_copies}/mL', '{Log_IU}', '{Log_IU}/mL', '{Log}', '[LPF]', 'lm', 'lm.m2', '{Lyme_index_value}', '[mclg\'U]', 'Ms', 'ug/g{feces}', 'ug{FEU}/mL', 'ug/(100.g)', 'ug/m3', 'ug/dL{RBCs}', 'ug/g{dry_tissue}', 'ug/g{dry_wt}', 'ug/g{hair}', 'ug/g{Hb}', 'ug/g{tissue}', 'ug/L{RBCs}', 'ug/mL{class}', 'ug/mL{eqv}', 'ug/mmol{creat}', 'ug/{specimen}', 'ug/[sft_i]', 'umol{BCE}/mol', 'umol/(2.h)', 'umol/(8.h)', 'umol/dL{GF}', 'umol/kg{feces}', 'umol/L{RBCs}', 'umol/umol{creat}', 'umol/mg{creat}', 'umol/mmol{creat}', 'umol/min/g{mucosa}', 'mU/mmol{creat}', 'mU/g{Hb}', 'mU/g{protein}']}, 'type'=>'CodeableConcept', 'path'=>'EffectEstimate.unitOfMeasure', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/ucum-units'}},
          'precisionEstimate' => {'type'=>'EffectEvidenceSynthesis::EffectEstimate::PrecisionEstimate', 'path'=>'EffectEstimate.precisionEstimate', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class PrecisionEstimate < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'PrecisionEstimate.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'PrecisionEstimate._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'PrecisionEstimate.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'PrecisionEstimate.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/precision-estimate-type'=>['CI', 'IQR', 'SD', 'SE']}, 'type'=>'CodeableConcept', 'path'=>'PrecisionEstimate.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/precision-estimate-type'}},
            'level' => {'type'=>'decimal', 'path'=>'PrecisionEstimate.level', 'min'=>0, 'max'=>1},
            '_level' => {'type'=>'Element', 'path'=>'PrecisionEstimate._level', 'min'=>0, 'max'=>1},
            'from' => {'type'=>'decimal', 'path'=>'PrecisionEstimate.from', 'min'=>0, 'max'=>1},
            '_from' => {'type'=>'Element', 'path'=>'PrecisionEstimate._from', 'min'=>0, 'max'=>1},
            'to' => {'type'=>'decimal', 'path'=>'PrecisionEstimate.to', 'min'=>0, 'max'=>1},
            '_to' => {'type'=>'Element', 'path'=>'PrecisionEstimate._to', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :level             # 0-1 decimal
          attr_accessor :_level            # 0-1 Element
          attr_accessor :from              # 0-1 decimal
          attr_accessor :_from             # 0-1 Element
          attr_accessor :to                # 0-1 decimal
          attr_accessor :_to               # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 0-1 string
        attr_accessor :_description      # 0-1 Element
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :variantState      # 0-1 CodeableConcept
        attr_accessor :value             # 0-1 decimal
        attr_accessor :_value            # 0-1 Element
        attr_accessor :unitOfMeasure     # 0-1 CodeableConcept
        attr_accessor :precisionEstimate # 0-* [ EffectEvidenceSynthesis::EffectEstimate::PrecisionEstimate ]
      end

      class Certainty < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Certainty.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Certainty._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Certainty.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Certainty.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'rating' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/evidence-quality'=>['high', 'moderate', 'low', 'very-low']}, 'type'=>'CodeableConcept', 'path'=>'Certainty.rating', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-quality'}},
          'note' => {'type'=>'Annotation', 'path'=>'Certainty.note', 'min'=>0, 'max'=>Float::INFINITY},
          'certaintySubcomponent' => {'type'=>'EffectEvidenceSynthesis::Certainty::CertaintySubcomponent', 'path'=>'Certainty.certaintySubcomponent', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class CertaintySubcomponent < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'CertaintySubcomponent.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'CertaintySubcomponent._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'CertaintySubcomponent.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'CertaintySubcomponent.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/certainty-subcomponent-type'=>['RiskOfBias', 'Inconsistency', 'Indirectness', 'Imprecision', 'PublicationBias', 'DoseResponseGradient', 'PlausibleConfounding', 'LargeEffect']}, 'type'=>'CodeableConcept', 'path'=>'CertaintySubcomponent.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/certainty-subcomponent-type'}},
            'rating' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/certainty-subcomponent-rating'=>['no-change', 'downcode1', 'downcode2', 'downcode3', 'upcode1', 'upcode2', 'no-concern', 'serious-concern', 'critical-concern', 'present', 'absent']}, 'type'=>'CodeableConcept', 'path'=>'CertaintySubcomponent.rating', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/certainty-subcomponent-rating'}},
            'note' => {'type'=>'Annotation', 'path'=>'CertaintySubcomponent.note', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :rating            # 0-* [ CodeableConcept ]
          attr_accessor :note              # 0-* [ Annotation ]
        end

        attr_accessor :id                    # 0-1 string
        attr_accessor :_id                   # 0-1 Element
        attr_accessor :extension             # 0-* [ Extension ]
        attr_accessor :modifierExtension     # 0-* [ Extension ]
        attr_accessor :rating                # 0-* [ CodeableConcept ]
        attr_accessor :note                  # 0-* [ Annotation ]
        attr_accessor :certaintySubcomponent # 0-* [ EffectEvidenceSynthesis::Certainty::CertaintySubcomponent ]
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
      attr_accessor :url                 # 0-1 uri
      attr_accessor :_url                # 0-1 Element
      attr_accessor :identifier          # 0-* [ Identifier ]
      attr_accessor :version             # 0-1 string
      attr_accessor :_version            # 0-1 Element
      attr_accessor :name                # 0-1 string
      attr_accessor :_name               # 0-1 Element
      attr_accessor :title               # 0-1 string
      attr_accessor :_title              # 0-1 Element
      attr_accessor :status              # 1-1 code
      attr_accessor :_status             # 0-1 Element
      attr_accessor :date                # 0-1 dateTime
      attr_accessor :_date               # 0-1 Element
      attr_accessor :publisher           # 0-1 string
      attr_accessor :_publisher          # 0-1 Element
      attr_accessor :contact             # 0-* [ ContactDetail ]
      attr_accessor :description         # 0-1 markdown
      attr_accessor :_description        # 0-1 Element
      attr_accessor :note                # 0-* [ Annotation ]
      attr_accessor :useContext          # 0-* [ UsageContext ]
      attr_accessor :jurisdiction        # 0-* [ CodeableConcept ]
      attr_accessor :copyright           # 0-1 markdown
      attr_accessor :_copyright          # 0-1 Element
      attr_accessor :approvalDate        # 0-1 date
      attr_accessor :_approvalDate       # 0-1 Element
      attr_accessor :lastReviewDate      # 0-1 date
      attr_accessor :_lastReviewDate     # 0-1 Element
      attr_accessor :effectivePeriod     # 0-1 Period
      attr_accessor :topic               # 0-* [ CodeableConcept ]
      attr_accessor :author              # 0-* [ ContactDetail ]
      attr_accessor :editor              # 0-* [ ContactDetail ]
      attr_accessor :reviewer            # 0-* [ ContactDetail ]
      attr_accessor :endorser            # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact     # 0-* [ RelatedArtifact ]
      attr_accessor :synthesisType       # 0-1 CodeableConcept
      attr_accessor :studyType           # 0-1 CodeableConcept
      attr_accessor :population          # 1-1 Reference(EvidenceVariable)
      attr_accessor :exposure            # 1-1 Reference(EvidenceVariable)
      attr_accessor :exposureAlternative # 1-1 Reference(EvidenceVariable)
      attr_accessor :outcome             # 1-1 Reference(EvidenceVariable)
      attr_accessor :sampleSize          # 0-1 EffectEvidenceSynthesis::SampleSize
      attr_accessor :resultsByExposure   # 0-* [ EffectEvidenceSynthesis::ResultsByExposure ]
      attr_accessor :effectEstimate      # 0-* [ EffectEvidenceSynthesis::EffectEstimate ]
      attr_accessor :certainty           # 0-* [ EffectEvidenceSynthesis::Certainty ]

      def resourceType
        'EffectEvidenceSynthesis'
      end
    end
  end
  EffectEvidenceSynthesis = FHIR::R4::EffectEvidenceSynthesis
end