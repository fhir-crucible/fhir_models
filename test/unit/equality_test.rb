require_relative '../test_helper'

class EqualityTest < Test::Unit::TestCase
  EXAMPLE_ROOT = File.join('lib', 'fhir_models', 'examples')
  ERROR_DIR = File.join('tmp', 'errors', 'EqualityTest')

  # Create a blank folder for the errors
  FileUtils.rm_rf(ERROR_DIR) if File.directory?(ERROR_DIR)
  FileUtils.mkdir_p ERROR_DIR

  # Automatically generate one test method per example file
  example_json_files = File.join(EXAMPLE_ROOT, '**', '*.json')
  example_xml_files = File.join(EXAMPLE_ROOT, '**', '*.xml')

  # Dir.glob(example_json_files).each do |example_file|
  #   example_name = File.basename(example_file, '.json')
  #   define_method("test_equality_#{example_name}_json") do
  #     run_json_equality_test(example_file, example_name)
  #   end
  # end

  # Dir.glob(example_xml_files).each do |example_file|
  #   example_name = File.basename(example_file, '.xml')
  #   define_method("test_equality_#{example_name}_xml") do
  #     run_xml_equality_test(example_file, example_name)
  #   end
  # end

  Dir.glob(example_json_files).each do |example_json_file|
    example_name = File.basename(example_json_file, '.json')
    example_xml_file = File.join(EXAMPLE_ROOT, 'xml', "#{example_name}.xml")
    if File.exist?(example_xml_file) && example_xml_file.include?('structuredefinition-example-composition.xml')
      define_method("test_equality_#{example_name}") do
        run_equality_test(example_json_file, example_xml_file, example_name)
      end
    end
  end

  def run_json_equality_test(example_file, example_name)
    input_json = File.read(example_file)
    instance_a = FHIR::Json.from_json(input_json)
    instance_b = FHIR::Json.from_json(input_json)
    if !instance_a.equals?(instance_b) || !instance_b.equals?(instance_a)
      File.open("#{ERROR_DIR}/#{example_name}.json", 'w:UTF-8') { |file| file.write(input_json) }
    end
    assert instance_a.equals?(instance_b), 'Instance A should be equal to instance B.'
    assert instance_b.equals?(instance_a), 'Instance B should be equal to instance A.'
    # check memory
    before = check_memory
    instance_a = nil
    instance_b = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def run_json_mismatch_test(example_file, example_name)
    input_json = File.read(example_file)
    instance_a = FHIR::Json.from_json(input_json)
    instance_b = FHIR::Json.from_json(input_json)
    unless instance_a.mismatch(instance_b).empty?
      File.open("#{ERROR_DIR}/#{example_name}.json", 'w:UTF-8') { |file| file.write(input_json) }
    end
    assert instance_a.mismatch(instance_b).empty?, 'Instance A should match instance B.'
    # check memory
    before = check_memory
    instance_a = nil
    instance_b = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def run_xml_equality_test(example_file, example_name)
    input_xml = File.read(example_file)
    instance_a = FHIR::Xml.from_xml(input_xml)
    instance_b = FHIR::Xml.from_xml(input_xml)
    if !instance_a.equals?(instance_b) || !instance_b.equals?(instance_a)
      File.open("#{ERROR_DIR}/#{example_name}.xml", 'w:UTF-8') { |file| file.write(input_xml) }
    end
    assert instance_a.equals?(instance_b), 'Instance A should be equal to instance B.'
    assert instance_b.equals?(instance_a), 'Instance B should be equal to instance A.'
    # check memory
    before = check_memory
    instance_a = nil
    instance_b = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def run_equality_test(example_json_file, example_xml_file, example_name)
    omit 'fhir_models does not support primitive extensions' if PRIMITIVE_EXTENSIONS.include?(example_name)
    omit "fhir_models does not support significantly extreme decimal precision." if example_name == 'observation-decimal'
    input_json = File.read(example_json_file)
    input_xml = File.read(example_xml_file)
    instance_json = FHIR::Json.from_json(input_json)
    instance_xml = FHIR::Xml.from_xml(input_xml)
    exclude = ['div', 'meta']
    if !instance_json.equals?(instance_xml, exclude) || !instance_xml.equals?(instance_json, exclude)
      File.open("#{ERROR_DIR}/#{example_name}_json.json", 'w:UTF-8') { |file| file.write(instance_json.to_json) }
      File.open("#{ERROR_DIR}/#{example_name}_xml.json", 'w:UTF-8') { |file| file.write(instance_xml.to_json) }
      File.open("#{ERROR_DIR}/#{example_name}_json.xml", 'w:UTF-8') { |file| file.write(instance_json.to_xml) }
      File.open("#{ERROR_DIR}/#{example_name}_xml.xml", 'w:UTF-8') { |file| file.write(instance_xml.to_xml) }
    end
    assert instance_json.equals?(instance_xml, exclude), 'Instance JSON should be equal to instance XML.'
    assert instance_xml.equals?(instance_json, exclude), 'Instance XML should be equal to instance JSON.'
        # check memory
    before = check_memory
    instance_a = nil
    instance_b = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_mismatch
    x = FHIR::R4::Patient.new('id' => 'foo', 'gender' => 'male')
    y = FHIR::R4::Patient.new('id' => 'foo', 'gender' => 'female')
    misses = x.mismatch(y)
    assert misses.first == 'FHIR::R4::Patient::gender', 'Mismatch did not detect differences.'
    # check memory
    before = check_memory
    x = nil
    y = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end
end
