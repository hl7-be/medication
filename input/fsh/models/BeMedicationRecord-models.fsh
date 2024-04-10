Logical: BEModelMedicationLine
Id: be-model-medicationline
Title: "Medication Line - logical model"
Description: "A logical data model of the medication line."
Characteristics: #can-be-target

* ^name = "MedicationLine"

* uniqueIdentifier 1..* Identifier "Unique identifier" "A unique identifier for the medication line. This identifier alone may be the same for different versions of the medication line."
// .identifier
* versionIdentifier 1..1 string "Version of the medication line at the time the content was recorded or last updated."
// .extension[artifactVersion]
* lastUpdatedDate 1..1 dateTime "Timestamp the medication line content was recorded or last updated."
// .extension[artifactDate]
  * ^comment = " We consider this is redundant with the above, given the intended use in Belgium (version is a date). How to ensure the compatibility?"

* status 1..1 code "Status of the line entry"
//.status

* statusReason 0..1 CodeableConcept "Reason for the status" 
  * ^comment = " We consider this is not necessary - should we add?"

//* recordedDate 0..1 dateTime "Date the medication line was recorded or last updated"
//  * ^comment = " We consider this is not necessary"

* assertedDate 0..1 dateTime "Date the medication line was first asserted or known"
  * ^comment = " We consider this is not necessary"
// .assertedDate

* recorder 1..1 Reference(Practitioner) "Recorder"
// .informationSource
  * ^comment = "We understand this will be updated as the line changes"

* patient 1..1 Reference(Patient) "Patient"
// .subject
* category 0..1 BackboneElement "Category for the line"
  * originType 0..1 CodeableConcept "The origin of the line - hospital, ambulatory"
//.category

* medication 1..1 BackboneElement "The product or substance"
  * product 1..1 Reference(BELMMedProduct) "Product reference, identifier or name"
// .medicationReference or medicationCodeableConcept      
  * type 1..1 CodeableConcept "Type of medication - magistral, medicinal product, non-medicinal product"
// .medicationReference.resolve().classification or medicationCodeableConcept[]
  * type from BEMLMedicationTypeVS (required)

* exposure 0..1 CodeableConcept "Therapeutic, Prophylactic"
* exposure from MedicationExposureCategoryVS

* reason 0..* BackboneElement "Reason for the medication treatment"
  * reference 0..1 Reference "Reference to existing condition or reason"
// .reasonReference
  * code 0..1 CodeableConcept "Code of the condition, or free text" 
// .reasonCode

* effectivePeriod 1..1 BackboneElement "Period of medication treatment"
  * start 1..1 dateTime "The begin of the medication line"
// .effectiveDateTime OR .effectivePeriod.start
  * ^comment = ".effectiveDateTime OR .effectivePeriod.start. Do we need to support both? Can we use effectivePeriod when .end is known? And when only .start is known, we use dateTime?"
  * end 0..1 dateTime "The end of the medication line"

* adherence 0..1 BackboneElement "Whether the patient is known to be taking the medication"
// extension[adherence]
  * code 1..1 CodeableConcept "The status - taking, not taking,..."
  * adherenceReason 0..1 CodeableConcept "Reason for the adherence status" 

* dosage 0..1 BackboneElement "Dosage"
//.dosage  
  * dosageDetails 0..1 Dosage "Structure Dosage"
  * dosageOverride 0..1 boolean "Dosage Override"
    * ^comment = "should these be extensions on dosage or on the line?"
//.dosage.extension[]
  * dosageOverrideReason 1..1 CodeableConcept "Dosage Override reason"
    * ^comment = "should these be extensions on dosage or on the line?"
//.dosage.extension[]

* note 0..* Annotation "A note captured by a professional"
// .note

* dispenseRequestNeeded 0..* CodeableConcept "Whether the medication needs a prescription or request to be dispensed"
* visibility 0..* CodeableConcept "Whether the patient has explicitly requested the medication line not to be seen - when other rules don't prevail"



Logical: BELMMedProduct
Title: "Medicinal Product"
Description: "A logical data model for representing a medicinal product."
Characteristics: #can-be-target

* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true

* identifier 0..* Identifier "Unique identifier" "A unique identifier for the medication line"
* name 0..1 string "The name or designation of the product"
* description 0..1 string "The text description of the product when not coded"
* ingredient 0..* BackboneElement "The ingredients or components of the product"
  * product 1..1 CodeableConcept "The product or substance"
  * strength 0..1 SimpleQuantity "The quantity or amount of ingredient in the parent product"
* doseForm 0..1 CodeableConcept "The dose form of the product"

// TO DO:  dose form - which one? - e.g. solution for injection? or injection?

CodeSystem: BEMLMedicationType
Id:         medication-type
Title:     "Medication preparation Type"
Description: "Medication preparation type"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = false
* #magistral "Magistral preparation"
* #officinal "Officinal preparation"
* #medicinal-product "Medicinal Product"
* #non-medicinal-product "non-medicinal product e.g. supplement"

// TO DO: Do we need non-authorized products?


ValueSet: BEMLMedicationTypeVS
Id:         medication-type-vs
Title:     "Medication preparation Type value set"
Description: "Medication preparation type value set"
* ^status = #draft
* ^experimental = false
* codes from system BEMLMedicationType


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

