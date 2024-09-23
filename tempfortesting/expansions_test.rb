require_relative '../test_helper'

class ExpansionsTest < Test::Unit::TestCase
  def test_expansion
    codes = FHIR::Definitions.get_codes('http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype')
    assert (!codes.nil? && !codes.empty?), 'Expansions did not return expected codes.'
  end

  def test_missing_expansion
    codes = FHIR::Definitions.get_codes('http://projectcrucible.org/nonexisting/valueset')
    assert (codes.nil? || codes.empty?), 'Expansions returned unexpected codes.'
  end
end
