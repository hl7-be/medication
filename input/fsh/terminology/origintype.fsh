CodeSystem: MedicationLineOrigintype
Id: medication-line-origin-type
Title: "Medication origin type"
Description: "Medication treatment origin type - what is the type of care that originated the medication treatment"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #ambulatory "Ambulatory"
* #hospital "Hospital"
* #self-medication "Self-medication"
* #with-request "With request"
* #without-request "Without request"
* #pharmacist-advice "Pharmacist advice"


ValueSet: MedicationLineOrigintypeVS
Id: MedicationLineOrigintypeVS
Title: "Medication origin type ValueSet"
Description: "Medication treatment origin type - what is the type of care that originated the medication treatment"
* ^status = #active
* ^experimental = false
* include codes from system MedicationLineOrigintype
