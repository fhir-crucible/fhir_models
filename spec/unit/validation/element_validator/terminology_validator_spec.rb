describe FHIR::Validation::TerminologyValidator do
  let(:validator) { described_class.new }

  it 'contains no validators initially' do
    expect(validator.vs_validators).to be_empty
  end

  it 'allows additional validators to be added' do
    vs_validator = { 'foo' => ->(_coding) { true } }
    validator.register_vs_validator(vs_validator.keys.first, vs_validator[vs_validator.keys.first])
    expect(validator.vs_validators).to eq(vs_validator)
  end

  it 'allows validators to be removed' do
    vs_validator = { 'foo' => ->(_coding) { true } }
    validator.register_vs_validator(vs_validator.keys.first, vs_validator[vs_validator.keys.first])
    validator.clear_vs_validators
    expect(validator.vs_validators).to be_empty
  end

  shared_examples 'terminology results' do
    it 'contains terminology results' do
      expect(results).to all(have_attributes(validation_type: :terminology))
    end
  end

  shared_examples 'results status' do |status|
    it 'has the expected result' do
      expect(results).to all(have_attributes(result: status))
    end
  end

  shared_examples 'expected number of results' do |number|
    it 'returns the expected number of results' do
      expect(results.size).to eq(number)
    end
  end

  shared_examples 'result includes text containing' do |text|
    it 'result includes expected text' do
      expect(results).to all(have_attributes(text: a_string_including(text)))
    end
  end

  shared_examples 'code or system missing from element' do |number_of_results, included_text|
    include_examples 'terminology results'
    include_examples 'results status', :warn
    include_examples 'expected number of results', number_of_results
    include_examples 'result includes text containing', included_text
  end

  describe '#validate' do
    let(:element_definition) do
      FHIR::ElementDefinition.new(id: 'Element',
                                  path: 'Element',
                                  binding: { strength: 'required', valueSet: 'foo' },
                                  type: [{ code: 'CodeableConcept' }])
    end

    let(:resource) { FHIR::CodeableConcept.new(coding: { code: 'waldo', system: 'qux' }) }

    let(:results) { validator.validate(resource, element_definition) }

    context 'when the system is missing from the element' do
      let(:resource) { FHIR::CodeableConcept.new(coding: { code: 'waldo' }) }

      include_examples 'code or system missing from element', 1, 'missing system'
    end

    context 'when the code is missing from the element' do
      let(:resource) { FHIR::CodeableConcept.new(coding: { system: 'adsf' }) }

      include_examples 'code or system missing from element', 1, 'missing code'
    end

    context 'when both the code and system are missing from the element' do
      let(:resource) { FHIR::CodeableConcept.new(coding: { text: 'nope' }) }

      include_examples 'code or system missing from element', 2, 'missing'
    end

    context 'when the ValueSet is missing or unknown' do
      it 'warns that the ValueSet validator is missing' do
        expect(results).to include(have_attributes(result: :warn,
                                                   text: a_string_including('Missing Validator for foo')))
      end
    end

    context 'when the CodeSystem is missing or unkown' do
      it 'warns that the CodeSystem validator is missing' do
        expect(results).to include(have_attributes(result: :warn,
                                                   text: a_string_including('Missing Validator for qux')))
      end
    end

    context 'when the code is in the ValueSet' do
      let(:validator) { described_class.new('foo' => ->(_coding) { true }) }

      it 'indicates that the code is in the ValueSet' do
        expect(results).to include(have_attributes(result: :pass,
                                                   text: a_string_including('codings from foo')))
      end
    end

    context 'when the code is missing from the ValueSet' do
      let(:validator) { described_class.new('foo' => ->(_coding) { false }) }

      it 'indicates that the code is in the ValueSet' do
        expect(results).to include(have_attributes(result: :fail,
                                                   text: a_string_including('codings from foo')))
      end
    end

    context 'when the code is in the CodeSystem' do
      let(:validator) { described_class.new('qux' => ->(_coding) { true }) }

      it 'indicates that the code is in the CodeSystem' do
        expect(results).to include(have_attributes(result: :pass,
                                                   text: a_string_including('codings from qux')))
      end
    end

    context 'when the code is missing from the CodeSystem' do
      let(:validator) { described_class.new('qux' => ->(_coding) { false }) }

      it 'indicates that the code is in the ValueSet' do
        expect(results).to include(have_attributes(result: :fail,
                                                   text: a_string_including('codings from qux')))
      end
    end

    context 'when the element is Quantity' do
      let(:resource) { FHIR::Quantity.new(code: 'waldo', system: 'foo') }
      let(:validator) { described_class.new('foo' => ->(_coding) { true }) }
      let(:element_definition) do
        FHIR::ElementDefinition.new(id: 'Element',
                                    path: 'Element',
                                    binding: { strength: 'required', valueSet: 'foo' },
                                    type: [{ code: 'Quantity' }])
      end

      it 'indicates that the code is in the ValueSet' do
        expect(results).to include(have_attributes(result: :pass,
                                                   text: a_string_including('codings from foo')))
      end
    end

    context 'when the element is Coding' do
      let(:resource) { FHIR::Coding.new(code: 'waldo', system: 'foo') }
      let(:validator) { described_class.new('foo' => ->(_coding) { true }) }
      let(:element_definition) do
        FHIR::ElementDefinition.new(id: 'Element',
                                    path: 'Element',
                                    binding: { strength: 'required', valueSet: 'foo' },
                                    type: [{ code: 'Coding' }])
      end

      it 'indicates that the code is in the ValueSet' do
        expect(results).to include(have_attributes(result: :pass,
                                                   text: a_string_including('codings from foo')))
      end
    end
  end
end
