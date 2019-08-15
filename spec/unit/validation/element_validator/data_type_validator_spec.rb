describe FHIR::Validation::DataTypeValidator do
  let(:validator) { described_class }

  let(:resource) do
    FHIR::Patient.new(id: 2,
                      name: { given: 'Bob' },
                      communication: [{ language: 'English' }, { language: 'Spanish' }],
                      deceasedBoolean: false,
                      deceasedDateTime: 'YYYY-MM-DD')
  end

  shared_context 'with results' do
    let(:results) { validator.validate(resource, element_definition) }
  end

  shared_examples 'data type result' do
    it 'returns at least one result' do
      expect(results).not_to be_empty
    end

    it 'returns no failing results' do
      expect(results.select { |res| res.result == :fail }).to be_empty
    end
  end

  shared_examples 'cardinality results' do
    it 'returns cardinality results' do
      expect(results.select { |res| res.validation_type == :cardinality }).not_to be_empty
    end
  end

  describe '#validate' do
    let(:element_definition) do
      FHIR::ElementDefinition.new(id: 'Patient',
                                  path: 'Patient',
                                  type: { code: 'Patient' })
    end

    include_context 'with results'

    it 'skips the root element' do
      results = validator.validate(resource, element_definition)
      expect(results).to be_nil
    end

    context 'with a valid element with a single type' do
      let(:element_definition) do
        FHIR::ElementDefinition.new(id: 'Patient.name',
                                    path: 'Patient.name',
                                    type: { code: 'HumanName' })
      end

      include_examples 'data type result'
      include_examples 'cardinality results'
    end

    context 'when the type of the element is unknown' do
      let(:element_definition) do
        FHIR::ElementDefinition.new(id: 'Patient.name',
                                    path: 'Patient.name',
                                    type: { code: 'Foo' })
      end

      include_context 'with results'

      include_examples 'data type result'

      it 'returns results with warnings' do
        expect(results).to all(have_attributes(result: :warn))
      end

      it 'lists the unknown type' do
        expect(results.first).to have_attributes(text: 'Unknown type: Foo')
      end
    end

    context 'with an element that has a choice of types' do
      let(:resource) do
        obs = FHIR::Observation.new(valueQuantity: { value: 2, code: 'mm' })
        obs.valueCodeableConcept = FHIR::CodeableConcept.new(coding: { code: 'foo', system: 'bar' }, text: 'fake')
        obs
      end

      let(:element_definition) do
        FHIR::ElementDefinition.new(id: 'Observation.value[x]',
                                    path: 'Observation.value[x]',
                                    type: types)
      end

      let(:results) { validator.validate(resource, element_definition) }

      let(:type1) { { code: 'Quantity' } }

      let(:type2) { { code: 'CodeableConcept' } }

      let(:types) do
        [type1, type2]
      end

      include_context 'with results'

      include_examples 'data type result'
      include_examples 'cardinality results'

      it 'includes results for the first type' do
        expect(results).to include(have_attributes(element_path: a_string_including(element_definition.type[0].code)))
      end

      it 'includes results for the second type' do
        expect(results).to include(have_attributes(element_path: a_string_including(element_definition.type[1].code)))
      end
    end
  end
end
