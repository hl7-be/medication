//based on R4
Profile: MedRecordDispense
Parent: MedicationDispense
* identifier MS
* subject MS // dispense.patient
* performer MS
//* performer.actor only Reference($be-organization or $be-practitioner)
* whenHandedOver MS
* authorizingPrescription MS
* status MS
* statusReasonCodeableConcept MS
* medicationCodeableConcept MS
* medicationReference MS
* quantity MS
* dosageInstruction MS
* substitution.reason MS
* type MS
* extension contains http://hl7.org/fhir/StructureDefinition/event-basedOn named treatmentPlan 0..1 MS
* extension[treatmentPlan].valueReference only Reference(CarePlan)


Profile: MedRecordPrescription
Parent: MedicationRequest
* identifier MS
* subject MS 
* status MS
* statusReason MS
* intent MS
* medicationCodeableConcept MS
* medicationReference MS
* encounter MS
* requester MS
* reasonCode MS
* groupIdentifier MS
* dosageInstruction MS
* note MS
* authoredOn MS
* extension contains http://hl7.org/fhir/StructureDefinition/event-basedOn named treatmentPlan 0..1 MS
* extension[treatmentPlan].valueReference only Reference(CarePlan) 


Profile: MedRecordUsage
Parent: MedicationStatement
* identifier MS
* status MS
* category MS
* medicationCodeableConcept MS
* medicationReference MS
* subject MS 
* effectiveDateTime MS	
* effectivePeriod MS
* dateAsserted MS
* informationSource MS
* reasonCode MS
* reasonReference MS
* dosage MS
* extension contains http://hl7.org/fhir/StructureDefinition/event-basedOn named treatmentPlan 0..1 MS
* extension[treatmentPlan].valueReference only Reference(CarePlan) 

Profile: MedRecordAdministration
Parent: MedicationAdministration
* identifier MS
* status MS
* statusReason MS
* category MS
* medicationCodeableConcept MS
* medicationReference MS
* subject MS 
* context MS
* effectiveDateTime MS	
* effectivePeriod MS
* performer MS
* reasonCode MS
* reasonReference MS
* request MS
* device MS
* note MS 
* dosage MS
* extension contains http://hl7.org/fhir/StructureDefinition/event-basedOn named treatmentPlan 0..1 MS
* extension[treatmentPlan].valueReference only Reference(CarePlan)


//based on R4
Profile: MedRecordTreatmentLine
Parent: MedicationStatement
* identifier MS
* basedOn MS
* subject MS 
* informationSource MS //recorder
* dateAsserted MS //recordDate
* effectiveDateTime MS //startMedicationDate + endMedicationDate
* effectivePeriod MS //startMedicationDate + endMedicationDate
* status MS //lifecycleStatus
* statusReason MS //statusReason
* medicationCodeableConcept MS
* medicationReference MS
* dosage MS //dosageAmmount + peridocity + dayperiod + route + instructionforUse
* category MS //medicationType
* note MS //everything else (origintype, lotnumber and reaction)

