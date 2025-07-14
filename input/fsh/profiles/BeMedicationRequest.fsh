Invariant: dosage-override-reason-required
Description: "If isOffLabelUse is true, reason must be provided"
Severity: #error
Expression: "extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/offLabel').hasValue() implies extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/offlabel').exists()"


Profile: BeMedicationPrescription
Title: "BeMedicationPrescription"
Parent: MedicationRequest
Id: BeMedicationPrescription
Description: "Medication Request profile - The common structure for medication request"

* identifier MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier system"

// slice Recip-E
* identifier contains recip-e 0..1 MS
* identifier[recip-e] ^short = "Recip-E identifier"
* identifier[recip-e] ^definition = "The national identifier for medication requests."
* identifier[recip-e].system = "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-prescription"
* identifier[recip-e].value MS
* groupIdentifier MS

* extension contains
  BeExtOffLabel named offLabel 0..1 MS and
  BasedOnMedicationLine named basedOnMedicationLine 0..1 MS and
  //OrganizationOfRequester named organization 0..1 MS and
  InstructionsForReimbursement named instructionsForReimbursement 0..1 MS and
  http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.statusChanged named statusChanged 0..1 MS

* obeys dosage-override-reason-required

* extension[basedOnMedicationLine] ^short = "Medication Line where this prescription is based upon"
//* extension[organization] ^short = "The organization where the requester is operating, e.g. an hospital"
* extension[instructionsForReimbursement] ^short = "Instructions for reimbursement"
* extension[statusChanged] ^short = "Indicates when the status of the medication request was last changed."
* extension[statusChanged] ^comment = """This is a FHIR R5 element, preadopted as an extension in this FHIR R4 specification.
For the full definition see here: [http://hl7.org/fhir/R5/medicationrequest-definitions.html#MedicationRequest.statusChanged](http://hl7.org/fhir/R5/medicationrequest-definitions.html#MedicationRequest.statusChanged)"""

* status MS
* status from BeMedicationPrescriptionStatusVS
* statusReason MS
* priority MS
* intent MS
* category MS
* medication[x] MS
* reasonCode MS // only if reason/indication is allowed?
* reasonReference MS // only if reason/indication is allowed?
* supportingInformation MS
* subject MS
* subject only Reference (BePatient)
* authoredOn 1.. MS
* requester 1.. MS
* requester only Reference (BePractitioner or BePractitionerRole)
* recorder MS
* recorder only Reference (BePractitioner or BePractitionerRole)
* dosageInstruction 1.. MS
* dosageInstruction

* extension[offLabel].extension[isOffLabelUse] ^short = "Indicates that the recommended dosage was overridden"
* extension[offLabel].extension[reason] ^short = "The reason why the recommended dosage was overridden"

* dispenseRequest MS
* dispenseRequest.validityPeriod MS
* dispenseRequest.validityPeriod ^comment = "The period of time that the prescription is valid for dispensing. The validity of the prescription for administration (i.e. whether the prescription can be administered after a given date) is conveyed in the dosage information."

* dispenseRequest.validityPeriod.start 1.. MS
* dispenseRequest.validityPeriod.end 0.. MS
* dispenseRequest.quantity MS
* dispenseRequest.numberOfRepeatsAllowed MS

* note MS
* substitution MS
* substitution.allowed[x] MS
* substitution.allowed[x] only boolean
* substitution.reason MS


