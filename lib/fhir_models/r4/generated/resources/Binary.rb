module FHIR
  module R4
    class Binary < FHIR::Model
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
        'id' => {'type'=>'id', 'path'=>'Binary.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Binary._id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Binary.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Binary.implicitRules', 'min'=>0, 'max'=>1},
        '_implicitRules' => {'type'=>'Element', 'path'=>'Binary._implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Binary.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Binary._language', 'min'=>0, 'max'=>1},
        'contentType' => {'type'=>'code', 'path'=>'Binary.contentType', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        '_contentType' => {'type'=>'Element', 'path'=>'Binary._contentType', 'min'=>0, 'max'=>1},
        'securityContext' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Binary.securityContext', 'min'=>0, 'max'=>1},
        'data' => {'type'=>'base64Binary', 'path'=>'Binary.data', 'min'=>0, 'max'=>1},
        '_data' => {'type'=>'Element', 'path'=>'Binary._data', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id              # 0-1 id
      attr_accessor :_id             # 0-1 Element
      attr_accessor :meta            # 0-1 Meta
      attr_accessor :implicitRules   # 0-1 uri
      attr_accessor :_implicitRules  # 0-1 Element
      attr_accessor :language        # 0-1 code
      attr_accessor :_language       # 0-1 Element
      attr_accessor :contentType     # 1-1 code
      attr_accessor :_contentType    # 0-1 Element
      attr_accessor :securityContext # 0-1 Reference(Resource)
      attr_accessor :data            # 0-1 base64Binary
      attr_accessor :_data           # 0-1 Element

      def resourceType
        'Binary'
      end
    end
  end
  Binary = FHIR::R4::Binary
end