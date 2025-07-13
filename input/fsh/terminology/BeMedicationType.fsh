CodeSystem: BeMedicationType
Id:         medication-type
Title:     "Medication preparation Type"
Description: "Medication preparation type"
* ^status = #active
* ^experimental = false
* ^caseSensitive = false
* #magistral "Magistral preparation"
//* #officinal "Officinal preparation"
* #registered-medicinal-product "Medicinal Product"
* #non-medicinal-product "Non-medicinal product"

// TO DO: Do we need non-authorized products?


ValueSet: BeMedicationTypeVS
Id:         medication-type-vs
Title:     "Medication preparation Type value set"
Description: "Medication preparation type value set"
* ^status = #active
* ^experimental = false
* codes from system BeMedicationType