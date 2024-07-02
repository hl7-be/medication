CodeSystem: MedicationRequestReimbursementType
Id: medication-request-reimbursement-type
Title: "Medication request reimbursement type"
Description: "Medication request reimbursement type - instructions for reimbursement of the medication request"
* ^status = #draft
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* #third-party-payer-applicable "Third-party payer applicable"
* #third-party-payer-applicable ^designation[0].language = #fr-BE
* #third-party-payer-applicable ^designation[=].value = "Tiers-payant applicable"
* #third-party-payer-applicable ^designation[+].language = #nl-BE
* #third-party-payer-applicable ^designation[=].value = "Derdebetalersregeling van toepassing"
* #first-dose "First dose"
* #first-dose ^designation[0].language = #fr-BE
* #first-dose ^designation[=].value = "1ère dose"
* #first-dose ^designation[+].language = #nl-BE
* #first-dose ^designation[=].value = "1ste toediening"
* #second-dose "Second dose + [date of the first dose]"
* #second-dose ^designation[0].language = #fr-BE
* #second-dose ^designation[=].value = "2ème dose + [date de la 1ère dose]"
* #second-dose ^designation[+].language = #nl-BE
* #second-dose ^designation[=].value = "2de toediening + [datum 1ste toediening]"
* #third-dose "Third dose + [date of the first and second dose]"
* #third-dose ^designation[0].language = #fr-BE
* #third-dose ^designation[=].value = "3ème dose + [date de la 1ère et 2ème dose]"
* #third-dose ^designation[+].language = #nl-BE
* #third-dose ^designation[=].value = "3de toediening + [datum 1ste en 2de toediening]"
* #chronic-renal-failure-pathway "Care pathway chronic renal failure"
* #chronic-renal-failure-pathway ^designation[0].language = #fr-BE
* #chronic-renal-failure-pathway ^designation[=].value = "Trajet de soins insuffisance rénale chronique"
* #chronic-renal-failure-pathway ^designation[+].language = #nl-BE
* #chronic-renal-failure-pathway ^designation[=].value = "Zorgtraject chronische nierinsufficiëntie"
* #diabetes-care-pathway "Care pathway diabetes"
* #diabetes-care-pathway ^designation[0].language = #fr-BE
* #diabetes-care-pathway ^designation[=].value = "Trajet de soins diabète"
* #diabetes-care-pathway ^designation[+].language = #nl-BE
* #diabetes-care-pathway ^designation[=].value = "Zorgtraject diabetes"
* #diabetes-convention "Diabetes convention"
* #diabetes-convention ^designation[0].language = #fr-BE
* #diabetes-convention ^designation[=].value = "Convention diabète"
* #diabetes-convention ^designation[+].language = #nl-BE
* #diabetes-convention ^designation[=].value = "Diabetesconventie"
* #non-reimbursable "Non-reimbursable"
* #non-reimbursable ^designation[0].language = #fr-BE
* #non-reimbursable ^designation[=].value = "Non remboursable"
* #non-reimbursable ^designation[+].language = #nl-BE
* #non-reimbursable ^designation[=].value = "Niet-vergoedbaar"
* #startup-pathway-type-2-diabetes "Start-up pathway type 2 diabetes"
* #startup-pathway-type-2-diabetes ^designation[0].language = #fr-BE
* #startup-pathway-type-2-diabetes ^designation[=].value = "Trajet de démarrage diabète type 2"
* #startup-pathway-type-2-diabetes ^designation[+].language = #nl-BE
* #startup-pathway-type-2-diabetes ^designation[=].value = "Opstarttraject diabetes type 2"

ValueSet: MedicationRequestReimbursementTypeVS
Id: medication-request-reimbursement-type
Title: "Medication request reimbursement type ValueSet"
Description: "Medication request reimbursement type - instructions for reimbursement of the medication request"
* ^status = #draft
* ^experimental = false
* include codes from system MedicationRequestReimbursementType
