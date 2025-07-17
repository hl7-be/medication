Extension: BeExtMedicationLineRegistrationStatus
Title: "Medication Line Registration Status"
Description: "This extension indicates the registration status of a medication line, such as whether it is draft, recorded, or entered-in-error."
Context: MedicationStatement
* value[x] only code
* valueCode from BeMedicationLineRegistrationStatusVS (required)



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

