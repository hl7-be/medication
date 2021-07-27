## Dispense of medication that was prescribed, but not taken till the end

This example shows a prescription that is made by VOS and the pharmacist dispenses it. But at the time of administration, the treatment is stopped due to a reaction.

* After a GP visit, the patient Pia Peters is prescribed amoxicillin + clavulanic acid 875 mg + 125 mg for a pharyngitis for the conclusion of the package.
* The pharmacist, dispensed Amoxiclav Sandoz 875/125.
* However, after 1 take, the patient stopped doing the medication because the patient had an alergic reaction. 
* This should result in a medication summary that can group treatment lines, enabling the visualization of the prescription, dispenses and administrations next to each other.

**Prescriptions attributes**
1. Produt Identification - [medication](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.medication) 
    * VOS - amoxicilline + acide clavulanique oral 875 mg + 125 mg (1941)
  
2. Dosage - [dosageInstruction](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.dosageInstruction)
    * [PatientInstructions](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.dosageInstruction.patientInstruction) for taking.
  
3. Date of the prescription - [authoredOn](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.authoredOn)
   
4. Patient for whom the prescription is - [subject](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.subject)
   
5. Requester - [requester](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.requester)
   
6. Encounter - [encounter](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.encounter)
   
7. Status (active) - [status](https://build.fhir.org/medicationrequest-definitions.html#MedicationRequest.status)

**Dispense attributes**
1. Produt Identification [medicationReference](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medicationReference) or [medicationCodeableConcept](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.medication[x]:medicationCodeableConcept)
    * VOS - amoxicilline + acide clavulanique oral 875 mg + 125 mg (1941)
    * mppcv - Amoxiclav Sandoz 875/125 compr. (séc.) 20x (1715127)
  
2. Total quantity (20) - [quantity](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.quantity)
   
3. Identification of Prescription - [authorizingPrescription](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.authorizingPrescription)
   
4. Date of the dispense - [whenHandedOver](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.whenHandedOver)
   
5. Dosage - [dosageInstruction](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.dosageInstruction)
   
6. Subject - [subject](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.subject)
   
7. Dispenser - [performer](https://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/branches/master/StructureDefinition-be-medicationdispense-definitions.html#MedicationDispense.performer)

**Administration attributes**
1. Product Identification - [medication](https://build.fhir.org/medicationadministration-definitions.html#MedicationAdministration.medication)
   
2. Subject - [subject](https://build.fhir.org/medicationadministration-definitions.html#MedicationAdministration.subject)
   
3. Encounter - [encounter](https://build.fhir.org/medicationadministration-definitions.html#MedicationAdministration.encounter)
   
4. Occurence - [occurence](https://build.fhir.org/medicationadministration-definitions.html#MedicationAdministration.occurence_x_)
   
5. Performer - [performer](https://build.fhir.org/medicationadministration-definitions.html#MedicationAdministration.performer)
   
6. Prescription - [request](https://build.fhir.org/medicationadministration-definitions.html#MedicationAdministration.request)
   
7. Dosage - [dosage](https://build.fhir.org/medicationadministration-definitions.html#MedicationAdministration.dosage)
   
8. Status (stopped) - [status](https://build.fhir.org/medicationadministration-definitions.html#MedicationAdministration.status)
   
9.  Status Reason (allergic reaction) - [statusReason](https://build.fhir.org/medicationadministration-definitions.html#MedicationAdministration.statusReason)


**Medication Usage**
1. Product Identification - [medication](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.medication)
   
2. Subject - [subject](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.subject)
   
3. Date of report - [dateAsserted](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.dateAsserted)
   
4. InformationSource (Patient) - [informationSource](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.informationSource)
   
5. Prescription link - [derivedFrom](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.derivedFrom)
   
6. Status (not-taking) - [adherence.code](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.adherence.code) 
   
7. Reason (Medication stopped - side effect) - [adherence.reason](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.adherence.reason)
