module FHIR
  # add support for deprecating instance and class methods
  module Deprecate
    def deprecate(old_method, new_method)
      if instance_methods.include? new_method
        define_method(old_method) do |*args, &block|
          message = "DEPRECATED: `#{old_method}` has been deprecated. Use `#{new_method}` instead. Called from #{caller.first}"
          FHIR.logger.warn message
          send(new_method, *args, &block)
        end
      end
      return unless methods.include? new_method

      (class << self; self; end).instance_eval do
        define_method(old_method) do |*args, &block|
          message = "DEPRECATED: `#{old_method}` has been deprecated. Use `#{new_method}` instead. Called from #{caller.first}"
          FHIR.logger.warn message
          send(new_method, *args, &block)
        end
      end
    end
  end
end
