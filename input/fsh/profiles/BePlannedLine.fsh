Profile: BePlannedLine
Id: BePlannedLine
Title: "BePlannedLine"
Parent: MedicationRequest
Description: """Planned Line profile - a declaration of intent about a medication treatment ("this is what should be"), as opposed to the Medication Line which states the knowledge of whether the patient is on a medication.

In FHIR the declaration of intent is a *request* (MedicationRequest with `intent = plan`), whereas the Medication Line is an *event* (MedicationStatement). This profile maps the Planned Line logical model onto MedicationRequest."""

* intent = #plan
* intent ^short = "Always `plan` - a declaration of intent, not an actionable order"
* doNotPerform 0..0

* identifier 1.. MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier system"

// model.recordedDate -> authoredOn (native element, no extension needed)
* authoredOn 1..1 MS
* authoredOn ^short = "Timestamp the planned line content was recorded or last updated"

// model.planner -> requester (the one taking responsibility for the intent)
* requester 1..1 MS
* requester only Reference(BePractitioner or BePractitionerRole)
* requester ^short = "Planner - the professional who declares the intent"
* recorder MS
* recorder only Reference(BePractitioner or BePractitionerRole)

// model.patient -> subject
* subject 1..1 MS
* subject only Reference(BePatient)

// model.status -> status (native request lifecycle, no registration-status extension needed)
* status MS
* status ^short = "Lifecycle of the plan - draft, active, on-hold, completed, revoked (cancelled/stopped), entered-in-error"
* statusReason MS

* extension contains
    http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.statusChanged named statusChanged 0..1 MS and
    http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod named effectivePeriod 1..1 MS and
    BeExtOffLabel named offLabel 0..1 MS and
    BeMedicationExposureCategory named exposure-category 0..1 MS

* extension[statusChanged] ^short = "Indicates when the status of the plan was last changed."

// model.basedOn -> basedOn. The plan is the source of intent: a prescription is basedOn a plan,
// a plan may be basedOn an earlier plan. Nothing points from a plan back to a Medication Line.
* basedOn MS
* basedOn only Reference(BePlannedLine)
* basedOn ^short = "Earlier plan this plan replaces or refines"

// model.medication.product / .type -> medication[x] + medicationType extension
* medication[x] 1..1 MS
* medication[x]
  * extension contains BeExtMedicationType named medicationType 0..1 MS
  * extension[medicationType] ^short = "Type of medication"

// model.reason -> reasonCode / reasonReference
* reasonCode MS
* reasonReference MS

// model.effectivePeriod -> R5 effectiveDosePeriod, preadopted. MedicationRequest R4 has no treatment period.
* extension[effectivePeriod] ^short = "Intended period of treatment - start and end are both required"
* extension[effectivePeriod] ^comment = """This is a FHIR R5 element, preadopted as an extension in this FHIR R4 specification.
For the full definition see here: [http://hl7.org/fhir/R5/medicationrequest-definitions.html#MedicationRequest.effectiveDosePeriod](http://hl7.org/fhir/R5/medicationrequest-definitions.html#MedicationRequest.effectiveDosePeriod)

Note that `dispenseRequest.validityPeriod` is *not* used for this: that is the period during which a prescription may be dispensed, which does not apply to a plan."""
* extension[effectivePeriod].valuePeriod 1..1
* extension[effectivePeriod].valuePeriod.start 1..1 MS
* extension[effectivePeriod].valuePeriod.end 1..1 MS

// model.dosage 1..* -> dosageInstruction 1..*
* dosageInstruction 1.. MS
* dosageInstruction only BeDosage
* dosageInstruction ^short = "Structured Dosage - required for a plan"

// model.offLabel -> BeExtOffLabel
* extension[offLabel].extension[isOffLabelUse] ^short = "Indicates that the recommended dosage was overridden"
* extension[offLabel].extension[reason] ^short = "The reason why the recommended dosage was overridden"

// model.exposure -> exposure-category extension (context widened to MedicationRequest)
* extension[exposure-category] ^short = "Exposure category"

// model.originType -> category
* category MS
* category ^short = "The origin of the plan - hospital, ambulatory"
* category from BeMedicationLineOriginTypeVS

// model.note -> note
* note MS

// Not part of the model - elements that belong to an actionable order, not to a plan
* dispenseRequest 0..0
* substitution 0..0
* priority 0..0
