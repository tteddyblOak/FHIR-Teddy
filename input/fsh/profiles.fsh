Profile: SimplePatientProfile
Parent: Patient
Id: simple-patient-profile
Title: "Simple Patient Profile"
Description: "A simple FHIR Patient profile with additional data elements and extensions."

* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS
* birthDate 1..1 MS
* gender 1..1 MS
