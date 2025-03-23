Profile: BEMedicationLine
Title: "BEMedicationLine"

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
    OffLabel named offLabel 0..1 MS and
    ExposureCategory named exposure-category 0..1 MS and 
    DispenseRequestNeededCategory named dispense-request-needed 0..1 MS and 
    //VisibilityFlag named visibility-flag 0..1 MS and 
    http://hl7.org/fhir/StructureDefinition/artifact-version named artifact-version 1..1 MS and
    http://hl7.org/fhir/StructureDefinition/artifact-date named artifact-date 0..1 MS and
    http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.adherence named adherence 1..1 MS


* extension[offLabel].extension[isOffLabelUse] ^short = "Indicates that the recommended dosage was overridden"
* extension[offLabel].extension[reason] ^short = "The reason why the recommended dosage was overridden"

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

* reasonCode MS
* reasonReference MS
* dosage MS
* dosage



* effective[x] 1..1 MS
* note MS

* subject only Reference (BePatient)
* informationSource only Reference (BePatient or BePractitioner or BePractitionerRole or RelatedPerson or BeOrganization)



Extension: ExposureCategory
Description: "Exposure - category."
Context: MedicationStatement
* value[x] only CodeableConcept
* value[x] from MedicationExposureCategoryVS (extensible)


// Extension: VisibilityFlag
// Description: "Visibility Flag."
// Context: MedicationStatement
// * value[x] only boolean


Extension: DispenseRequestNeededCategory
Description: "Dispense Request Needed - category."
Context: MedicationStatement
* value[x] only boolean

Extension: OffLabel
Id:        be-ext-OffLabel
Title:     "MedicationRequest - Off-label use"
Description: "Indicates that the order placer has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product."
Context: MedicationRequest, MedicationStatement

* extension contains
    isOffLabelUse 1..1 and
    reason 0..*
* extension[isOffLabelUse].value[x] only boolean
* extension[isOffLabelUse] ^short = "Indicates that the recommended dosage was overridden. Must be 'true' when .reason is provided."
* extension[reason].value[x] only CodeableConcept
* extension[reason] ^short = "Reason or related clarification for off-label use."