CodeSystem: BeMedicationType
Title:     "Medication preparation Type"
Description: "Medication preparation type"
* ^status = #active
* ^experimental = false
* ^caseSensitive = false
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationType"
* #magistral "Magistral preparation"
//* #officinal "Officinal preparation"
* #registered-medicinal-product "Medicinal Product"
* #non-medicinal-product "Non-medicinal product"

// TO DO: Do we need non-authorized products?


ValueSet: BeMedicationTypeVS
Title:     "Medication preparation Type value set"
Description: "Medication preparation type value set"
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationTypeVS"
* ^status = #active
* ^experimental = false
* codes from system BeMedicationType