
CodeSystem: BeMedicationLineRegistrationStatus
Title: "Medication Line Registration Status"
Description: "This code system defines the registration statuses for medication lines."
* ^experimental = false
* ^caseSensitive = true

* #draft "Draft"
* #recorded "Recorded"
* #entered-in-error "Entered in Error"


ValueSet: BeMedicationLineRegistrationStatusVS
Title: "Medication Line Registration Status Value Set"
Description: "This value set includes the registration statuses for medication lines."
* include codes from system BeMedicationLineRegistrationStatus
* ^experimental = false

