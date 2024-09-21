root = File.expand_path '..', File.dirname(File.absolute_path(__FILE__))

require File.join(root, 'fhir_models', 'version')
require File.join(root, 'fhir_models', 'deprecate')

# Need to require Hashable first
require File.join(root, 'fhir_models', 'bootstrap', 'hashable.rb')
require File.join(root, 'fhir_models', 'bootstrap', 'json.rb')

Dir.glob(File.join(root, 'fhir_models', 'bootstrap', '*.rb')).sort.each do |file|
  require file
end

require File.join(root, 'fhir_models', 'fhir.rb')

# Require the FHIRPath code
Dir.glob(File.join(root, 'fhir_models', 'fhirpath', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'r4b', 'bootstrap', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'r4b', 'generated', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'r4b', 'generated', 'resources', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'r4b', 'generated', 'types', '*.rb')).sort.each do |file|
  require file
end

# Require the fhir_ext code
Dir.glob(File.join(root, 'fhir_models', 'fhir_ext', '*.rb')).sort.each do |file|
  require file
end

Dir.glob(File.join(root, 'fhir_models', 'r4b', 'fhir_ext', '*.rb')).sort.each do |file|
  require file
end
