module FHIR
  module R4B
    class OrganizationAffiliation < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = ['active', 'date', 'email', 'endpoint', 'identifier', 'location', 'network', 'participating-organization', 'phone', 'primary-organization', 'role', 'service', 'specialty', 'telecom']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'OrganizationAffiliation.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'OrganizationAffiliation._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'OrganizationAffiliation.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'OrganizationAffiliation.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'OrganizationAffiliation._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'OrganizationAffiliation.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'OrganizationAffiliation._language', 'min'=>0, 'max'=>1},
        'text' => {'type'=>'Narrative', 'path'=>'OrganizationAffiliation.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'OrganizationAffiliation.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'OrganizationAffiliation.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'OrganizationAffiliation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'OrganizationAffiliation.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'type'=>'boolean', 'path'=>'OrganizationAffiliation.active', 'min'=>0, 'max'=>1},
        '_active' => {'type'=>'Element', 'path'=>'OrganizationAffiliation._active', 'min'=>0, 'max'=>1},
        'period' => {'type'=>'Period', 'path'=>'OrganizationAffiliation.period', 'min'=>0, 'max'=>1},
        'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'OrganizationAffiliation.organization', 'min'=>0, 'max'=>1},
        'participatingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'OrganizationAffiliation.participatingOrganization', 'min'=>0, 'max'=>1},
        'network' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'OrganizationAffiliation.network', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://hl7.org/fhir/organization-role'=>['provider', 'agency', 'research', 'payer', 'diagnostics', 'supplier', 'HIE/HIO', 'member']}, 'type'=>'CodeableConcept', 'path'=>'OrganizationAffiliation.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/organization-role'}},
        'specialty' => {'valid_codes'=>{'http://snomed.info/sct'=>['408467006', '394577000', '394578005', '421661004', '408462000', '394579002', '394804000', '394580004', '394803006', '408480009', '408454008', '394809005', '394592004', '394600006', '394601005', '394581000', '408478003', '394812008', '408444009', '394582007', '408475000', '410005002', '394583002', '419772000', '394584008', '408443003', '394802001', '394915009', '394814009', '394808002', '394811001', '408446006', '394586005', '394916005', '408472002', '394597005', '394598000', '394807007', '419192003', '408468001', '394593009', '394813003', '410001006', '394589003', '394591006', '394599008', '394649004', '408470005', '394585009', '394821009', '422191005', '394594003', '416304004', '418960008', '394882004', '394806003', '394588006', '408459003', '394607009', '419610006', '418058008', '420208008', '418652005', '418535003', '418862001', '419365004', '418002000', '419983000', '419170002', '419472004', '394539006', '420112009', '409968004', '394587001', '394913002', '408440000', '418112009', '419815003', '394914008', '408455009', '394602003', '408447002', '394810000', '408450004', '408476004', '408469009', '408466002', '408471009', '408464004', '408441001', '408465003', '394605001', '394608004', '408461007', '408460008', '394606000', '408449004', '418018006', '394604002', '394609007', '408474001', '394610002', '394611003', '408477008', '394801008', '408463005', '419321007', '394576009', '394590007', '409967009', '408448007', '419043006', '394612005', '394733009', '394732004']}, 'type'=>'CodeableConcept', 'path'=>'OrganizationAffiliation.specialty', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/c80-practice-codes'}},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'OrganizationAffiliation.location', 'min'=>0, 'max'=>Float::INFINITY},
        'healthcareService' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'type'=>'Reference', 'path'=>'OrganizationAffiliation.healthcareService', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'OrganizationAffiliation.telecom', 'min'=>0, 'max'=>Float::INFINITY},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'type'=>'Reference', 'path'=>'OrganizationAffiliation.endpoint', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                        # 0-1 id
      attr_accessor :_id                       # 0-1 Element
      attr_accessor :meta                      # 0-1 Meta
      attr_accessor :implicitRules             # 0-1 uri
      attr_accessor :_implicitRules            # 0-1 Element
      attr_accessor :language                  # 0-1 code
      attr_accessor :_language                 # 0-1 Element
      attr_accessor :text                      # 0-1 Narrative
      attr_accessor :contained                 # 0-* [ Resource ]
      attr_accessor :extension                 # 0-* [ Extension ]
      attr_accessor :modifierExtension         # 0-* [ Extension ]
      attr_accessor :identifier                # 0-* [ Identifier ]
      attr_accessor :active                    # 0-1 boolean
      attr_accessor :_active                   # 0-1 Element
      attr_accessor :period                    # 0-1 Period
      attr_accessor :organization              # 0-1 Reference(Organization)
      attr_accessor :participatingOrganization # 0-1 Reference(Organization)
      attr_accessor :network                   # 0-* [ Reference(Organization) ]
      attr_accessor :code                      # 0-* [ CodeableConcept ]
      attr_accessor :specialty                 # 0-* [ CodeableConcept ]
      attr_accessor :location                  # 0-* [ Reference(Location) ]
      attr_accessor :healthcareService         # 0-* [ Reference(HealthcareService) ]
      attr_accessor :telecom                   # 0-* [ ContactPoint ]
      attr_accessor :endpoint                  # 0-* [ Reference(Endpoint) ]

      def resourceType
        'OrganizationAffiliation'
      end
    end
  end
end