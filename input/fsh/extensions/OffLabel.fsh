Extension: BeExtOffLabel
Title:     "MedicationRequest - Off-label use"
Description: "Indicates that the order placer has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product."
Context: MedicationRequest, MedicationStatement

* extension contains
    isOffLabelUse 1..1 and
    reason 0..*
* extension[isOffLabelUse].value[x] only boolean
* extension[isOffLabelUse] ^short = "Indicates that the recommended dosage was overridden. Must be 'true' when .reason is provided."
* extension[reason].value[x] only CodeableConcept
* extension[reason] ^short = "Reason or related clarification for off-label use."

* obeys offLabel-reason-required


Invariant: offLabel-reason-required
Description: "If isOffLabelUse is true, reason must be provided"
Severity: #error
Expression: "extension.where(url = 'isOffLabelUse').value.ofType(boolean).where($this = true).exists() implies extension.where(url = 'reason').exists()"

