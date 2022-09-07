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

  def test_from_hash_keeps_empty_fields_in_source
    original_hash = {
      'resourceType' => 'Bundle',
      'entry' => [
        {
          'resource' => { 'resourceType' => 'Patient', 'gender' => '' }
        }
      ]
    }

    bundle = FHIR::Bundle.new(original_hash)
    patient = bundle.entry.first.resource

    assert patient.gender.nil?
    assert patient.source_hash['gender'] == ''
  end
end
