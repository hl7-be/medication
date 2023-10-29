Logical: BeModelMedicationDispense
Parent: Base
Id: be-lm-medicationdispense
Title: "BeModelMedicationDispense"
Description: "The logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense."


* ^url = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-model-medication-dispense"

* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7belgium.org"

* ^description = "This is the logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense."
* ^jurisdiction = $m49.htm#056
* ^jurisdiction.text = "Belgium"

//* ^short = "An individual record of a medication dispense"
* identifier 0..1 Identifier "The business identifier(s) for the medication dispense record" "The business identifier(s) for the medication dispense session, also known as Session GUID (SGUID)."
* patient 1..1 Reference(BePatient) "The person for which the medication is dispensed" "The person for which the medication is dispensed."

* dispenser 0..1 BackboneElement "The dispenser, if known and relevant"
  * dispenser 1..1 Reference (BePatient) "Reference to person that performed the recording or reporting"
  * organization 1..1 Reference (BeOrganization) "Reference to person that performed the recording or reporting" 
* dispenseDate 1..1 dateTime "The date (or date+time) when the dispense ocurred"
* prescription 0..1 BackboneElement  "Information about a prescription related to the dispense"
  * isPrescribed 0..1 boolean "Whether this dispense was performed against a prescription"
  * prescription 0..1 Reference "The prescription identification"
* dispensedItem 0..* BackboneElement  "Each product that was dispensed"
  * product 0..1 Reference "The product that was dispensed - coded or not (e.g. for magistral preparations)"
  * quantityDispensed 0..1 SimpleQuantity "The amount of product that was dispensed"
  * dosageInstructions 0..1 Dosage "The structured dosage or text instructions for use"
  * note 0..* Annotation "Additional information about the dispensed item - this can be relevant history, any remarks by the patient or professional, etc."
* note 0..* Annotation "Additional information about the dispense - this can be relevant history, any remarks by the patient or professional, etc."





Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

// Instance: be-model-medication-dispense
// InstanceOf: StructureDefinition
// Usage: #definition
// * url = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-model-medication-dispense"
// * version = "0.2.0"
// * name = "BeModelMedicationDispense"
// * status = #draft
// * date = "2021-06-28T13:54:34+02:00"
// * publisher = "HL7 Belgium"
// * contact.telecom.system = #url
// * contact.telecom.value = "http://hl7belgium.org"
// * description = "This is the logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense."
// * jurisdiction = $m49.htm#056
// * jurisdiction.text = "Belgium"
// * fhirVersion = #4.0.1
// * mapping.identity = "rim"
// * mapping.uri = "http://hl7.org/v3"
// * mapping.name = "RIM Mapping"
// * kind = #logical
// * abstract = false
// * type = "BeModelMedicationDispense"
// * baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
// * derivation = #specialization
// * differential.element[0].id = "BeModelMedicationDispense"
// * differential.element[=].path = "BeModelMedicationDispense"
// * differential.element[=].short = "An individual record of a medication dispense"
// * differential.element[=].min = 0
// * differential.element[=].max = "*"

// * differential.element[+].id = "BeModelMedicationDispense.identifier"
// * differential.element[=].path = "BeModelMedicationDispense.identifier"
// * differential.element[=].short = "The business identifier(s) for the medication dispense session"
// * differential.element[=].definition = "The business identifier(s) for the medication dispense session, also known as Session GUID (SGUID)."
// * differential.element[=].min = 0
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "Identifier"

// * differential.element[+].id = "BeModelMedicationDispense.patient"
// * differential.element[=].path = "BeModelMedicationDispense.patient"
// * differential.element[=].short = "The person for which the medication is dispensed."
// * differential.element[=].definition = "The person for which the medication is dispensed."
// * differential.element[=].min = 1
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "Reference"
// * differential.element[=].type.targetProfile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"

// * differential.element[+].id = "BeModelMedicationDispense.dispenser"
// * differential.element[=].path = "BeModelMedicationDispense.dispenser"
// * differential.element[=].short = "The dispenser, if known and relevant"
// * differential.element[=].definition = "."
// * differential.element[=].min = 0
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "Reference"

// * differential.element[+].id = "BeModelMedicationDispense.dispenser.dispenser"
// * differential.element[=].path = "BeModelMedicationDispense.dispenser.dispenser"
// * differential.element[=].short = "Reference to person that performed the recording or reporting"
// * differential.element[=].definition = "Who was responsible for asserting the observed value as \"true\". (Reference)"
// * differential.element[=].min = 1
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "Reference"
// * differential.element[=].type.targetProfile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"

// * differential.element[+].id = "BeModelMedicationDispense.dispenser.organization"
// * differential.element[=].path = "BeModelMedicationDispense.dispenser.organization"
// * differential.element[=].short = "Reference to person that performed the recording or reporting"
// * differential.element[=].definition = "Who was responsible for asserting the observed value as \"true\". (Reference)"
// * differential.element[=].min = 1
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "Reference"
// * differential.element[=].type.targetProfile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"

// * differential.element[+].id = "BeModelMedicationDispense.dispenseDate"
// * differential.element[=].path = "BeModelMedicationDispense.dispenseDate"
// * differential.element[=].short = "The date when the dispense ocurred"
// * differential.element[=].definition = "The date (or date-time) when the dispense ocurred"
// * differential.element[=].min = 1
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "dateTime"
// * differential.element[=].type.profile = "http://hl7.org/fhir/StructureDefinition/dateTime"

// * differential.element[+].id = "BeModelMedicationDispense.prescription"
// * differential.element[=].path = "BeModelMedicationDispense.prescription"
// * differential.element[=].short = "The information about a prescription related to the dispense"
// * differential.element[=].definition = "."
// * differential.element[=].min = 0
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "BackboneElement"

// * differential.element[+].id = "BeModelMedicationDispense.prescription.isPrescribed"
// * differential.element[=].path = "BeModelMedicationDispense.prescription.isPrescribed"
// * differential.element[=].short = "Whether this dispense was performed against a prescription"
// * differential.element[=].definition = "."
// * differential.element[=].min = 0
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "boolean"

// * differential.element[+].id = "BeModelMedicationDispense.prescription.prescription"
// * differential.element[=].path = "BeModelMedicationDispense.prescription.prescription"
// * differential.element[=].short = "The prescription identification"
// * differential.element[=].definition = "."
// * differential.element[=].min = 0
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "Reference"

// * differential.element[+].id = "BeModelMedicationDispense.dispensedItem"
// * differential.element[=].path = "BeModelMedicationDispense.dispensedItem"
// * differential.element[=].short = "Each product that was dispensed"
// * differential.element[=].definition = "."
// * differential.element[=].min = 0
// * differential.element[=].max = "*"
// * differential.element[=].type.code = "BackboneElement"

// * differential.element[+].id = "BeModelMedicationDispense.dispensedItem.product"
// * differential.element[=].path = "BeModelMedicationDispense.dispensedItem.product"
// * differential.element[=].short = "The product that was dispensed - coded or not (e.g. for magistral preparations)"
// * differential.element[=].definition = "."
// * differential.element[=].min = 0
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "Reference"

// * differential.element[+].id = "BeModelMedicationDispense.dispensedItem.quantityDispensed"
// * differential.element[=].path = "BeModelMedicationDispense.dispensedItem.quantityDispensed"
// * differential.element[=].short = "The amound of product that was dispensed"
// * differential.element[=].definition = "."
// * differential.element[=].min = 0
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "Quantity"

// * differential.element[+].id = "BeModelMedicationDispense.dispensedItem.dosageInstructions"
// * differential.element[=].path = "BeModelMedicationDispense.dispensedItem.dosageInstructions"
// * differential.element[=].short = "The instructions for use"
// * differential.element[=].definition = "."
// * differential.element[=].min = 0
// * differential.element[=].max = "1"
// * differential.element[=].type.code = "Dosage"

// * differential.element[+].id = "BeModelMedicationDispense.dispensedItem.note"
// * differential.element[=].path = "BeModelMedicationDispense.dispensedItem.note"
// * differential.element[=].short = "Additional information about the dispensed item"
// * differential.element[=].definition = "Additional information about the dispense - this can be relevant history, any remarks by the patient or professional, etc."
// * differential.element[=].min = 0
// * differential.element[=].max = "*"
// * differential.element[=].type.code = "Annotation"
// * differential.element[=].type.profile = "http://hl7.org/fhir/StructureDefinition/Annotation"

// * differential.element[+].id = "BeModelMedicationDispense.note"
// * differential.element[=].path = "BeModelMedicationDispense.note"
// * differential.element[=].short = "Additional information about the dispense"
// * differential.element[=].definition = "Additional information about the dispense - this can be relevant history, any remarks by the patient or professional, etc."
// * differential.element[=].min = 0
// * differential.element[=].max = "*"
// * differential.element[=].type.code = "Annotation"
// * differential.element[=].type.profile = "http://hl7.org/fhir/StructureDefinition/Annotation"



