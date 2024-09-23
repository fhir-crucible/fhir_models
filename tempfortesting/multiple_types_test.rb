require_relative '../test_helper'

class MultipleTypesTest < Test::Unit::TestCase
  # move this flag around multiple types and assert that it is found in the correct place
  FLAG = 123

  def test_multiple_types
    obs = FHIR::Observation.new

    obs.effectiveDateTime = '2016-04-19'
    assert (obs.effective == obs.effectiveDateTime), 'Observation.effective did not return effectiveDateTime'
    obs.effectiveDateTime = nil

    obs.effectivePeriod = FHIR::Period.new
    assert (obs.effective == obs.effectivePeriod), 'Observation.effective did not return effectivePeriod'

    obs.valueQuantity = FLAG
    assert (obs.value == obs.valueQuantity), 'Observation.value did not return valueQuantity'
    obs.valueQuantity = nil

    obs.valueCodeableConcept = FLAG
    assert (obs.value == obs.valueCodeableConcept), 'Observation.value did not return valueCodeableConcept'
    obs.valueCodeableConcept = nil

    obs.valueString = FLAG
    assert (obs.value == obs.valueString), 'Observation.value did not return valueString'
    obs.valueString = nil

    obs.valueBoolean = FLAG
    assert (obs.value == obs.valueBoolean), 'Observation.value did not return valueBoolean'
    obs.valueBoolean = nil

    obs.valueInteger = FLAG
    assert (obs.value == obs.valueInteger), 'Observation.value did not return valueInteger'
    obs.valueInteger = nil

    obs.valueRange = FLAG
    assert (obs.value == obs.valueRange), 'Observation.value did not return valueRange'
    obs.valueRange = nil

    obs.valueRatio = FLAG
    assert (obs.value == obs.valueRatio), 'Observation.value did not return valueRatio'
    obs.valueRatio = nil

    obs.valueSampledData = FLAG
    assert (obs.value == obs.valueSampledData), 'Observation.value did not return valueSampledData'
    obs.valueSampledData = nil

    obs.valueTime = FLAG
    assert (obs.value == obs.valueTime), 'Observation.value did not return valueTime'
    obs.valueTime = nil

    obs.valueDateTime = FLAG
    assert (obs.value == obs.valueDateTime), 'Observation.value did not return valueDateTime'
    obs.valueDateTime = nil

    obs.valuePeriod = FLAG
    assert (obs.value == obs.valuePeriod), 'Observation.value did not return valuePeriod'

    # check memory
    before = check_memory
    obs = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_non_existing_multiple_types
    obs = FHIR::Observation.new
    assert ((obs.foo rescue FLAG) == FLAG), 'Observation.foo should not exist'
    # check memory
    before = check_memory
    obs = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end

  def test_multiple_cardinality
    obs = FHIR::Observation.new
    FHIR::Observation::METADATA.each do |key, meta|
      if meta['max'] > 1
        value = obs.instance_variable_get("@#{key}".to_sym)
        assert((!value.nil? && value.is_a?(Array) && value.empty?), "Observation.#{key} should be an empty Array.")
      end
    end
    # check memory
    before = check_memory
    obs = nil
    wait_for_gc
    after = check_memory
    assert_memory(before, after)
  end
end
