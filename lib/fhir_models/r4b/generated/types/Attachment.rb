module FHIR
  module R4B
    class Attachment < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      def module_version_name
        'R4B'
      end

      def module_version
        FHIR::R4B
      end

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Attachment.id', 'min'=>0, 'max'=>1},
        '_id' => {'type'=>'Element', 'path'=>'Attachment._id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Attachment.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'contentType' => {'type'=>'code', 'path'=>'Attachment.contentType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        '_contentType' => {'type'=>'Element', 'path'=>'Attachment._contentType', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Attachment.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        '_language' => {'type'=>'Element', 'path'=>'Attachment._language', 'min'=>0, 'max'=>1},
        'data' => {'type'=>'base64Binary', 'path'=>'Attachment.data', 'min'=>0, 'max'=>1},
        '_data' => {'type'=>'Element', 'path'=>'Attachment._data', 'min'=>0, 'max'=>1},
        'url' => {'type'=>'url', 'path'=>'Attachment.url', 'min'=>0, 'max'=>1},
        '_url' => {'type'=>'Element', 'path'=>'Attachment._url', 'min'=>0, 'max'=>1},
        'size' => {'type'=>'unsignedInt', 'path'=>'Attachment.size', 'min'=>0, 'max'=>1},
        '_size' => {'type'=>'Element', 'path'=>'Attachment._size', 'min'=>0, 'max'=>1},
        'hash' => {'type'=>'base64Binary', 'path'=>'Attachment.hash', 'min'=>0, 'max'=>1},
        '_hash' => {'type'=>'Element', 'path'=>'Attachment._hash', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'Attachment.title', 'min'=>0, 'max'=>1},
        '_title' => {'type'=>'Element', 'path'=>'Attachment._title', 'min'=>0, 'max'=>1},
        'creation' => {'type'=>'dateTime', 'path'=>'Attachment.creation', 'min'=>0, 'max'=>1},
        '_creation' => {'type'=>'Element', 'path'=>'Attachment._creation', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id           # 0-1 string
      attr_accessor :_id          # 0-1 Element
      attr_accessor :extension    # 0-* [ Extension ]
      attr_accessor :contentType  # 0-1 code
      attr_accessor :_contentType # 0-1 Element
      attr_accessor :language     # 0-1 code
      attr_accessor :_language    # 0-1 Element
      attr_accessor :data         # 0-1 base64Binary
      attr_accessor :_data        # 0-1 Element
      attr_accessor :url          # 0-1 url
      attr_accessor :_url         # 0-1 Element
      attr_accessor :size         # 0-1 unsignedInt
      attr_accessor :_size        # 0-1 Element
      attr_accessor :hash         # 0-1 base64Binary
      attr_accessor :_hash        # 0-1 Element
      attr_accessor :title        # 0-1 string
      attr_accessor :_title       # 0-1 Element
      attr_accessor :creation     # 0-1 dateTime
      attr_accessor :_creation    # 0-1 Element
    end
  end
end