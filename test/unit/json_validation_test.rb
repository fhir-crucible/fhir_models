require_relative '../test_helper'

class JsonValidationTest < Test::Unit::TestCase
  ERROR_DIR = File.join('tmp', 'errors', 'JsonValidationTest')
  EXAMPLE_ROOT = File.join('lib', 'fhir_models', 'examples', 'json')

  # Automatically generate one test method per example file
  example_files = File.join(EXAMPLE_ROOT, '**', '*.json')
  raise 'No Examples Found' if Dir[example_files].empty?

  # Create a blank folder for the errors
  FileUtils.rm_rf(ERROR_DIR) if File.directory?(ERROR_DIR)
  FileUtils.mkdir_p ERROR_DIR

  Dir.glob(example_files).each do |example_file|
    example_name = File.basename(example_file, '.json')
    define_method("test_json_validation_#{example_name}") do
      run_json_validation_test(example_file, example_name)
    end
  end

  def run_json_validation_test(example_file, example_name)
    input_json = File.read(example_file)
    resource = FHIR::Json.from_json(input_json)
    errors = resource.validate.select {|res| res.result == :fail}
    unless errors.empty?
      File.open("#{ERROR_DIR}/#{example_name}.err", 'w:UTF-8') do |file|
        errors.each do |error|
          file.write("Validation Type: #{error.validation_type}. Element Path: #{error.element_path}. Message: #{error.text} \n")
        end
      end
    end
    assert errors.empty?, "Resource failed to validate: #{errors}"
    # check memory
    before = check_memory
    resource = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end
end
