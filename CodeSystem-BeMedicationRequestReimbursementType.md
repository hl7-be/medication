# Medication request reimbursement type - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication request reimbursement type**

## CodeSystem: Medication request reimbursement type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationRequestReimbursementType | *Version*:1.1.0 |
| Active as of 2025-12-02 | *Computable Name*:BeMedicationRequestReimbursementType |

 
Medication request reimbursement type - instructions for reimbursement of the medication request 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BeMedicationRequestReimbursementTypeVS](ValueSet-BeMedicationRequestReimbursementTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "BeMedicationRequestReimbursementType",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationRequestReimbursementType",
  "version" : "1.1.0",
  "name" : "BeMedicationRequestReimbursementType",
  "title" : "Medication request reimbursement type",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-02T14:49:22+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [
    {
      "name" : "eHealth Platform",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ehealth.fgov.be/standards/fhir"
        },
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net"
        }
      ]
    },
    {
      "name" : "Message Structure eHealth",
      "telecom" : [
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Medication request reimbursement type - instructions for reimbursement of the medication request",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "BE",
          "display" : "Belgium"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "third-party-payer-applicable",
      "display" : "Third-party payer applicable",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Tiers-payant applicable"
        },
        {
          "language" : "nl-BE",
          "value" : "Derdebetalersregeling van toepassing"
        }
      ]
    },
    {
      "code" : "first-dose",
      "display" : "First dose",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "1ère dose"
        },
        {
          "language" : "nl-BE",
          "value" : "1ste toediening"
        }
      ]
    },
    {
      "code" : "second-dose",
      "display" : "Second dose + [date of the first dose]",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "2ème dose + [date de la 1ère dose]"
        },
        {
          "language" : "nl-BE",
          "value" : "2de toediening + [datum 1ste toediening]"
        }
      ]
    },
    {
      "code" : "third-dose",
      "display" : "Third dose + [date of the first and second dose]",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "3ème dose + [date de la 1ère et 2ème dose]"
        },
        {
          "language" : "nl-BE",
          "value" : "3de toediening + [datum 1ste en 2de toediening]"
        }
      ]
    },
    {
      "code" : "chronic-renal-failure-pathway",
      "display" : "Care pathway chronic renal failure",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Trajet de soins insuffisance rénale chronique"
        },
        {
          "language" : "nl-BE",
          "value" : "Zorgtraject chronische nierinsufficiëntie"
        }
      ]
    },
    {
      "code" : "diabetes-care-pathway",
      "display" : "Care pathway diabetes",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Trajet de soins diabète"
        },
        {
          "language" : "nl-BE",
          "value" : "Zorgtraject diabetes"
        }
      ]
    },
    {
      "code" : "diabetes-convention",
      "display" : "Diabetes convention",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Convention diabète"
        },
        {
          "language" : "nl-BE",
          "value" : "Diabetesconventie"
        }
      ]
    },
    {
      "code" : "non-reimbursable",
      "display" : "Non-reimbursable",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Non remboursable"
        },
        {
          "language" : "nl-BE",
          "value" : "Niet-vergoedbaar"
        }
      ]
    },
    {
      "code" : "startup-pathway-type-2-diabetes",
      "display" : "Start-up pathway type 2 diabetes",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Trajet de démarrage diabète type 2"
        },
        {
          "language" : "nl-BE",
          "value" : "Opstarttraject diabetes type 2"
        }
      ]
    }
  ]
}

```
