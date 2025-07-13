CodeSystem: BeMedicationLineOriginType
Id:         BeMedicationLineOriginType
Title:     "Medication exposure Type"
Description: "Medication exposure type"
* ^status = #active
* ^experimental = false
* ^caseSensitive = false
* #ambulatory-request "Ambulatory prescription"
* #hospital-request "Hospital prescription"
* #self-medication "Upon patient demand - Self-medication"
* #with-request "Medication not sold in Belgium, with prescription"
* #without-request "Medication not sold in Belgium, without prescription"
* #pharmacist-advice "Upon pharmacist advice"