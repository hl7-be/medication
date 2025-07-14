Logical: BeModelMedicationLine
Id: BeModelMedicationLine
Parent: Base
Title: "Medication Line (model)"
Description: "Logical data model for medication line."
Characteristics: #can-be-target

* ^name = "MedicationLine"

* uniqueIdentifier 1..* Identifier "Unique identifier" "A unique identifier for the medication line. This identifier alone may be the same for different versions of the medication line."

* versionIdentifier 0..1 string "Version of the medication line at the time the content was recorded or last updated."
// .extension[artifactVersion]
* recordedDate 1..1 dateTime "Timestamp the medication line content was recorded or last updated."
// .extension[artifactDate]
  * ^comment = " We consider this is redundant with the above, given the intended use in Belgium (version is a date). How to ensure the compatibility?"

* status 1..1 code "Status of the line entry"
//.status
* status from BeMedicationLineStatusVS

//* statusReason 0..1 CodeableConcept "Reason for the status" 
//  * ^comment = "We consider this is not necessary - should we add?"

//* recordedDate 0..1 dateTime "Date the medication line was recorded or last updated"
//  * ^comment = " We consider this is not necessary"

// * assertedDate 0..1 dateTime "Date the medication line was first asserted or known"
//   * ^comment = " We consider this is not necessary"
// .assertedDate

* recorder 1..1 Reference(Practitioner) "Recorder"
// .informationSource
  * ^comment = "We understand this will be updated as the line changes"

* patient 1..1 Reference(Patient) "Patient"
// .subject
* category 0..* BackboneElement "Category for the line"
  * originType 0..1 CodeableConcept "The origin of the line - hospital, ambulatory"
  * originType from BeMedicationLineOriginTypeVS
//.category

* medication 1..1 BackboneElement "The product or substance"
  * product 1..1 Reference(BeModelMedication) "Product reference, identifier or name"
// .medicationReference or medicationCodeableConcept      
  * type 1..1 CodeableConcept "Type of medication - magistral, medicinal product, non-medicinal product"
// .medicationReference.resolve().classification or medicationCodeableConcept[]
  * type from BeMedicationTypeVS (required)

* exposure 0..1 CodeableConcept "Therapeutic, Prophylactic"
* exposure from BeMedicationExposureIntentVS

* reason 0..* BackboneElement "Reason for the medication treatment"
  * reference 0..1 Reference "Reference to existing condition or reason"
// .reasonReference
  * code 0..1 CodeableConcept "Code of the condition, or free text" 
// .reasonCode

* effectivePeriod 1..1 BackboneElement "Period of medication treatment"
  * start 1..1 dateTime "The begin of the medication line"
// .effectiveDateTime OR .effectivePeriod.start
//  * ^comment = ".effectiveDateTime OR .effectivePeriod.start. Do we need to support both? Can we use effectivePeriod when .end is known? And when only .start is known, we use dateTime?"
  * end 0..1 dateTime "The end of the medication line"

* adherence 0..1 BackboneElement "Whether the patient is known to be taking the medication"
// extension[adherence]
  * status 1..1 CodeableConcept "The status - taking, not taking,..."
  * status from BeMedicationLineAdherenceStatusVS
  * adherenceStatusReason 0..1 CodeableConcept "Reason for the adherence status" 
  * adherenceStatusReason from BeMedicationLineAdherenceStatusReasonVS


* dosage 0..1 BeModelDosagingInformation "Structured Dosage"

// * offLabel 0..1 boolean "Off-Label / Dosage Override"
//   * isOffLabelUse 0..1 boolean "Off-Label / Dosage Override"
//     * ^comment = "isOffLabelUse and reason are expected to be manually filled by the prescriber, indicating that this dosage is not entered in error. This information is an indication (for example) for the pharmacist to see that there is a justification of the dosage difference."
//   * reason 0..1 CodeableConcept "Reason for Off-label use or dosage override"
//     * ^comment = "isOffLabelUse and reason are expected to be manually filled by the prescriber, indicating that this dosage is not entered in error. This information is an indication (for example) for the pharmacist to see that there is a justification of the dosage difference."
* offLabel 0..1 string "Reason for Off-label use or dosage override"
  * ^comment = "isOffLabelUse and reason are expected to be manually filled by the prescriber, indicating that this dosage is not entered in error. This information is an indication (for example) for the pharmacist to see that there is a justification of the dosage difference."
* note 0..* Annotation "A note captured by a professional"
// .note

//* dispenseRequestNeeded 0..1 CodeableConcept "Whether the medication needs a prescription or request to be dispensed"
// * visibility 0..* CodeableConcept "Whether the patient has explicitly requested the medication line not to be seen - when other rules don't prevail"



// CodeSystem: BEMLMExposureType
// Id:         medication-exposuretype
// Title:     "Medication exposure purpose"
// Description: "Medication exposure purpose"
// * ^status = #draft
// * ^experimental = false
// * #prophylaxys "Prophylactic purpose"
// * #therapy "Therapeutic purpose"
// * #other "Other e.g. diagnostic purposes"


// ValueSet: BEMLMExposureTypeVS
// Id:         medication-exposuretype-vs
// Title:     "Medication exposure purpose"
// Description: "Medication exposure purpose"
// * ^status = #draft
// * ^experimental = false
// * codes from system BEMLMExposureType


