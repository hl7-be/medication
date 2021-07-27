## Prescribed medication is changed by another medication from a different VOS-cluster

### a) Different strength  

This example shows a prescription that is made by VOS and the pharmacist changes the medication for one belonging to another VOS - Cluster but same medication (diffence in the strength).


* After a GP visit, the patient Pia Peters (75years) is prescribed paracetamol 1000 mg cp (TID) for headaches.
* In the pharmacy, the pharmacist understands the the patient has problems swallowing the pill itself, so it trades the 1000 mg strength, for 500 mg and indicates that the patient should take 2x500 mg every 8h and not 1x1000mg every 8 hours.
* It is then possible to understand that the original prescription was paracetamol 1000 mg and the dispense was for dafalgan (paracetamol) 500 mg with different instructions. 


**Prescriptions attributes**
1. Produt Identification - [medication](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.medication) 
    * VOS - paracetamol oral 1G (24745)

2. Dosage - [dosageInstruction](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.dosageInstruction)
   
3. Date of the prescription - [authoredOn](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.authoredOn)
   
4. Patient for whom the prescription is - [subject](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.subject)
   
5. Requester - [requester](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.requester)
   
6. Encounter - [encounter](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.encounter)  
   
7. Status (active) - [status](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.status)


**Dispense attributes**
1.	Produt Identification - [medicationReference](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medicationReference) or [medicationCodeableConcept](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medication[x]:medicationCodeableConcept)
     * VOS - paracetamol oral 500 mg (24901)
     * mppcv - Dafalgan compr. 20x 500mg (2933893)
  
2. Total quantity (20) - [quantity](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.quantity)

3. Reason for change (difficulty swallowing) - [note](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.note)

4. Identification of Prescription - [authorizingPrescription](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.authorizingPrescription)

5. Date of the dispense - [whenHandedOver](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.whenHandedOver)

6. Dosage - [dosageInstruction](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.dosageInstruction)

7. Subject - [subject](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.subject)
   
8. Dispenser - [performer](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.performer)
