require_relative '../test_helper'

class ProfileValidationTest < Test::Unit::TestCase
  ERROR_DIR = File.join('tmp', 'errors', 'ProfileValidationTest')
  EXAMPLE_ROOT = File.join('lib', 'fhir_models', 'examples', 'json')

  # Automatically generate one test method per profiled file
  example_files = File.join(EXAMPLE_ROOT, '**', '*qicore.json')
  FHIR.logger.warn 'No QICore Examples Found' if Dir[example_files].empty?

  # Create a blank folder for the errors
  FileUtils.rm_rf(ERROR_DIR) if File.directory?(ERROR_DIR)
  FileUtils.mkdir_p ERROR_DIR

  Dir.glob(example_files).each do |example_file|
    example_name = File.basename(example_file, '.json')
    define_method("test_profile_validation_#{example_name}") do
      run_profile_validation_test(example_file, example_name)
    end
  end

  def run_profile_validation_test(example_file, example_name)
    input_json = File.read(example_file)
    resource = FHIR::Json.from_json(input_json)
    profile_uri = "http://hl7.org/fhir/StructureDefinition/qicore-#{resource.resourceType.downcase}"
    profile = FHIR::Definitions.get_profile(profile_uri)
    assert profile.is_a?(FHIR::StructureDefinition), 'Profile is not a valid StructureDefinition.'
    errors = profile.validate_resource(resource)
    unless errors.empty?
      File.open("#{ERROR_DIR}/#{example_name}.err", 'w:UTF-8') { |file| errors.each { |e| file.write("#{e}\n") } }
      File.open("#{ERROR_DIR}/#{example_name}.json", 'w:UTF-8') { |file| file.write(input_json) }
    end
    assert errors.empty?, 'Resource failed to validate.'
    # check memory
    before = check_memory
    resource = nil
    profile = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_language_binding_validation
    binding_strength = FHIR::Resource::METADATA['language']['binding']['strength']
    FHIR::Resource::METADATA['language']['binding']['strength'] = 'required'
    model = FHIR::Resource.new('language' => 'en-US')
    assert model.valid?, 'Language validation failed.'
    FHIR::Resource::METADATA['language']['binding']['strength'] = binding_strength
    # check memory
    before = check_memory
    model = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end
end
