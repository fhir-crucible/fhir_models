require_relative '../test_helper'

class EachElementTest < Test::Unit::TestCase
  def setup
    @patient = FHIR::Patient.new(
      id: 'ID',
      name: [
        {
          use: 'maiden',
          text: 'Jane Jill Roe',
          family: 'Roe',
          given: ['Jane', 'Jill']
        },
        {
          use: 'official',
          text: 'Jane Roe Doe',
          family: 'Doe',
          given: ['Jane', 'Roe']
        }
      ],
      extension: [
        {
          url: 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race',
          extension: [
            {
              url: 'ombCategory',
              valueCoding:
                {
                  system: 'urn:oid:2.16.840.1.113883.6.238',
                  code: '1002-5'
                }
            }
          ]
        }
      ]
    )
  end

  def test_all_elements_reached
    expected_paths = [
      'id',
      'extension[0]',
      'extension[0].extension[0]',
      'extension[0].extension[0].url',
      'extension[0].extension[0].valueCoding',
      'extension[0].extension[0].valueCoding.system',
      'extension[0].extension[0].valueCoding.code',
      'extension[0].url',
      'name[0]',
      'name[0].use',
      'name[0].text',
      'name[0].family',
      'name[0].given[0]',
      'name[0].given[1]',
      'name[1]',
      'name[1].use',
      'name[1].text',
      'name[1].family',
      'name[1].given[0]',
      'name[1].given[1]'
    ]

    paths_reached = []
    @patient.each_element { |_, _, path| paths_reached << path }

    assert_equal expected_paths, paths_reached
  end

  def test_metadata_received
    @patient.each_element { |_, metadata, _| assert metadata.is_a? Hash }
  end

  def test_values_received
    expected_values = [
      'ID',
      'maiden',
      'Jane Jill Roe',
      'Roe',
      'Jane',
      'Jill',
      'official',
      'Jane Roe Doe',
      'Doe',
      'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race',
      'ombCategory',
      'urn:oid:2.16.840.1.113883.6.238',
      '1002-5'
    ]

    values_received = []
    @patient.each_element { |value, _, _| values_received << value }

    expected_values.each { |value| assert values_received.include?(value), "#each_element did not see: #{value}" }

    human_names = values_received.select { |value| value.is_a?(FHIR::HumanName) }
    assert_equal 2, human_names.length, '#each_element did not see two HumanNames'

    extensions = values_received.select { |value| value.is_a?(FHIR::Extension) }
    assert_equal 2, extensions.length, '#each_element did not see two Extensions'

    assert values_received.one? { |value| value.is_a?(FHIR::Coding) }, '#each_element did not see one Coding'
  end

  def test_return_value
    assert_equal @patient, @patient.each_element { |_, _, path| path }
  end
end
