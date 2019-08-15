# fhir_models [![Build Status](https://api.travis-ci.org/fhir-crucible/fhir_models.svg?branch=master)](https://travis-ci.org/fhir-crucible/fhir_models)

FHIR R4 Resource models generated from FHIR StructureDefinitions.

The StructureDefinitions, XML Schemas, and examples are reused from the [HL7 FHIR build tools](https://github.com/HL7/fhir).

### Getting Started
```
$ bundle install
$ bundle exec rake fhir:console
```

### Features
- FHIR R4 Resource Models
- XML and JSON support
- Resource Validation
- Not Supported
  - Primitive Extensions
  - FHIR Comments

### Resource Basics

  Using XML...
  ```ruby
  xml = File.read('patient-example.xml')
  patient = FHIR.from_contents(xml)
  puts patient.to_xml
  ```
  Using JSON...
  ```ruby
  json = File.read('patient-example.json')
  patient = FHIR.from_contents(json)
  puts patient.to_json
  ```

  Creating an `Observation` by hand...
  ```ruby
  obs = FHIR::Observation.new(
    'status' => 'final',
    'code' => {
      'coding' => [{ 'system' => 'http://loinc.org', 'code' => '3141-9', 'display' => 'Weight Measured' }],
      'text' => 'Weight Measured'
    },
    'category' => {
      'coding' => [{ 'system' => 'http://hl7.org/fhir/observation-category', 'code' => 'vital-signs' }]
    },
    'subject' => { 'reference' => 'Patient/example' },
    'context' => { 'reference' => 'Encounter/example' }
  )
  obs.valueQuantity = FHIR::Quantity.new(
    'value' => 185,
    'unit' => 'lbs',
    'code' => '[lb_av]',
    'system' => 'http://unitsofmeasure.org'
  )
  ```

  ### Validation

  Resources can be validated against the definition of a base resource or profile.  All validation methods return a number
  `ValidationResult` instances which represent a validation check performed on an element in the resource.  Results are 
  returned for both passing and failing checks.

  Validation against the base resource definition...
  ```ruby
  patient.valid? # returns true or false
  patient.validate # returns an Array of ValidationResults
  ```

  Validating with a profile or StructureDefinition...
  ```ruby
  sd = FHIR::Definitions.resource_definition('Patient')
  sd.validates_resource?(patient) # passing in FHIR::Patient
  sd.validate_resource(patient) # returns an Array of ValidationResults
  ```

  Validation results can be filtered...
  ```ruby
  # Get cardinality results
  results.select {|res| res.validation_type == :cardinality}

  # Get all failing results
  results.select {|res| res.result == :fail}
  ```

  A customized validator can also be created.

  ```ruby
  sd = FHIR::Definitions.resource_definition('Patient')
  structure_validator = FHIR::Validation::StructureValidator.new(sd)

  # Remove the default element validators
  structure_validator.clear_element_validators

  # Register the cardinality validator
  structure_validator.register_element_validators(FHIR::Validation::CardinalityValidator)

  # Add the default element validators
  structure_validator.add_default_element_validators
  ```

  A custom element validator that implements the `#validate` method can also be supplied in this way.

# License

Copyright 2014-2019 The MITRE Corporation

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
