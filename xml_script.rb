require 'nokogiri'
require_relative 'lib/fhir_models'

# Function to read XML from a file
def my_read_xml(file_path)
  puts "Attempting to read file: #{file_path}"
  unless File.exist?(file_path)
    raise "File not found: #{file_path}"
  end
  xml_content = File.read(file_path)
  puts "File contents read successfully."
  puts "File contents:\n#{xml_content}"
  xml_content
end
# Function to perform some operations on the XML document
def my_process_xml(doc)
  # Example operation: Add a new element to the root
  resource = FHIR::from_contents(doc)
  resource.to_xml
end
# Function to write XML to a file
def my_write_xml(doc, file_path)
  File.open(file_path, 'w') { |file| file.write(doc) }
end
# Main script
script_dir = File.dirname(__FILE__)
input_file = 'temp_patient.xml'
output_file = File.join(script_dir, 'temp_patient2.xml')
# Check if input file exists
puts "File found" if File.exist?(input_file)
unless File.exist?(input_file)
  puts "Input file not found: #{input_file}"
  exit 1
end
# Read the XML file
xml_doc = my_read_xml(input_file)
# Process the XML document
resource_xml = my_process_xml(xml_doc)
# Write the modified XML back to a file
my_write_xml(resource_xml, output_file)
puts "XML processing complete. Output written to #{output_file}"