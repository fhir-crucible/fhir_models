describe FHIR::Validation::StructureValidator do
  let(:profile) { FHIR::StructureDefinition.new(snapshot: { element: elements }) }

  let(:elements) do
    [FHIR::ElementDefinition.new(id: 'Patient',
                                 path: 'Patient',
                                 min: 0,
                                 max: '*'),
     FHIR::ElementDefinition.new(id: 'Patient.extension',
                                 path: 'Patient.extension',
                                 min: 0,
                                 max: '*'),
     FHIR::ElementDefinition.new(id: 'Patient.extension:foo',
                                 path: 'Patient.extension',
                                 sliceName: 'foo',
                                 min: 0,
                                 max: '*',
                                 type: [
                                   { code: 'Extension', profile: ['http://foo.org'] }
                                 ])]
  end

  let(:resource) do
    FHIR::Patient.new(extension: [{ url: 'bar' }, { url: 'http://foo.org' }])
  end

  let(:validator) do
    described_class.new(profile)
  end

  context 'with the default validators' do
    let(:results) { validator.validate(resource) }

    it 'returns cardinality results' do
      expect(results.select { |res| res.validation_type == :cardinality }).not_to be_empty
    end
  end
end
