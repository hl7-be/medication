# Medication Record - Extended scenarios - Medication v1.1.0

* [**Table of Contents**](toc.md)
* **Medication Record - Extended scenarios**

## Medication Record - Extended scenarios

Some scenarios show additional considerations to keep when implementing these resources. These more complex cases show how this specification can be used:

### Concurrent medications

This scenario shows the concurrent medication and the relevance in a medication overview that is independent of underlying indication, and can consider different pharmaceutical products. This scenario also shows the value of medication terminologies, namely ATC. In this case, all the medications are different products, but they are all under ATC code A02BC.

* After a GP visit, the patient Pia Peters is prescribed a PPI (pantoprazole) for an ulcer.
* A few days later, with his GP on vacation, the patient has an infection and the physician says the patient should take a PPI for protecting the stomach when taking antibiotics, and prescribes lanzoprazole.
* When the GP is back, the daughter of Patient Pia Peters declares they have taken a PPI (omeprazole) for some time, when they have some gastric complaints.

**This should result in a medication record that can be grouped by the medication class, which allows a correct identification of concurrent medication**. It is for this reason that the medication has an explicit “classification” element.

### Protocols

* Patient Paul Pauwels has hypertension and his physician prescribes him a predefined treatment.

The treatment protocol P5 consists of:
 First 4 weeks:

* losartan, 50 mg, once a day
* indapamide 1,5 mg once a day
* amlodipine 5 mg once a day
 After 4 weeks:
* if needed, increase losartan from 50 to 100 mg
* maintain indapamide
* maintain amlodipine
 
 

The patient gets a prescription for the 3 products. After the pharmacy dispenses the medications, the patient starts the treatment. After 4 weeks, the physician realizes that the patient’s blood pressure justifies the increase of the dose for losartan, as per the protocol. The physician issues a new prescritpion but the patient still has the medication at home, so the physician tells the patient to simply start taking 2 tablets instead of one, until a few weeks later the patient goes to the pharmacy.

