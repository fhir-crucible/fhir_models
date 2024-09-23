module FHIR
  module R4B
    class MolecularSequence < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['chromosome', 'identifier', 'patient', 'referenceseqid', 'type', 'variant-end', 'variant-start', 'window-end', 'window-start']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MolecularSequence.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MolecularSequence._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MolecularSequence.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MolecularSequence.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MolecularSequence._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MolecularSequence.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MolecularSequence._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MolecularSequence.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MolecularSequence.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MolecularSequence.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MolecularSequence.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'MolecularSequence.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/sequence-type'=>['aa', 'dna', 'rna']}, 'type'=>'code', 'path'=>'MolecularSequence.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/sequence-type'}},
        '_type' => {'type'=>'Element', 'path'=>'MolecularSequence._type', 'min'=>0, 'max'=>1},
        'coordinateSystem' => {'type'=>'integer', 'path'=>'MolecularSequence.coordinateSystem', 'min'=>1, 'max'=>1},
        '_coordinateSystem' => {'type'=>'Element', 'path'=>'MolecularSequence._coordinateSystem', 'min'=>0, 'max'=>1},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'MolecularSequence.patient', 'min'=>0, 'max'=>1},
        'specimen' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Specimen'], 'type'=>'Reference', 'path'=>'MolecularSequence.specimen', 'min'=>0, 'max'=>1},
        'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'MolecularSequence.device', 'min'=>0, 'max'=>1},
        'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'MolecularSequence.performer', 'min'=>0, 'max'=>1},
        'quantity' => {'type'=>'Quantity', 'path'=>'MolecularSequence.quantity', 'min'=>0, 'max'=>1},
        'referenceSeq' => {'type'=>'MolecularSequence::ReferenceSeq', 'path'=>'MolecularSequence.referenceSeq', 'min'=>0, 'max'=>1},
        'variant' => {'type'=>'MolecularSequence::Variant', 'path'=>'MolecularSequence.variant', 'min'=>0, 'max'=>Float::INFINITY},
        'observedSeq' => {'type'=>'string', 'path'=>'MolecularSequence.observedSeq', 'min'=>0, 'max'=>1},
        '_observedSeq' => {'type'=>'Element', 'path'=>'MolecularSequence._observedSeq', 'min'=>0, 'max'=>1},
        'quality' => {'type'=>'MolecularSequence::Quality', 'path'=>'MolecularSequence.quality', 'min'=>0, 'max'=>Float::INFINITY},
        'readCoverage' => {'type'=>'integer', 'path'=>'MolecularSequence.readCoverage', 'min'=>0, 'max'=>1},
        '_readCoverage' => {'type'=>'Element', 'path'=>'MolecularSequence._readCoverage', 'min'=>0, 'max'=>1},
        'repository' => {'type'=>'MolecularSequence::Repository', 'path'=>'MolecularSequence.repository', 'min'=>0, 'max'=>Float::INFINITY},
        'pointer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MolecularSequence'], 'type'=>'Reference', 'path'=>'MolecularSequence.pointer', 'min'=>0, 'max'=>Float::INFINITY},
        'structureVariant' => {'type'=>'MolecularSequence::StructureVariant', 'path'=>'MolecularSequence.structureVariant', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class ReferenceSeq < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'ReferenceSeq.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'ReferenceSeq._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'ReferenceSeq.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'ReferenceSeq.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'chromosome' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/chromosome-human'=>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', 'X', 'Y']}, 'type'=>'CodeableConcept', 'path'=>'ReferenceSeq.chromosome', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/chromosome-human'}},
          'genomeBuild' => {'type'=>'string', 'path'=>'ReferenceSeq.genomeBuild', 'min'=>0, 'max'=>1},
          '_genomeBuild' => {'type'=>'Element', 'path'=>'ReferenceSeq._genomeBuild', 'min'=>0, 'max'=>1},
          'orientation' => {'valid_codes'=>{'http://hl7.org/fhir/orientation-type'=>['sense', 'antisense']}, 'type'=>'code', 'path'=>'ReferenceSeq.orientation', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/orientation-type'}},
          '_orientation' => {'type'=>'Element', 'path'=>'ReferenceSeq._orientation', 'min'=>0, 'max'=>1},
          'referenceSeqId' => {'type'=>'CodeableConcept', 'path'=>'ReferenceSeq.referenceSeqId', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/sequence-referenceSeq'}},
          'referenceSeqPointer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MolecularSequence'], 'type'=>'Reference', 'path'=>'ReferenceSeq.referenceSeqPointer', 'min'=>0, 'max'=>1},
          'referenceSeqString' => {'type'=>'string', 'path'=>'ReferenceSeq.referenceSeqString', 'min'=>0, 'max'=>1},
          '_referenceSeqString' => {'type'=>'Element', 'path'=>'ReferenceSeq._referenceSeqString', 'min'=>0, 'max'=>1},
          'strand' => {'valid_codes'=>{'http://hl7.org/fhir/strand-type'=>['watson', 'crick']}, 'type'=>'code', 'path'=>'ReferenceSeq.strand', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/strand-type'}},
          '_strand' => {'type'=>'Element', 'path'=>'ReferenceSeq._strand', 'min'=>0, 'max'=>1},
          'windowStart' => {'type'=>'integer', 'path'=>'ReferenceSeq.windowStart', 'min'=>0, 'max'=>1},
          '_windowStart' => {'type'=>'Element', 'path'=>'ReferenceSeq._windowStart', 'min'=>0, 'max'=>1},
          'windowEnd' => {'type'=>'integer', 'path'=>'ReferenceSeq.windowEnd', 'min'=>0, 'max'=>1},
          '_windowEnd' => {'type'=>'Element', 'path'=>'ReferenceSeq._windowEnd', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :_id                 # 0-1 Element
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :chromosome          # 0-1 CodeableConcept
        attr_accessor :genomeBuild         # 0-1 string
        attr_accessor :_genomeBuild        # 0-1 Element
        attr_accessor :orientation         # 0-1 code
        attr_accessor :_orientation        # 0-1 Element
        attr_accessor :referenceSeqId      # 0-1 CodeableConcept
        attr_accessor :referenceSeqPointer # 0-1 Reference(MolecularSequence)
        attr_accessor :referenceSeqString  # 0-1 string
        attr_accessor :_referenceSeqString # 0-1 Element
        attr_accessor :strand              # 0-1 code
        attr_accessor :_strand             # 0-1 Element
        attr_accessor :windowStart         # 0-1 integer
        attr_accessor :_windowStart        # 0-1 Element
        attr_accessor :windowEnd           # 0-1 integer
        attr_accessor :_windowEnd          # 0-1 Element
      end

      class Variant < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Variant.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Variant._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Variant.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Variant.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'start' => {'type'=>'integer', 'path'=>'Variant.start', 'min'=>0, 'max'=>1},
          '_start' => {'type'=>'Element', 'path'=>'Variant._start', 'min'=>0, 'max'=>1},
          'end' => {'type'=>'integer', 'path'=>'Variant.end', 'min'=>0, 'max'=>1},
          '_end' => {'type'=>'Element', 'path'=>'Variant._end', 'min'=>0, 'max'=>1},
          'observedAllele' => {'type'=>'string', 'path'=>'Variant.observedAllele', 'min'=>0, 'max'=>1},
          '_observedAllele' => {'type'=>'Element', 'path'=>'Variant._observedAllele', 'min'=>0, 'max'=>1},
          'referenceAllele' => {'type'=>'string', 'path'=>'Variant.referenceAllele', 'min'=>0, 'max'=>1},
          '_referenceAllele' => {'type'=>'Element', 'path'=>'Variant._referenceAllele', 'min'=>0, 'max'=>1},
          'cigar' => {'type'=>'string', 'path'=>'Variant.cigar', 'min'=>0, 'max'=>1},
          '_cigar' => {'type'=>'Element', 'path'=>'Variant._cigar', 'min'=>0, 'max'=>1},
          'variantPointer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Observation'], 'type'=>'Reference', 'path'=>'Variant.variantPointer', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :start             # 0-1 integer
        attr_accessor :_start            # 0-1 Element
        attr_accessor :end               # 0-1 integer
        attr_accessor :_end              # 0-1 Element
        attr_accessor :observedAllele    # 0-1 string
        attr_accessor :_observedAllele   # 0-1 Element
        attr_accessor :referenceAllele   # 0-1 string
        attr_accessor :_referenceAllele  # 0-1 Element
        attr_accessor :cigar             # 0-1 string
        attr_accessor :_cigar            # 0-1 Element
        attr_accessor :variantPointer    # 0-1 Reference(Observation)
      end

      class Quality < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Quality.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Quality._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Quality.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Quality.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/quality-type'=>['indel', 'snp', 'unknown']}, 'type'=>'code', 'path'=>'Quality.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quality-type'}},
          '_type' => {'type'=>'Element', 'path'=>'Quality._type', 'min'=>0, 'max'=>1},
          'standardSequence' => {'type'=>'CodeableConcept', 'path'=>'Quality.standardSequence', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/sequence-quality-standardSequence'}},
          'start' => {'type'=>'integer', 'path'=>'Quality.start', 'min'=>0, 'max'=>1},
          '_start' => {'type'=>'Element', 'path'=>'Quality._start', 'min'=>0, 'max'=>1},
          'end' => {'type'=>'integer', 'path'=>'Quality.end', 'min'=>0, 'max'=>1},
          '_end' => {'type'=>'Element', 'path'=>'Quality._end', 'min'=>0, 'max'=>1},
          'score' => {'type'=>'Quantity', 'path'=>'Quality.score', 'min'=>0, 'max'=>1},
          'method' => {'local_name'=>'local_method', 'type'=>'CodeableConcept', 'path'=>'Quality.method', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/sequence-quality-method'}},
          'truthTP' => {'type'=>'decimal', 'path'=>'Quality.truthTP', 'min'=>0, 'max'=>1},
          '_truthTP' => {'type'=>'Element', 'path'=>'Quality._truthTP', 'min'=>0, 'max'=>1},
          'queryTP' => {'type'=>'decimal', 'path'=>'Quality.queryTP', 'min'=>0, 'max'=>1},
          '_queryTP' => {'type'=>'Element', 'path'=>'Quality._queryTP', 'min'=>0, 'max'=>1},
          'truthFN' => {'type'=>'decimal', 'path'=>'Quality.truthFN', 'min'=>0, 'max'=>1},
          '_truthFN' => {'type'=>'Element', 'path'=>'Quality._truthFN', 'min'=>0, 'max'=>1},
          'queryFP' => {'type'=>'decimal', 'path'=>'Quality.queryFP', 'min'=>0, 'max'=>1},
          '_queryFP' => {'type'=>'Element', 'path'=>'Quality._queryFP', 'min'=>0, 'max'=>1},
          'gtFP' => {'type'=>'decimal', 'path'=>'Quality.gtFP', 'min'=>0, 'max'=>1},
          '_gtFP' => {'type'=>'Element', 'path'=>'Quality._gtFP', 'min'=>0, 'max'=>1},
          'precision' => {'type'=>'decimal', 'path'=>'Quality.precision', 'min'=>0, 'max'=>1},
          '_precision' => {'type'=>'Element', 'path'=>'Quality._precision', 'min'=>0, 'max'=>1},
          'recall' => {'type'=>'decimal', 'path'=>'Quality.recall', 'min'=>0, 'max'=>1},
          '_recall' => {'type'=>'Element', 'path'=>'Quality._recall', 'min'=>0, 'max'=>1},
          'fScore' => {'type'=>'decimal', 'path'=>'Quality.fScore', 'min'=>0, 'max'=>1},
          '_fScore' => {'type'=>'Element', 'path'=>'Quality._fScore', 'min'=>0, 'max'=>1},
          'roc' => {'type'=>'MolecularSequence::Quality::Roc', 'path'=>'Quality.roc', 'min'=>0, 'max'=>1}
        }

        class Roc < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Roc.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Roc._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Roc.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Roc.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'score' => {'type'=>'integer', 'path'=>'Roc.score', 'min'=>0, 'max'=>Float::INFINITY},
            '_score' => {'type'=>'Element', 'path'=>'Roc._score', 'min'=>0, 'max'=>Float::INFINITY},
            'numTP' => {'type'=>'integer', 'path'=>'Roc.numTP', 'min'=>0, 'max'=>Float::INFINITY},
            '_numTP' => {'type'=>'Element', 'path'=>'Roc._numTP', 'min'=>0, 'max'=>Float::INFINITY},
            'numFP' => {'type'=>'integer', 'path'=>'Roc.numFP', 'min'=>0, 'max'=>Float::INFINITY},
            '_numFP' => {'type'=>'Element', 'path'=>'Roc._numFP', 'min'=>0, 'max'=>Float::INFINITY},
            'numFN' => {'type'=>'integer', 'path'=>'Roc.numFN', 'min'=>0, 'max'=>Float::INFINITY},
            '_numFN' => {'type'=>'Element', 'path'=>'Roc._numFN', 'min'=>0, 'max'=>Float::INFINITY},
            'precision' => {'type'=>'decimal', 'path'=>'Roc.precision', 'min'=>0, 'max'=>Float::INFINITY},
            '_precision' => {'type'=>'Element', 'path'=>'Roc._precision', 'min'=>0, 'max'=>Float::INFINITY},
            'sensitivity' => {'type'=>'decimal', 'path'=>'Roc.sensitivity', 'min'=>0, 'max'=>Float::INFINITY},
            '_sensitivity' => {'type'=>'Element', 'path'=>'Roc._sensitivity', 'min'=>0, 'max'=>Float::INFINITY},
            'fMeasure' => {'type'=>'decimal', 'path'=>'Roc.fMeasure', 'min'=>0, 'max'=>Float::INFINITY},
            '_fMeasure' => {'type'=>'Element', 'path'=>'Roc._fMeasure', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :score             # 0-* [ integer ]
          attr_accessor :_score            # 0-* [ Element ]
          attr_accessor :numTP             # 0-* [ integer ]
          attr_accessor :_numTP            # 0-* [ Element ]
          attr_accessor :numFP             # 0-* [ integer ]
          attr_accessor :_numFP            # 0-* [ Element ]
          attr_accessor :numFN             # 0-* [ integer ]
          attr_accessor :_numFN            # 0-* [ Element ]
          attr_accessor :precision         # 0-* [ decimal ]
          attr_accessor :_precision        # 0-* [ Element ]
          attr_accessor :sensitivity       # 0-* [ decimal ]
          attr_accessor :_sensitivity      # 0-* [ Element ]
          attr_accessor :fMeasure          # 0-* [ decimal ]
          attr_accessor :_fMeasure         # 0-* [ Element ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :standardSequence  # 0-1 CodeableConcept
        attr_accessor :start             # 0-1 integer
        attr_accessor :_start            # 0-1 Element
        attr_accessor :end               # 0-1 integer
        attr_accessor :_end              # 0-1 Element
        attr_accessor :score             # 0-1 Quantity
        attr_accessor :local_method      # 0-1 CodeableConcept
        attr_accessor :truthTP           # 0-1 decimal
        attr_accessor :_truthTP          # 0-1 Element
        attr_accessor :queryTP           # 0-1 decimal
        attr_accessor :_queryTP          # 0-1 Element
        attr_accessor :truthFN           # 0-1 decimal
        attr_accessor :_truthFN          # 0-1 Element
        attr_accessor :queryFP           # 0-1 decimal
        attr_accessor :_queryFP          # 0-1 Element
        attr_accessor :gtFP              # 0-1 decimal
        attr_accessor :_gtFP             # 0-1 Element
        attr_accessor :precision         # 0-1 decimal
        attr_accessor :_precision        # 0-1 Element
        attr_accessor :recall            # 0-1 decimal
        attr_accessor :_recall           # 0-1 Element
        attr_accessor :fScore            # 0-1 decimal
        attr_accessor :_fScore           # 0-1 Element
        attr_accessor :roc               # 0-1 MolecularSequence::Quality::Roc
      end

      class Repository < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Repository.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Repository._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Repository.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Repository.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/repository-type'=>['directlink', 'openapi', 'login', 'oauth', 'other']}, 'type'=>'code', 'path'=>'Repository.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/repository-type'}},
          '_type' => {'type'=>'Element', 'path'=>'Repository._type', 'min'=>0, 'max'=>1},
          'url' => {'type'=>'uri', 'path'=>'Repository.url', 'min'=>0, 'max'=>1},
          '_url' => {'type'=>'Element', 'path'=>'Repository._url', 'min'=>0, 'max'=>1},
          'name' => {'type'=>'string', 'path'=>'Repository.name', 'min'=>0, 'max'=>1},
          '_name' => {'type'=>'Element', 'path'=>'Repository._name', 'min'=>0, 'max'=>1},
          'datasetId' => {'type'=>'string', 'path'=>'Repository.datasetId', 'min'=>0, 'max'=>1},
          '_datasetId' => {'type'=>'Element', 'path'=>'Repository._datasetId', 'min'=>0, 'max'=>1},
          'variantsetId' => {'type'=>'string', 'path'=>'Repository.variantsetId', 'min'=>0, 'max'=>1},
          '_variantsetId' => {'type'=>'Element', 'path'=>'Repository._variantsetId', 'min'=>0, 'max'=>1},
          'readsetId' => {'type'=>'string', 'path'=>'Repository.readsetId', 'min'=>0, 'max'=>1},
          '_readsetId' => {'type'=>'Element', 'path'=>'Repository._readsetId', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :url               # 0-1 uri
        attr_accessor :_url              # 0-1 Element
        attr_accessor :name              # 0-1 string
        attr_accessor :_name             # 0-1 Element
        attr_accessor :datasetId         # 0-1 string
        attr_accessor :_datasetId        # 0-1 Element
        attr_accessor :variantsetId      # 0-1 string
        attr_accessor :_variantsetId     # 0-1 Element
        attr_accessor :readsetId         # 0-1 string
        attr_accessor :_readsetId        # 0-1 Element
      end

      class StructureVariant < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'StructureVariant.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'StructureVariant._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'StructureVariant.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'StructureVariant.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'variantType' => {'type'=>'CodeableConcept', 'path'=>'StructureVariant.variantType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://loinc.org/vs/LL379-9'}},
          'exact' => {'type'=>'boolean', 'path'=>'StructureVariant.exact', 'min'=>0, 'max'=>1},
          '_exact' => {'type'=>'Element', 'path'=>'StructureVariant._exact', 'min'=>0, 'max'=>1},
          'length' => {'type'=>'integer', 'path'=>'StructureVariant.length', 'min'=>0, 'max'=>1},
          '_length' => {'type'=>'Element', 'path'=>'StructureVariant._length', 'min'=>0, 'max'=>1},
          'outer' => {'type'=>'MolecularSequence::StructureVariant::Outer', 'path'=>'StructureVariant.outer', 'min'=>0, 'max'=>1},
          'inner' => {'type'=>'MolecularSequence::StructureVariant::Inner', 'path'=>'StructureVariant.inner', 'min'=>0, 'max'=>1}
        }

        class Outer < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Outer.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Outer._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Outer.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Outer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'start' => {'type'=>'integer', 'path'=>'Outer.start', 'min'=>0, 'max'=>1},
            '_start' => {'type'=>'Element', 'path'=>'Outer._start', 'min'=>0, 'max'=>1},
            'end' => {'type'=>'integer', 'path'=>'Outer.end', 'min'=>0, 'max'=>1},
            '_end' => {'type'=>'Element', 'path'=>'Outer._end', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :start             # 0-1 integer
          attr_accessor :_start            # 0-1 Element
          attr_accessor :end               # 0-1 integer
          attr_accessor :_end              # 0-1 Element
        end

        class Inner < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Inner.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Inner._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Inner.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Inner.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'start' => {'type'=>'integer', 'path'=>'Inner.start', 'min'=>0, 'max'=>1},
            '_start' => {'type'=>'Element', 'path'=>'Inner._start', 'min'=>0, 'max'=>1},
            'end' => {'type'=>'integer', 'path'=>'Inner.end', 'min'=>0, 'max'=>1},
            '_end' => {'type'=>'Element', 'path'=>'Inner._end', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :start             # 0-1 integer
          attr_accessor :_start            # 0-1 Element
          attr_accessor :end               # 0-1 integer
          attr_accessor :_end              # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :variantType       # 0-1 CodeableConcept
        attr_accessor :exact             # 0-1 boolean
        attr_accessor :_exact            # 0-1 Element
        attr_accessor :length            # 0-1 integer
        attr_accessor :_length           # 0-1 Element
        attr_accessor :outer             # 0-1 MolecularSequence::StructureVariant::Outer
        attr_accessor :inner             # 0-1 MolecularSequence::StructureVariant::Inner
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
      attr_accessor :type              # 0-1 code
      attr_accessor :_type             # 0-1 Element
      attr_accessor :coordinateSystem  # 1-1 integer
      attr_accessor :_coordinateSystem # 0-1 Element
      attr_accessor :patient           # 0-1 Reference(Patient)
      attr_accessor :specimen          # 0-1 Reference(Specimen)
      attr_accessor :device            # 0-1 Reference(Device)
      attr_accessor :performer         # 0-1 Reference(Organization)
      attr_accessor :quantity          # 0-1 Quantity
      attr_accessor :referenceSeq      # 0-1 MolecularSequence::ReferenceSeq
      attr_accessor :variant           # 0-* [ MolecularSequence::Variant ]
      attr_accessor :observedSeq       # 0-1 string
      attr_accessor :_observedSeq      # 0-1 Element
      attr_accessor :quality           # 0-* [ MolecularSequence::Quality ]
      attr_accessor :readCoverage      # 0-1 integer
      attr_accessor :_readCoverage     # 0-1 Element
      attr_accessor :repository        # 0-* [ MolecularSequence::Repository ]
      attr_accessor :pointer           # 0-* [ Reference(MolecularSequence) ]
      attr_accessor :structureVariant  # 0-* [ MolecularSequence::StructureVariant ]

      def resourceType
        'MolecularSequence'
      end
    end
  end
end