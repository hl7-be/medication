Instance: example-6-of-medication-presc 
InstanceOf: MedRecordPrescription
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist refuses to dispense the medication due to interaction with previous medication."
Title: "Refuse the dispense prescribed medication"


* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* status = #active
* intent = #order

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#16279  "ibuproféne oral 400 mg"


* authoredOn = "2021-07-19T09:00:00+02:00"

* requester.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP"

* encounter.identifier.value = "0cf5dc52-28dc-43ce-96d2-3a757526c739"
* encounter.identifier.system = "http://encounter-identifiers.com"

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

Instance: example-6-1-of-medication-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist refuses to dispense the medication due to interaction with previous medication."
Title: "Refuse the dispense prescribed medication"

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #declined 
* statusReasonCodeableConcept =  http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-status-reason#sddi "Drug interacts with another drug"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#16279  "ibuproféne oral 400 mg"

* whenHandedOver = "2021-07-19T13:00:00+02:00"

* quantity.value = 0
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

/*added reference of drug since it is mandatory for R4 and R5, but since is a VOS prescription, the same granularity is added
status declined and quantity zero for signaling refusal,
WhenhandedOver serves as date for the encounter
*/ 
