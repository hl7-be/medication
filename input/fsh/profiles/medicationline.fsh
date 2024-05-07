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
* identifier[vidis].system = "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-medicationline"
* identifier[vidis].value MS


* extension contains 
  ExposureCategory named exposure-category 0..1 MS and 
  DispenseRequestNeededCategory named dispense-request-needed 0..1 MS and 
  //VisibilityFlag named visibility-flag 0..1 MS and 
  http://hl7.org/fhir/StructureDefinition/artifact-version named artifact-version 0..1 MS and
  http://hl7.org/fhir/StructureDefinition/artifact-date named artifact-date 1..1 MS and
  http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.adherence named adherence 0..1 MS


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
* category from MedicationLineOriginTypeVS (extensible)
* category ^short = "Origin type of medication usage"
// why is this 0..1?
* medication[x] MS
* medication[x].extension contains MedicationType named medication-type 0..1 MS



* reasonCode MS
* reasonReference MS
* dosage MS
* dosage
  * extension contains 
    DosageOverride named dosage-override 0..1 MS and 
    DosageOverrideReason named dosage-override-reason 0..1 MS

  * extension[dosage-override] ^short = "Indicates that the recommended dosage was overridden"
  * extension[dosage-override-reason] ^short = "The reason why the recommended dosage was overridden"


* effective[x] 1..1 MS
* note MS

* subject only Reference (BePatient)
* informationSource only Reference (BePatient or BePractitioner or BePractitionerRole or RelatedPerson or BeOrganization)



Extension: MedicationType
Description: "Medication Type."
Context: MedicationStatement.medication[x]
* value[x] only CodeableConcept


Extension: ExposureCategory
Description: "Exposure - category."
Context: MedicationStatement
* value[x] only CodeableConcept
* value[x] from MedicationExposureCategoryVS (extensible)


//Extension: VisibilityFlag
//Description: "Visibility Flag."
//Context: MedicationStatement
//* value[x] only boolean


Extension: DispenseRequestNeededCategory
Description: "Dispense Request Needed - category."
Context: MedicationStatement
* value[x] only boolean


Extension: DosageOverride
Description: "Dosage override."
Context: MedicationStatement.dosage
* value[x] only boolean
//* context = #MedicationStatement.dosage


Extension: DosageOverrideReason
Description: "Dosage override reason."
Context: MedicationStatement.dosage
* value[x] only CodeableConcept





Mapping: BeMedicationLineModeltoProfile
Source: BEMedicationLine
Target: "https://www.ehealth.fgov.be/standards/fhir/vaccination/StructureDefinition/be-model-medicationline"
Id: map-be-medicationline-model-to-profile
Title: "BeModelVaccinationToBVaccination"
* -> "BEModelMedicationLine"

* identifier -> "uniqueIdentifier"
* extension[artifact-version] -> "versionIdentifier"
* extension[artifact-date] -> "lastUpdatedDate" 
* status -> "status"
* statusReason -> "statusReason" // left as 0..* as we don't need to further constrain
* dateAsserted -> "assertedDate"
* informationSource -> "recorder"
* subject -> "patient"
* category -> "category.originType"
* medicationReference -> "medication.product"
* medication[x].extension[medication-type] -> "medication.type"  // left as 0.. as we don't need to further constrain
* extension[exposure-category] -> "exposure"
* reasonReference -> "reason.reference" 
* reasonCode -> "reason.code" 
* effectivePeriod -> "effectivePeriod"
* effectivePeriod.start -> "effectivePeriod.start"  // left as 0.. as we don't need to further constrain
* effectivePeriod.end -> "effectivePeriod.end"
* extension[adherence] -> "adherence" // left as 0.. as we don't need to further constrain
* extension[adherence].extension[code] -> "adherence.code"
* extension[adherence].extension[reason] -> "adherence.adherenceReason"
* dosage -> "dosage.dosageDetails"
* dosage.extension[dosage-override] -> "dosage.dosageOverride"
* dosage.extension[dosage-override-reason] -> "dosage.dosageOverrideReason"
* note -> "note"
* .extension[dispense-request-needed] -> "dispenseRequestNeeded"


