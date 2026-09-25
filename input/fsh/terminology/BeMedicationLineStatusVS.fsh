ValueSet: BeMedicationLineClinicalStatusVS
Id: BeMedicationLineClinicalStatusVS
Title: "Medication Line Clinical Status ValueSet"
Description: "The clinical status of the treatment described by a medication line: active, on-hold, stopped or completed. Used by the clinicalStatus element of the Medication Line logical model. FHIR R4 MedicationStatement status codes."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationLineClinicalStatusVS"
* ^status = #draft
* ^experimental = false
* http://hl7.org/fhir/CodeSystem/medication-statement-status#active
* http://hl7.org/fhir/CodeSystem/medication-statement-status#on-hold
* http://hl7.org/fhir/CodeSystem/medication-statement-status#stopped
* http://hl7.org/fhir/CodeSystem/medication-statement-status#completed


ValueSet: BeMedicationLineStatusVS
Id: BeMedicationLineStatusVS
Title: "Medication Line Status ValueSet"
Description: "The status of a medication line as carried in MedicationStatement.status. The logical model has two elements, status (recorded, entered-in-error) and clinicalStatus (active, on-hold, stopped, completed); in the FHIR profile they converge into this one element. The four clinical codes are carried as such and imply a recorded entry; entered-in-error carries the registration status. FHIR R4 MedicationStatement status codes; unknown, intended and not-taken are excluded."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationLineStatusVS"
* ^status = #draft
* ^experimental = false
* http://hl7.org/fhir/CodeSystem/medication-statement-status#active
* http://hl7.org/fhir/CodeSystem/medication-statement-status#on-hold
* http://hl7.org/fhir/CodeSystem/medication-statement-status#stopped
* http://hl7.org/fhir/CodeSystem/medication-statement-status#completed
* http://hl7.org/fhir/CodeSystem/medication-statement-status#entered-in-error
