Instance: example-planned-line-01
InstanceOf: BePlannedLine
Usage: #example
Title: "Planned Line Example 01 - Bisoprolol"
Description: "Planned treatment: bisoprolol 2.5 mg once daily for three months, declared by the treating physician. Not an order - the intent from which prescriptions may later be issued."
* identifier[+].system = "urn:be:swh:ns-identifier"
* identifier[=].value = "SWH-PLAN-2025-001"
* status = #active
* intent = #plan
* extension[effectivePeriod].valuePeriod.start = "2025-10-19"
* extension[effectivePeriod].valuePeriod.end = "2026-01-18"
* extension[exposure-category].valueCodeableConcept = $SCT#262202000 "Therapeutic"
* medicationCodeableConcept.coding[+].system = "urn:be:samv2:vmpgroup"
* medicationCodeableConcept.coding[=].code = #3889
* medicationCodeableConcept.coding[=].display = "bisoprolol oraal 2,5 mg"
* medicationCodeableConcept.extension[medicationType].valueCodeableConcept = BeMedicationType#registered-medicinal-product
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "12345678901"
* authoredOn = "2025-10-19T00:00:00+02:00"
* contained = practitionerrole-example
* requester = Reference(practitionerrole-example)
* reasonCode = $SCT#38341003 "Hypertensive disorder"
* dosageInstruction[+].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].doseAndRate[+].doseQuantity.value = 2.5
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #mg
