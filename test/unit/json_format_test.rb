require_relative '../test_helper'

class JsonFormatTest < Test::Unit::TestCase
  ERROR_DIR = File.join('tmp', 'errors', 'JsonFormatTest')
  ERROR_LOSSY_DIR = File.join('tmp', 'errors', 'JsonLossinessTest')
  EXAMPLE_ROOT = File.join('lib', 'fhir_models', 'examples', 'json')

  # Automatically generate one test method per example file
  example_files = File.join(EXAMPLE_ROOT, '**', '*.json')
  raise 'No Example Files Found' if Dir[example_files].empty?

  # Create a blank folder for the errors
  FileUtils.rm_rf(ERROR_DIR) if File.directory?(ERROR_DIR)
  FileUtils.mkdir_p ERROR_DIR
  FileUtils.rm_rf(ERROR_LOSSY_DIR) if File.directory?(ERROR_LOSSY_DIR)
  FileUtils.mkdir_p ERROR_LOSSY_DIR

  Dir.glob(example_files).each do |example_file|
    example_name = File.basename(example_file, '.json')
    define_method("test_json_format_#{example_name}") do
      run_json_roundtrip_test(example_file, example_name)
    end
    define_method("test_json_xml_json_lossiness_#{example_name}") do
      run_json_xml_json_lossiness_test(example_file, example_name)
    end
  end

  def run_json_roundtrip_test(example_file, example_name)
    input_json = File.read(example_file)
    resource = FHIR::Json.from_json(input_json)
    output_json = resource.to_json

    input_hash = JSON.parse(input_json)
    output_hash = JSON.parse(output_json)

    errors = compare(input_hash, output_hash)

    unless errors.empty?
      File.open("#{ERROR_DIR}/#{example_name}.err", 'w:UTF-8') { |file| file.write(errors.join("\n")) }
      File.open("#{ERROR_DIR}/#{example_name}_PRODUCED.json", 'w:UTF-8') { |file| file.write(output_json) }
      File.open("#{ERROR_DIR}/#{example_name}_ORIGINAL.json", 'w:UTF-8') { |file| file.write(input_json) }
    end

    assert errors.empty?, 'Differences in generated JSON vs original'
    # check memory
    before = check_memory
    resource = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def run_json_xml_json_lossiness_test(example_file, example_name)
    omit 'Skipping slow test fixtures' if SLOW_FIXTURES.include?(example_name)
    input_json = File.read(example_file)
    resource_from_json = FHIR::Json.from_json(input_json)
    output_xml = resource_from_json.to_xml
    resource_from_xml = FHIR::Xml.from_xml(output_xml)
    output_json = resource_from_xml.to_json

    input_hash = JSON.parse(input_json)
    output_hash = JSON.parse(output_json)

    errors = compare(input_hash, output_hash)

    unless errors.empty?
      File.open("#{ERROR_LOSSY_DIR}/#{example_name}.err", 'w:UTF-8') { |file| file.write(errors.join("\n")) }
      File.open("#{ERROR_LOSSY_DIR}/#{example_name}_PRODUCED.xml", 'w:UTF-8') { |file| file.write(output_xml) }
      File.open("#{ERROR_LOSSY_DIR}/#{example_name}_PRODUCED.json", 'w:UTF-8') { |file| file.write(output_json) }
      File.open("#{ERROR_LOSSY_DIR}/#{example_name}_ORIGINAL.json", 'w:UTF-8') { |file| file.write(input_json) }
    end

    assert errors.empty?, 'Differences in generated JSON vs original'
    # check memory
    before = check_memory
    resource_from_json = nil
    resource_from_xml = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def compare(hash_input, hash_output)
    return [hash_input] if hash_output.nil?

    # ignore fhir comments -- we don't support them.
    strip_out_unsupported!(hash_input)
    strip_out_unsupported!(hash_output)

    errors = []

    added = hash_output.keys - hash_input.keys
    errors << "Added extra fields: #{added.join(', ')}" unless added.empty?

    dropped = hash_input.keys - hash_output.keys
    errors << "Dropped fields: #{dropped.join(', ')}" unless dropped.empty?

    shared_keys = hash_input.keys - dropped
    shared_keys.each do |key|
      input = hash_input[key]
      output = hash_output[key]
      if input.is_a?(Array) && !output.is_a?(Array)
        errors << "#{key}:\n - INPUT:  #{input}\n - OUTPUT: #{output}"
        next
      end
      if output.is_a?(Array) && !input.is_a?(Array)
        errors << "#{key}:\n - INPUT:  #{input}\n - OUTPUT: #{output}"
        next
      end
      if input.is_a?(Array)
        input.each_with_index do |item, index|
          item_b = output[index]
          if item.is_a?(Hash)
            errors += compare(item, item_b)
          elsif input != output
            errors << "#{key}[#{index}]: #{input} != #{output}"
          end
        end
        errors << "#{key}:\n - INPUT:  #{input}\n - OUTPUT: #{output}" if input.size != output.size
      elsif input.is_a?(Hash)
        errors += compare(input, output)
      elsif is_a_date_or_time(input) || is_a_date_or_time(output)
        # ignore date time formatting
      elsif input != output
        if input == -1.0e+245
          omit "fhir_models does not support significantly extreme decimal precision."
        else
          errors << "#{key}:\n - INPUT:  #{input}\n - OUTPUT: #{output}"
        end
      end
    end
    errors
  end

  # This method removes fhir_comments and primitive extensions
  # from the hash... we don't support them.
  def strip_out_unsupported!(hash)
    hash.each do |key, value|
      delete_key = false
      # delete fhir_comments and primitive extensions
      if key == 'fhir_comments' || key.start_with?('_')
        delete_key = true
      elsif value.is_a?(Array)
        value.each do |thing|
          strip_out_unsupported!(thing) if thing.is_a?(Hash)
        end
      elsif value.is_a?(Hash)
        strip_out_unsupported!(value)
        delete_key = value.empty?
      end
      hash.delete(key) if delete_key
    end
  end

  def is_a_date_or_time(value)
    return false unless value.is_a?(String)

    %w(date dateTime time).each do |type|
      meta = FHIR::PRIMITIVES[type]
      expression = meta['regex']
      regex = Regexp.new(expression)
      return true unless (regex =~ value).nil?
    end

    # when 'instant'
    regex = /-?[0-9]{4}(-(0[1-9]|1[0-2])(-(0[0-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))))/
    return true unless (regex =~ value).nil?

    false

    # # when 'instant'
    # regex = /-?[0-9]{4}(-(0[1-9]|1[0-2])(-(0[0-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))))/
    # return true if !(regex =~ value).nil?
    # # when 'date'
    # regex = /-?[0-9]{4}(-(0[1-9]|1[0-2])(-(0[0-9]|[1-2][0-9]|3[0-1])))/
    # return true if !(regex =~ value).nil?
    # # when 'datetime'
    # regex = /-?[0-9]{4}(-(0[1-9]|1[0-2])(-(0[0-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\.[0-9]+)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))?)?)?)?/
    # return true if !(regex =~ value).nil?
    # # when 'time'
    # regex = /([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\.[0-9]+)?/
    # return true if !(regex =~ value).nil?
    # false
  end
end
