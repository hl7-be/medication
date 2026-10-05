CodeSystem: BeMedicationPrescriptionStatusReason
Id: BeMedicationPrescriptionStatusReason
Title: "Medication Prescription Status Reason"
Description: "Belgian codes for the reason of a medication prescription status, complementing the FHIR medicationrequest-status-reason codes."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationPrescriptionStatusReason"

* #expired "Expired" "The validity period of the prescription has passed without the prescription being (fully) dispensed."
* #prescriber-deceased "Prescriber deceased" "The prescriber was deceased at the time the prescription was issued; the prescription is withdrawn (entered in error)."
* #prescriber-not-licensed "Prescriber not licensed" "The prescriber was not licensed or authorised to practise (e.g. no visa, no registration with the Order, no licence to practise) at the time the prescription was issued; the prescription is withdrawn (entered in error)."


ValueSet: BeMedicationPrescriptionStatusReasonVS
Id: BeMedicationPrescriptionStatusReasonVS
Title: "Medication Prescription Status Reason ValueSet"
Description: "Belgian reasons for the status of a medication prescription. Currently one value, expired. Bound extensible, so the FHIR medicationrequest-status-reason codes and other reasons remain usable."
* ^status = #draft
* ^experimental = false
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationPrescriptionStatusReasonVS"

* include codes from system BeMedicationPrescriptionStatusReason
