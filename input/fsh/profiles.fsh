Profile: NationalityPatientProfile
Parent: Patient
Id: nationality-patient-profile
Title: "Nationality Patient Profile"
Description: "Basic patient profile with demographic and nationality information"

* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS

* birthDate 1..1 MS
* gender 1..1 MS

* address 1..* MS
* maritalStatus from VSMaritalStatus (extensible)

Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode

// Birth Registration Profile
Profile: BirthRegistrationProfile
Parent: Patient
Id: birth-registration-profile
Title: "Birth Registration Profile"
Description: "Profile for recording birth registration information"

* identifier 2..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains
    birthCertificate 1..1 MS and
    registrationNumber 1..1 MS

* identifier[birthCertificate].system = "http://civil-reg/birth-cert" (exactly)
* identifier[birthCertificate].value 1..1

* identifier[registrationNumber].system = "http://civil-reg/reg-num" (exactly)
* identifier[registrationNumber].value 1..1

* name 1..* MS
* name.given 1..* MS
* name.family 1..1 MS

* birthDate 1..1 MS
* gender 1..1 MS

* address 1..1 MS
* address.city 1..1 MS

// Extension for registration date
* extension contains
    registrationDate named regDate 1..1 MS

// Death Registration Profile
Profile: DeathRegistrationProfile
Parent: Patient
Id: death-registration-profile
Title: "Death Registration Profile"
Description: "Profile for recording death registration information"

* identifier 2..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains
    deathCertificate 1..1 MS and
    registrationNumber 1..1 MS

* identifier[deathCertificate].system = "http://civil-reg/death-cert" (exactly)
* identifier[deathCertificate].value 1..1

* deceased[x] 1..1 MS
* deceasedDateTime 1..1 MS

* extension contains
    occupation named occupation 0..1 MS and
    registrationDate named regDate 1..1 MS

// Related Person Profile for Parents
Profile: ParentRelatedPerson
Parent: RelatedPerson
Id: parent-related-person
Title: "Parent RelatedPerson Profile"
Description: "Profile for recording parent information in birth registration"

* patient 1..1 MS
* relationship 1..1 MS
* relationship from http://terminology.hl7.org/ValueSet/v3-RoleCode
* name 1..1 MS
* name.given 1..* MS
* name.family 1..1 MS

// Extensions
Extension: registrationDate
Id: registration-date
Title: "Registration Date"
Description: "Date when the event was registered"
* value[x] only dateTime

Extension: occupation
Id: occupation
Title: "Occupation"
Description: "The person's occupation"
* value[x] only string