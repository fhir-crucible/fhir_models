module FHIR
  module R4
    class MedicinalProductAuthorization < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4'
      end

      def module_version
        FHIR::R4
      end

      SEARCH_PARAMS = ['country', 'holder', 'identifier', 'status', 'subject']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MedicinalProductAuthorization.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'MedicinalProductAuthorization._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MedicinalProductAuthorization.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MedicinalProductAuthorization.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'MedicinalProductAuthorization._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'MedicinalProductAuthorization.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'MedicinalProductAuthorization._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'MedicinalProductAuthorization.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MedicinalProductAuthorization.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MedicinalProductAuthorization.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MedicinalProductAuthorization.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'MedicinalProductAuthorization.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct', 'http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged'], 'type'=>'Reference', 'path'=>'MedicinalProductAuthorization.subject', 'min'=>0, 'max'=>1},
        'country' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductAuthorization.country', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductAuthorization.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductAuthorization.status', 'min'=>0, 'max'=>1},
        'statusDate' => {'type'=>'dateTime', 'path'=>'MedicinalProductAuthorization.statusDate', 'min'=>0, 'max'=>1},
        '_statusDate' => {'type'=>'Element', 'path'=>'MedicinalProductAuthorization._statusDate', 'min'=>0, 'max'=>1},
        'restoreDate' => {'type'=>'dateTime', 'path'=>'MedicinalProductAuthorization.restoreDate', 'min'=>0, 'max'=>1},
        '_restoreDate' => {'type'=>'Element', 'path'=>'MedicinalProductAuthorization._restoreDate', 'min'=>0, 'max'=>1},
        'validityPeriod' => {'type'=>'Period', 'path'=>'MedicinalProductAuthorization.validityPeriod', 'min'=>0, 'max'=>1},
        'dataExclusivityPeriod' => {'type'=>'Period', 'path'=>'MedicinalProductAuthorization.dataExclusivityPeriod', 'min'=>0, 'max'=>1},
        'dateOfFirstAuthorization' => {'type'=>'dateTime', 'path'=>'MedicinalProductAuthorization.dateOfFirstAuthorization', 'min'=>0, 'max'=>1},
        '_dateOfFirstAuthorization' => {'type'=>'Element', 'path'=>'MedicinalProductAuthorization._dateOfFirstAuthorization', 'min'=>0, 'max'=>1},
        'internationalBirthDate' => {'type'=>'dateTime', 'path'=>'MedicinalProductAuthorization.internationalBirthDate', 'min'=>0, 'max'=>1},
        '_internationalBirthDate' => {'type'=>'Element', 'path'=>'MedicinalProductAuthorization._internationalBirthDate', 'min'=>0, 'max'=>1},
        'legalBasis' => {'type'=>'CodeableConcept', 'path'=>'MedicinalProductAuthorization.legalBasis', 'min'=>0, 'max'=>1},
        'jurisdictionalAuthorization' => {'type'=>'MedicinalProductAuthorization::JurisdictionalAuthorization', 'path'=>'MedicinalProductAuthorization.jurisdictionalAuthorization', 'min'=>0, 'max'=>Float::INFINITY},
        'holder' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'MedicinalProductAuthorization.holder', 'min'=>0, 'max'=>1},
        'regulator' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'MedicinalProductAuthorization.regulator', 'min'=>0, 'max'=>1},
        'procedure' => {'type'=>'MedicinalProductAuthorization::Procedure', 'path'=>'MedicinalProductAuthorization.procedure', 'min'=>0, 'max'=>1}
      }

      class JurisdictionalAuthorization < FHIR::Model
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
          'id' => {'type'=>'string', 'path'=>'JurisdictionalAuthorization.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'JurisdictionalAuthorization._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'JurisdictionalAuthorization.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'JurisdictionalAuthorization.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'JurisdictionalAuthorization.identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'country' => {'type'=>'CodeableConcept', 'path'=>'JurisdictionalAuthorization.country', 'min'=>0, 'max'=>1},
          'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'JurisdictionalAuthorization.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY},
          'legalStatusOfSupply' => {'type'=>'CodeableConcept', 'path'=>'JurisdictionalAuthorization.legalStatusOfSupply', 'min'=>0, 'max'=>1},
          'validityPeriod' => {'type'=>'Period', 'path'=>'JurisdictionalAuthorization.validityPeriod', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :_id                 # 0-1 Element
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :identifier          # 0-* [ Identifier ]
        attr_accessor :country             # 0-1 CodeableConcept
        attr_accessor :jurisdiction        # 0-* [ CodeableConcept ]
        attr_accessor :legalStatusOfSupply # 0-1 CodeableConcept
        attr_accessor :validityPeriod      # 0-1 Period
      end

      class Procedure < FHIR::Model
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
          'date' => ['Period', 'dateTime']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Procedure.id', 'min'=>0, 'max'=>1},
          '_id' => {'type'=>'Element', 'path'=>'Procedure._id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Procedure.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Procedure.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Procedure.identifier', 'min'=>0, 'max'=>1},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Procedure.type', 'min'=>1, 'max'=>1},
          'datePeriod' => {'type'=>'Period', 'path'=>'Procedure.date[x]', 'min'=>0, 'max'=>1},
          'dateDateTime' => {'type'=>'dateTime', 'path'=>'Procedure.date[x]', 'min'=>0, 'max'=>1},
          '_dateDateTime' => {'type'=>'Element', 'path'=>'Procedure.date[x]', 'min'=>0, 'max'=>1},
          'application' => {'type'=>'MedicinalProductAuthorization::Procedure', 'path'=>'Procedure.application', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :_id               # 0-1 Element
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-1 Identifier
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :datePeriod        # 0-1 Period
        attr_accessor :dateDateTime      # 0-1 dateTime
        attr_accessor :_dateDateTime     # 0-1 Element
        attr_accessor :application       # 0-* [ MedicinalProductAuthorization::Procedure ]
      end

      attr_accessor :id                          # 0-1 id
      attr_accessor :_id                         # 0-1 Element
      attr_accessor :meta                        # 0-1 Meta
      attr_accessor :implicitRules               # 0-1 uri
      attr_accessor :_implicitRules              # 0-1 Element
      attr_accessor :language                    # 0-1 code
      attr_accessor :_language                   # 0-1 Element
      attr_accessor :text                        # 0-1 Narrative
      attr_accessor :contained                   # 0-* [ Resource ]
      attr_accessor :extension                   # 0-* [ Extension ]
      attr_accessor :modifierExtension           # 0-* [ Extension ]
      attr_accessor :identifier                  # 0-* [ Identifier ]
      attr_accessor :subject                     # 0-1 Reference(MedicinalProduct|MedicinalProductPackaged)
      attr_accessor :country                     # 0-* [ CodeableConcept ]
      attr_accessor :jurisdiction                # 0-* [ CodeableConcept ]
      attr_accessor :status                      # 0-1 CodeableConcept
      attr_accessor :statusDate                  # 0-1 dateTime
      attr_accessor :_statusDate                 # 0-1 Element
      attr_accessor :restoreDate                 # 0-1 dateTime
      attr_accessor :_restoreDate                # 0-1 Element
      attr_accessor :validityPeriod              # 0-1 Period
      attr_accessor :dataExclusivityPeriod       # 0-1 Period
      attr_accessor :dateOfFirstAuthorization    # 0-1 dateTime
      attr_accessor :_dateOfFirstAuthorization   # 0-1 Element
      attr_accessor :internationalBirthDate      # 0-1 dateTime
      attr_accessor :_internationalBirthDate     # 0-1 Element
      attr_accessor :legalBasis                  # 0-1 CodeableConcept
      attr_accessor :jurisdictionalAuthorization # 0-* [ MedicinalProductAuthorization::JurisdictionalAuthorization ]
      attr_accessor :holder                      # 0-1 Reference(Organization)
      attr_accessor :regulator                   # 0-1 Reference(Organization)
      attr_accessor :procedure                   # 0-1 MedicinalProductAuthorization::Procedure

      def resourceType
        'MedicinalProductAuthorization'
      end
    end
  end
  MedicinalProductAuthorization = FHIR::R4::MedicinalProductAuthorization
end