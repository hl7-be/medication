Instance: example-02-hukyndra
InstanceOf: BeMedicationPrescription
Usage: #example
Title: "Prescription Example 02 - Hukyndra"
Description: "Hukyndra 6 x 40mg/0.4ml - Loading dose: week 0: 80mg, week 2: 40mg, then 40mg every 2 weeks"
* identifier[+].system = "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-prescription"
* identifier[=].value = "BEP1HUKYN002"
* identifier[+].system = "urn:be:swh:ns-identifier"
* identifier[=].value = "SWH-RX-2025-002"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept.coding[+].system = "urn:be:samv2:amppackage"
* medicationCodeableConcept.coding[=].code = #594755-01
* medicationCodeableConcept.coding[=].display = "Hukyndra 40 mg inf. opl. s.c. voorgev. spuit 6 x 0.4 ml"
* medicationCodeableConcept.coding[=].userSelected = true
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "urn:be:fgov:ehealth:pseudo:v2:BAEeFgg-BNMHWl1EQ3T8Ox4unll26hx_3EnYGQ6i3qfQyOChof_TWFgR8RBGSN6sqpe_I7UBGgy-Btb1use9uA42RQEyw105JK9PFPzTMUbIm_tXNRszA5IGtrpW47a9g9y9b0grudGfutTfVpipAPR0h0Br9TZ1GfSCDcFKkNGVumZzwg:eyJhdWQiOiJ1aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3NzMyMzg0NzAsImlhdCI6MTc3MzE1MjA3MCwiYWxnIjoiZGlyIiwia2lkIjoiYWMwNWIzMjktMzhhOS00NTE0LThlMGMtMjI0NTcyOTI4ZWI5In0..O06ctnwl5suSzwgy.Q0qq4ydRxYUQpjixPggakcNiEIbdv-hZqmp5nY_Xh058EO_qeAUZGcwfxtAzdRHC2zcGR3E1AznVvwVORU6xTMF2C088u0FKHiG8p8aA_4A58YTOjX3XeFqclR6_AAhOv-OeQLhCUzjUqrKRQhOg4EedKEmJ0eOce4uPZS0XiZ6QmdA8T6Er.QKUT6gMzTYvf7EAf_Gwwdg"
* subject.identifier.value.extension[+].url = "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
* subject.identifier.value.extension[=].extension[+].url = "format"
* subject.identifier.value.extension[=].extension[=].valueCode = #direct
* subject.identifier.value.extension[=].extension[+].url = "marker"
* subject.identifier.value.extension[=].extension[=].valueBoolean = true
* authoredOn = "2025-10-19T00:00:00+02:00"
* contained = practitionerrole-example
* requester = Reference(practitionerrole-example)
* dosageInstruction[+].sequence = 1
* dosageInstruction[=].timing.repeat.boundsDuration.value = 1
* dosageInstruction[=].timing.repeat.boundsDuration.unit = "week"
* dosageInstruction[=].timing.repeat.boundsDuration.system = "http://unitsofmeasure.org"
* dosageInstruction[=].timing.repeat.boundsDuration.code = #wk
* dosageInstruction[=].doseAndRate[+].type.coding[+].system = "http://terminology.hl7.org/CodeSystem/dose-rate-type"
* dosageInstruction[=].doseAndRate[=].type.coding[=].code = #ordered
* dosageInstruction[=].doseAndRate[=].type.coding[=].display = "Ordered"
* dosageInstruction[=].doseAndRate[=].doseQuantity.value = 80
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #mg
* dosageInstruction[+].sequence = 2
* dosageInstruction[=].timing.repeat.boundsDuration.value = 1
* dosageInstruction[=].timing.repeat.boundsDuration.unit = "week"
* dosageInstruction[=].timing.repeat.boundsDuration.system = "http://unitsofmeasure.org"
* dosageInstruction[=].timing.repeat.boundsDuration.code = #wk
* dosageInstruction[=].doseAndRate[+].type.coding[+].system = "http://terminology.hl7.org/CodeSystem/dose-rate-type"
* dosageInstruction[=].doseAndRate[=].type.coding[=].code = #ordered
* dosageInstruction[=].doseAndRate[=].type.coding[=].display = "Ordered"
* dosageInstruction[=].doseAndRate[=].doseQuantity.value = 40
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #mg
* dosageInstruction[+].sequence = 3
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 2
* dosageInstruction[=].timing.repeat.periodUnit = #wk
* dosageInstruction[=].doseAndRate[+].type.coding[+].system = "http://terminology.hl7.org/CodeSystem/dose-rate-type"
* dosageInstruction[=].doseAndRate[=].type.coding[=].code = #ordered
* dosageInstruction[=].doseAndRate[=].type.coding[=].display = "Ordered"
* dosageInstruction[=].doseAndRate[=].doseQuantity.value = 40
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #mg
* dispenseRequest.validityPeriod.start = "2025-10-19T00:00:00+02:00"
* dispenseRequest.validityPeriod.end = "2026-01-18T00:00:00+01:00"