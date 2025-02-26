Logical: BeModelMedicationPrescription
Id: be-model-medicationprescription
Title: "Medication prescription - Data Model"
Description: "Logical model for medication prescription (or some other form of order)"
Characteristics: #can-be-target


* identifier 1..* II "Business identifier(s) for the prescription"
// .identifier
* basedOnMedicationLine 0..1 Reference (BEModelMedicationLine) "Link to the Medication Line from which this request is based"
// .extensions.basedOn
* patient 1..1 Reference "The person for whom the medication is prescribed/ordered" // "Question: would we want to add basic Patient model?"
// .subject
* status 1..1 CD "Status of the prescription, this should not be status of treatment"
// .status
//* statusReason 0..* CD "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
// .statusReason
* medication 1..1 Reference (BeModelMedication) "Prescribed product, branded, generic, virtual, extemporaneous, etc"
// .medication
* prescriber 1..1 Reference (Practitioner or PractitionerRole) "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
// .requester
* organization 0..1 Reference (BeOrganization) "The organization from which the prescriber issues the prescription."
// .organization
* indication 0..* Class "Reason for the prescription (typically diagnosis, or a procedure)"
  * reference 0..* CD "Reason for the prescription (typically diagnosis, or a procedure)"
  * code 0..* CD "Reason for the prescription (typically diagnosis, or a procedure)"
  * text 0..1 ST "Reason for the prescription in textual form. This might not be allowed by some implementations."
// .reasonCode
// .reasonReference

* dosage 1..* DosagingInformation "Dosaging and administration instructions"
// .dosageInstruction
* dosageOverride 0..1 BL "Indication if standard dosage is overriden"
// .dosageInstruction.extensions.dossageOveride
* dosageOverrideReason 0..1 CD "Reason why standard dosage is overriden"
// .dosageInstruction.extensions.dossageOverrideReason

* validFrom 0..1 DT "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate"
// .dispenseRequest.validityPeriod.start
* validUntil 0..1 DT "The validity period end date. The prescription is not dispensable after this date."
// .dispenseRequest.validityPeriod.end

* category 0..* CD "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
// .category

* note 0..* ST "Additional information or comments"
// .note

* dispenseRequest 0..1 Class "Dispense Request or authorization for the prescribed medication"
  * dispenseInterval 0..1 Duration "Minimum period of time between dispenses"
  // .dispenseRequest.dispenseInterval
  * quantityPerDispense 0..1 SimpleQuantity "Amount of medication to supply per dispense"
  // .dispenseRequest.quantity

* instructionsForReimbursement 0..1 CD "Instructions for reimbursement"
// .extensions.instructionsForReimbursement
* instructionsForReimbursement ^binding.strength = #extensible
* instructionsForReimbursement ^binding.description = "Instructions for reimbursement"
* instructionsForReimbursement ^binding.valueSet = MedicationRequestReimbursementTypeVS

* groupIdentifier 0..1 II "Identifier for the group that this prescription belongs to. This might be the common identifier in use cases where one national prescription contains several medication items, which can be handled as separate orders"
// .groupIdentifier
* recordingDate 0..1 DT "Time of authoring the prescription/draft in the information system"
* issueDate 1..1 DT "Time of issuing (signing) the prescription by health care practicioner"
* recorder 0..1 Reference(Practitioner or PractitionerRole) "The recorder of the prescription/draft in the information system"
// .recorder

//* usageInstructions 1..1 Reference(DosagingInformation) "Dosaging and administration instructions"
//* preparationInstructions 0..* ST "Additional instructions about preparation or dispense" 
* noSubstitution 0..1 BackboneElement "Substitution is not allowed for a given reason"
// .substitution(.allowed)
  * noSubstitutionFlag 1..1 BL "Substitution of the product is not allowed."
  * noSubstitutionReason 0..1 CD "Coded reason for the no-substitution requirement"
  * noSubstitutionReasonText 0..1 ST "Textual reason for the no-substitution requirement"
* allowedSubstitutionType 0..* CD "Specific type of substitution that is allowed. Can be an explicit relaxation to normal jurisdictional substitution rules, especially in hospital context."

* visibility 0..* CD "Whether the patient has explicitly requested the prescription not to be seen by prescriber/pharmacist."
