## Prescribed medication is changed by another medication from a different VOS-cluster

### b) Different substance(s) is dispensed  

This example shows a prescription that is made by VOS and the pharmacist changes the medication for one belonging to another VOS - Cluster.


* After a GP visit, the patient Pia Peters (75 years) is prescribed ibuprofen 400 mg cp (TID) for headaches.
* The pharmacist, after a conversation with the patient, got to know that he was doing Tritace (ramipril) 10 mg for hypertension.
* Since the ibuprofen inhibits the anti-hipertensive action of ramipril, the pharmacist chose to change ibuprofen by paracetamol, dispensing Dafalgan Forte 1000 mg also TID;
 
**Prescriptions attributes**
1. Produt Identification - [medication](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.medication) 
    * VOS - ibuproféne oral 400 mg (16279)

2. Dosage - [dosageInstruction](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.dosageInstruction)
   
3. Date of the prescription - [authoredOn](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.authoredOn)
   
4. Patient for whom the prescription is - [subject](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.subject)
   
5. Requester - [requester](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.requester)
   
6. Encounter - [encounter](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.encounter)  
   
7. Status (active) - [status](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.status)

**Dispense attributes**
1. Produt Identification - [medicationReference](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medicationReference) or [medicationCodeableConcept](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medication[x]:medicationCodeableConcept)
     * VOS - paracetamol oral 1G (24745)
     * mppcv - Dafalgan compr. efferv. (séc.) Forte 20x 1g (3391281)

2. Total quantity (20) - [quantity](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.quantity)
   
3. Reason for change (drug-drug interaction) - [note](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.note)
   
4. Identification of Prescription - [authorizingPrescription](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.authorizingPrescription)
   
5. Date of the dispense - [whenHandedOver](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.whenHandedOver)
   
6. Dosage - [dosageInstruction](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.dosageInstruction)
   
8. Subject - [subject](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.subject)
   
9.  Dispenser - [performer](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.performer)