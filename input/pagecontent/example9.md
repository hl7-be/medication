## The recording of anesthetic, contrast and similar medications in the medication scheme

This example shows a medication reconciliation scheme that check a possible interaction before a surgery

* After a GP visit, the patient Pia Peters is scheduled for a minor surgery.
* The patient is admited for the surgery and the admiting physician makes the medication reconciliation
* During the reconciliation, the anesthetist checks the history for benzodiazepines usage, namely alprazolam that should be marked in order to adjust / monitor the induction of surgery with propofol


**Medication Usage**
1. Product Identification - [medication](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.medication)
    * VOS - alprazolam oral 0,5 mg (1222)
  
2. Subject - [subject](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.subject)
   
3. Date of report - [dateAsserted](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.dateAsserted)
   
4. InformationSource (Patient) - [informationSource](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.informationSource)
   
5. Prescription link - [derivedFrom](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.derivedFrom)
   
6. Status (taking) - [adherence.code](https://build.fhir.org/medicationusage-definitions.html#MedicationUsage.adherence.code) 
