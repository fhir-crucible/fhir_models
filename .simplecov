require 'simplecov'
SimpleCov.command_name 'All Tests'
SimpleCov.start do
  add_filter 'test/'
  add_filter '/spec/'
  add_group 'Library', 'lib'
  add_group 'Validation', 'lib/fhir_models/validation'
  add_group 'FHIR Models', 'lib/fhir_models/fhir/resources'
  add_group 'Generator Files', 'lib/fhir_models/bootstrap'
end

class SimpleCov::Formatter::QualityFormatter
  def format(result)
    SimpleCov::Formatter::HTMLFormatter.new.format(result)
    File.open("coverage/covered_percent", "w") do |f|
      f.puts result.source_files.covered_percent.to_f
    end
  end
end

SimpleCov.formatter = SimpleCov::Formatter::QualityFormatter
