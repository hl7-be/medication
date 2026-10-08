CodeSystem: BeMedicationPrescriptionStatusReason
Id: BeMedicationPrescriptionStatusReason
Title: "Medication Prescription Status Reason"
Description: "Belgian codes for the reason of a medication prescription status, complementing the FHIR medicationrequest-status-reason codes."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationPrescriptionStatusReason"

* #expired "Expired" "The validity period of the prescription has passed without the prescription being (fully) dispensed."
* #prescriber-deceased "Prescriber deceased" "The prescriber was deceased at the time the prescription was issued."
* #prescriber-not-authorized "Prescriber not authorized" "The prescriber was not licensed or authorized to practise (e.g. no visa, no registration with the Order, no licence to practise) at the time the prescription was issued."


ValueSet: BeMedicationPrescriptionStatusReasonVS
Id: BeMedicationPrescriptionStatusReasonVS
Title: "Medication Prescription Status Reason ValueSet"
Description: "Reasons for the status of a medication prescription: the Belgian codes (expired, prescriber deceased, prescriber not authorized) and a selection of the FHIR medicationrequest-status-reason codes (drug level too high, patient not available, pregnancy, suspected intolerance). Bound extensible, so other reasons remain usable."
* ^status = #draft
* ^experimental = false
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationPrescriptionStatusReasonVS"

* include codes from system BeMedicationPrescriptionStatusReason
* http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason#drughigh
* http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason#non-avail
* http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason#preg
* http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason#sintol

