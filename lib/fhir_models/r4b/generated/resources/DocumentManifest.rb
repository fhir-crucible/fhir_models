module FHIR
  module R4B
    class DocumentManifest < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def version
        'R4B'
      end

      SEARCH_PARAMS = ['author', 'created', 'description', 'identifier', 'item', 'patient', 'recipient', 'related-id', 'related-ref', 'source', 'status', 'subject', 'type']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'DocumentManifest.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'DocumentManifest.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'DocumentManifest.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'DocumentManifest.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'DocumentManifest.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'DocumentManifest.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'DocumentManifest.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'DocumentManifest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'masterIdentifier' => {'type'=>'Identifier', 'path'=>'DocumentManifest.masterIdentifier', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'DocumentManifest.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/document-reference-status'=>['current', 'superseded', 'entered-in-error']}, 'type'=>'code', 'path'=>'DocumentManifest.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/document-reference-status'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_ActAccountCode', 'ACCTRECEIVABLE', 'CASH', 'CC', 'AE', 'DN', 'DV', 'MC', 'V', 'PBILLACCT', '_CreditCard', '_ActAdjudicationCode', '_ActAdjudicationGroupCode', 'CONT', 'DAY', 'LOC', 'MONTH', 'PERIOD', 'PROV', 'WEEK', 'YEAR', 'AA', 'ANF', 'AR', 'AS', '_ActAdjudicationResultActionCode', 'DISPLAY', 'FORM', '_ActBillableModifierCode', 'CPTM', 'HCPCSA', '_ActBillingArrangementCode', 'BLK', 'CAP', 'CONTF', 'FINBILL', 'ROST', 'SESS', 'FFS', 'FFPS', 'FFCS', 'TFS', '_ActBoundedROICode', 'ROIFS', 'ROIPS', '_ActCareProvisionCode', '_ActCredentialedCareCode', '_ActCredentialedCareProvisionPersonCode', 'CACC', 'CAIC', 'CAMC', 'CANC', 'CAPC', 'CBGC', 'CCCC', 'CCGC', 'CCPC', 'CCSC', 'CDEC', 'CDRC', 'CEMC', 'CFPC', 'CIMC', 'CMGC', 'CNEC', 'CNMC', 'CNQC', 'CNSC', 'COGC', 'COMC', 'COPC', 'COSC', 'COTC', 'CPEC', 'CPGC', 'CPHC', 'CPRC', 'CPSC', 'CPYC', 'CROC', 'CRPC', 'CSUC', 'CTSC', 'CURC', 'CVSC', 'LGPC', '_ActCredentialedCareProvisionProgramCode', 'AALC', 'AAMC', 'ABHC', 'ACAC', 'ACHC', 'AHOC', 'ALTC', 'AOSC', 'CACS', 'CAMI', 'CAST', 'CBAR', 'CCAD', 'CCAR', 'CDEP', 'CDGD', 'CDIA', 'CEPI', 'CFEL', 'CHFC', 'CHRO', 'CHYP', 'CMIH', 'CMSC', 'COJR', 'CONC', 'COPD', 'CORT', 'CPAD', 'CPND', 'CPST', 'CSDM', 'CSIC', 'CSLD', 'CSPT', 'CTBU', 'CVDC', 'CWMA', 'CWOH', '_ActEncounterCode', 'AMB', 'EMER', 'FLD', 'HH', 'IMP', 'ACUTE', 'NONAC', 'OBSENC', 'PRENC', 'SS', 'VR', '_ActMedicalServiceCode', 'ALC', 'CARD', 'CHR', 'DNTL', 'DRGRHB', 'GENRL', 'MED', 'OBS', 'ONC', 'PALL', 'PED', 'PHAR', 'PHYRHB', 'PSYCH', 'SURG', '_ActClaimAttachmentCategoryCode', 'AUTOATTCH', 'DOCUMENT', 'HEALTHREC', 'IMG', 'LABRESULTS', 'MODEL', 'WIATTCH', 'XRAY', '_ActConsentType', 'ICOL', 'IDSCL', 'INFA', 'INFAO', 'INFASO', 'IRDSCL', 'RESEARCH', 'RSDID', 'RSREID', '_ActContainerRegistrationCode', 'ID', 'IP', 'L', 'M', 'O', 'R', 'X', '_ActControlVariable', 'AUTO', 'ENDC', 'REFLEX', '_ECGControlVariable', '_ActCoverageConfirmationCode', '_ActCoverageAuthorizationConfirmationCode', 'AUTH', 'NAUTH', '_ActCoverageEligibilityConfirmationCode', 'ELG', 'NELG', '_ActCoverageLimitCode', '_ActCoverageQuantityLimitCode', 'COVPRD', 'LFEMX', 'NETAMT', 'PRDMX', 'UNITPRICE', 'UNITQTY', 'COVMX', '_ActCoveredPartyLimitCode', '_ActCoveragePartyLimitGroupCode', '_ActCoverageTypeCode', '_ActInsurancePolicyCode', 'EHCPOL', 'HSAPOL', 'AUTOPOL', 'COL', 'UNINSMOT', 'PUBLICPOL', 'DENTPRG', 'DISEASEPRG', 'CANPRG', 'ENDRENAL', 'HIVAIDS', 'MANDPOL', 'MENTPRG', 'SAFNET', 'SUBPRG', 'SUBSIDIZ', 'SUBSIDMC', 'SUBSUPP', 'WCBPOL', '_ActInsuranceTypeCode', '_ActHealthInsuranceTypeCode', 'DENTAL', 'DISEASE', 'DRUGPOL', 'HIP', 'LTC', 'MCPOL', 'POS', 'HMO', 'PPO', 'MENTPOL', 'SUBPOL', 'VISPOL', 'DIS', 'EWB', 'FLEXP', 'LIFE', 'ANNU', 'TLIFE', 'ULIFE', 'PNC', 'REI', 'SURPL', 'UMBRL', '_ActProgramTypeCode', 'CHAR', 'CRIME', 'EAP', 'GOVEMP', 'HIRISK', 'IND', 'MILITARY', 'RETIRE', 'SOCIAL', 'VET', '_ActDetectedIssueManagementCode', '_ActAdministrativeDetectedIssueManagementCode', '_AuthorizationIssueManagementCode', 'EMAUTH', '21', '1', '19', '2', '22', '23', '3', '4', '5', '6', '7', '14', '15', '16', '17', '18', '20', '8', '10', '11', '12', '13', '9', '_ActFinancialDetectedIssueManagementCode', '_ActExposureCode', 'CHLDCARE', 'CONVEYNC', 'HLTHCARE', 'HOMECARE', 'HOSPPTNT', 'HOSPVSTR', 'HOUSEHLD', 'INMATE', 'INTIMATE', 'LTRMCARE', 'PLACE', 'PTNTCARE', 'SCHOOL2', 'SOCIAL2', 'SUBSTNCE', 'TRAVINT', 'WORK2', '_ActFinancialTransactionCode', 'CHRG', 'REV', '_ActIncidentCode', 'MVA', 'SCHOOL', 'SPT', 'WPA', '_ActPatientSafetyIncidentCode', '_ActInformationAccessCode', 'ACADR', 'ACALL', 'ACALLG', 'ACCONS', 'ACDEMO', 'ACDI', 'ACIMMUN', 'ACLAB', 'ACMED', 'ACMEDC', 'ACMEN', 'ACOBS', 'ACPOLPRG', 'ACPROV', 'ACPSERV', 'ACSUBSTAB', '_ActInformationAccessContextCode', 'INFAUT', 'INFCON', 'INFCRT', 'INFDNG', 'INFEMER', 'INFPWR', 'INFREG', '_ActInformationCategoryCode', 'ALLCAT', 'ALLGCAT', 'ARCAT', 'COBSCAT', 'DEMOCAT', 'DICAT', 'IMMUCAT', 'LABCAT', 'MEDCCAT', 'MENCAT', 'PSVCCAT', 'RXCAT', '_ActInvoiceElementCode', '_ActInvoiceAdjudicationPaymentCode', '_ActInvoiceAdjudicationPaymentGroupCode', 'ALEC', 'BONUS', 'CFWD', 'EDU', 'EPYMT', 'GARN', 'INVOICE', 'PINV', 'PPRD', 'PROA', 'RECOV', 'RETRO', 'TRAN', '_ActInvoicePaymentCode', '_ActInvoiceAdjudicationPaymentSummaryCode', 'INVTYPE', 'PAYEE', 'PAYOR', 'SENDAPP', '_ActInvoiceDetailCode', '_ActInvoiceDetailClinicalProductCode', 'UNSPSC', '_ActInvoiceDetailDrugProductCode', 'GTIN', 'UPC', '_ActInvoiceDetailGenericCode', '_ActInvoiceDetailGenericAdjudicatorCode', 'COIN', 'COPAYMENT', 'DEDUCTIBLE', 'PAY', 'SPEND', 'COINS', '_ActInvoiceDetailGenericModifierCode', 'AFTHRS', 'ISOL', 'OOO', '_ActInvoiceDetailGenericProviderCode', 'CANCAPT', 'DSC', 'ESA', 'FFSTOP', 'FNLFEE', 'FRSTFEE', 'MARKUP', 'MISSAPT', 'PERFEE', 'PERMBNS', 'RESTOCK', 'TRAVEL', 'URGENT', '_ActInvoiceDetailTaxCode', 'FST', 'HST', 'PST', '_ActInvoiceDetailPreferredAccommodationCode', '_ActEncounterAccommodationCode', '_HL7AccommodationCode', 'I', 'P', 'S', 'SP', 'W', '_HCPCSAccommodationCode', '_ActInvoiceDetailClinicalServiceCode', '_CPT5', '_HCPCS', '_ICD10PCS', '_ICD9PCS', '_ActInvoiceDetailOralHealthProcedureCode', '_ActInvoiceGroupCode', '_ActInvoiceInterGroupCode', 'CPNDDRGING', 'CPNDINDING', 'CPNDSUPING', 'DRUGING', 'FRAMEING', 'LENSING', 'PRDING', '_ActInvoiceRootGroupCode', 'CPINV', 'CP', 'CSINV', 'CS', 'CSPINV', 'FININV', 'OHSINV', 'PAINV', 'PA', 'RXCINV', 'RXC', 'RXDINV', 'RXD', 'SBFINV', 'VRXINV', '_ActInvoiceElementSummaryCode', '_InvoiceElementAdjudicated', 'ADNFPPELAT', 'ADCNPPELAT', 'ADNFPPELCT', 'ADCNPPELCT', 'ADNFPPMNAT', 'ADCNPPMNAT', 'ADNFPPMNCT', 'ADCNPPMNCT', 'ADNFSPELAT', 'ADCNSPELAT', 'ADNFSPELCT', 'ADCNSPELCT', 'ADNFSPMNAT', 'ADCNSPMNAT', 'ADNFSPMNCT', 'ADCNSPMNCT', 'ADNPPPELAT', 'ADNPPPELCT', 'ADNPPPMNAT', 'ADNPPPMNCT', 'ADNPSPELAT', 'ADNPSPELCT', 'ADNPSPMNAT', 'ADNPSPMNCT', 'ADPPPPELAT', 'ADPPPPELCT', 'ADPPPPMNAT', 'ADPPPPMNCT', 'ADPPSPELAT', 'ADPPSPELCT', 'ADPPSPMNAT', 'ADPPSPMNCT', 'ADRFPPELAT', 'ADRFPPELCT', 'ADRFPPMNAT', 'ADRFPPMNCT', 'ADRFSPELAT', 'ADRFSPELCT', 'ADRFSPMNAT', 'ADRFSPMNCT', '_InvoiceElementPaid', 'PDNFPPELAT', 'PDCNPPELAT', 'PDNFPPELCT', 'PDCNPPELCT', 'PDNFPPMNAT', 'PDCNPPMNAT', 'PDNFPPMNCT', 'PDCNPPMNCT', 'PDNFSPELAT', 'PDCNSPELAT', 'PDNFSPELCT', 'PDCNSPELCT', 'PDNFSPMNAT', 'PDCNSPMNAT', 'PDNFSPMNCT', 'PDCNSPMNCT', 'PDNPPPELAT', 'PDNPPPELCT', 'PDNPPPMNAT', 'PDNPPPMNCT', 'PDNPSPELAT', 'PDNPSPELCT', 'PDNPSPMNAT', 'PDNPSPMNCT', 'PDPPPPELAT', 'PDPPPPELCT', 'PDPPPPMNAT', 'PDPPPPMNCT', 'PDPPSPELAT', 'PDPPSPELCT', 'PDPPSPMNAT', 'PDPPSPMNCT', '_InvoiceElementSubmitted', 'SBBLELAT', 'SBBLAT', 'SBBLELCT', 'SBBLCT', 'SBNFELAT', 'SBCNAT', 'SBNFELCT', 'SBCNCT', 'SBPDELAT', 'SBPDAT', 'SBPDELCT', 'SBPDCT', '_ActInvoiceOverrideCode', 'COVGE', 'EFORM', 'FAX', 'GFTH', 'LATE', 'MANUAL', 'OOJ', 'ORTHO', 'PAPER', 'PIE', 'PYRDELAY', 'REFNR', 'REPSERV', 'UNRELAT', 'VERBAUTH', '_ActListCode', '_ActObservationList', 'CARELIST', 'CONDLIST', 'INTOLIST', 'PROBLIST', 'RISKLIST', 'GOALLIST', '_ActTherapyDurationWorkingListCode', '_ActMedicationTherapyDurationWorkingListCode', 'ACU', 'CHRON', 'ONET', 'PRN', 'MEDLIST', 'CURMEDLIST', 'DISCMEDLIST', 'HISTMEDLIST', '_ActProcedureCategoryList', '_ActMonitoringProtocolCode', 'CTLSUB', '_DEADrugSchedule', 'INV', 'LU', 'OTC', 'RX', 'SA', 'SAC', '_ActNonObservationIndicationCode', 'IND01', 'IND02', 'IND03', 'IND04', 'IND05', '_ActObservationVerificationType', 'VFPAPER', 'VRFPAPER', '_ActPaymentCode', 'ACH', 'CHK', 'DDP', 'NON', '_ActPharmacySupplyType', 'DF', 'EM', 'SO', 'FF', 'FFC', 'FFP', 'FFSS', 'TF', 'FS', 'MS', 'RF', 'UD', 'RFC', 'RFCS', 'RFF', 'RFFS', 'RFP', 'RFPS', 'RFS', 'TB', 'TBS', 'UDE', '_ActPolicyType', '_ActConsent', '_ActDecision', 'GRANTORCHOICE', 'IMPLIED', 'IMPLIEDD', 'NOCONSENT', 'OPTIN', 'OPTINR', 'OPTOUT', 'OPTOUTE', '_ActPrivacyConsentDirective', '_ActGDPRConsentDirective', 'GDPRCD', 'GDPRResearchCD', '_ActGenericConsentDirective', 'OIC', 'OIS', 'OOC', 'OOS', '_ActUSPrivacyConsentDirective', '42CFRPart2CD', 'CompoundResearchCD', 'HIPAAAuthCD', 'HIPAAConsentCD', 'HIPAAResearchAuthCD', 'HIPAAROAD', 'MDHHS-5515', 'MDHHS-5515MMHC', 'MDHHS-5515Part2', 'USResearchInformedAssent', 'USResearchInformedConsent', 'USBroadResearchConsent', '_ActInformationActionPolicy', 'INFOACCESS', 'INFOCOLLECT', 'INFODEIDENTIFIY', 'INFODISCLOSE', 'INFOMASK', 'INFOREADONLY', 'INFOREDACT', 'INFOREDISCLOSE', 'INFOREIDENTIFY', 'INFOUSE', '_ActInformationPolicy', 'JurisIP', 'JurisCUI', 'JurisDEID', 'JurisLDS', 'JurisNSI', 'JurisPI', 'JurisSP-CUI', 'JurisUUI', 'OrgIP', 'OrgCUI', 'OrgDEID', 'OrgLDS', 'OrgNSI', 'OrgPI', 'OrgSP-CUI', 'OrgUUI', 'PersIP', 'PersDEID', 'PersLDS', 'PersNSI', 'PersPI', '_ActPrivacyPolicy', '_ActConsentDirective', 'EMRGONLY', 'NOPP', '_ActPrivacyLaw', '_ActGDPRPrivacyLaw', 'GDPRCONSENT', '_ActUSPrivacyLaw', '42CFRPart2', 'CommonRule', 'HIPAAAuth', 'HIPAAConsent', 'HIPAANOPP', 'HIPAAPsyNotes', 'HIPAAROA', 'HIPAASelfPay', 'Title38Section7332', 'a) HIPAAConsent', '_InformationSensitivityPolicy', '_ActInformationSensitivityPolicy', 'ETH', 'GDIS', 'HIV', 'MST', 'PREGNANT', 'SCA', 'SDV', 'SEX', 'SPI', 'BH', 'COGN', 'DVD', 'EMOTDIS', 'MH', 'PSY', 'PSYTHPN', 'SUD', 'ETHUD', 'OPIOIDUD', 'STD', 'TBOO', 'VIO', 'IDS', 'SICKLE', '_EntitySensitivityPolicyType', 'DEMO', 'DOB', 'GENDER', 'LIVARG', 'MARST', 'PATLOC', 'RACE', 'REL', '_RoleInformationSensitivityPolicy', 'B', 'EMPL', 'LOCIS', 'SSP', 'ADOL', 'CEL', 'VIP', 'DIA', 'DRGIS', 'EMP', 'PDS', 'PHY', 'PRS', 'COMPT', 'ACOCOMPT', 'CDSSCOMPT', 'CTCOMPT', 'FMCOMPT', 'HRCOMPT', 'LRCOMPT', 'PACOMPT', 'RESCOMPT', 'RMGTCOMPT', 'ActTrustPolicyType', 'TRSTACCRD', 'TRSTAGRE', 'TRSTASSUR', 'TRSTCERT', 'TRSTFWK', 'TRSTMEC', 'COVPOL', 'SecurityPolicy', 'AUTHPOL', 'ACCESSCONSCHEME', 'DELEPOL', 'ObligationPolicy', 'ANONY', 'AOD', 'AUDIT', 'AUDTR', 'CPLYPOL', 'CPLYCC', 'CPLYCD', 'CPLYCUI', 'CPLYJPP', 'CPLYJSP', 'CPLYOPP', 'CPLYOSP', 'DECLASSIFYLABEL', 'DEID', 'DELAU', 'DOWNGRDLABEL', 'DRIVLABEL', 'ENCRYPT', 'ENCRYPTR', 'ENCRYPTT', 'ENCRYPTU', 'HUAPRV', 'LABEL', 'MASK', 'MINEC', 'PERSISTLABEL', 'PRIVMARK', 'CUIMark', 'PSEUD', 'REDACT', 'UPGRDLABEL', 'PrivacyMark', 'ControlledUnclassifiedInformation', 'CONTROLLED', 'CUI', 'CUIHLTH', 'CUIHLTHP', 'CUIP', 'CUIPRVCY', 'CUIPRVCYP', 'CUISP-HLTH', 'CUISP-HLTHP', 'CUISP-PRVCY', 'CUISP-PRVCYP', 'UUI', 'SecurityLabelMark', 'ConfidentialMark', 'COPYMark', 'DeliverToAddresseeOnlyMark', 'RedisclosureProhibitionMark', 'RestrictedConfidentialityMark', 'DRAFTMark', 'RefrainPolicy', 'NOAUTH', 'NOCOLLECT', 'NODSCLCD', 'NODSCLCDS', 'NOINTEGRATE', 'NOLIST', 'NOMOU', 'NOORGPOL', 'NOPAT', 'NOPERSISTP', 'NORDSCLCD', 'NORDSLCD', 'NORDSCLCDS', 'NORDSCLW', 'NORELINK', 'NOREUSE', 'NOVIP', 'ORCON', '_ActProductAcquisitionCode', 'LOAN', 'RENT', 'TRANSFER', 'SALE', '_ActSpecimenTransportCode', 'SREC', 'SSTOR', 'STRAN', '_ActSpecimenTreatmentCode', 'ACID', 'ALK', 'DEFB', 'FILT', 'LDLP', 'NEUT', 'RECA', 'UFIL', '_ActSubstanceAdministrationCode', 'DRUG', 'FD', 'IMMUNIZ', 'BOOSTER', 'INITIMMUNIZ', '_ActTaskCode', 'OE', 'LABOE', 'MEDOE', 'PATDOC', 'ALLERLREV', 'CLINNOTEE', 'DIAGLISTE', 'DISCHINSTE', 'DISCHSUME', 'PATEDUE', 'PATREPE', 'PROBLISTE', 'RADREPE', 'IMMLREV', 'REMLREV', 'WELLREMLREV', 'PATINFO', 'ALLERLE', 'CDSREV', 'CLINNOTEREV', 'DISCHSUMREV', 'DIAGLISTREV', 'IMMLE', 'LABRREV', 'MICRORREV', 'MICROORGRREV', 'MICROSENSRREV', 'MLREV', 'MARWLREV', 'OREV', 'PATREPREV', 'PROBLISTREV', 'RADREPREV', 'REMLE', 'WELLREMLE', 'RISKASSESS', 'FALLRISK', '_ActTransportationModeCode', '_ActPatientTransportationModeCode', 'AFOOT', 'OnFoot', 'AMBT', 'AMBAIR', 'Fixed-wingAmbulance', 'AMBGRND', 'GroundAmbulance', 'AMBHELO', 'HelicopterAmbulance', 'Ambulance', 'LAWENF', 'LawEnforcementVehicle', 'PRVTRN', 'PrivateTransport', 'PUBTRN', 'PublicTransport', '_ObservationType', '_ActSpecObsCode', 'ARTBLD', 'DILUTION', 'AUTO-HIGH', 'AUTO-LOW', 'PRE', 'RERUN', 'EVNFCTS', 'INTFR', 'FIBRIN', 'HEMOLYSIS', 'ICTERUS', 'LIPEMIA', 'VOLUME', 'AVAILABLE', 'CONSUMPTION', 'CURRENT', 'INITIAL', '_AnnotationType', '_ActPatientAnnotationType', 'ANNDI', 'ANNGEN', 'ANNIMM', 'ANNLAB', 'ANNMED', '_ECGAnnotationType', '_GeneticObservationType', 'GENE', '_ImmunizationObservationType', 'OBSANTC', 'OBSANTV', '_IndividualCaseSafetyReportType', 'PAT_ADV_EVNT', 'VAC_PROBLEM', '_LOINCObservationActContextAgeType', '21611-9', '21612-7', '29553-5', '30525-0', '30972-4', '_MedicationObservationType', 'REP_HALF_LIFE', 'SPLCOATING', 'SPLCOLOR', 'SPLIMAGE', 'SPLIMPRINT', 'SPLSCORING', 'SPLSHAPE', 'SPLSIZE', 'SPLSYMBOL', '_ObservationIssueTriggerCodedObservationType', '_CaseTransmissionMode', 'AIRTRNS', 'ANANTRNS', 'ANHUMTRNS', 'BDYFLDTRNS', 'BLDTRNS', 'DERMTRNS', 'ENVTRNS', 'FECTRNS', 'FOMTRNS', 'FOODTRNS', 'HUMHUMTRNS', 'INDTRNS', 'LACTTRNS', 'NOSTRNS', 'PARTRNS', 'PLACTRNS', 'SEXTRNS', 'TRNSFTRNS', 'VECTRNS', 'WATTRNS', '_ObservationQualityMeasureAttribute', 'AGGREGATE', 'CMPMSRMTH', 'CMPMSRSCRWGHT', 'COPY', 'CRS', 'DEF', 'DISC', 'FINALDT', 'GUIDE', 'IDUR', 'ITMCNT', 'KEY', 'MEDT', 'MSD', 'MSRADJ', 'MSRAGG', 'MSRIMPROV', 'MSRJUR', 'MSRRPTR', 'MSRRPTTIME', 'MSRSCORE', 'MSRSET', 'MSRTOPIC', 'MSRTP', 'MSRTYPE', 'RAT', 'REF', 'SDE', 'STRAT', 'TRANF', 'USE', '_ObservationSequenceType', 'TIME_ABSOLUTE', 'TIME_RELATIVE', '_ECGObservationSequenceType', '_ObservationSeriesType', '_ECGObservationSeriesType', 'REPRESENTATIVE_BEAT', 'RHYTHM', '_PatientImmunizationRelatedObservationType', 'CLSSRM', 'GRADE', 'SCHL', 'SCHLDIV', 'TEACHER', '_PopulationInclusionObservationType', 'DENEX', 'DENEXCEP', 'DENOM', 'IPOP', 'IPPOP', 'MSROBS', 'MSRPOPL', 'MSRPOPLEX', 'NUMER', 'NUMEX', '_PreferenceObservationType', 'PREFSTRENGTH', 'ADVERSE_REACTION', 'ASSERTION', 'CASESER', 'CDIO', 'CRIT', 'CTMO', 'DX', 'ADMDX', 'DISDX', 'INTDX', 'NOI', '_ObservationDiagnosisTypes', 'GISTIER', 'HHOBS', 'ISSUE', '_ActAdministrativeDetectedIssueCode', '_ActAdministrativeAuthorizationDetectedIssueCode', 'NAT', 'SUPPRESSED', 'VALIDAT', 'KEY204', 'KEY205', 'COMPLY', 'DUPTHPY', 'DUPTHPCLS', 'DUPTHPGEN', 'ABUSE', 'FRAUD', 'PLYDOC', 'PLYPHRM', 'DOSE', 'DOSECOND', 'DOSEDUR', 'DOSEDURH', 'DOSEDURHIND', 'DOSEDURL', 'DOSEDURLIND', 'DOSEH', 'DOSEHINDA', 'DOSEHIND', 'DOSEHINDSA', 'DOSEHINDW', 'DOSEIVL', 'DOSEIVLIND', 'DOSEL', 'DOSELINDA', 'DOSELIND', 'DOSELINDSA', 'DOSELINDW', 'MDOSE', 'OBSA', 'AGE', 'ADALRT', 'GEALRT', 'PEALRT', 'COND', 'HGHT', 'LACT', 'PREG', 'WGHT', 'CREACT', 'GEN', 'GEND', 'LAB', 'REACT', 'ALGY', 'INT', 'RREACT', 'RALG', 'RAR', 'RINT', 'BUS', 'CODE_INVAL', 'CODE_DEPREC', 'FORMAT', 'ILLEGAL', 'LEN_RANGE', 'LEN_LONG', 'LEN_SHORT', 'MISSCOND', 'MISSMAND', 'NODUPS', 'NOPERSIST', 'REP_RANGE', 'MAXOCCURS', 'MINOCCURS', '_ActAdministrativeRuleDetectedIssueCode', 'KEY206', 'OBSOLETE', '_ActSuppliedItemDetectedIssueCode', '_AdministrationDetectedIssueCode', '_AppropriatenessDetectedIssueCode', '_InteractionDetectedIssueCode', 'FOOD', 'TPROD', 'DRG', 'NHP', 'NONRX', 'PREVINEF', 'DACT', 'TIME', 'ALRTENDLATE', 'ALRTSTRTLATE', '_DrugActionDetectedIssueCode', '_TimingDetectedIssueCode', 'ENDLATE', 'STRTLATE', '_SupplyDetectedIssueCode', 'ALLDONE', 'FULFIL', 'NOTACTN', 'NOTEQUIV', 'NOTEQUIVGEN', 'NOTEQUIVTHER', 'TIMING', 'INTERVAL', 'MINFREQ', 'HELD', 'TOOLATE', 'TOOSOON', 'HISTORIC', 'PATPREF', 'PATPREFALT', '_ActFinancialDetectedIssueCode', '_ClinicalActionDetectedIssueCode', 'CAREGAP', 'KSUBJ', 'KSUBT', 'OINT', 'ALG', 'DALG', 'EALG', 'FALG', 'DINT', 'DNAINT', 'EINT', 'ENAINT', 'FINT', 'FNAINT', 'NAINT', 'SEV', '_ActPrivilegeCategorizationType', '_AdverseSubstanceAdministrationEventActionTakenType', '_CommonClinicalObservationType', '_FDALabelData', 'FDACOATING', 'FDACOLOR', 'FDAIMPRINTCD', 'FDALOGO', 'FDASCORING', 'FDASHAPE', 'FDASIZE', '_ObservationAllergyTestCode', '_ObservationAllergyTestType', '_ObservationCausalityAssessmentType', '_ObservationDosageDefinitionPreconditionType', '_ObservationGenomicFamilyHistoryType', '_ObservationIndicationType', '_ObservationIssueTriggerMeasuredObservationType', '_ObservationQueryMatchType', '_ObservationVisionPrescriptionType', '_PatientCharacteristicObservationType', '_SimpleMeasurableClinicalObservationType', '_ROIOverlayShape', 'CIRCLE', 'ELLIPSE', 'POINT', 'POLY', 'C', 'DIET', 'BR', 'DM', 'FAST', 'FORMULA', 'GF', 'LF', 'LP', 'LQ', 'LS', 'N', 'NF', 'PAF', 'PAR', 'RD', 'SCH', 'SUPPLEMENT', 'T', 'VLI', 'DRUGPRG', 'F', 'PRLMN', 'SECOBS', 'SECCATOBS', 'SECCLASSOBS', 'SECCONOBS', 'SECINTOBS', 'SECALTINTOBS', 'SECDATINTOBS', 'SECINTCONOBS', 'SECINTPRVOBS', 'SECINTPRVABOBS', 'SECINTPRVRBOBS', 'SECINTSTOBS', 'SECTRSTOBS', 'TRSTACCRDOBS', 'TRSTAGREOBS', 'TRSTCERTOBS', 'TRSTFWKOBS', 'TRSTLOAOBS', 'TRSTMECOBS', 'SUBSIDFFS', 'WRKCOMP', '_ActAdjudicationInformationCode', '_ActBillableTreatmentPlanCode', '_ActCognitiveProfessionalServiceCode', '_ActIdentityDocumentCode', '_ActOrderCode', '_ActPrivilegeCategorization', '_ActProcedureCode', '_ActBillableServiceCode', '_ActMedicalBillableServiceCode', '_ActNonMedicalBillableServiceCode', '_ActOralHealthProcedureCode', '_ActRegistryCode', '_ActSecurityObjectCode', '_AdvanceBeneficiaryNoticeType', '_CPT4', '_ExternallyDefinedActCodes', '_HL7DefinedActCodes', '_ActDetectedIssueCode', '_HL7TriggerEventCode', '_SubstanceAdministrationActCode', '_IndividualCaseSafetyReportCriteria', '_IndividualCaseSafetyReportProductCharacteristic', '_ObservationActAgeGroupType', 'COPAY', 'DEDUCT', 'DOSEIND', 'PRA', 'STORE']}, 'type'=>'CodeableConcept', 'path'=>'DocumentManifest.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActCode'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'DocumentManifest.subject', 'min'=>0, 'max'=>1},
        'created' => {'type'=>'dateTime', 'path'=>'DocumentManifest.created', 'min'=>0, 'max'=>1},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'DocumentManifest.author', 'min'=>0, 'max'=>Float::INFINITY},
        'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'DocumentManifest.recipient', 'min'=>0, 'max'=>Float::INFINITY},
        'source' => {'type'=>'uri', 'path'=>'DocumentManifest.source', 'min'=>0, 'max'=>1},
        'description' => {'type'=>'string', 'path'=>'DocumentManifest.description', 'min'=>0, 'max'=>1},
        'content' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'DocumentManifest.content', 'min'=>1, 'max'=>Float::INFINITY},
        'related' => {'type'=>'DocumentManifest::Related', 'path'=>'DocumentManifest.related', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Related < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        def version
          'R4B'
        end

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Related.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Related.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Related.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Related.identifier', 'min'=>0, 'max'=>1},
          'ref' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Related.ref', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-1 Identifier
        attr_accessor :ref               # 0-1 Reference(Resource)
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :masterIdentifier  # 0-1 Identifier
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :type              # 0-1 CodeableConcept
      attr_accessor :subject           # 0-1 Reference(Patient|Practitioner|Group|Device)
      attr_accessor :created           # 0-1 dateTime
      attr_accessor :author            # 0-* [ Reference(Practitioner|PractitionerRole|Organization|Device|Patient|RelatedPerson) ]
      attr_accessor :recipient         # 0-* [ Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Organization) ]
      attr_accessor :source            # 0-1 uri
      attr_accessor :description       # 0-1 string
      attr_accessor :content           # 1-* [ Reference(Resource) ]
      attr_accessor :related           # 0-* [ DocumentManifest::Related ]

      def resourceType
        'DocumentManifest'
      end
    end
  end
end