require_relative '../test_helper'

class HashableTest < Test::Unit::TestCase
  def test_to_hash
    patient = FHIR::Patient.new
    patient_hash = patient.to_hash
    assert patient_hash.is_a?(Hash)
  end

  def test_prune_does_not_modify_hash
    original_hash = {
      a: nil,
      b: [],
      c: {},
      d: [[]],
      e: { a: nil, b: { c: [] }, d: [] }
    }

    original_hash_string = JSON.generate(original_hash)
    resource = FHIR::Patient.new

    resource.send(:prune, original_hash)

    assert JSON.generate(original_hash) == original_hash_string
  end
end
