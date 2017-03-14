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
    errors = resource.validate
    unless errors.empty?
      File.open("#{ERROR_DIR}/#{example_name}.err", 'w:UTF-8') { |file| file.write(JSON.pretty_unparse(errors)) }
      File.open("#{ERROR_DIR}/#{example_name}.json", 'w:UTF-8') { |file| file.write(input_json) }
    end
    assert errors.empty?, 'Resource failed to validate.'
    # check memory
    before = check_memory
    resource = nil
    wait_for_gc
    after = check_memory
    unless after.empty?
      puts "BEFORE GC: #{before}"
      puts "AFTER GC: #{after}"
    end
    assert after.empty?, 'Garbage collection missed FHIR Models.'
  end
end
