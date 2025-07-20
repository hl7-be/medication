CodeSystem: BeMedicationLineOriginType
Id:         BeMedicationLineOriginType
Title:     "Medication origin Type"
Description: "Medication origin type"
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationLineOriginType"
* ^status = #active
* ^experimental = false
* ^caseSensitive = false
* #ambulatory-request "Ambulatory prescription"
* #hospital-request "Hospital prescription"
* #self-medication "Upon patient demand - Self-medication"
* #with-request "Medication not sold in Belgium, with prescription"
* #without-request "Medication not sold in Belgium, without prescription"
* #pharmacist-advice "Upon pharmacist advice"