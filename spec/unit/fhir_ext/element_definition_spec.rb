describe FHIR::ElementDefinition do
  shared_context 'with a choice of type' do
    let(:element_definition) do
      described_class.new(path: 'Patient.deceased[x]', type: [{ code: 'boolean' }, { code: 'dateTime' }])
    end
  end

  shared_context 'with a single type' do
    let(:element_definition) do
      described_class.new(path: 'Patient.deceased', type: [{ code: 'boolean' }])
    end
  end
  describe '#choice_type' do
    context 'with a choice of types' do
      include_context 'with a choice of type'
      it 'indicates there is a choice of type' do
        expect(element_definition.choice_type?).to be true
      end
    end

    context 'with a single type' do
      include_context 'with a single type'
      it 'indicates there is not a choice of types' do
        expect(element_definition.choice_type?).to be false
      end
    end
  end

  describe '#type_code' do
    context 'with a single type' do
      include_context 'with a single type'
      it 'provides the expected type of the element when provided a path' do
        expect(element_definition.type_code('fake.path')).to eq('boolean')
      end

      it 'provides the expected type of the element without a path provided' do
        expect(element_definition.type_code).to eq('boolean')
      end
    end

    context 'with a choice of types' do
      include_context 'with a choice of type'
      it 'provides the correct type from the choices when the first type is provided' do
        expect(element_definition.type_code('Patient.deceasedBoolean')).to eq('boolean')
      end

      it 'provides the correct type from the choices when the second type is provided' do
        expect(element_definition.type_code('Patient.deceasedDateTime')).to eq('dateTime')
      end

      it 'returns an UnknownType exception if path is not provided' do
        expect { element_definition.type_code }.to raise_error(FHIR::UnknownType)
      end

      it 'returns an UnknownType exception if none of the types match' do
        expect { element_definition.type_code('Patient.deceasedBoatLength') }.to raise_error(FHIR::UnknownType,
                                                                                             'No matching types from ["boolean", "dateTime"] for element at Patient.deceasedBoatLength')
      end
    end
  end

  describe '#type_paths' do
    context 'with a single type' do
      include_context 'with a single type'
      it 'returns a single path option' do
        expect(element_definition.type_paths).to eq(['Patient.deceased'])
      end
    end

    context 'with a choice of types' do
      include_context 'with a choice of type'
      it 'returns a path for each type' do
        expect(element_definition.type_paths).to eq(['Patient.deceasedBoolean', 'Patient.deceasedDateTime'])
      end
    end
  end
end
