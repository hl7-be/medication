ValueSet: BeMedicationPrescriptionStatusVS
Id:       BeMedicationPrescriptionStatus
Title:    "Medication Prescription Status"
Description: "Medication prescription status codes."
* ^status = #active
* ^experimental = false
* http://hl7.org/fhir/ValueSet/medicationrequest-status#active
* http://hl7.org/fhir/ValueSet/medicationrequest-status#completed
* http://hl7.org/fhir/ValueSet/medicationrequest-status#cancelled
* http://hl7.org/fhir/ValueSet/medicationrequest-status#stopped
* http://hl7.org/fhir/ValueSet/medicationrequest-status#entered-in-error
