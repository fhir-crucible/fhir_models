describe FHIR::Validation::CardinalityValidator do
  let(:validator) { described_class }

  let(:resource) do
    FHIR::Patient.new
  end

  describe '#validate' do
    let(:element_definition) do
      FHIR::ElementDefinition.new(min: 0,
                                  max: 1,
                                  id: 'Patient',
                                  path: 'Patient')
    end

    it 'skips cardinality on the root element' do
      results = validator.validate(resource, element_definition)
      expect(results).to be_nil
    end

    scenarios = { '0..1' => { 'with a single element' => :pass, 'with no elements' => :pass, 'with multiple elements' => :fail },
                  '0..*' => { 'with a single element' => :pass, 'with no elements' => :pass, 'with multiple elements' => :pass },
                  '1..1' => { 'with a single element' => :pass, 'with no elements' => :fail, 'with multiple elements' => :fail },
                  '1..*' => { 'with a single element' => :pass, 'with no elements' => :fail, 'with multiple elements' => :pass } }

    scenarios.each do |cardinality, number_of_elements_scenario|
      number_of_elements_scenario.each do |number_of_elements, expected_result|
        context "when the cardinality is #{cardinality[0]}..#{cardinality[-1]} and the element contains #{number_of_elements}" do
          let(:element_definition) do
            FHIR::ElementDefinition.new(min: cardinality[0],
                                        max: cardinality[-1],
                                        id: 'Patient.id',
                                        path: 'Patient.id')
          end

          let(:id) do
            case number_of_elements
            when 'with a single element'
              'the id'
            when 'with no elements'
              nil
            when 'with multiple elements'
              [1, 2]
            end
          end

          let(:results) do
            resource.id = id
            validator.validate(resource, element_definition)
          end

          it 'includes one result' do
            expect(results.size).to eq(1)
          end

          it 'all results have a validation_type of cardinality' do
            expect(results).to all(have_attributes(validation_type: :cardinality))
          end

          it "the result status is #{expected_result}" do
            expect(results).to all(have_attributes(result: expected_result))
          end
        end
      end
    end
  end
end
