/*

ValueSet: MedicationSummaryTypes
Title: "Body weight preconditions."
Description:  "Circumstances for body weight measurement."
* SCT#971000205103 "Wearing street clothes with shoes"
* SCT#961000205106 "Wearing street clothes, no shoes"
* SCT#951000205108 "Wearing underwear or less"

ValueSet: HistologyMorphologyBehaviorVS
Id: mcode-histology-morphology-behavior-vs
Title: "Histology Morphology Behavior Value Set"
Description: "Codes representing the structure, arrangement, and behavioral characteristics of malignant neoplasms, and cancer cells.
* include codes from system SCT where concept is-a #367651003 "Malignant neoplasm of primary, secondary, or uncertain origin (morphologic abnormality)"
* include codes from system SCT where concept is-a #399919001 "Carcinoma in situ - category (morphologic abnormality)"
* include codes from system SCT where concept is-a #399983006 "In situ adenomatous neoplasm - category (morphologic abnormality)"
* exclude codes from system SCT where concept is-a #450893003 "Papillary neoplasm, pancreatobiliary-type, with high grade intraepithelial neoplasia (morphologic abnormality)"
* exclude codes from system SCT where concept is-a #128640002 "Glandular intraepithelial neoplasia, grade III (morphologic abnormality)"
* exclude codes from system SCT where concept is-a #450890000 "Glandular intraepithelial neoplasia, low grade (morphologic abnormality)"
* exclude codes from system SCT where concept is-a #703548001 "Endometrioid intraepithelial neoplasia (morphologic abnormality)"


CodeSystem:  YogaCS
Id: yoga-code-system
Title: "Yoga Code System."
Description:  "A brief vocabulary of yoga-related terms."
* #Sirsasana "Headstand"
    "An inverted asana, also called mudra in classical hatha yoga, involves standing on one's head."
* #Halasana "Plough Pose"
    "Halasana or Plough pose is an inverted asana in hatha yoga and modern yoga as exercise. Its variations include Karnapidasana with the knees by the ears, and Supta Konasana with the feet wide apart."
*/

/*
Instance: be-cs-medication-summary-types
InstanceOf: CodeSystem
* status = #draft
* name = "BeCSMedicationSummaryTypes"
* date = "2021-03-24"
* kind = #codesystem
* description = "CodeSystem - Medication Summary types"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/CodeSystem/be-cs-medication-summary-types"
* uniqueId[0].preferred = true
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#056






Instance: be-vs-medication-summary-types
InstanceOf: ValueSet
Usage: #definition
Description: "ValueSet - Medication Summary types"
* status = #draft
* name = "BeVSMedicationSummaryTypes"
* date = "2021-03-24"
* kind = #codesystem
* description = "ValueSet - Medication Summary types"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/ValueSet/be-vs-medication-summary-types"
* uniqueId[0].preferred = true
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#056

*/


CodeSystem: BeCSMedicationSummaryTypes
Id: be-cs-medication-summary-types
Title: "Medication Summary types"
Description: "CodeSystem - Medication Summary types"
* #kmehr-ms-5.6 "Belgian Medication Schema v5.6 - 09/2018"
* #kmehr-ms-5.5 "Belgian Medication Schema v5.5 - 12-2017"


ValueSet: BeVSMedicationSummaryTypes
Id: be-vs-medication-summary-types
Title: "Medication Summary types"
Description:  "Valueset -  Medication Summary types"
* include codes from system BeCSMedicationSummaryTypes

// *************

