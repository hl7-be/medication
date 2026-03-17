Instance: example-01-lasix
InstanceOf: BeMedicationPrescription
Usage: #example
Title: "Prescription Example 01 - Lasix"
Description: "Lasix 50 x 40 mg - Every other day (QOD)"
* identifier[+].system = "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-prescription"
* identifier[=].value = "BEP1LASIX001"
* identifier[+].system = "urn:be:swh:ns-identifier"
* identifier[=].value = "SWH-RX-2025-001"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept.coding[+].system = "urn:be:samv2:amppackage"
* medicationCodeableConcept.coding[=].code = #067663-02
* medicationCodeableConcept.coding[=].display = "Lasix 40 mg tabl. 50"
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
* dosageInstruction[+].timing.code.coding[+].system = "http://terminology.hl7.org/CodeSystem/timing-abbreviation"
* dosageInstruction[=].timing.code.coding[=].code = #QOD
* dosageInstruction[=].timing.code.coding[=].display = "QOD"
* dispenseRequest.validityPeriod.start = "2025-10-19T00:00:00+02:00"
* dispenseRequest.validityPeriod.end = "2026-01-18T00:00:00+01:00"