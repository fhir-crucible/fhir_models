module FHIR
  # Extend ElementDefinition for profile validation code
  class ElementDefinition < FHIR::Model
    # children is used to hierarchically arrange elements
    # so profile validation is easier to compute
    attr_accessor :children
    attr_accessor :local_name
    attr_accessor :marked_for_keeping

    def add_descendent(element)
      @children = [] if @children.nil?
      element.local_name = element.path.gsub("#{path}.", '')
      if @children.last && element.path.start_with?(@children.last.path)
        if element.path == @children.last.path
          # slicing
          @children << element
        else
          @children.last.add_descendent(element)
        end
      else
        @children << element
      end
    end

    def keep_children(whitelist = [])
      @marked_for_keeping = true if whitelist.include?(path)
      return unless @children

      @children.each do |child|
        child.keep_children(whitelist)
      end
    end

    def sweep_children
      return unless @children

      @children.each(&:sweep_children)
      @children.keep_if(&:marked_for_keeping)
      @marked_for_keeping = !@children.empty? || @marked_for_keeping
    end

    def print_children(spaces = 0)
      puts "#{' ' * spaces}+#{local_name || path}"
      return nil unless @children

      @children.each do |child|
        child.print_children(spaces + 2)
      end
      nil
    end
  end
end
