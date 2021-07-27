## Prescribed medication is changed by another medication from a different VOS-cluster

### a) different package size  

This example shows a prescription that is made by brand name and the pharmacist changes the medication for one belonging to the same VOS - Cluster but different package size.

* After a GP visit, the patient Pia Peters is prescribed Dafalgan Forte 1000 mg cp (TID) 16 tabs for headaches.
* When reaching the pharmacy for dispense, the pharmacy does not have Dafalgan Forte 16 tabs at the moment but dispenses Dafalgan Forte 1000 mg cp 10 tabs instead.
* It is then possible to check that the original prescription was Dafalgan Forte 16 tabs but the dispense was Dafalgan Forte 10 tabs.
* This should result in a medication summary that can group treatment lines, enabling the visualization of the prescription and related dispenses next to each other.

**Prescriptions attributes**
1. Produt Identification - [medication](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.medication) 
    *	VOS - paracetamol oral 1G (24745)
    *	mppcv - Dafalgan compr. pellic. (séc.) Forte 16x 1g  (1799147)

2. Dosage - [dosageInstruction](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.dosageInstruction)
   
3. Reason for not prescribing VOS - [substitution](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.substitution).allowed (F) and [substitution](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.substitution).reason
   
4. Date of the prescription - [authoredOn](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.authoredOn)
   
5. Patient for whom the prescription is - [subject](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.subject)
   
6. Requester - [requester](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.requester)
   
7. Encounter - [encounter](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.encounter)
   
8. Status (active) - [status](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.status)

**Dispense attributes**
1. Produt Identification - [medicationReference](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medicationReference) or [medicationCodeableConcept](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medication[x]:medicationCodeableConcept)
    * VOS - paracetamol oral 1G (24745)
    * mppcv - Dafalgan compr. pellic. (séc.) Forte 10x 1g (3010733)

2. Total quantity (30) - [quantity](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.quantity)
   
3. Reason for change (out of stock) - [note](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.note)
   
4. Identification of Prescription - [authorizingPrescription](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.authorizingPrescription)
   
5. Date of the dispense - [whenHandedOver](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.whenHandedOver)
   
6. Dosage - [dosageInstruction](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.dosageInstruction)
   
7. Subject - [subject](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.subject)
   
8. Dispenser - [performer](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.performer)
