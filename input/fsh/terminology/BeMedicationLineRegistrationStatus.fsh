
CodeSystem: BeMedicationLineRegistrationStatus
Title: "Medication Line Registration Status"
Description: "This code system defines the registration statuses for medication lines."
* ^experimental = false
* ^caseSensitive = true
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationLineRegistrationStatus"

* #draft "Draft"
* #recorded "Recorded"
* #entered-in-error "Entered in Error"


ValueSet: BeMedicationLineRegistrationStatusVS
Title: "Medication Line Registration Status Value Set"
Description: "This value set includes the registration statuses for medication lines."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationLineRegistrationStatusVS"
* include codes from system BeMedicationLineRegistrationStatus
* ^experimental = false

