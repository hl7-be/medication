Profile: BEMedicationLine
Parent: MedicationStatement
Id: be-medicationline
Description: "Medication Line profile - contains the overview information for a single medication item"

* identifier 1.. MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the identifier system"

// slice VIDIS
* identifier contains vidis 0..1 MS
* identifier[vidis] ^short = "VIDIS identifier"
* identifier[vidis] ^definition = "The national identifier for medication lines."
* identifier[vidis].system = "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-medicationline"
* identifier[vidis].value MS


* extension contains 
  BeExtExposureCategory named exposure-category 0..1 MS and 
  BeExtDispenseRequestNeededCategory named dispense-request-needed 0..1 MS and 
  //VisibilityFlag named visibility-flag 0..1 MS and 
  http://hl7.org/fhir/StructureDefinition/artifact-version named artifact-version 1..1 MS and
  http://hl7.org/fhir/StructureDefinition/artifact-date named artifact-date 0..1 MS and
  http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.adherence named adherence 1..1 MS


* extension[exposure-category] ^short = "Exposure category"
* extension[dispense-request-needed] ^short = "Indication of whether a dispense request is needed for delivering the medication"
//* extension[visibility-flag] ^short = "Coded preference or assertion about the visibility of the medication line"
* extension[artifact-version] ^short = "The business version of the medication line - this version changes when the content update is considered clinically relevant"
* extension[artifact-date] ^short = "The business-relevant recorded date - the date the medication line was created or changed"
* extension[adherence] ^short = "Indicates whether the medication is or is not being consumed or administered"
* extension[adherence] ^comment = """This is a FHIR R5 element, preadopted as an extension in this FHIR R4 specification. 
For the full definition see here: [http://hl7.org/fhir/R5/medicationstatement-definitions.html#MedicationStatement.adherence](http://hl7.org/fhir/R5/medicationstatement-definitions.html#MedicationStatement.adherence)"""

* status MS
* statusReason MS
* dateAsserted MS
* informationSource 1..1 MS

* subject 1..1 MS
* category MS
* category ^short = "Type of medication usage"
// why is this 0..1?
* medication[x] MS
* medicationCodeableConcept
  * extension contains 
    BeExtMedicationType named medication-type 1..1 MS



* reasonCode MS
* reasonReference MS
* dosage MS
* dosage
  * extension contains 
    BeExtDosageOverride named dosage-override 0..1 MS and 
    BeExtDosageOverrideReason named dosage-override-reason 0..1 MS

  * extension[dosage-override] ^short = "Indicates that the recommended dosage was overridden"
  * extension[dosage-override-reason] ^short = "The reason why the recommended dosage was overridden"


* effective[x] 1..1 MS
* note MS

* subject only Reference (BePatient)
* informationSource only Reference (BePatient or BePractitioner or BePractitionerRole or RelatedPerson or BeOrganization)

