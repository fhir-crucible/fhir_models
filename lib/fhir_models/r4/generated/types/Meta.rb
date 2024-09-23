module FHIR
  module R4
    class Meta < FHIR::Model
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
        'id' => {'type'=>'string', 'path'=>'Meta.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Meta._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Meta.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'versionId' => {'type'=>'id', 'path'=>'Meta.versionId', 'min'=>0, 'max'=>1},
        '_versionId' => {'type'=>'Element', 'path'=>'Meta._versionId', 'min'=>0, 'max'=>1},
        'lastUpdated' => {'type'=>'instant', 'path'=>'Meta.lastUpdated', 'min'=>0, 'max'=>1},
        '_lastUpdated' => {'type'=>'Element', 'path'=>'Meta._lastUpdated', 'min'=>0, 'max'=>1},
        'source' => {'type'=>'uri', 'path'=>'Meta.source', 'min'=>0, 'max'=>1},
        '_source' => {'type'=>'Element', 'path'=>'Meta._source', 'min'=>0, 'max'=>1},
        'profile' => {'type'=>'canonical', 'path'=>'Meta.profile', 'min'=>0, 'max'=>Float::INFINITY},
        '_profile' => {'type'=>'Element', 'path'=>'Meta._profile', 'min'=>0, 'max'=>Float::INFINITY},
        'security' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-Confidentiality'=>['U', 'L', 'M', 'N', 'R', 'V'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['ETH', 'GDIS', 'HIV', 'MST', 'SCA', 'SDV', 'SEX', 'SPI', 'BH', 'COGN', 'DVD', 'EMOTDIS', 'MH', 'PSY', 'PSYTHPN', 'SUD', 'ETHUD', 'OPIOIDUD', 'STD', 'TBOO', 'VIO', 'SICKLE', 'DEMO', 'DOB', 'GENDER', 'LIVARG', 'MARST', 'RACE', 'REL', 'B', 'EMPL', 'LOCIS', 'SSP', 'ADOL', 'CEL', 'DIA', 'DRGIS', 'EMP', 'PDS', 'PHY', 'PRS', 'COMPT', 'ACOCOMPT', 'CTCOMPT', 'FMCOMPT', 'HRCOMPT', 'LRCOMPT', 'PACOMPT', 'RESCOMPT', 'RMGTCOMPT', 'SecurityPolicy', 'AUTHPOL', 'ACCESSCONSCHEME', 'DELEPOL', 'ObligationPolicy', 'ANONY', 'AOD', 'AUDIT', 'AUDTR', 'CPLYCC', 'CPLYCD', 'CPLYJPP', 'CPLYOPP', 'CPLYOSP', 'CPLYPOL', 'DECLASSIFYLABEL', 'DEID', 'DELAU', 'DOWNGRDLABEL', 'DRIVLABEL', 'ENCRYPT', 'ENCRYPTR', 'ENCRYPTT', 'ENCRYPTU', 'HUAPRV', 'LABEL', 'MASK', 'MINEC', 'PERSISTLABEL', 'PRIVMARK', 'PSEUD', 'REDACT', 'UPGRDLABEL', 'RefrainPolicy', 'NOAUTH', 'NOCOLLECT', 'NODSCLCD', 'NODSCLCDS', 'NOINTEGRATE', 'NOLIST', 'NOMOU', 'NOORGPOL', 'NOPAT', 'NOPERSISTP', 'NORDSCLCD', 'NORDSCLCDS', 'NORDSCLW', 'NORELINK', 'NOREUSE', 'NOVIP', 'ORCON'], 'http://terminology.hl7.org/CodeSystem/v3-ObservationValue'=>['ABSTRED', 'AGGRED', 'ANONYED', 'MAPPED', 'MASKED', 'PSEUDED', 'REDACTED', 'SUBSETTED', 'SYNTAC', 'TRSLT', 'VERSIONED', 'CRYTOHASH', 'DIGSIG', 'HRELIABLE', 'RELIABLE', 'UNCERTREL', 'UNRELIABLE', 'CLINAST', 'DEVAST', 'HCPAST', 'PACQAST', 'PATAST', 'PAYAST', 'PROAST', 'SDMAST', 'CLINRPT', 'DEVRPT', 'HCPRPT', 'PACQRPT', 'PATRPT', 'PAYRPT', 'PRORPT', 'SDMRPT'], 'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['PurposeOfUse', 'HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'type'=>'Coding', 'path'=>'Meta.security', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/security-labels'}},
        'tag' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/common-tags'=>['actionable']}, 'type'=>'Coding', 'path'=>'Meta.tag', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/common-tags'}}
      }

      attr_accessor :id           # 0-1 string
      attr_accessor :_id          # 0-1 Element
      attr_accessor :extension    # 0-* [ Extension ]
      attr_accessor :versionId    # 0-1 id
      attr_accessor :_versionId   # 0-1 Element
      attr_accessor :lastUpdated  # 0-1 instant
      attr_accessor :_lastUpdated # 0-1 Element
      attr_accessor :source       # 0-1 uri
      attr_accessor :_source      # 0-1 Element
      attr_accessor :profile      # 0-* [ canonical ]
      attr_accessor :_profile     # 0-* [ Element ]
      attr_accessor :security     # 0-* [ Coding ]
      attr_accessor :tag          # 0-* [ Coding ]
    end
  end
  Meta = FHIR::R4::Meta
end