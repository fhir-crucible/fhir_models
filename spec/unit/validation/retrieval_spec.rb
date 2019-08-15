describe FHIR::Validation::Retrieval do
  let(:retrieval) { described_class }
  let(:resource) do
    FHIR::Patient.new(id: 2,
                      extension: [{ url: 'bar' }, { url: 'http://foo.org' }],
                      name: { given: 'Bob' },
                      communication: [{ language: 'English' }, { language: 'Spanish' }],
                      deceasedBoolean: false,
                      deceasedDateTime: 'YYYY-MM-DD')
  end

  describe '#retrieve_by_element_definition' do
    it 'returns the root element of a resource' do
      element_definition = FHIR::ElementDefinition.new(id: 'Patient', path: 'Patient')
      expect(retrieval.retrieve_by_element_definition(resource, element_definition)).to eq(element_definition.id => resource)
    end

    it 'returns an attribute of element' do
      element_definition = FHIR::ElementDefinition.new(id: 'Patient.id', path: 'Patient.id')
      expect(retrieval.retrieve_by_element_definition(resource, element_definition)).to eq(element_definition.id => resource.id)
    end

    context 'with elements that have a cardinality greater than one' do
      let(:element_definition) { FHIR::ElementDefinition.new(id: 'Patient.communication', path: 'Patient.communication') }

      it 'returns attributes as an array' do
        expect(retrieval.retrieve_by_element_definition(resource, element_definition)).to eq(element_definition.id => resource.communication)
      end

      it 'returns elements indexed' do
        expected_communications = {
          "#{element_definition.id}[0]" => resource.communication.first,
          "#{element_definition.id}[1]" => resource.communication.last
        }
        expect(retrieval.retrieve_by_element_definition(resource, element_definition, indexed: true)).to eq(expected_communications)
      end
    end

    context 'with choice of types' do
      let(:element_definition) do
        FHIR::ElementDefinition.new(id: 'Patient.deceased[x]',
                                    path: 'Patient.deceased[x]',
                                    type: [{ code: 'boolean' }, { code: 'dateTime' }])
      end

      it 'returns all the elements present if there is a choice of type' do
        titlecase_choice = [element_definition.id.gsub('[x]', element_definition.type.first.code.capitalize),
                            element_definition.id.gsub('[x]', "#{element_definition.type.last.code[0].capitalize}#{element_definition.type.last.code[1..-1]}")]
        expected_communications = { titlecase_choice.first => resource.deceasedBoolean, titlecase_choice.last => resource.deceasedDateTime }
        expect(retrieval.retrieve_by_element_definition(resource, element_definition)).to eq(expected_communications)
      end

      it 'returns an array of all the elements present if there is a choice of type normalized to the element' do
        expected_communications = { element_definition.id => [resource.deceasedBoolean, resource.deceasedDateTime] }
        expect(retrieval.retrieve_by_element_definition(resource, element_definition, normalized: true)).to eq(expected_communications)
      end
    end

    context 'with sliced extensions' do
      it 'returns the sliced extension' do
        element_definition = FHIR::ElementDefinition.new(id: 'Patient.extension:foo',
                                                         path: 'Patient.extension',
                                                         sliceName: 'foo',
                                                         type: [{ code: 'Extension', profile: ['http://foo.org'] }])
        expect(retrieval.retrieve_by_element_definition(resource, element_definition)).to eq(element_definition.path => [resource.extension[1]])
      end

      it 'returns the sliced extension indexed' do
        element_definition = FHIR::ElementDefinition.new(id: 'Patient.extension:foo',
                                                         path: 'Patient.extension',
                                                         sliceName: 'foo',
                                                         type: [{ code: 'Extension', profile: ['http://foo.org'] }])
        expect(retrieval.retrieve_by_element_definition(resource, element_definition, indexed: true)).to eq("#{element_definition.path}[1]" => resource.extension[1])
      end
    end
  end

  describe '#retrieve_element_with_fhirpath' do
    let(:element_definition) { FHIR::ElementDefinition.new(id: id, path: path) }

    context 'when retrieving the root element' do
      let(:id) { 'Patient' }
      let(:path) { 'Patient' }

      it 'returns the root element (the resource)' do
        expect(retrieval.retrieve_by_element_definition(resource, element_definition)).to eq(element_definition.id => resource)
      end
    end
  end
end
