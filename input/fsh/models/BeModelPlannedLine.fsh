Logical: BeModelPlannedLine
Id: BeModelPlannedLine
Parent: Base
Title: "Planned Line (model)"
Description: """Logical data model for a planned line - a declaration of intent about a medication treatment ("this is what should be").

This model is derived from the Medication Line model. Where the Medication Line captures the *knowledge* of whether a patient is on a medication (an event / summary statement), the Planned Line captures the *intended* treatment. Consequences of that change of nature:

* `adherence` is removed - a plan has no adherence, it has a lifecycle status.
* `dosage` is required - an intent without a posology is not actionable.
* `effectivePeriod.end` is required - an intended treatment has a planned end (or a planned review).
* `recorder` becomes `planner` - the professional who takes responsibility for the intent, rather than whoever recorded the observation.
* `status` is the lifecycle of the plan (draft, active, completed, revoked, entered-in-error), not the registration status of a record."""
Characteristics: #can-be-target

* ^name = "PlannedLine"

* identifier 1..* Identifier "Unique identifier" "A unique identifier for the planned line. This identifier alone may be the same for different versions of the planned line."

* recordedDate 1..1 dateTime "Timestamp the planned line content was recorded or last updated."

* planner 1..1 Reference(BePractitioner or BePractitionerRole) "Planner" "The professional who declares the intent and takes responsibility for the planned treatment."
  * ^comment = "In the Medication Line this is the `recorder`. For a plan the relevant actor is the one who takes responsibility for the intent, not the one who recorded the knowledge."

* patient 1..1 Reference(BePatient) "Patient"

* status 1..1 code "Status of the plan"
  * ^binding.description = "`draft`, `active`, `on-hold`, `completed`, `revoked`, or `entered-in-error`"
  * ^binding.strength = #preferred
  * ^comment = "Unlike the Medication Line, a plan has a lifecycle: it can be completed (the intended period is over) or revoked (the intent no longer holds). `Recorded` in the Medication Line corresponds to `active` here."

* basedOn 0..* Reference(BeModelPlannedLine) "Earlier plan this plan derives from" "A planned line may replace or refine an earlier planned line."

* medication 1..1 BackboneElement "The product or substance"
  * product 1..1 Reference(BeModelMedication) "Product reference, identifier or name"
  * type 1..1 CodeableConcept "Type of medication - magistral, medicinal product, non-medicinal product"
  * type from BeMedicationTypeVS (required)

* reason 0..* BackboneElement "Reason for the planned treatment"
  * reference 0..1 Reference "Reference to existing condition or reason"
  * code 0..1 CodeableConcept "Code of the condition, or free text"

* effectivePeriod 1..1 BackboneElement "Intended period of medication treatment"
  * start 1..1 dateTime "The intended begin of the treatment"
  * end 1..1 dateTime "The intended end of the treatment"
    * ^comment = "Required: a declaration of intent has a planned end or review date. An open-ended treatment is expressed with an explicit review date."

* dosage 1..* BeModelDosagingInformation "Structured Dosage"
  * ^comment = "Required: a plan without posology is not actionable."

* offLabel 0..1 string "Reason for Off-label use or dosage override"

* exposure 0..1 CodeableConcept "Therapeutic, Prophylactic"
* exposure from BeMedicationExposureIntentVS

* originType 0..1 CodeableConcept "The origin of the plan - hospital, ambulatory"
* originType from BeMedicationLineOriginTypeVS

* note 0..* Annotation "A note captured by a professional"
