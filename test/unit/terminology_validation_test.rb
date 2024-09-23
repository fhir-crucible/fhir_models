require_relative '../test_helper'

class TerminologyValidationTest < Test::Unit::TestCase

  def test_quantity_validation
    profile = FHIR.from_contents(File.read('test/fixtures/us_core/StructureDefintion-vital-signs.json'))
    resource = FHIR.from_contents(File.read('test/fixtures/invalid_resources/Observation-blood-pressure.json'))

    # Without Terminology Validation
    FHIR::StructureDefinition.clear_all_validates_vs

    errors = profile.validate_resource(resource)
    warnings = profile.warnings.reject{ |w| w.empty? }
    assert warnings.count { |x| x.include? 'http://loinc.org'}.zero?
    assert errors.count { |x| x.include? 'http://hl7.org/fhir/ValueSet/ucum-vitals-common'}.zero?

    # With Terminology Validation
    FHIR::StructureDefinition.validates_vs "http://loinc.org" do |coding|
      false
    end
    FHIR::StructureDefinition.validates_vs "http://hl7.org/fhir/ValueSet/ucum-vitals-common" do |coding|
      false
    end
    errors = profile.validate_resource(resource)
    warnings = profile.warnings.reject{ |w| w.empty? }
    assert warnings.count { |x| x.include? 'http://loinc.org'} == 3
    assert errors.count { |x| x.include? 'http://hl7.org/fhir/ValueSet/ucum-vitals-common'} == 2
  end
end