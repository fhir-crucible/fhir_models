require_relative '../test_helper'

class XmlFormatTest < Test::Unit::TestCase
  ERROR_DIR = File.join('tmp', 'errors', 'XmlFormatTest')
  ERROR_LOSSY_DIR = File.join('tmp', 'errors', 'XmlLossinessTest')
  EXAMPLE_ROOT = File.join('lib', 'fhir_models', 'examples', 'xml')

  # Automatically generate one test method per example file
  example_files = File.join(EXAMPLE_ROOT, '**', '*.xml')
  raise 'No Examples Found' if Dir[example_files].empty?

  # Create a blank folder for the errors
  FileUtils.rm_rf(ERROR_DIR) if File.directory?(ERROR_DIR)
  FileUtils.mkdir_p ERROR_DIR
  FileUtils.rm_rf(ERROR_LOSSY_DIR) if File.directory?(ERROR_LOSSY_DIR)
  FileUtils.mkdir_p ERROR_LOSSY_DIR

  Dir.glob(example_files).each do |example_file|
    example_name = File.basename(example_file, '.xml')
    define_method("test_xml_format_#{example_name}") do
      run_xml_roundtrip_test(example_file, example_name)
    end
    define_method("test_xml_json_xml_lossiness_#{example_name}") do
      run_xml_json_xml_lossiness_test(example_file, example_name)
    end
  end

  def run_xml_roundtrip_test(example_file, example_name)
    omit 'Skipping slow test fixtures' if SLOW_FIXTURES.include?(example_name)
    input_xml = File.read(example_file)
    resource = FHIR::Xml.from_xml(input_xml)
    output_xml = resource.to_xml

    input_nodes = Nokogiri::XML(input_xml)
    output_nodes = Nokogiri::XML(output_xml)

    clean_nodes(input_nodes.root)
    clean_nodes(output_nodes.root)

    errors = calculate_errors(input_nodes, output_nodes)
    unless errors.empty?
      File.open("#{ERROR_DIR}/#{example_name}.err", 'w:UTF-8') { |file| file.write(errors.map { |x| "#{x.first} #{x.last.to_xml}" }.join("\n")) }
      File.open("#{ERROR_DIR}/#{example_name}_PRODUCED.xml", 'w:UTF-8') { |file| file.write(output_xml) }
      File.open("#{ERROR_DIR}/#{example_name}_ORIGINAL.xml", 'w:UTF-8') { |file| file.write(input_xml) }
    end

    assert errors.empty?, 'Differences in generated XML vs original'
    # check memory
    before = check_memory
    resource = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def run_xml_json_xml_lossiness_test(example_file, example_name)
    omit 'Skipping slow test fixtures' if SLOW_FIXTURES.include?(example_name)
    input_xml = File.read(example_file)
    resource_from_xml = FHIR::Xml.from_xml(input_xml)
    output_json = resource_from_xml.to_json
    resource_from_json = FHIR::Json.from_json(output_json)
    output_xml = resource_from_json.to_xml

    input_nodes = Nokogiri::XML(input_xml)
    output_nodes = Nokogiri::XML(output_xml)

    clean_nodes(input_nodes.root)
    clean_nodes(output_nodes.root)

    errors = calculate_errors(input_nodes, output_nodes)
    unless errors.empty?
      File.open("#{ERROR_LOSSY_DIR}/#{example_name}.err", 'w:UTF-8') { |file| file.write(errors.map { |x| "#{x.first} #{x.last.to_xml}" }.join("\n")) }
      File.open("#{ERROR_LOSSY_DIR}/#{example_name}_PRODUCED.xml", 'w:UTF-8') { |file| file.write(output_xml) }
      File.open("#{ERROR_LOSSY_DIR}/#{example_name}_ORIGINAL.xml", 'w:UTF-8') { |file| file.write(input_xml) }
    end

    assert errors.empty?, 'Differences in generated XML vs original'
    # check memory
    before = check_memory
    resource_from_xml = nil
    resource_from_json = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def calculate_errors(input_nodes, output_nodes)
    errors = input_nodes.diff(output_nodes, added: true, removed: true).to_a
    errors.keep_if do |error|
      # we do not support the preservation of comments, ignore them
      is_comment = (error.last.class == Nokogiri::XML::Comment)
      # we do not care about empty whitespace
      is_empty_text = (error.last.class == Nokogiri::XML::Text && error.last.text.strip == '')
      !(is_comment || is_empty_text)
    end
    # we do not care about preservation of trailing zeros
    # on numbers. Remove things from the error list like "1.5" != "1.50"
    left = []
    right = []
    errors.each do |error|
      if error.first == '-'
        left << error
      else
        right << error
      end
    end
    regex = /-?([0]|([1-9][0-9]*))(\\.[0-9]+)?/
    left.each_with_index do |error, index|
      right_error = right[index]
      two_numerics = ((error.last.value =~ regex) && (right_error.last.value =~ regex))
      if two_numerics && (error.last.value.to_f == right_error.last.value.to_f)
        errors.delete(error)
        errors.delete(right_error)
      end
    end
    # return the remaining errors
    errors
  end

  # process input to remove leading and trailing newlines and whitespace around text
  def clean_nodes(node)
    node.children.each do |child|
      child.content = child.content.strip if child.is_a?(Nokogiri::XML::Text)
      if child.has_attribute?('value')
        # remove all the children -- these will be primitive extensions which we do not support.
        child.children = ''
      end
      clean_nodes(child) unless child.children.empty?
    end
  end
end
