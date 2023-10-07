Profile: BEMedicationLine
Parent: MedicationStatement
Description: "Medication Line profile - contains the overview information for a single medication item"

* identifier 1.. MS

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier system"

// slice VIDIS
* identifier contains vidis 0..1 MS
* identifier[vidis] ^short = "VIDIS identifier"
* identifier[vidis] ^definition = "The national identifier for medication lines."
* identifier[vidis].system = "http://ehealth.fgov.be/vidis"
* identifier[vidis].value MS


* extension contains 
  http://hl7.org/fhir/StructureDefinition/artifact-version named artifact-version 1..1 MS and
  http://hl7.org/fhir/StructureDefinition/artifact-date named artifact-date 0..1 MS //and
  //http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.adherence named adherence 1..1 MS

* status MS
* statusReason MS
* dateAsserted MS
* informationSource 1..1 MS

* reasonCode MS
* reasonReference MS
* effective[x] 1..1 MS

