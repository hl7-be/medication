Logical: BeModelMedicationDispense
Parent: Base
Id: BeModelMedicationDispense
Title: "Medication Dispense (model)"
Description: "Logical data model for Medication Dispense."


* ^url = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationDispense"

* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7belgium.org"

* ^description = "This is the logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense."
* ^jurisdiction = $m49.htm#056
* ^jurisdiction.text = "Belgium"


* identifier 0..* Identifier "The business identifier(s) for the medication dispense record" "The business identifier(s) for the medication dispense session, also known as Session GUID (SGUID)."

* recordedDate 0..1 dateTime "The date (or date+time) when the dispense was recorded"

* basedOnMedicationLine 0..1 Reference(BeModelMedicationLine) "The medication line that this dispense is related to"
//* ^short = "An individual record of a medication dispense"

* patient 1..1 Reference(BePatient) "The person for which the medication is dispensed" "The person for which the medication is dispensed."

* status 1..1 code "The status of the dispense record"
* status from http://hl7.org/fhir/ValueSet/medicationdispense-status


* statusReason 0..1 CodeableConcept "The reason why the dispense was not performed, if it was not performed"
//* dispenseLocation 0..1 Reference(BeLocation) "The location where the dispense was performed"
* statusReason from http://hl7.org/fhir/ValueSet/medicationdispense-status-reason

* dispenser 0..1 BackboneElement "The dispenser, if known and relevant"
  * dispenser 0..1 Reference (BePractitioner) "Reference to person that performed the recording or reporting"
  * organization 0..1 Reference (BeOrganization) "Reference to person that performed the recording or reporting" 

* dispenseDate 1..1 dateTime "The date (or date+time) when the dispense ocurred"

* prescription 0..1 BackboneElement  "Information about a prescription related to the dispense"
  * isPrescribed 0..1 boolean "Whether this dispense was performed against a prescription"
  * prescription 0..1 Reference "The prescription identification"


* dispensedItem 1..1 BackboneElement  "Each product that was dispensed"
  * product 1..1 CodeableConcept "The product that was dispensed - coded or not (e.g. for magistral preparations)"
  * quantityDispensed 0..1 SimpleQuantity "The amount of product that was dispensed"
  * dosage 0..* Dosage "The structured dosage or text instructions for use"
  * offLabel 0..1 CodeableConcept "Text or coded reason for different dosage"
//  * note 0..* Annotation "Additional information about the dispensed item - this can be relevant history, any remarks by the patient or professional, etc."
* note 0..* Annotation "Additional information about the dispense - this can be relevant history, any remarks by the patient or professional, etc."





Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
