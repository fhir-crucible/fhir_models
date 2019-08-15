describe FHIR::Model do
  describe '#retrieve_elements_by_definition' do
    let(:resource) do
      FHIR::Patient.new(id: 2,
                        extension: [{ url: 'bar' }, { url: 'http://foo.org' }],
                        name: { given: 'Bob' },
                        communication: [{ language: 'English' }, { language: 'Spanish' }],
                        deceasedBoolean: false,
                        deceasedDateTime: 'YYYY-MM-DD')
    end

    let(:element_definition) { FHIR::ElementDefinition.new(id: 'Patient', path: 'Patient') }

    it 'delegates to the retriever module' do
      allow(FHIR::Validation::Retrieval).to receive(:retrieve_by_element_definition)
      resource.retrieve_elements_by_definition(element_definition)
      expect(FHIR::Validation::Retrieval).to have_received(:retrieve_by_element_definition).with(resource, element_definition, hash_including(indexed: false, normalized: false))
    end
  end
end
