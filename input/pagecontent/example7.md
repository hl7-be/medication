## Dispense of medication that was prescribed to take if needed, but was not taken

This example shows a prescription that is made by VOS and to take only if needed and the pharmacist dispenses it. 
Then it is reported that the medication was not taken at all.

* After a GP visit, the patient Pia Peters is prescribed Ciprofloxacine 500 mg cp since the patient will travel to southeast Asia. The prescription is marked as "taken if discomfort or diarrhea"
* After reaching the pharmacy, Ciproxine is dispensed facing that prescription.
* After the patient arrives from the travel, she tells the GP that she ended up not taking the medication because she had no problems.
* This should result in a medication summary that can group treatment lines, enabling the visualization of the prescription and related dispenses next to each other.


**Prescriptions attributes**
1. Produt Identification - [medication](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.medication) 
    * VOS - ciprofloxacine oral 500 mg (6734)
  
2. Dosage - [dosageInstruction](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.dosageInstruction)
    * [PatientInstructions](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.dosageInstruction.patientInstruction) for taking.
  
3. Date of the prescription - [authoredOn](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.authoredOn)
   
4. Patient for whom the prescription is - [subject](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.subject)
   
5. Requester - [requester](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.requester)
   
6. Encounter - [encounter](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.encounter)
   
7. Status (active) - [status](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.status)

**Dispense attributes**
1. Produt Identification [medicationReference](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medicationReference) or [medicationCodeableConcept](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medication[x]:medicationCodeableConcept)
    * VOS - ciprofloxacine oral 500 mg (6734)
    * mppcv - Ciproxine compr. pellic. (séc.) 20x 500mg (1359611)
  
2. Total quantity (20) - [quantity](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.quantity)
   
3. Identification of Prescription - [authorizingPrescription](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.authorizingPrescription)
   
4. Date of the dispense - [whenHandedOver](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.whenHandedOver)
   
5. Dosage - [dosageInstruction](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.dosageInstruction)
   
6. Subject - [subject](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.subject)
   
7. Dispenser - [performer](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.performer)

**Medication Usage**
1. Product Identification - [medication](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.medication)
2. Subject - [subject](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.subject)
3. Date of report - [dateAsserted](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.dateAsserted)
4. InformationSource (Patient) - [informationSource](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.informationSource)
5. Prescription link - [derivedFrom](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.derivedFrom)
6. Status (not-taking) - [adherence.code](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.adherence.code) 
7. Reason (not needed) - [adherence.reason](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.adherence.reason)


