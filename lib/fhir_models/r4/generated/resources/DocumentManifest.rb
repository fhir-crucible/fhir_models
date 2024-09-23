module FHIR
  module R4
    class DocumentManifest < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['author', 'created', 'description', 'identifier', 'item', 'patient', 'recipient', 'related-id', 'related-ref', 'source', 'status', 'subject', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'DocumentManifest.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'DocumentManifest._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'DocumentManifest.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'DocumentManifest.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'DocumentManifest._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'DocumentManifest.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'DocumentManifest._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'DocumentManifest.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'DocumentManifest.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'DocumentManifest.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'DocumentManifest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'masterIdentifier' => {'type'=>'Identifier', 'path'=>'DocumentManifest.masterIdentifier', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'DocumentManifest.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/document-reference-status'=>['current', 'superseded', 'entered-in-error']}, 'type'=>'code', 'path'=>'DocumentManifest.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/document-reference-status'}},
        '_status' => {'type'=>'Element', 'path'=>'DocumentManifest._status', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['ACCTRECEIVABLE', 'CASH', 'CC', 'AE', 'DN', 'DV', 'MC', 'V', 'PBILLACCT', 'CONT', 'DAY', 'LOC', 'MONTH', 'PERIOD', 'PROV', 'WEEK', 'YEAR', 'AA', 'ANF', 'AR', 'AS', 'DISPLAY', 'FORM', 'CPTM', 'HCPCSA', 'BLK', 'CAP', 'CONTF', 'FINBILL', 'ROST', 'SESS', 'FFS', 'FFPS', 'FFCS', 'TFS', 'ROIFS', 'ROIPS', 'CACC', 'CAIC', 'CAMC', 'CANC', 'CAPC', 'CBGC', 'CCCC', 'CCGC', 'CCPC', 'CCSC', 'CDEC', 'CDRC', 'CEMC', 'CFPC', 'CIMC', 'CMGC', 'CNEC', 'CNMC', 'CNQC', 'CNSC', 'COGC', 'COMC', 'COPC', 'COSC', 'COTC', 'CPEC', 'CPGC', 'CPHC', 'CPRC', 'CPSC', 'CPYC', 'CROC', 'CRPC', 'CSUC', 'CTSC', 'CURC', 'CVSC', 'LGPC', 'AALC', 'AAMC', 'ABHC', 'ACAC', 'ACHC', 'AHOC', 'ALTC', 'AOSC', 'CACS', 'CAMI', 'CAST', 'CBAR', 'CCAD', 'CCAR', 'CDEP', 'CDGD', 'CDIA', 'CEPI', 'CFEL', 'CHFC', 'CHRO', 'CHYP', 'CMIH', 'CMSC', 'COJR', 'CONC', 'COPD', 'CORT', 'CPAD', 'CPND', 'CPST', 'CSDM', 'CSIC', 'CSLD', 'CSPT', 'CTBU', 'CVDC', 'CWMA', 'CWOH', 'AMB', 'EMER', 'FLD', 'HH', 'IMP', 'ACUTE', 'NONAC', 'OBSENC', 'PRENC', 'SS', 'VR', 'ALC', 'CARD', 'CHR', 'DNTL', 'DRGRHB', 'GENRL', 'MED', 'OBS', 'ONC', 'PALL', 'PED', 'PHAR', 'PHYRHB', 'PSYCH', 'SURG', 'AUTOATTCH', 'DOCUMENT', 'HEALTHREC', 'IMG', 'LABRESULTS', 'MODEL', 'WIATTCH', 'XRAY', 'ICOL', 'IDSCL', 'INFA', 'INFAO', 'INFASO', 'IRDSCL', 'RESEARCH', 'RSDID', 'RSREID', 'ID', 'IP', 'L', 'M', 'O', 'R', 'X', 'AUTO', 'ENDC', 'REFLEX', 'AUTH', 'NAUTH', 'ELG', 'NELG', 'COVPRD', 'LFEMX', 'NETAMT', 'PRDMX', 'UNITPRICE', 'UNITQTY', 'COVMX', 'EHCPOL', 'HSAPOL', 'AUTOPOL', 'COL', 'UNINSMOT', 'PUBLICPOL', 'DENTPRG', 'DISEASEPRG', 'CANPRG', 'ENDRENAL', 'HIVAIDS', 'MANDPOL', 'MENTPRG', 'SAFNET', 'SUBPRG', 'SUBSIDIZ', 'SUBSIDMC', 'SUBSUPP', 'WCBPOL', 'DENTAL', 'DISEASE', 'DRUGPOL', 'HIP', 'LTC', 'MCPOL', 'POS', 'HMO', 'PPO', 'MENTPOL', 'SUBPOL', 'VISPOL', 'DIS', 'EWB', 'FLEXP', 'LIFE', 'ANNU', 'TLIFE', 'ULIFE', 'PNC', 'REI', 'SURPL', 'UMBRL', 'CHAR', 'CRIME', 'EAP', 'GOVEMP', 'HIRISK', 'IND', 'MILITARY', 'RETIRE', 'SOCIAL', 'VET', 'EMAUTH', '21', '1', '19', '2', '22', '23', '3', '4', '5', '6', '7', '14', '15', '16', '17', '18', '20', '8', '10', '11', '12', '13', '9', 'CHLDCARE', 'CONVEYNC', 'HLTHCARE', 'HOMECARE', 'HOSPPTNT', 'HOSPVSTR', 'HOUSEHLD', 'INMATE', 'INTIMATE', 'LTRMCARE', 'PLACE', 'PTNTCARE', 'SCHOOL2', 'SOCIAL2', 'SUBSTNCE', 'TRAVINT', 'WORK2', 'CHRG', 'REV', 'MVA', 'SCHOOL', 'SPT', 'WPA', 'ACADR', 'ACALL', 'ACALLG', 'ACCONS', 'ACDEMO', 'ACDI', 'ACIMMUN', 'ACLAB', 'ACMED', 'ACMEDC', 'ACMEN', 'ACOBS', 'ACPOLPRG', 'ACPROV', 'ACPSERV', 'ACSUBSTAB', 'INFAUT', 'INFCON', 'INFCRT', 'INFDNG', 'INFEMER', 'INFPWR', 'INFREG', 'ALLCAT', 'ALLGCAT', 'ARCAT', 'COBSCAT', 'DEMOCAT', 'DICAT', 'IMMUCAT', 'LABCAT', 'MEDCCAT', 'MENCAT', 'PSVCCAT', 'RXCAT', 'ALEC', 'BONUS', 'CFWD', 'EDU', 'EPYMT', 'GARN', 'INVOICE', 'PINV', 'PPRD', 'PROA', 'RECOV', 'RETRO', 'TRAN', 'INVTYPE', 'PAYEE', 'PAYOR', 'SENDAPP', 'UNSPSC', 'GTIN', 'UPC', 'COIN', 'COPAYMENT', 'DEDUCTIBLE', 'PAY', 'SPEND', 'COINS', 'AFTHRS', 'ISOL', 'OOO', 'CANCAPT', 'DSC', 'ESA', 'FFSTOP', 'FNLFEE', 'FRSTFEE', 'MARKUP', 'MISSAPT', 'PERFEE', 'PERMBNS', 'RESTOCK', 'TRAVEL', 'URGENT', 'FST', 'HST', 'PST', 'I', 'P', 'S', 'SP', 'W', 'CPNDDRGING', 'CPNDINDING', 'CPNDSUPING', 'DRUGING', 'FRAMEING', 'LENSING', 'PRDING', 'CPINV', 'CSINV', 'CSPINV', 'FININV', 'OHSINV', 'PAINV', 'RXCINV', 'RXDINV', 'SBFINV', 'VRXINV', 'ADNFPPELAT', 'ADNFPPELCT', 'ADNFPPMNAT', 'ADNFPPMNCT', 'ADNFSPELAT', 'ADNFSPELCT', 'ADNFSPMNAT', 'ADNFSPMNCT', 'ADNPPPELAT', 'ADNPPPELCT', 'ADNPPPMNAT', 'ADNPPPMNCT', 'ADNPSPELAT', 'ADNPSPELCT', 'ADNPSPMNAT', 'ADNPSPMNCT', 'ADPPPPELAT', 'ADPPPPELCT', 'ADPPPPMNAT', 'ADPPPPMNCT', 'ADPPSPELAT', 'ADPPSPELCT', 'ADPPSPMNAT', 'ADPPSPMNCT', 'ADRFPPELAT', 'ADRFPPELCT', 'ADRFPPMNAT', 'ADRFPPMNCT', 'ADRFSPELAT', 'ADRFSPELCT', 'ADRFSPMNAT', 'ADRFSPMNCT', 'PDNFPPELAT', 'PDNFPPELCT', 'PDNFPPMNAT', 'PDNFPPMNCT', 'PDNFSPELAT', 'PDNFSPELCT', 'PDNFSPMNAT', 'PDNFSPMNCT', 'PDNPPPELAT', 'PDNPPPELCT', 'PDNPPPMNAT', 'PDNPPPMNCT', 'PDNPSPELAT', 'PDNPSPELCT', 'PDNPSPMNAT', 'PDNPSPMNCT', 'PDPPPPELAT', 'PDPPPPELCT', 'PDPPPPMNAT', 'PDPPPPMNCT', 'PDPPSPELAT', 'PDPPSPELCT', 'PDPPSPMNAT', 'PDPPSPMNCT', 'SBBLELAT', 'SBBLELCT', 'SBNFELAT', 'SBNFELCT', 'SBPDELAT', 'SBPDELCT', 'COVGE', 'EFORM', 'FAX', 'GFTH', 'LATE', 'MANUAL', 'OOJ', 'ORTHO', 'PAPER', 'PIE', 'PYRDELAY', 'REFNR', 'REPSERV', 'UNRELAT', 'VERBAUTH', 'CARELIST', 'CONDLIST', 'INTOLIST', 'PROBLIST', 'RISKLIST', 'GOALLIST', 'ACU', 'CHRON', 'ONET', 'PRN', 'MEDLIST', 'CURMEDLIST', 'DISCMEDLIST', 'HISTMEDLIST', 'CTLSUB', 'INV', 'LU', 'OTC', 'RX', 'SA', 'SAC', 'IND01', 'IND02', 'IND03', 'IND04', 'IND05', 'VFPAPER', 'ACH', 'CHK', 'DDP', 'NON', 'DF', 'EM', 'SO', 'FF', 'FFC', 'FFP', 'FFSS', 'TF', 'FS', 'MS', 'RF', 'UD', 'RFC', 'RFCS', 'RFF', 'RFFS', 'RFP', 'RFPS', 'RFS', 'TB', 'TBS', 'UDE', 'EMRGONLY', 'GRANTORCHOICE', 'IMPLIED', 'IMPLIEDD', 'NOCONSENT', 'NOPP', 'OPTIN', 'OPTINR', 'OPTOUT', 'OPTOUTE', '_ActUSPrivacyLaw', '42CFRPart2', 'CommonRule', 'HIPAANOPP', 'HIPAAPsyNotes', 'HIPAASelfPay', 'Title38Section7332', 'ETH', 'GDIS', 'HIV', 'MST', 'SCA', 'SDV', 'SEX', 'SPI', 'BH', 'COGN', 'DVD', 'EMOTDIS', 'MH', 'PSY', 'PSYTHPN', 'SUD', 'ETHUD', 'OPIOIDUD', 'STD', 'TBOO', 'VIO', 'SICKLE', 'DEMO', 'DOB', 'GENDER', 'LIVARG', 'MARST', 'RACE', 'REL', 'B', 'EMPL', 'LOCIS', 'SSP', 'ADOL', 'CEL', 'DIA', 'DRGIS', 'EMP', 'PDS', 'PHY', 'PRS', 'COMPT', 'ACOCOMPT', 'CTCOMPT', 'FMCOMPT', 'HRCOMPT', 'LRCOMPT', 'PACOMPT', 'RESCOMPT', 'RMGTCOMPT', 'TRSTACCRD', 'TRSTAGRE', 'TRSTASSUR', 'TRSTCERT', 'TRSTFWK', 'TRSTMEC', 'COVPOL', 'SecurityPolicy', 'AUTHPOL', 'ACCESSCONSCHEME', 'DELEPOL', 'ObligationPolicy', 'ANONY', 'AOD', 'AUDIT', 'AUDTR', 'CPLYCC', 'CPLYCD', 'CPLYJPP', 'CPLYOPP', 'CPLYOSP', 'CPLYPOL', 'DECLASSIFYLABEL', 'DEID', 'DELAU', 'DOWNGRDLABEL', 'DRIVLABEL', 'ENCRYPT', 'ENCRYPTR', 'ENCRYPTT', 'ENCRYPTU', 'HUAPRV', 'LABEL', 'MASK', 'MINEC', 'PERSISTLABEL', 'PRIVMARK', 'PSEUD', 'REDACT', 'UPGRDLABEL', 'RefrainPolicy', 'NOAUTH', 'NOCOLLECT', 'NODSCLCD', 'NODSCLCDS', 'NOINTEGRATE', 'NOLIST', 'NOMOU', 'NOORGPOL', 'NOPAT', 'NOPERSISTP', 'NORDSCLCD', 'NORDSCLCDS', 'NORDSCLW', 'NORELINK', 'NOREUSE', 'NOVIP', 'ORCON', 'LOAN', 'RENT', 'TRANSFER', 'SALE', 'SREC', 'SSTOR', 'STRAN', 'ACID', 'ALK', 'DEFB', 'FILT', 'LDLP', 'NEUT', 'RECA', 'UFIL', 'DRUG', 'FD', 'IMMUNIZ', 'BOOSTER', 'INITIMMUNIZ', 'OE', 'LABOE', 'MEDOE', 'PATDOC', 'ALLERLREV', 'CLINNOTEE', 'DIAGLISTE', 'DISCHINSTE', 'DISCHSUME', 'PATEDUE', 'PATREPE', 'PROBLISTE', 'RADREPE', 'IMMLREV', 'REMLREV', 'WELLREMLREV', 'PATINFO', 'ALLERLE', 'CDSREV', 'CLINNOTEREV', 'DISCHSUMREV', 'DIAGLISTREV', 'IMMLE', 'LABRREV', 'MICRORREV', 'MICROORGRREV', 'MICROSENSRREV', 'MLREV', 'MARWLREV', 'OREV', 'PATREPREV', 'PROBLISTREV', 'RADREPREV', 'REMLE', 'WELLREMLE', 'RISKASSESS', 'FALLRISK', 'AFOOT', 'AMBT', 'AMBAIR', 'AMBGRND', 'AMBHELO', 'LAWENF', 'PRVTRN', 'PUBTRN', 'ARTBLD', 'DILUTION', 'AUTO-HIGH', 'AUTO-LOW', 'PRE', 'RERUN', 'EVNFCTS', 'INTFR', 'FIBRIN', 'HEMOLYSIS', 'ICTERUS', 'LIPEMIA', 'VOLUME', 'AVAILABLE', 'CONSUMPTION', 'CURRENT', 'INITIAL', '_ActPatientAnnotationType', 'ANNDI', 'ANNGEN', 'ANNIMM', 'ANNLAB', 'ANNMED', 'GENE', '_ImmunizationObservationType', 'OBSANTC', 'OBSANTV', 'PAT_ADV_EVNT', 'VAC_PROBLEM', '21611-9', '21612-7', '29553-5', '30525-0', '30972-4', 'REP_HALF_LIFE', 'SPLCOATING', 'SPLCOLOR', 'SPLIMAGE', 'SPLIMPRINT', 'SPLSCORING', 'SPLSHAPE', 'SPLSIZE', 'SPLSYMBOL', 'AIRTRNS', 'ANANTRNS', 'ANHUMTRNS', 'BDYFLDTRNS', 'BLDTRNS', 'DERMTRNS', 'ENVTRNS', 'FECTRNS', 'FOMTRNS', 'FOODTRNS', 'HUMHUMTRNS', 'INDTRNS', 'LACTTRNS', 'NOSTRNS', 'PARTRNS', 'PLACTRNS', 'SEXTRNS', 'TRNSFTRNS', 'VECTRNS', 'WATTRNS', '_ObservationQualityMeasureAttribute', 'AGGREGATE', 'CMPMSRMTH', 'CMPMSRSCRWGHT', 'COPY', 'CRS', 'DEF', 'DISC', 'FINALDT', 'GUIDE', 'IDUR', 'ITMCNT', 'KEY', 'MEDT', 'MSD', 'MSRADJ', 'MSRAGG', 'MSRIMPROV', 'MSRJUR', 'MSRRPTR', 'MSRRPTTIME', 'MSRSCORE', 'MSRSET', 'MSRTOPIC', 'MSRTP', 'MSRTYPE', 'RAT', 'REF', 'SDE', 'STRAT', 'TRANF', 'USE', 'TIME_ABSOLUTE', 'TIME_RELATIVE', 'REPRESENTATIVE_BEAT', 'RHYTHM', '_PatientImmunizationRelatedObservationType', 'CLSSRM', 'GRADE', 'SCHL', 'SCHLDIV', 'TEACHER', 'DENEX', 'DENEXCEP', 'DENOM', 'IPOP', 'IPPOP', 'MSROBS', 'MSRPOPL', 'MSRPOPLEX', 'NUMER', 'NUMEX', 'PREFSTRENGTH', 'ADVERSE_REACTION', 'ASSERTION', 'CASESER', 'CDIO', 'CRIT', 'CTMO', 'DX', 'ADMDX', 'DISDX', 'INTDX', 'NOI', 'GISTIER', 'HHOBS', 'ISSUE', 'NAT', 'SUPPRESSED', 'VALIDAT', 'KEY204', 'KEY205', 'COMPLY', 'DUPTHPY', 'DUPTHPCLS', 'DUPTHPGEN', 'ABUSE', 'FRAUD', 'PLYDOC', 'PLYPHRM', 'DOSE', 'DOSECOND', 'DOSEDUR', 'DOSEDURH', 'DOSEDURHIND', 'DOSEDURL', 'DOSEDURLIND', 'DOSEH', 'DOSEHINDA', 'DOSEHIND', 'DOSEHINDSA', 'DOSEHINDW', 'DOSEIVL', 'DOSEIVLIND', 'DOSEL', 'DOSELINDA', 'DOSELIND', 'DOSELINDSA', 'DOSELINDW', 'MDOSE', 'OBSA', 'AGE', 'ADALRT', 'GEALRT', 'PEALRT', 'COND', 'HGHT', 'LACT', 'PREG', 'WGHT', 'CREACT', 'GEN', 'GEND', 'LAB', 'REACT', 'ALGY', 'INT', 'RREACT', 'RALG', 'RAR', 'RINT', 'BUS', 'CODE_INVAL', 'CODE_DEPREC', 'FORMAT', 'ILLEGAL', 'LEN_RANGE', 'LEN_LONG', 'LEN_SHORT', 'MISSCOND', 'MISSMAND', 'NODUPS', 'NOPERSIST', 'REP_RANGE', 'MAXOCCURS', 'MINOCCURS', 'KEY206', 'OBSOLETE', 'FOOD', 'TPROD', 'DRG', 'NHP', 'NONRX', 'PREVINEF', 'DACT', 'TIME', 'ALRTENDLATE', 'ALRTSTRTLATE', 'ENDLATE', 'STRTLATE', 'ALLDONE', 'FULFIL', 'NOTACTN', 'NOTEQUIV', 'NOTEQUIVGEN', 'NOTEQUIVTHER', 'TIMING', 'INTERVAL', 'MINFREQ', 'HELD', 'TOOLATE', 'TOOSOON', 'HISTORIC', 'PATPREF', 'PATPREFALT', 'KSUBJ', 'KSUBT', 'OINT', 'ALG', 'DALG', 'EALG', 'FALG', 'DINT', 'DNAINT', 'EINT', 'ENAINT', 'FINT', 'FNAINT', 'NAINT', 'SEV', 'FDACOATING', 'FDACOLOR', 'FDAIMPRINTCD', 'FDALOGO', 'FDASCORING', 'FDASHAPE', 'FDASIZE', 'CIRCLE', 'ELLIPSE', 'POINT', 'POLY', 'C', 'DIET', 'BR', 'DM', 'FAST', 'FORMULA', 'GF', 'LF', 'LP', 'LQ', 'LS', 'N', 'NF', 'PAF', 'PAR', 'RD', 'SCH', 'SUPPLEMENT', 'T', 'VLI', 'DRUGPRG', 'F', 'PRLMN', 'SECCATOBS', 'SECCLASSOBS', 'SECCONOBS', 'SECINTOBS', 'SECALTINTOBS', 'SECDATINTOBS', 'SECINTCONOBS', 'SECINTPRVABOBS', 'SECINTPRVRBOBS', 'SECINTSTOBS', 'TRSTACCRDOBS', 'TRSTAGREOBS', 'TRSTCERTOBS', 'TRSTFWKOBS', 'TRSTLOAOBS', 'TRSTMECOBS', 'SUBSIDFFS', 'WRKCOMP', 'COPAY', 'DEDUCT', 'DOSEIND', 'PRA']}, 'type'=>'CodeableConcept', 'path'=>'DocumentManifest.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActCode'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DocumentManifest.subject', 'min'=>0, 'max'=>1},
        'created' => {'type'=>'dateTime', 'path'=>'DocumentManifest.created', 'min'=>0, 'max'=>1},
        '_created' => {'type'=>'Element', 'path'=>'DocumentManifest._created', 'min'=>0, 'max'=>1},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'DocumentManifest.author', 'min'=>0, 'max'=>Float::INFINITY},
        'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'DocumentManifest.recipient', 'min'=>0, 'max'=>Float::INFINITY},
        'source' => {'type'=>'uri', 'path'=>'DocumentManifest.source', 'min'=>0, 'max'=>1},
        '_source' => {'type'=>'Element', 'path'=>'DocumentManifest._source', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'string', 'path'=>'DocumentManifest.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'DocumentManifest._description', 'min'=>0, 'max'=>1},
        'content' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'DocumentManifest.content', 'min'=>1, 'max'=>Float::INFINITY},
        'related' => {'type'=>'DocumentManifest::Related', 'path'=>'DocumentManifest.related', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Related < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Related.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Related._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Related.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Related.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Related.identifier', 'min'=>0, 'max'=>1},
          'ref' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Related.ref', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-1 Identifier
        attr_accessor :ref               # 0-1 Reference(Resource)
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
      attr_accessor :masterIdentifier  # 0-1 Identifier
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :type              # 0-1 CodeableConcept
      attr_accessor :subject           # 0-1 Reference(Patient|Practitioner|Group|Device)
      attr_accessor :created           # 0-1 dateTime
      attr_accessor :_created          # 0-1 Element
      attr_accessor :author            # 0-* [ Reference(Practitioner|PractitionerRole|Organization|Device|Patient|RelatedPerson) ]
      attr_accessor :recipient         # 0-* [ Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Organization) ]
      attr_accessor :source            # 0-1 uri
      attr_accessor :_source           # 0-1 Element
      attr_accessor :description       # 0-1 string
      attr_accessor :_description      # 0-1 Element
      attr_accessor :content           # 1-* [ Reference(Resource) ]
      attr_accessor :related           # 0-* [ DocumentManifest::Related ]

      def resourceType
        'DocumentManifest'
      end
    end
  end
  DocumentManifest = FHIR::R4::DocumentManifest
end