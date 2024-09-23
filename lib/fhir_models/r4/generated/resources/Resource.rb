module FHIR
  module R4
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

      SEARCH_PARAMS = ['_id', '_lastUpdated', '_profile', '_security', '_source', '_tag']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Resource.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Resource._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Resource.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Resource.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Resource._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Resource.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Resource._language', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id             # 0-1 id
      attr_accessor :_id            # 0-1 Element
      attr_accessor :meta           # 0-1 Meta
      attr_accessor :implicitRules  # 0-1 uri
      attr_accessor :_implicitRules # 0-1 Element
      attr_accessor :language       # 0-1 code
      attr_accessor :_language      # 0-1 Element

      def resourceType
        'Resource'
      end
    end
  end
  Resource = FHIR::R4::Resource
end