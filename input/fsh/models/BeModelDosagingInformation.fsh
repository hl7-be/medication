Logical: BeModelDosagingInformation
Parent: Base
Title: "Dosaging (model)"
Description: "Structured Dosage data model."
Characteristics: #can-be-target

* timing 0..1 BackboneElement "When medication should be administered (period, time of day, frequency, etc)" 
  * event 0..* dateTime "Exact date and/or time of the administration"
  * code 0..1 CodeableConcept "Timing abbreviation (AM - morning, Q4H - once in every 4 hours, BID - twice a day, etc)"
* doseRange 0..1 Range "Amount of medication per one dose (e.g '1 tablet', '2-3 tablets', '20ml')"
* doseQuantity 0..1 Quantity "Amount of medication per one dose (e.g '1 tablet', '2-3 tablets', '20ml')"
* instructions 0..1 string "Free text instructions for the patient, e.g 'take with food', 'do not take with alcohol', etc"
* routeOfAdministration 0..1 CodeableConcept "Route of administration"
* routeOfAdministration from BeRouteOfAdministrationVS
