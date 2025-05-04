Logical: BeModelDosagingInformation
Title: "Dosaging - Data Model"
Description: "Usage instructions. Instructions about requested administration of the product. Based on FHIR Dosage complex data type."
Characteristics: #can-be-target

* timing 0..1 BackboneElement "When medication should be administered (period, time of day, frequency, etc)" 
  * event 0..* dateTime "Exact date and/or time of the administration"
  * code 0..1 CodeableConcept "Timing abbreviation (AM - morning, Q4H - once in every 4 hours, BID - twice a day, etc)"
* routeOfAdministration 0..1 CodeableConcept "Route of administration"
