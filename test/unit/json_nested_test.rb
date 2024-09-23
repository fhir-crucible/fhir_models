require_relative '../test_helper'

class JsonNestedTest < Test::Unit::TestCase
  def test_nested_in_array
    serialized_array = [FHIR::Patient.new(id: 'foo')].to_json
    deserialized_array = JSON.parse(serialized_array)
    patient = deserialized_array[0]

    assert_equal 'Patient', patient['resourceType']
    assert_equal 'foo', patient['id']
  end

  def test_nested_in_hash
    serialized_hash = { foo: FHIR::Patient.new(id: 'bar') }.to_json
    deserialized_hash = JSON.parse(serialized_hash)
    patient = deserialized_hash['foo']

    assert_equal 'Patient', patient['resourceType']
    assert_equal 'bar', patient['id']
  end
end
