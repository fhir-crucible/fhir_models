require_relative '../test_helper'

class ExtensionByNameTest < Test::Unit::TestCase
  def test_extension_by_name
    patient = FHIR::Patient.new
    patient.extension << FHIR::Extension.new(url: 'http://projectcrucible.org/extensions/foobar', valueInteger: 42)
    assert ( patient.foobar == 42), 'Method missing did not correctly find the extension value.'
    # check memory
    before = check_memory
    patient = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_modifier_extension_by_name
    patient = FHIR::Patient.new
    patient.modifierExtension << FHIR::Extension.new(url: 'http://projectcrucible.org/extensions/foobar', valueInteger: 42)
    assert ( patient.foobar == 42), 'Method missing did not correctly find the extension value.'
    # check memory
    before = check_memory
    patient = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_extension_by_anchor
    patient = FHIR::Patient.new
    patient.extension << FHIR::Extension.new(url: 'http://projectcrucible.org/extensions/foo#bar', valueInteger: 42)
    assert ( patient.bar == 42), 'Method missing did not correctly find the extension value.'
    # check memory
    before = check_memory
    patient = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_modifier_extension_by_anchor
    patient = FHIR::Patient.new
    patient.modifierExtension << FHIR::Extension.new(url: 'http://projectcrucible.org/extensions/foo#bar', valueInteger: 42)
    assert ( patient.bar == 42), 'Method missing did not correctly find the modifier extension value.'
    # check memory
    before = check_memory
    patient = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_nested_extension_by_name
    patient = FHIR::Patient.new
    patient.extension << FHIR::Extension.new(url: 'http://projectcrucible.org/extensions/foo')
    patient.extension.first.extension << FHIR::Extension.new(url: '#bar', valueInteger: 42)
    assert ( patient.foo.bar == 42), 'Method missing did not correctly find the extension value.'
    # check memory
    before = check_memory
    patient = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_nested_modifier_extension_by_name
    patient = FHIR::Patient.new
    patient.modifierExtension << FHIR::Extension.new(url: 'http://projectcrucible.org/extensions/foo')
    patient.modifierExtension.first.extension << FHIR::Extension.new(url: '#bar', valueInteger: 42)
    assert ( patient.foo.bar == 42), 'Method missing did not correctly find the modifier extension value.'
    # check memory
    before = check_memory
    patient = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end
end
