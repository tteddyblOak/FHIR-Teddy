Instance: NationalPatientLogicalModel
InstanceOf: StructureDefinition
Usage: #definition
Title: "National Patient Logical Model"
Description: "Requirements to register a CHT patient."

* experimental = true
* status = #active
* name = "NationalPatientLogicalModel"
* url = "http://moh.org.bw/fhir/StructureDefinition/NationalPatientLogicalModel"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "http://moh.org.bw/fhir/StructureDefinition/NationalPatientLogicalModel"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Base"
* derivation = #specialization
* fhirVersion = #4.0.1

* mapping[+].identity = "FHIR-R4"
* mapping[=].name = "FHIR Release 4"