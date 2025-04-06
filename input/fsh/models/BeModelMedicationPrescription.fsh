

Logical: BeModelMedicationPrescription
Id: BeModelMedicationPrescription
Title: "Medication prescription - Data Model"
Description: "Logical model for medication prescription (or some other form of order)"
Characteristics: #can-be-target


* groupIdentifier 0..1 identifier "Identifier for the group that this prescription belongs to. This might be the common identifier in use cases where one national prescription contains several medication items, which can be handled as separate orders"
// .groupIdentifier
* identifier 1..* identifier "Business identifier(s) for the prescription"

* prescriber 1..1 Reference (Practitioner or PractitionerRole) "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
// .requester
* organization 0..1 Reference (BeOrganization) "The organization from which the prescriber issues the prescription."
// .organization
* issueDate 1..1 dateTime "Time of issuing (signing) the prescription by health care practicioner"

* patient 1..1 Reference "The person for whom the medication is prescribed/ordered" // "Question: would we want to add basic Patient model?"
// .subject

* recorder 0..1 Reference(Practitioner or PractitionerRole) "The recorder of the prescription/draft in the information system"
// .recorder
* recordedDate 0..1 dateTime "Time of authoring the prescription/draft in the information system"

* status 1..1 CodeableConcept "Status of the prescription, this should not be status of treatment"
// .status
* statusReason 0..* CodeableConcept "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
// .statusReason

* category 0..* CodeableConcept "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
// .category


* validFrom 0..1 dateTime "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate"
// .dispenseRequest.validityPeriod.start
* validUntil 0..1 dateTime "The validity period end date. The prescription is not dispensable after this date."
// .dispenseRequest.validityPeriod.end

* basedOnMedicationLine 0..1 Reference (BeModelMedicationLine) "Link to the Medication Line from which this request is based"




* medication 1..1 Reference (BeModelMedication) "Prescribed product, branded, generic, virtual, extemporaneous, etc"
// .medication
* indication 0..* BackboneElement "Reason for the prescription (typically diagnosis, or a procedure)"
  * reference 0..* Reference "Reason for the prescription (typically diagnosis, or a procedure)"
  * code 0..* CodeableConcept "Reason or text for the prescription (typically diagnosis, or a procedure)"
// .reasonCode
// .reasonReference

* dosage 1..* BeModelDosagingInformation "Dosaging and administration instructions"
// .dosageInstruction

* dispenseRequest 0..1 BackboneElement "Dispense Request or authorization for the prescribed medication"
  * dispenseInterval 0..1 Duration "Minimum period of time between dispenses"
  // .dispenseRequest.dispenseInterval
  * quantityPerDispense 0..1 SimpleQuantity "Amount of medication to supply per dispense"
  // .dispenseRequest.quantity


//* usageInstructions 1..1 Reference(DosagingInformation) "Dosaging and administration instructions"
//* preparationInstructions 0..* ST "Additional instructions about preparation or dispense" 
* substitution 0..1 BackboneElement "Whether substitution is allowed, and reason"
// .substitution(.allowed)
  * substitutionallowed 1..1 boolean "Substitution of the product is allowed."
  * substitutionReason 0..1 CodeableConcept "Coded or Text reason for the no-substitution requirement"

* offLabel 0..1 boolean "Off-Label / Dosage Override"
  * isOffLabelUse 0..1 boolean "Off-Label / Dosage Override"
    * ^comment = "isOffLabelUse and reason are expected to be manually filled by the prescriber, indicating that this dosage is not entered in error. This information is an indication (for example) for the pharmacist to see that there is a justification of the dosage difference."
  * reason 1..1 CodeableConcept "Dosage Override reason"
    * ^comment = "isOffLabelUse and reason are expected to be manually filled by the prescriber, indicating that this dosage is not entered in error. This information is an indication (for example) for the pharmacist to see that there is a justification of the dosage difference."


* note 0..* string "Additional information or comments"
// .note


* instructionsForReimbursement 0..1 CodeableConcept "Instructions for reimbursement"
// .extensions.instructionsForReimbursement
* instructionsForReimbursement from MedicationRequestReimbursementTypeVS (extensible) //"Instructions for reimbursement"
// * instructionsForReimbursement ^binding.strength = #extensible
// * instructionsForReimbursement ^binding.description = "Instructions for reimbursement"
// * instructionsForReimbursement ^binding.valueSet = MedicationRequestReimbursementTypeVS

