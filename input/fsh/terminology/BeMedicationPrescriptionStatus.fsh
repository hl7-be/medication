ValueSet: BeMedicationPrescriptionStatusVS
Id:       BeMedicationPrescriptionStatusVS
Title:    "Medication Prescription Status"
Description: "Medication prescription status codes."
* ^status = #active
* ^experimental = false
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationPrescriptionStatusVS"

* http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* http://hl7.org/fhir/CodeSystem/medicationrequest-status#completed
* http://hl7.org/fhir/CodeSystem/medicationrequest-status#cancelled
* http://hl7.org/fhir/CodeSystem/medicationrequest-status#stopped
* http://hl7.org/fhir/CodeSystem/medicationrequest-status#entered-in-error
