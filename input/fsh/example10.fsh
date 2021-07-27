Instance: example-10-1-of-medication-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: "This example shows the capture of non-medication products. This is important because some of these products are known to interact with some pharmaceutical products."
Title: "The recording of non-medication aka pharmaceutical products"

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#3478674  "LRP ANTHELIOS MELK IP50+ DERMOPEDIATRICS 250ML"

* whenHandedOver = "2021-05-19T13:00:00+02:00"

* quantity.value = 1
* quantity.unit = "Bottle"
* quantity.system =  "http://standardterms.edqm.eu/PAC"
* quantity.code = #30008000

* performer[+].actor.identifier.value = "7c3aa173-3185-4001-a661-df36a7492798"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacist"
* performer[=].function.coding = #dispenser

* performer[+].actor.identifier.value = "5b2e9903-fba7-4ed3-aa76-52d386012ca0"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacy X"
* performer[=].function.coding = #dispensingOrg

//extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
//extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"
//treatmentLine?

Instance: example-10-2-of-medication-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: "This example shows the capture of non-medication products. This is important because some of these products are known to interact with some pharmaceutical products."
Title: "The recording of non-medication aka pharmaceutical products"

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#1696459  "REVIVA 900MCG HYPERICINE CAPS 60"

* whenHandedOver = "2021-05-19T13:00:00+02:00"

* quantity.value = 1
* quantity.unit = "Box"
* quantity.system =  "http://standardterms.edqm.eu/PAC"
* quantity.code = #30009000
//change

* performer[+].actor.identifier.value = "7c3aa173-3185-4001-a661-df36a7492798"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacist"
* performer[=].function.coding = #dispenser

* performer[+].actor.identifier.value = "5b2e9903-fba7-4ed3-aa76-52d386012ca0"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacy X"
* performer[=].function.coding = #dispensingOrg

//extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
//extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"
//treatmentLine?

Instance: example-10-3-of-medication-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: "This example shows the capture of non-medication products. This is important because some of these products are known to interact with some pharmaceutical products."
Title: "The recording of non-medication aka pharmaceutical products"

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#2830495  "FERRO PLUS NATURAL ENERGY CAPS 30"

* whenHandedOver = "2021-05-19T13:00:00+02:00"

* quantity.value = 1
* quantity.unit = "Box"
* quantity.system =  "http://standardterms.edqm.eu/PAC"
* quantity.code = #30009000

* performer[+].actor.identifier.value = "7c3aa173-3185-4001-a661-df36a7492798"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacist"
* performer[=].function.coding = #dispenser

* performer[+].actor.identifier.value = "5b2e9903-fba7-4ed3-aa76-52d386012ca0"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacy X"
* performer[=].function.coding = #dispensingOrg

//extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
//extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"
//treatmentLine?
