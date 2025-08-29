CodeSystem: CSMaritalStatus
Id: cs-marital-status
Title: "Marital Status"
Description: "A list of codes for marital status."

* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* #Other "Other"

ValueSet: VSMaritalStatus
Id: vs-marital-status
Title: "Marital Status"
Description: "A list of codes for marital status."
* ^experimental = true
* ^status = #active
* include codes from system CSMaritalStatus