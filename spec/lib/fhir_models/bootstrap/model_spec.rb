RSpec.describe 'FHIR::Model' do
  describe '#hash' do
    it 'should be the same for two identical fhir models' do
      attributes = {
        name: [
          family: ['Smith']
        ]
      }
      patient1 = FHIR::Patient.new(attributes)
      patient2 = FHIR::Patient.new(attributes)
      expect(patient1.hash).to eq patient2.hash
    end

    it 'should be different for two models that do not have the same attributes' do
      attributes1 = {
        name: [
          family: ['Smith']
        ]
      }
      attributes2 = {
        name: [
          family: ['Jones']
        ]
      }
      patient1 = FHIR::Patient.new(attributes1)
      patient2 = FHIR::Patient.new(attributes2)
      expect(patient1.hash).not_to eq patient2.hash
    end
  end

  describe '#== (alias: eql?)' do
    it 'should be true for two identical fhir models' do
      attributes = {
        name: [
          family: ['Smith']
        ]
      }
      patient1 = FHIR::Patient.new(attributes)
      patient2 = FHIR::Patient.new(attributes)
      expect(patient1).to eq patient2
      expect(patient1).to eql patient2
    end

    it 'should be false for two models that do not have the same attributes' do
      attributes1 = {
        name: [
          family: ['Smith']
        ]
      }
      attributes2 = {
        name: [
          family: ['Jones']
        ]
      }
      patient1 = FHIR::Patient.new(attributes1)
      patient2 = FHIR::Patient.new(attributes2)
      expect(patient1).not_to eq patient2
      expect(patient1).not_to eql patient2
    end

    it 'should be false when compared to a different class' do
      attributes1 = {
        name: [
          family: ['Smith']
        ]
      }
      patient1 = FHIR::Patient.new(attributes1)
      patient2 = 'patient 2'
      expect(patient1).not_to eq patient2
      expect(patient1).not_to eql patient2
    end

    it 'should be false when compared to nil' do
      attributes1 = {
        name: [
          family: ['Smith']
        ]
      }
      patient1 = FHIR::Patient.new(attributes1)
      expect(patient1).not_to eq nil
      expect(patient1).not_to be_nil
    end
  end
end
