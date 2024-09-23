require_relative '../test_helper'

class XmlValidationTest < Test::Unit::TestCase
  ERROR_DIR = File.join('tmp', 'errors', 'XmlValidationTest')
  EXAMPLE_ROOT = File.join('lib', 'fhir_models', 'examples', 'xml')

  # Automatically generate one test method per example file
  example_files = File.join(EXAMPLE_ROOT, '**', '*.xml')
  raise 'No Example Files Found' if Dir[example_files].empty?

  # Create a blank folder for the errors
  FileUtils.rm_rf(ERROR_DIR) if File.directory?(ERROR_DIR)
  FileUtils.mkdir_p ERROR_DIR

  Dir.glob(example_files).each do |example_file|
    # next unless example_file.include?('valueset-example-expansion.xml')
    example_name = File.basename(example_file, '.xml')
    define_method("test_xml_validation_#{example_name}") do
      run_xml_validation_test(example_file, example_name)
    end
  end

  def run_xml_validation_test(example_file, example_name)
    omit 'fhir_models does not support primitive extensions' if PRIMITIVE_EXTENSIONS.include?(example_name)
    input_xml = File.read(example_file)
    resource = FHIR::Xml.from_xml(input_xml)

    errors = resource.validate
    unless errors.empty?
      File.open("#{ERROR_DIR}/#{example_name}.err", 'w:UTF-8') { |file| file.write(JSON.pretty_unparse(errors)) }
      File.open("#{ERROR_DIR}/#{example_name}.xml", 'w:UTF-8') { |file| file.write(input_xml) }
    end
    assert errors.empty?, 'Resource failed to validate.'
    # check memory
    before = check_memory
    resource = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_xml_is_valid
    filename = File.join(EXAMPLE_ROOT, 'patient-example.xml')
    xml = File.read(filename)
    assert FHIR::Xml.valid?(xml), 'XML failed to schema validate.'
    # check memory
    wait_for_gc
    after = check_memory
    assert_memory({}, after)
  end

  def test_resource_is_valid
    filename = File.join(EXAMPLE_ROOT, 'patient-example.xml')
    xml = File.read(filename)
    resource = FHIR::Xml.from_xml(xml)
    assert resource.valid?, 'Resource failed to validate.'
    # check memory
    before = check_memory
    resource = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end
end
