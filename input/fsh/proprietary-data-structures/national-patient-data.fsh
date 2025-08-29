Instance: NationalPatientLogicalModel
InstanceOf: StructureDefinition
Usage: #definition
Title: "National Patient Logical Model"
Description: "Requirements to register a CHT patient."

* experimental = true
* status = #active
* name = "NationalPatientLogicalModel"
* url = "http://moh.bw.org/fhir/StructureDefinition/NationalPatientLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "http://moh.bw.org/fhir/StructureDefinition/NationalPatientLogicalModel"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Base"
* derivation = #specialization
* fhirVersion = #4.0.1

* mapping[+].identity = "FHIR-R4"
* mapping[=].name = "FHIR Release 4"

* differential.element[+].id = "NationalPatientLogicalModel"
* differential.element[=].path = "NationalPatientLogicalModel"
* differential.element[=].definition = "A sample data dictionary describing the National Patient message structure."
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "."

* differential.element[+].id = "NationalPatientLogicalModel.name"
* differential.element[=].path = "NationalPatientLogicalModel.name"
* differential.element[=].short = "Full Name"
* differential.element[=].definition = "Patient full name"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.name.text"
* differential.element[=].isSummary = true

* differential.element[+].id = "NationalPatientLogicalModel.ethnicity"
* differential.element[=].path = "NationalPatientLogicalModel.ethnicity"
* differential.element[=].short = "Ethnicity"
* differential.element[=].definition = "Patient ethnicity"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.ethnicity.text"
* differential.element[=].isSummary = true

* differential.element[+].id = "NationalPatientLogicalModel.race"
* differential.element[=].path = "NationalPatientLogicalModel.race"
* differential.element[=].short = "Race"
* differential.element[=].definition = "Patient race"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.race.text"
* differential.element[=].isSummary = true

* differential.element[+].id = "NationalPatientLogicalModel.PlaceOfBirth"
* differential.element[=].path = "NationalPatientLogicalModel.PlaceOfBirth"
* differential.element[=].short = "Place of Birth"
* differential.element[=].definition = "Patient place of birth"
* differential.element[=].type.code = #string
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.birthPlace.text"
* differential.element[=].isSummary = true