describe FHIR::Validation::FixedValueValidator do
  let(:validator) { described_class }

  let(:fixed_value) { '867-5309' }

  let(:element) { FHIR::Patient.new(gender: fixed_value) }

  let(:id_and_path) { 'Patient.gender' }

  let(:element_definition) do
    FHIR::ElementDefinition.new(id: 'Patient.gender',
                                path: 'Patient.gender',
                                type: [{ code: 'String' }])
  end

  shared_examples 'fixed value results' do
    expect(results).to all(have_attributes(validation_type: :fixed_value))
  end

  describe '#validate' do
    context 'when the fixed string matches' do
      let(:element_definition) do
        FHIR::ElementDefinition.new(id: id_and_path,
                                    path: id_and_path,
                                    type: [{ code: 'String' }],
                                    fixedString: fixed_value)
      end

      let(:results) { validator.validate(element, element_definition) }

      it 'the validation passes' do
        expect(results).to all(have_attributes(result: :pass))
      end
    end

    context 'when the fixed string does not match' do
      let(:element_definition) do
        FHIR::ElementDefinition.new(id: id_and_path,
                                    path: id_and_path,
                                    type: [{ code: 'String' }],
                                    fixedString: 'INVALID_FIXED')
      end

      let(:results) { validator.validate(element, element_definition) }

      it 'the validation fails' do
        expect(results).to all(have_attributes(result: :fail))
      end
    end
  end
end
