CodeSystem: MedicationLineOriginType
Id: medication-line-origin-type
Title: "Medication origin type"
Description: "Medication treatment origin type - what is the type of care that originated the medication treatment"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #ambulatory "Ambulatory"
* #hospital "Hospital"


ValueSet: MedicationLineOriginTypeVS
Id: medication-line-origin-type-vs
Title: "Medication origin type ValueSet"
Description: "Medication treatment origin type - what is the type of care that originated the medication treatment"
* ^status = #active
* ^experimental = false
* include codes from system MedicationLineOriginType
