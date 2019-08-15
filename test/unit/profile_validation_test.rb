require_relative '../test_helper'

class ProfileValidationTest < Test::Unit::TestCase
  ERROR_DIR = File.join('tmp', 'errors', 'ProfileValidationTest')
  FIXTURES_DIR = File.join('test', 'fixtures')

  # Cache the US Core IG definitions
  us_core_ig = File.join(FIXTURES_DIR, 'us_core', '*.json')
  PROFILES = {}
  Dir.glob(us_core_ig).each do |definition|
    json = File.read(definition)
    resource = FHIR.from_contents(json)
    PROFILES[resource.url] = resource if resource
  end

  # Create a blank folder for the errors
  FileUtils.rm_rf(ERROR_DIR) if File.directory?(ERROR_DIR)
  FileUtils.mkdir_p ERROR_DIR

  us_core_fixtures = File.join(FIXTURES_DIR, 'us_core_examples', '*.json')
  Dir.glob(us_core_fixtures).each do |example_file|
    example_name = File.basename(example_file, '.json')
    define_method("test_profile_validation_#{example_name}") do
      run_profile_validation(example_file, example_name)
    end
  end

  def run_profile_validation(example_file, example_name)
    json = File.read(example_file)
    resource = FHIR::Json.from_json(json)
    errors = []
    if resource.meta
      # validate against the declared profile
      profile = PROFILES[resource.meta.profile.first]
      profile = FHIR::Definitions.profile(resource.meta.profile.first) unless profile
      assert profile, "Failed to find profile: #{resource.meta.profile.first}"
      errors = profile.validate_resource(resource).select { |res| res.result == :fail }
      errors << "Validated against #{resource.meta.profile.first}" unless errors.empty?
    else
      # validate the base resource
      errors = resource.validate.select {|res| res.result == :fail}
      errors << "Validated against base resource definition" unless errors.empty?
    end
    unless errors.empty?
      File.open("#{ERROR_DIR}/#{example_name}.err", 'w:UTF-8') { |file| file.write(errors.join("\n")) }
      File.open("#{ERROR_DIR}/#{example_name}.json", 'w:UTF-8') { |file| file.write(json) }
    end
    assert errors.empty?, 'Record failed to validate.'
    # check memory
    before = check_memory
    resource = nil
    profile = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_profile_validation_rejects_bad_resource
    definition = FHIR::Definitions.resource_definition('Bundle')
    assert !definition.validates_resource?(String.new), 'Bundle StructureDefinition should reject anything that is not a FHIR::Model.'
    # check memory
    before = check_memory
    definition = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_profile_with_multiple_extensions
    structure_definition_file = File.join(FIXTURES_DIR, 'custom_profiles', 'StructureDefinition-us-core-patient-modified.json')
    # use a modified version of the core patient profile, that changes certain extensions like race and ethnicity from 0..1 to 1..1
    structure_definition_json = JSON.parse(File.read(structure_definition_file))
    profile = FHIR::StructureDefinition.new(structure_definition_json)

    example_name = 'Patient-example.json'
    patient_record = File.join(FIXTURES_DIR, 'us_core_examples', example_name)
    input_json = File.read(patient_record)
    patient = FHIR::Json.from_json(input_json)

    errors = profile.validate_resource(patient)
    assert !errors.empty?, 'Record was expected to fail to validate against modified core profile'
    # check memory
    before = check_memory
    structure_definition_file = nil
    structure_definition_json = nil
    profile = nil
    patient = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end
end
