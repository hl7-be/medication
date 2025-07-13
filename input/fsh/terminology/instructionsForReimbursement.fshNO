CodeSystem: MedicationRequestReimbursementType
Id: be-cs-medication-request-reimbursement-type
Title: "Medication request reimbursement type"
Description: "Medication request reimbursement type - instructions for reimbursement of the medication request"
* ^status = #active
* ^content = #complete
* ^version = "1.0.0"
* ^caseSensitive = true
* ^experimental = false
* #third-party-payer-applicable "Third-party payer applicable"
  * ^designation[0].language = #fr-BE
  * ^designation[=].value = "Tiers-payant applicable"
  * ^designation[+].language = #nl-BE
  * ^designation[=].value = "Derdebetalersregeling van toepassing"
* #first-dose "First dose"
  * ^designation[0].language = #fr-BE
  * ^designation[=].value = "1ère dose"
  * ^designation[+].language = #nl-BE
  * ^designation[=].value = "1ste toediening"
* #second-dose "Second dose + [date of the first dose]"
  * ^designation[0].language = #fr-BE
  * ^designation[=].value = "2ème dose + [date de la 1ère dose]"
  * ^designation[+].language = #nl-BE
  * ^designation[=].value = "2de toediening + [datum 1ste toediening]"
* #third-dose "Third dose + [date of the first and second dose]"
  * ^designation[0].language = #fr-BE
  * ^designation[=].value = "3ème dose + [date de la 1ère et 2ème dose]"
  * ^designation[+].language = #nl-BE
  * ^designation[=].value = "3de toediening + [datum 1ste en 2de toediening]"
* #chronic-renal-failure-pathway "Care pathway chronic renal failure"
  * ^designation[0].language = #fr-BE
  * ^designation[=].value = "Trajet de soins insuffisance rénale chronique"
  * ^designation[+].language = #nl-BE
  * ^designation[=].value = "Zorgtraject chronische nierinsufficiëntie"
* #diabetes-care-pathway "Care pathway diabetes"
  * ^designation[0].language = #fr-BE
  * ^designation[=].value = "Trajet de soins diabète"
  * ^designation[+].language = #nl-BE
  * ^designation[=].value = "Zorgtraject diabetes"
* #diabetes-convention "Diabetes convention"
  * ^designation[0].language = #fr-BE
  * ^designation[=].value = "Convention diabète"
  * ^designation[+].language = #nl-BE
  * ^designation[=].value = "Diabetesconventie"
* #non-reimbursable "Non-reimbursable"
  * ^designation[0].language = #fr-BE
  * ^designation[=].value = "Non remboursable"
  * ^designation[+].language = #nl-BE
  * ^designation[=].value = "Niet-vergoedbaar"
* #startup-pathway-type-2-diabetes "Start-up pathway type 2 diabetes"
  * ^designation[0].language = #fr-BE
  * ^designation[=].value = "Trajet de démarrage diabète type 2"
  * ^designation[+].language = #nl-BE
  * ^designation[=].value = "Opstarttraject diabetes type 2"


ValueSet: MedicationRequestReimbursementTypeVS
Id: MedicationRequestReimbursementTypeVS
Title: "Medication request reimbursement type ValueSet"
Description: "Medication request reimbursement type - instructions for reimbursement of the medication request"
* ^status = #active
* ^experimental = false
* include codes from system MedicationRequestReimbursementType
