CodeSystem: BeMedicationType
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


ValueSet: BeMedicationTypeVS
Id:         medication-type-vs
Title:     "Medication preparation Type value set"
Description: "Medication preparation type value set"
* ^status = #draft
* ^experimental = false
* codes from system BeMedicationType