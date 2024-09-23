module FHIR
  module R4
    class ImplementationGuide < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'depends-on', 'description', 'experimental', 'global', 'jurisdiction', 'name', 'publisher', 'resource', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ImplementationGuide.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'ImplementationGu_ide._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ImplementationGuide.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ImplementationGuide.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'ImplementationGuide._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'ImplementationGuide.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'ImplementationGuide._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'ImplementationGuide.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ImplementationGuide.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ImplementationGuide.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ImplementationGuide.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'ImplementationGuide.url', 'min'=>1, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'ImplementationGuide._url', 'min'=>0, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'ImplementationGuide.version', 'min'=>0, 'max'=>1},
        '_version' => {'type'=>'Element', 'path'=>'ImplementationGuide._version', 'min'=>0, 'max'=>1},
        'name' => {'type'=>'string', 'path'=>'ImplementationGuide.name', 'min'=>1, 'max'=>1},
        '_name' => {'type'=>'Element', 'path'=>'ImplementationGuide._name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'ImplementationGuide.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'ImplementationGuide._title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'ImplementationGuide.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        '_status' => {'type'=>'Element', 'path'=>'ImplementationGuide._status', 'min'=>0, 'max'=>1},
        'experimental' => {'type'=>'boolean', 'path'=>'ImplementationGuide.experimental', 'min'=>0, 'max'=>1},
        '_experimental' => {'type'=>'Element', 'path'=>'ImplementationGuide._experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'ImplementationGuide.date', 'min'=>0, 'max'=>1},
        '_date' => {'type'=>'Element', 'path'=>'ImplementationGuide._date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'ImplementationGuide.publisher', 'min'=>0, 'max'=>1},
        '_publisher' => {'type'=>'Element', 'path'=>'ImplementationGuide._publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'ImplementationGuide.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'ImplementationGuide.description', 'min'=>0, 'max'=>1},
        '_description' => {'type'=>'Element', 'path'=>'ImplementationGuide._description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'ImplementationGuide.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'ImplementationGuide.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'type'=>'markdown', 'path'=>'ImplementationGuide.copyright', 'min'=>0, 'max'=>1},
        '_copyright' => {'type'=>'Element', 'path'=>'ImplementationGuide._copyright', 'min'=>0, 'max'=>1},
        'packageId' => {'type'=>'id', 'path'=>'ImplementationGuide.packageId', 'min'=>1, 'max'=>1},
        '_packageId' => {'type'=>'Element', 'path'=>'ImplementationGuide._packageId', 'min'=>0, 'max'=>1},
        'license' => {'valid_codes'=>{'http://hl7.org/fhir/spdx-license'=>['not-open-source', '0BSD', 'AAL', 'Abstyles', 'Adobe-2006', 'Adobe-Glyph', 'ADSL', 'AFL-1.1', 'AFL-1.2', 'AFL-2.0', 'AFL-2.1', 'AFL-3.0', 'Afmparse', 'AGPL-1.0-only', 'AGPL-1.0-or-later', 'AGPL-3.0-only', 'AGPL-3.0-or-later', 'Aladdin', 'AMDPLPA', 'AML', 'AMPAS', 'ANTLR-PD', 'Apache-1.0', 'Apache-1.1', 'Apache-2.0', 'APAFML', 'APL-1.0', 'APSL-1.0', 'APSL-1.1', 'APSL-1.2', 'APSL-2.0', 'Artistic-1.0-cl8', 'Artistic-1.0-Perl', 'Artistic-1.0', 'Artistic-2.0', 'Bahyph', 'Barr', 'Beerware', 'BitTorrent-1.0', 'BitTorrent-1.1', 'Borceux', 'BSD-1-Clause', 'BSD-2-Clause-FreeBSD', 'BSD-2-Clause-NetBSD', 'BSD-2-Clause-Patent', 'BSD-2-Clause', 'BSD-3-Clause-Attribution', 'BSD-3-Clause-Clear', 'BSD-3-Clause-LBNL', 'BSD-3-Clause-No-Nuclear-License-2014', 'BSD-3-Clause-No-Nuclear-License', 'BSD-3-Clause-No-Nuclear-Warranty', 'BSD-3-Clause', 'BSD-4-Clause-UC', 'BSD-4-Clause', 'BSD-Protection', 'BSD-Source-Code', 'BSL-1.0', 'bzip2-1.0.5', 'bzip2-1.0.6', 'Caldera', 'CATOSL-1.1', 'CC-BY-1.0', 'CC-BY-2.0', 'CC-BY-2.5', 'CC-BY-3.0', 'CC-BY-4.0', 'CC-BY-NC-1.0', 'CC-BY-NC-2.0', 'CC-BY-NC-2.5', 'CC-BY-NC-3.0', 'CC-BY-NC-4.0', 'CC-BY-NC-ND-1.0', 'CC-BY-NC-ND-2.0', 'CC-BY-NC-ND-2.5', 'CC-BY-NC-ND-3.0', 'CC-BY-NC-ND-4.0', 'CC-BY-NC-SA-1.0', 'CC-BY-NC-SA-2.0', 'CC-BY-NC-SA-2.5', 'CC-BY-NC-SA-3.0', 'CC-BY-NC-SA-4.0', 'CC-BY-ND-1.0', 'CC-BY-ND-2.0', 'CC-BY-ND-2.5', 'CC-BY-ND-3.0', 'CC-BY-ND-4.0', 'CC-BY-SA-1.0', 'CC-BY-SA-2.0', 'CC-BY-SA-2.5', 'CC-BY-SA-3.0', 'CC-BY-SA-4.0', 'CC0-1.0', 'CDDL-1.0', 'CDDL-1.1', 'CDLA-Permissive-1.0', 'CDLA-Sharing-1.0', 'CECILL-1.0', 'CECILL-1.1', 'CECILL-2.0', 'CECILL-2.1', 'CECILL-B', 'CECILL-C', 'ClArtistic', 'CNRI-Jython', 'CNRI-Python-GPL-Compatible', 'CNRI-Python', 'Condor-1.1', 'CPAL-1.0', 'CPL-1.0', 'CPOL-1.02', 'Crossword', 'CrystalStacker', 'CUA-OPL-1.0', 'Cube', 'curl', 'D-FSL-1.0', 'diffmark', 'DOC', 'Dotseqn', 'DSDP', 'dvipdfm', 'ECL-1.0', 'ECL-2.0', 'EFL-1.0', 'EFL-2.0', 'eGenix', 'Entessa', 'EPL-1.0', 'EPL-2.0', 'ErlPL-1.1', 'EUDatagrid', 'EUPL-1.0', 'EUPL-1.1', 'EUPL-1.2', 'Eurosym', 'Fair', 'Frameworx-1.0', 'FreeImage', 'FSFAP', 'FSFUL', 'FSFULLR', 'FTL', 'GFDL-1.1-only', 'GFDL-1.1-or-later', 'GFDL-1.2-only', 'GFDL-1.2-or-later', 'GFDL-1.3-only', 'GFDL-1.3-or-later', 'Giftware', 'GL2PS', 'Glide', 'Glulxe', 'gnuplot', 'GPL-1.0-only', 'GPL-1.0-or-later', 'GPL-2.0-only', 'GPL-2.0-or-later', 'GPL-3.0-only', 'GPL-3.0-or-later', 'gSOAP-1.3b', 'HaskellReport', 'HPND', 'IBM-pibs', 'ICU', 'IJG', 'ImageMagick', 'iMatix', 'Imlib2', 'Info-ZIP', 'Intel-ACPI', 'Intel', 'Interbase-1.0', 'IPA', 'IPL-1.0', 'ISC', 'JasPer-2.0', 'JSON', 'LAL-1.2', 'LAL-1.3', 'Latex2e', 'Leptonica', 'LGPL-2.0-only', 'LGPL-2.0-or-later', 'LGPL-2.1-only', 'LGPL-2.1-or-later', 'LGPL-3.0-only', 'LGPL-3.0-or-later', 'LGPLLR', 'Libpng', 'libtiff', 'LiLiQ-P-1.1', 'LiLiQ-R-1.1', 'LiLiQ-Rplus-1.1', 'Linux-OpenIB', 'LPL-1.0', 'LPL-1.02', 'LPPL-1.0', 'LPPL-1.1', 'LPPL-1.2', 'LPPL-1.3a', 'LPPL-1.3c', 'MakeIndex', 'MirOS', 'MIT-0', 'MIT-advertising', 'MIT-CMU', 'MIT-enna', 'MIT-feh', 'MIT', 'MITNFA', 'Motosoto', 'mpich2', 'MPL-1.0', 'MPL-1.1', 'MPL-2.0-no-copyleft-exception', 'MPL-2.0', 'MS-PL', 'MS-RL', 'MTLL', 'Multics', 'Mup', 'NASA-1.3', 'Naumen', 'NBPL-1.0', 'NCSA', 'Net-SNMP', 'NetCDF', 'Newsletr', 'NGPL', 'NLOD-1.0', 'NLPL', 'Nokia', 'NOSL', 'Noweb', 'NPL-1.0', 'NPL-1.1', 'NPOSL-3.0', 'NRL', 'NTP', 'OCCT-PL', 'OCLC-2.0', 'ODbL-1.0', 'OFL-1.0', 'OFL-1.1', 'OGTSL', 'OLDAP-1.1', 'OLDAP-1.2', 'OLDAP-1.3', 'OLDAP-1.4', 'OLDAP-2.0.1', 'OLDAP-2.0', 'OLDAP-2.1', 'OLDAP-2.2.1', 'OLDAP-2.2.2', 'OLDAP-2.2', 'OLDAP-2.3', 'OLDAP-2.4', 'OLDAP-2.5', 'OLDAP-2.6', 'OLDAP-2.7', 'OLDAP-2.8', 'OML', 'OpenSSL', 'OPL-1.0', 'OSET-PL-2.1', 'OSL-1.0', 'OSL-1.1', 'OSL-2.0', 'OSL-2.1', 'OSL-3.0', 'PDDL-1.0', 'PHP-3.0', 'PHP-3.01', 'Plexus', 'PostgreSQL', 'psfrag', 'psutils', 'Python-2.0', 'Qhull', 'QPL-1.0', 'Rdisc', 'RHeCos-1.1', 'RPL-1.1', 'RPL-1.5', 'RPSL-1.0', 'RSA-MD', 'RSCPL', 'Ruby', 'SAX-PD', 'Saxpath', 'SCEA', 'Sendmail', 'SGI-B-1.0', 'SGI-B-1.1', 'SGI-B-2.0', 'SimPL-2.0', 'SISSL-1.2', 'SISSL', 'Sleepycat', 'SMLNJ', 'SMPPL', 'SNIA', 'Spencer-86', 'Spencer-94', 'Spencer-99', 'SPL-1.0', 'SugarCRM-1.1.3', 'SWL', 'TCL', 'TCP-wrappers', 'TMate', 'TORQUE-1.1', 'TOSL', 'Unicode-DFS-2015', 'Unicode-DFS-2016', 'Unicode-TOU', 'Unlicense', 'UPL-1.0', 'Vim', 'VOSTROM', 'VSL-1.0', 'W3C-19980720', 'W3C-20150513', 'W3C', 'Watcom-1.0', 'Wsuipa', 'WTFPL', 'X11', 'Xerox', 'XFree86-1.1', 'xinetd', 'Xnet', 'xpp', 'XSkat', 'YPL-1.0', 'YPL-1.1', 'Zed', 'Zend-2.0', 'Zimbra-1.3', 'Zimbra-1.4', 'zlib-acknowledgement', 'Zlib', 'ZPL-1.1', 'ZPL-2.0', 'ZPL-2.1']}, 'type'=>'code', 'path'=>'ImplementationGuide.license', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/spdx-license'}},
        '_license' => {'type'=>'Element', 'path'=>'ImplementationGuide._license', 'min'=>0, 'max'=>1},
        'fhirVersion' => {'valid_codes'=>{'http://hl7.org/fhir/FHIR-version'=>['0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1']}, 'type'=>'code', 'path'=>'ImplementationGuide.fhirVersion', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/FHIR-version'}},
        '_fhirVersion' => {'type'=>'Element', 'path'=>'ImplementationGuide._fhirVersion', 'min'=>0, 'max'=>Float::INFINITY},
        'dependsOn' => {'type'=>'ImplementationGuide::DependsOn', 'path'=>'ImplementationGuide.dependsOn', 'min'=>0, 'max'=>Float::INFINITY},
        'global' => {'type'=>'ImplementationGuide::Global', 'path'=>'ImplementationGuide.global', 'min'=>0, 'max'=>Float::INFINITY},
        'definition' => {'type'=>'ImplementationGuide::Definition', 'path'=>'ImplementationGuide.definition', 'min'=>0, 'max'=>1},
        'manifest' => {'type'=>'ImplementationGuide::Manifest', 'path'=>'ImplementationGuide.manifest', 'min'=>0, 'max'=>1}
      }

      class DependsOn < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'DependsOn.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'DependsOn._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'DependsOn.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'DependsOn.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'uri' => {'type'=>'canonical', 'path'=>'DependsOn.uri', 'min'=>1, 'max'=>1},
          '_uri' => {'type'=>'Element', 'path'=>'DependsOn._uri', 'min'=>0, 'max'=>1},
          'packageId' => {'type'=>'id', 'path'=>'DependsOn.packageId', 'min'=>0, 'max'=>1},
          '_packageId' => {'type'=>'Element', 'path'=>'DependsOn._packageId', 'min'=>0, 'max'=>1},
          'version' => {'type'=>'string', 'path'=>'DependsOn.version', 'min'=>0, 'max'=>1},
          '_version' => {'type'=>'Element', 'path'=>'DependsOn._version', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :uri               # 1-1 canonical
        attr_accessor :_uri              # 0-1 Element
        attr_accessor :packageId         # 0-1 id
        attr_accessor :_packageId        # 0-1 Element
        attr_accessor :version           # 0-1 string
        attr_accessor :_version          # 0-1 Element
      end

      class Global < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Global.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Global._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Global.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Global.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'type'=>'code', 'path'=>'Global.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
          '_type' => {'type'=>'Element', 'path'=>'Global._type', 'min'=>0, 'max'=>1},
          'profile' => {'type'=>'canonical', 'path'=>'Global.profile', 'min'=>1, 'max'=>1},
          '_profile' => {'type'=>'Element', 'path'=>'Global._profile', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :_type             # 0-1 Element
        attr_accessor :profile           # 1-1 canonical
        attr_accessor :_profile          # 0-1 Element
      end

      class Definition < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Definition.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Definition._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Definition.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Definition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'grouping' => {'type'=>'ImplementationGuide::Definition::Grouping', 'path'=>'Definition.grouping', 'min'=>0, 'max'=>Float::INFINITY},
          'resource' => {'type'=>'ImplementationGuide::Definition::Resource', 'path'=>'Definition.resource', 'min'=>1, 'max'=>Float::INFINITY},
          'page' => {'type'=>'ImplementationGuide::Definition::Page', 'path'=>'Definition.page', 'min'=>0, 'max'=>1},
          'parameter' => {'type'=>'ImplementationGuide::Definition::Parameter', 'path'=>'Definition.parameter', 'min'=>0, 'max'=>Float::INFINITY},
          'template' => {'type'=>'ImplementationGuide::Definition::Template', 'path'=>'Definition.template', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Grouping < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Grouping.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Grouping._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Grouping.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Grouping.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'type'=>'string', 'path'=>'Grouping.name', 'min'=>1, 'max'=>1},
            '_name' => {'type'=>'Element', 'path'=>'Grouping._name', 'min'=>0, 'max'=>1},
            'description' => {'type'=>'string', 'path'=>'Grouping.description', 'min'=>0, 'max'=>1},
            '_description' => {'type'=>'Element', 'path'=>'Grouping._description', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 string
          attr_accessor :_name             # 0-1 Element
          attr_accessor :description       # 0-1 string
          attr_accessor :_description      # 0-1 Element
        end

        class Resource < FHIR::Model
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
            'example' => ['boolean', 'canonical']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Resource.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Resource._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Resource.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Resource.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Resource.reference', 'min'=>1, 'max'=>1},
            'fhirVersion' => {'valid_codes'=>{'http://hl7.org/fhir/FHIR-version'=>['0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1']}, 'type'=>'code', 'path'=>'Resource.fhirVersion', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/FHIR-version'}},
            '_fhirVersion' => {'type'=>'Element', 'path'=>'Resource._fhirVersion', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'type'=>'string', 'path'=>'Resource.name', 'min'=>0, 'max'=>1},
            '_name' => {'type'=>'Element', 'path'=>'Resource._name', 'min'=>0, 'max'=>1},
            'description' => {'type'=>'string', 'path'=>'Resource.description', 'min'=>0, 'max'=>1},
            '_description' => {'type'=>'Element', 'path'=>'Resource._description', 'min'=>0, 'max'=>1},
            'exampleBoolean' => {'type'=>'boolean', 'path'=>'Resource.example[x]', 'min'=>0, 'max'=>1},
            '_exampleBoolean' => {'type'=>'Element', 'path'=>'Resource.example[x]', 'min'=>0, 'max'=>1},
            'exampleCanonical' => {'type'=>'canonical', 'path'=>'Resource.example[x]', 'min'=>0, 'max'=>1},
            '_exampleCanonical' => {'type'=>'Element', 'path'=>'Resource.example[x]', 'min'=>0, 'max'=>1},
            'groupingId' => {'type'=>'id', 'path'=>'Resource.groupingId', 'min'=>0, 'max'=>1},
            '_groupingId' => {'type'=>'Element', 'path'=>'Resource._groupingId', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :reference         # 1-1 Reference(Resource)
          attr_accessor :fhirVersion       # 0-* [ code ]
          attr_accessor :_fhirVersion      # 0-* [ Element ]
          attr_accessor :name              # 0-1 string
          attr_accessor :_name             # 0-1 Element
          attr_accessor :description       # 0-1 string
          attr_accessor :_description      # 0-1 Element
          attr_accessor :exampleBoolean    # 0-1 boolean
          attr_accessor :_exampleBoolean   # 0-1 Element
          attr_accessor :exampleCanonical  # 0-1 canonical
          attr_accessor :_exampleCanonical # 0-1 Element
          attr_accessor :groupingId        # 0-1 id
          attr_accessor :_groupingId       # 0-1 Element
        end

        class Page < FHIR::Model
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
            'name' => ['url', 'Reference']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Page.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Page._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Page.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Page.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'nameUrl' => {'type'=>'url', 'path'=>'Page.name[x]', 'min'=>1, 'max'=>1},
            '_nameUrl' => {'type'=>'Element', 'path'=>'Page.name[x]', 'min'=>0, 'max'=>1},
            'nameReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Binary'], 'type'=>'Reference', 'path'=>'Page.name[x]', 'min'=>1, 'max'=>1},
            'title' => {'type'=>'string', 'path'=>'Page.title', 'min'=>1, 'max'=>1},
            '_title' => {'type'=>'Element', 'path'=>'Page._title', 'min'=>0, 'max'=>1},
            'generation' => {'valid_codes'=>{'http://hl7.org/fhir/guide-page-generation'=>['html', 'markdown', 'xml', 'generated']}, 'type'=>'code', 'path'=>'Page.generation', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/guide-page-generation'}},
            '_generation' => {'type'=>'Element', 'path'=>'Page._generation', 'min'=>0, 'max'=>1},
            'page' => {'type'=>'ImplementationGuide::Definition::Page', 'path'=>'Page.page', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :nameUrl           # 1-1 url
          attr_accessor :_nameUrl          # 0-1 Element
          attr_accessor :nameReference     # 1-1 Reference(Binary)
          attr_accessor :title             # 1-1 string
          attr_accessor :_title            # 0-1 Element
          attr_accessor :generation        # 1-1 code
          attr_accessor :_generation       # 0-1 Element
          attr_accessor :page              # 0-* [ ImplementationGuide::Definition::Page ]
        end

        class Parameter < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Parameter.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Parameter._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Parameter.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Parameter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://hl7.org/fhir/guide-parameter-code'=>['apply', 'path-resource', 'path-pages', 'path-tx-cache', 'expansion-parameter', 'rule-broken-links', 'generate-xml', 'generate-json', 'generate-turtle', 'html-template']}, 'type'=>'code', 'path'=>'Parameter.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/guide-parameter-code'}},
            '_code' => {'type'=>'Element', 'path'=>'Parameter._code', 'min'=>0, 'max'=>1},
            'value' => {'type'=>'string', 'path'=>'Parameter.value', 'min'=>1, 'max'=>1},
            '_value' => {'type'=>'Element', 'path'=>'Parameter._value', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :_code             # 0-1 Element
          attr_accessor :value             # 1-1 string
          attr_accessor :_value            # 0-1 Element
        end

        class Template < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Template.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Template._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Template.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Template.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'type'=>'code', 'path'=>'Template.code', 'min'=>1, 'max'=>1},
            '_code' => {'type'=>'Element', 'path'=>'Template._code', 'min'=>0, 'max'=>1},
            'source' => {'type'=>'string', 'path'=>'Template.source', 'min'=>1, 'max'=>1},
            '_source' => {'type'=>'Element', 'path'=>'Template._source', 'min'=>0, 'max'=>1},
            'scope' => {'type'=>'string', 'path'=>'Template.scope', 'min'=>0, 'max'=>1},
            '_scope' => {'type'=>'Element', 'path'=>'Template._scope', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :_code             # 0-1 Element
          attr_accessor :source            # 1-1 string
          attr_accessor :_source           # 0-1 Element
          attr_accessor :scope             # 0-1 string
          attr_accessor :_scope            # 0-1 Element
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :grouping          # 0-* [ ImplementationGuide::Definition::Grouping ]
        attr_accessor :resource          # 1-* [ ImplementationGuide::Definition::Resource ]
        attr_accessor :page              # 0-1 ImplementationGuide::Definition::Page
        attr_accessor :parameter         # 0-* [ ImplementationGuide::Definition::Parameter ]
        attr_accessor :template          # 0-* [ ImplementationGuide::Definition::Template ]
      end

      class Manifest < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'Manifest.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Manifest._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Manifest.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Manifest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'rendering' => {'type'=>'url', 'path'=>'Manifest.rendering', 'min'=>0, 'max'=>1},
          '_rendering' => {'type'=>'Element', 'path'=>'Manifest._rendering', 'min'=>0, 'max'=>1},
          'resource' => {'type'=>'ImplementationGuide::Manifest::Resource', 'path'=>'Manifest.resource', 'min'=>1, 'max'=>Float::INFINITY},
          'page' => {'type'=>'ImplementationGuide::Manifest::Page', 'path'=>'Manifest.page', 'min'=>0, 'max'=>Float::INFINITY},
          'image' => {'type'=>'string', 'path'=>'Manifest.image', 'min'=>0, 'max'=>Float::INFINITY},
          '_image' => {'type'=>'Element', 'path'=>'Manifest._image', 'min'=>0, 'max'=>Float::INFINITY},
          'other' => {'type'=>'string', 'path'=>'Manifest.other', 'min'=>0, 'max'=>Float::INFINITY},
          '_other' => {'type'=>'Element', 'path'=>'Manifest._other', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Resource < FHIR::Model
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
            'example' => ['boolean', 'canonical']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Resource.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Resource._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Resource.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Resource.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Resource.reference', 'min'=>1, 'max'=>1},
            'exampleBoolean' => {'type'=>'boolean', 'path'=>'Resource.example[x]', 'min'=>0, 'max'=>1},
            '_exampleBoolean' => {'type'=>'Element', 'path'=>'Resource.example[x]', 'min'=>0, 'max'=>1},
            'exampleCanonical' => {'type'=>'canonical', 'path'=>'Resource.example[x]', 'min'=>0, 'max'=>1},
            '_exampleCanonical' => {'type'=>'Element', 'path'=>'Resource.example[x]', 'min'=>0, 'max'=>1},
            'relativePath' => {'type'=>'url', 'path'=>'Resource.relativePath', 'min'=>0, 'max'=>1},
            '_relativePath' => {'type'=>'Element', 'path'=>'Resource._relativePath', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :reference         # 1-1 Reference(Resource)
          attr_accessor :exampleBoolean    # 0-1 boolean
          attr_accessor :_exampleBoolean   # 0-1 Element
          attr_accessor :exampleCanonical  # 0-1 canonical
          attr_accessor :_exampleCanonical # 0-1 Element
          attr_accessor :relativePath      # 0-1 url
          attr_accessor :_relativePath     # 0-1 Element
        end

        class Page < FHIR::Model
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
            'id' => {'type'=>'string', 'path'=>'Page.id', 'min'=>0, 'max'=>1},
            '_id' => {'type'=>'Element', 'path'=>'Page._id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Page.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Page.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'type'=>'string', 'path'=>'Page.name', 'min'=>1, 'max'=>1},
            '_name' => {'type'=>'Element', 'path'=>'Page._name', 'min'=>0, 'max'=>1},
            'title' => {'type'=>'string', 'path'=>'Page.title', 'min'=>0, 'max'=>1},
            '_title' => {'type'=>'Element', 'path'=>'Page._title', 'min'=>0, 'max'=>1},
            'anchor' => {'type'=>'string', 'path'=>'Page.anchor', 'min'=>0, 'max'=>Float::INFINITY},
            '_anchor' => {'type'=>'Element', 'path'=>'Page._anchor', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :_id               # 0-1 Element
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 string
          attr_accessor :_name             # 0-1 Element
          attr_accessor :title             # 0-1 string
          attr_accessor :_title            # 0-1 Element
          attr_accessor :anchor            # 0-* [ string ]
          attr_accessor :_anchor           # 0-* [ Element ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :rendering         # 0-1 url
        attr_accessor :_rendering        # 0-1 Element
        attr_accessor :resource          # 1-* [ ImplementationGuide::Manifest::Resource ]
        attr_accessor :page              # 0-* [ ImplementationGuide::Manifest::Page ]
        attr_accessor :image             # 0-* [ string ]
        attr_accessor :_image            # 0-* [ Element ]
        attr_accessor :other             # 0-* [ string ]
        attr_accessor :_other            # 0-* [ Element ]
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
      attr_accessor :url               # 1-1 uri
      attr_accessor :_url              # 0-1 Element
      attr_accessor :version           # 0-1 string
      attr_accessor :_version          # 0-1 Element
      attr_accessor :name              # 1-1 string
      attr_accessor :_name             # 0-1 Element
      attr_accessor :title             # 0-1 string
      attr_accessor :_title            # 0-1 Element
      attr_accessor :status            # 1-1 code
      attr_accessor :_status           # 0-1 Element
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :_experimental     # 0-1 Element
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :_date             # 0-1 Element
      attr_accessor :publisher         # 0-1 string
      attr_accessor :_publisher        # 0-1 Element
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :_description      # 0-1 Element
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :_copyright        # 0-1 Element
      attr_accessor :packageId         # 1-1 id
      attr_accessor :_packageId        # 0-1 Element
      attr_accessor :license           # 0-1 code
      attr_accessor :_license          # 0-1 Element
      attr_accessor :fhirVersion       # 1-* [ code ]
      attr_accessor :_fhirVersion      # 0-* [ Element ]
      attr_accessor :dependsOn         # 0-* [ ImplementationGuide::DependsOn ]
      attr_accessor :global            # 0-* [ ImplementationGuide::Global ]
      attr_accessor :definition        # 0-1 ImplementationGuide::Definition
      attr_accessor :manifest          # 0-1 ImplementationGuide::Manifest

      def resourceType
        'ImplementationGuide'
      end
    end
  end
  ImplementationGuide = FHIR::R4::ImplementationGuide
end