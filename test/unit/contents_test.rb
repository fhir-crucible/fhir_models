require_relative '../test_helper'

class ContentsTest < Test::Unit::TestCase
  EXAMPLE_JSON = File.join('lib', 'fhir_models', 'examples', 'json', 'patient-example.json')
  EXAMPLE_XML  = File.join('lib', 'fhir_models', 'examples', 'xml', 'patient-example.xml')

  def test_xml_from_contents
    xml = File.read(EXAMPLE_XML)
    patient = FHIR.from_contents(xml)
    assert !patient.nil?, 'From contents did not succeed with XML.'
    assert patient.id == 'example', 'Patient did not deserialize correctly.'
    # check memory
    before = check_memory
    patient = nil
    wait_for_gc
    after = check_memory
    unless after.empty?
      puts "BEFORE GC: #{before}"
      puts "AFTER GC: #{after}"
    end
    assert after.empty?, 'Garbage collection missed FHIR Models.'
  end

  def test_json_from_contents
    json = File.read(EXAMPLE_JSON)
    patient = FHIR.from_contents(json)
    assert !patient.nil?, 'From contents did not succeed with JSON.'
    assert patient.id == 'example', 'Patient did not deserialize correctly.'
    # check memory
    before = check_memory
    patient = nil
    wait_for_gc
    after = check_memory
    unless after.empty?
      puts "BEFORE GC: #{before}"
      puts "AFTER GC: #{after}"
    end
    assert after.empty?, 'Garbage collection missed FHIR Models.'
  end

  def test_to_reference
    json = File.read(EXAMPLE_JSON)
    patient = FHIR.from_contents(json)
    reference = patient.to_reference
    assert reference.is_a?(FHIR::Reference), 'Resource unable to create a self-reference.'
    assert reference.reference == 'Patient/example', 'Resource did not generate self-reference correctly.'
    # check memory
    before = check_memory
    patient = nil
    reference = nil
    wait_for_gc
    after = check_memory
    unless after.empty?
      puts "BEFORE GC: #{before}"
      puts "AFTER GC: #{after}"
    end
    assert after.empty?, 'Garbage collection missed FHIR Models.'
  end

  def test_negative_json_contents
    nothing = FHIR.from_contents('{}')
    assert nothing.nil?, 'From contents should have returned nil.'
  end

  def test_negative_xml_contents
    nothing = FHIR.from_contents('<?xml version="1.0" encoding="UTF-8"?><Nothing/>')
    assert nothing.nil?, 'From contents should have returned nil.'
  end
end
