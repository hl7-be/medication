Instance: example-4-of-medication-presc 
InstanceOf: MedRecordPrescription
Usage: #example
Description: "This example shows a dispense of two products. One that has a prescription and other that does not (and does not need one)"
Title: "Dispense of prescribed medication, and dispense of a product that can be done without a prescription"


* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* status = #active
* intent = #order

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#28035  "rosuvastatine oral 10 mg"


* authoredOn = "2021-07-19T09:00:00+02:00"

* requester.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP"

* encounter.identifier.value = "0cf5dc52-28dc-43ce-96d2-3a757526c739"
* encounter.identifier.system = "http://encounter-identifiers.com"

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

Instance: example-4-1-of-medication-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: "This example shows a dispense of a medication that is made before an existing prescription"
Title: "Dispense medication before the prescription of the general practitioner"

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"
* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#2040418  "Crestor compr. pellic. 28x 10mg"

* whenHandedOver = "2021-07-19T13:00:00+02:00"

* quantity.value = 1
* quantity.unit = "Box"
* quantity.system =  "http://standardterms.edqm.eu/PAC"
* quantity.code = #30009000

* authorizingPrescription.identifier.system = "http://prescription-identifiers.com"
* authorizingPrescription.identifier.value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* performer[+].actor.identifier.value = "7c3aa173-3185-4001-a661-df36a7492798"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacist"
* performer[=].function.coding = #dispenser

* performer[+].actor.identifier.value = "5b2e9903-fba7-4ed3-aa76-52d386012ca0"
* performer[=].actor.identifier.system = "http://dispenser-identifiers.com"
* performer[=].actor.display = "Pharmacy X"
* performer[=].function.coding = #dispensingOrg

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"


Instance: example-4-2-of-medication-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: "This example shows a dispense of a medication that is made before an existing prescription"
Title: "Dispense medication before the prescription of the general practitioner"

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "5df50eff-61ef-41ea-a614-fc0f15b31383"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"
* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#2933893  "Dafalgan compr. 20x 500mg"

* whenHandedOver = "2021-07-19T13:00:00+02:00"

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

* extension[treatmentPlan].valueReference.identifier.value = "b40abc28-9454-405b-bc81-7571a9a05f3a"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"
//new treatmentLine here since its another issue

