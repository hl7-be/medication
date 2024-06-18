Logical: BeModelMedicationPrescription
Id: be-model-medicationprescription
Title: "Medication prescription - Data Model"
Description: "Logical model for medication prescription (or some other form of order)"
Characteristics: #can-be-target


* identifier 1..* II "Business identifier(s) for the prescription"

* basedOnMedicationLine 0..1 Reference (BEModelMedicationLine) "Link to the Medication Line from which this request is based"
* patient 1..1 Reference "The person for whom the medication is prescribed/ordered" "Question: would we want to add basic Patient model?"
* status 1..1 CD "Status of the prescription, this should not be status of treatment"
* statusReason 0..* CD "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
* statusReasonText 0..1 ST "Textual reason for the current status of prescription"
* medication 1..1 Reference (BeModelMedication) "Prescribed product, branded, generic, virtual, extemporaneous, etc"
* prescriber 1..1 Reference (Practitioner or PractitionerRole) "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
* organization 0..1 Reference (BeOrganization) "The organization from which the prescriber issues the prescription."

* indication 0..* Class "Reason for the prescription (typically diagnosis, or a procedure)"
  * reference 0..* CD "Reason for the prescription (typically diagnosis, or a procedure)"
  * code 0..* CD "Reason for the prescription (typically diagnosis, or a procedure)"
  * text 0..1 ST "Reason for the prescription in textual form. This might not be allowed by some implementations."

* dosage 1..* DosagingInformation "Dosaging and administration instructions"
* dosageOverride 0..1 BL "Indication if standard dosage is overriden"
* dosageOverrideReason 0..1 CD "Reason why standard dosage is overriden"


* validFrom 0..1 DT "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate"
* validUntil 0..1 DT "The validity period end date. The prescription is not dispensable after this date."

* category 0..* CD "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."

* note 0..* ST "Additional information or comments"

* dispenseRequest 0..1 Class "Dispense Request oir authorization for the prescribed medication"
  * dispenseInterval 0..1 Duration "Minimum period of time between dispenses"
  * quantityPerDispense 0..1 SimpleQuantity "Amount of medication to supply per dispense"




* groupIdentifier 0..1 II "Identifier for the group that this prescription belongs to. This might be the common identifier in use cases where one national prescription contains several medication items, which can be handled as separate orders"
* recordingDate 0..1 DT "Time of authoring the prescription/draft in the information system"
* issueDate 1..1 DT "Time of issuing (signing) the prescription by health care practicioner"
* recorder 0..1 Reference(Practitioner or PractitionerRole) "The recorder of the prescription/draft in the information system"

//* usageInstructions 1..1 Reference(DosagingInformation) "Dosaging and administration instructions"
//* preparationInstructions 0..* ST "Additional instructions about preparation or dispense" 
* noSubstitution 0..1 BackboneElement "Substitution is not allowed for a given reason" 
  * noSubstitutionFlag 1..1 BL "Substitution of the product is not allowed."
  * noSubstitutionReason 0..1 CD "Coded reason for the no-substitution requirement"
  * noSubstitutionReasonText 0..1 ST "Textual reason for the no-substitution requirement"
* allowedSubstitutionType 0..* CD "Specific type of substitution that is allowed. Can be an explicit relaxation to normal jurisdictional substitution rules, especially in hospital context."


