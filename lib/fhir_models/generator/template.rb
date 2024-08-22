module FHIR
  class Generator
    class Template
      include FHIR::Hashable
      extend FHIR::Deprecate

      attr_accessor :name
      attr_accessor :hierarchy
      attr_accessor :kind
      attr_accessor :constants
      attr_accessor :fields
      attr_accessor :templates
      attr_accessor :top_level
      attr_accessor :fhir_version

      def initialize(name, top_level)
        @name = name
        @hierarchy = []
        @kind = nil
        @constants = {}
        @fields = []
        @templates = []
        @top_level = top_level
      end

      def metadata
        metadata = {}
        @fields.each do |field|
          if metadata.keys.include?(field.name)
            # this field has already been declared, so we're dealing
            # with a `slice` which we'll track with an array.
            x = field.serialize
            x.delete('name')
            if metadata[field.name].is_a?(Array)
              metadata[field.name] << x
            else
              metadata[field.name] = [metadata[field.name], x]
            end
          else
            metadata[field.name] = field.serialize
            metadata[field.name].delete('name')
          end
        end
        metadata
      end
      deprecate :get_metadata, :metadata

      def to_s(offset = 0)
        # create an array of Strings, one per line
        s = []
        # TODO: insert copyright statement
        # always declare the FHIR module
        if @top_level
          s << 'module FHIR'
          s << "  module #{fhir_version}"
          offset += 2

        end

        @name.each_with_index do |name, index|
          space = indent(index + 1, offset)
          type = 'module'
          type = 'class' if index == @name.length - 1
          classdef = "#{space}#{type} #{name}"
          classdef += ' < FHIR::Model' if type == 'class'
          s << classdef
        end

        # include modules
        space = indent(@name.length + 1, offset)
        s << "#{space}include FHIR::Hashable" unless @name.empty?
        s << "#{space}include FHIR::Json" unless @name.empty?
        s << "#{space}include FHIR::Xml" unless @name.empty?
        s << ''

        s << "#{space}def module_version_name"
        s << "#{space}  '#{fhir_version}'"
        s << "#{space}end"
        s << ''
        s << "#{space}def module_version"
        s << "#{space}  FHIR::#{fhir_version}"
        s << "#{space}end"
        s << ''

        # add mandatory METADATA constant
        @constants['METADATA'] = metadata unless metadata.empty?

        # add constants
        @constants.each do |constant, value|
          if value.is_a?(Hash)
            s << "#{space}#{constant.upcase} = {"
            value.each do |k, v|
              s << "#{space}  \"#{k}\" => #{v},"
              # Replace wildcard string with Infinity constant
              s[-1].gsub!('"max"=>"*"', '"max"=>Float::INFINITY')
              s[-1].gsub!(/'/, %q(\\\'))
              s[-1].tr!('"', '\'')
            end
            s[-1] = s[-1][0..-2] # remove the trailing comma
            s << "#{space}}"
          else
            s << "#{space}#{constant.upcase} = #{value.empty? ? value.to_s : value.to_s.tr!('"', '\'')}"
          end
        end
        s << ''

        # add internal nested classes
        @templates.each do |template|
          s << template.to_s(space.length - 2)
          s << ''
        end

        # calculate the longest field name for whitespace layout
        max_name_size = (@fields.map { |field| field.local_name || field.name }.map(&:length).max || 0) + 1

        # declare attributes
        @fields.each do |field|
          s << "#{space}attr_accessor :"
          local_name = field.local_name || field.name
          s[-1] << format("%-#{max_name_size}s", local_name)
          # add comment after field declaration
          s[-1] << "# #{field.min}-#{field.max} "
          s[-1] << '[ ' if field.max.to_i > 1 || field.max == '*'
          s[-1] << field.type
          s[-1] << "(#{field.type_profiles.map { |p| p.split('/').last }.join('|')})" if field.type == 'Reference'
          s[-1] << ' ]' if field.max.to_i > 1 || field.max == '*'
        end

        if @top_level && @kind == 'resource'
          s << ''
          s << "#{space}def resourceType"
          s << "#{space}  '#{@name.first}'"
          s << "#{space}end"
        end

        # close all the class and module declarations
        (0..@name.length - 1).reverse_each do |index|
          space = indent(index + 1, offset)
          s << "#{space}end"
        end
        if @top_level
          s << '  end'
          s << "  #{@name.first} = FHIR::R4::#{@name.first}" if fhir_version == 'R4' # manually filled for metadata.rb
          s << 'end'
        end
        s.join("\n")
      end

      def indent(level = 0, offset = 0)
        ' ' * offset + '  ' * level
      end
    end
  end
end
