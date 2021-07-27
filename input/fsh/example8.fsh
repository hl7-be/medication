Instance: example-8-of-medication-presc 
InstanceOf: MedRecordPrescription
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist dispenses it. But at the time of administration, the treatment is stopped due to a reaction."
Title: "Dispense of medication that was prescribed, but not taken till the end"

* identifier[0].system = "http://prescription-identifiers.com"
* identifier[0].value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"

* status = #active
* intent = #order

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* medicationCodeableConcept = https://vos-identifier.be/vos_product_codes#1941  "amoxicilline + acide clavulanique oral 875 mg + 125 mg"

* authoredOn = "2021-05-19T09:00:00+02:00"

* requester.identifier.value = "7c121778-5b2b-442d-9314-0a73995ab3dd"
* requester.identifier.system = "http://physician-identifiers.com"
* requester.display = "GP"

* encounter.identifier.value = "0cf5dc52-28dc-43ce-96d2-3a757526c739"
* encounter.identifier.system = "http://encounter-identifiers.com"

* extension[treatmentPlan].valueReference.identifier.value = "0d462dac-513a-4fb0-a2fe-fb7f53b27c5d"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

Instance: example-8-of-medication-dispense 
InstanceOf: MedRecordDispense
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist dispenses it. But at the time of administration, the treatment is stopped due to a reaction."
Title: "Dispense of medication that was prescribed, but not taken till the end"

* identifier[0].system = "http://dispense-identifiers.com"
* identifier[0].value = "f219aa4e-5d10-4f3d-840d-a15e0dff2957"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #completed

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#1715127  "Amoxiclav Sandoz 875/125 compr. (séc.) 20x"

* whenHandedOver = "2021-05-19T13:00:00+02:00"

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

Instance: example-8-of-medication-administration 
InstanceOf: MedRecordAdministration
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist dispenses it. But at the time of administration, the treatment is stopped due to a reaction."
Title: "Dispense of medication that was prescribed, but not taken till the end"

* identifier[0].system = "http://administration-identifiers.com"
* identifier[0].value = "12a0f790-9931-468a-acd2-00bd696ac3c4"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #stopped
* statusReason = http://snomed.info/sct#182897004 "Drug declined by patient - side effects"
// improve this code - new valueset?

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#1715127  "Amoxiclav Sandoz 875/125 compr. (séc.) 20x"

* performer[+].actor.identifier.value = "e84a4e09-03c4-4ad8-832b-7f5172dc97c1"
* performer[=].actor.identifier.system = "http://performer-identifiers.com"
* performer[=].actor.display = "Nurse"
* performer[=].function.coding = #performer

* effectiveDateTime = "2021-05-19T16:00:00+02:00"

* request.identifier.system = "http://prescription-identifiers.com"
* request.identifier.value = "69eb6358-6eb6-40e4-972f-33d22c3392c5"
 
* extension[treatmentPlan].valueReference.identifier.value = "b40abc28-9454-405b-bc81-7571a9a05f3a"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"

Instance: example-8-of-medication-usage 
InstanceOf: MedRecordUsage
Usage: #example
Description: "This example shows a prescription that is made by VOS and the pharmacist dispenses it. But at the time of administration, the treatment is stopped due to a reaction."
Title: "Dispense of medication that was prescribed, but not taken till the end"

* identifier[0].system = "http://medicationusage-identifiers.com"
* identifier[0].value = "cc4f91f6-d0f6-479c-b6c0-109177448ed7"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* status = #stopped
* statusReason = http://snomed.info/sct#395009001 "Medication stopped - side effect"

* medicationCodeableConcept = https://cnk.apb.be/codings/cnk_product_codes#1715127  "Amoxiclav Sandoz 875/125 compr. (séc.) 20x"

* dateAsserted = "2021-07-19T17:00:00+02:00"

* informationSource.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* informationSource.identifier.value = "64110219106"

* extension[treatmentPlan].valueReference.identifier.value = "b40abc28-9454-405b-bc81-7571a9a05f3a"
* extension[treatmentPlan].valueReference.identifier.system = "http://treatment-identifiers.com"
