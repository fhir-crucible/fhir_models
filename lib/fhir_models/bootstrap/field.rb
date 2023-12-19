module FHIR
  class Field
    include FHIR::Hashable

    attr_accessor :name
    attr_accessor :local_name
    attr_accessor :path
    attr_accessor :type
    attr_accessor :type_profiles
    attr_accessor :min
    attr_accessor :max
    attr_accessor :valid_codes
    attr_accessor :binding
    attr_accessor :regex
    attr_accessor :constraint

    def initialize(name = '')
      @name = name
      @local_name = fix_name(@name)
      @type_profiles = []
      @valid_codes = []
    end

    def serialize
      hash = {}
      instance_variables.each do |v|
        hash[v.to_s[1..]] = instance_variable_get(v)
      end
      hash.delete('name')
      prune(hash)
    end

    def fix_name(name)
      fix = nil
      fix = "local_#{name}" if ['class', 'method', 'resourceType'].include?(name)
      fix
    end
  end
end
