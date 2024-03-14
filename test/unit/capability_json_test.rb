require_relative '../test_helper'

class CapJsonTest < Test::Unit::TestCase
  def test_failing_capability_json
    json = File.read('bad_capability.json')
    cap = FHIR.from_contents(json)
    puts "json: " + cap.to_json
    assert cap.valid?
  end
end