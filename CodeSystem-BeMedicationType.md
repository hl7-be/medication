# Medication preparation Type - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication preparation Type**

## CodeSystem: Medication preparation Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationType | *Version*:1.1.0 |
| Active as of 2025-12-02 | *Computable Name*:BeMedicationType |

 
Medication preparation type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BeMedicationTypeVS](ValueSet-BeMedicationTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "BeMedicationType",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationType",
  "version" : "1.1.0",
  "name" : "BeMedicationType",
  "title" : "Medication preparation Type",
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
  "description" : "Medication preparation type",
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
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "magistral",
      "display" : "Magistral preparation"
    },
    {
      "code" : "registered-medicinal-product",
      "display" : "Medicinal Product"
    },
    {
      "code" : "non-medicinal-product",
      "display" : "Non-medicinal product"
    }
  ]
}

```
