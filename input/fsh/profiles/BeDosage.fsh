
Profile:        BeDosage
Parent:         Dosage
Id:             BeDosage
Title:          "Medication Dosage"
Description: "Specifications for a medication dosage for use in Belgian profiles."

* timing
  * event MS
  * code MS
* doseAndRate
  * doseRange MS
  * doseQuantity MS
  * doseQuantity from http://hl7.org/fhir/ValueSet/ucum-units (required)
  * doseQuantity.system 1..1
  * doseQuantity.code 1..1
  * doseQuantity ^short = "Amount of medication per dose, with a UCUM unit"
  * doseQuantity ^comment = "The unit is a UCUM code (system http://unitsofmeasure.org). Countable units such as tablets or drops use a UCUM annotation, e.g. {tablet}, or the unit 1 together with the unit text."
* route from BeRouteOfAdministrationVS
* patientInstruction MS
* text MS