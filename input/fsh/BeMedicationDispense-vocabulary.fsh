Alias: $hcparty = https://www.ehealth.fgov.be/standards/fhir/CodeSystem/cd-hcparty


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
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/cnk-codes"
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
* uniqueId[0].value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/prescription-id"
* uniqueId[0].preferred = true
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
Title: "Dispenser Types"
Description: "Dispenser Types - from hcparty"

* $hcparty#deptpharmacy
* $hcparty#perspharmacist
* $hcparty#orgpharmacy
* $hcparty#perspharmacyassistant
* $hcparty#perspharmacistclinicalbiologist
* $hcparty#persdentist
* $hcparty#deptdentistry



