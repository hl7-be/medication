Alias: $hcparty = https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty


Instance: be-ns-cnk-codes
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - CNK Product Codes"
* status = #active
* name = "BeNSCNK"
* date = "2020-07-24"
* kind = #codesystem
* description = "Naming System - CNK Product Codes"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes"
* uniqueId[0].preferred = true
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#056



Instance: be-ns-prescription-ids
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - Prescription IDs"
* status = #active
* name = "BeNSPrescriptions"
* date = "2020-07-24"
* kind = #identifier
* description = "Naming System - Prescription IDs"
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-prescription"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "The value BeMedicationPrescription requires (identifier recip-e). Pending decision (#373): add the https and www form."
* uniqueId[1].type = #uri
* uniqueId[1].value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/prescription-id"
* uniqueId[1].preferred = false
* uniqueId[1].comment = "Published preferred uniqueId of this NamingSystem up to medication 1.1.1. Pending decision (#373): keep or remove."
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#056




Instance: be-ns-product-package-type
InstanceOf: NamingSystem
Usage: #definition
Description: "Naming System - Prescription IDs"
* status = #active
* name = "BeNSProductPackage"
* date = "2020-07-24"
* kind = #codesystem
* description = "Naming System - Product Package Types"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/product-package-type"
* uniqueId[0].preferred = true
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#056



ValueSet: DispenserTypes
Id: be-vs-dispenser-types
Title: "Dispenser Types"
Description: "Dispenser Types - from hcparty"
* ^status = #draft
* ^experimental = false
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* $hcparty#deptpharmacy
* $hcparty#perspharmacist
* $hcparty#orgpharmacy
* $hcparty#perspharmacyassistant
* $hcparty#perspharmacistclinicalbiologist
* $hcparty#persdentist
* $hcparty#deptdentistry



