describe FHIR::Validation::MaxLengthValidator do
  let(:validator) { described_class }
  let(:restricted_string) { 'foo' }
  let(:resource) { FHIR::Patient.new(gender: restricted_string) }
  let(:element_definition) { FHIR::ElementDefinition.new(id: 'Patient.gender', path: 'Patient.gender') }

  shared_examples 'max length results' do
    it 'results have validation type :max_length' do
      expect(results).to all(have_attributes(validation_type: :max_length))
    end
  end

  shared_examples 'returns one result' do
    it 'returns one result' do
      expect(results.size).to eq(1)
    end
  end

  shared_context 'with with results for max length' do |max_length|
    let(:results) do
      element_definition.maxLength = max_length
      validator.validate(resource, element_definition)
    end
  end

  context 'when the string is shorter than the maxLength' do
    include_context 'with with results for max length', 10

    include_examples 'returns one result'
    include_examples 'max length results'

    it 'passes' do
      expect(results).to all(have_attributes(result: :pass))
    end
  end

  context 'when the string is longer than the maxLength' do
    include_context 'with with results for max length', 2

    include_examples 'returns one result'
    include_examples 'max length results'

    it 'fails' do
      expect(results).to all(have_attributes(result: :fail))
    end
  end

  context 'when no max length is specified' do
    include_context 'with with results for max length', nil

    it 'returns no results' do
      expect(results).to be_nil
    end
  end
end
