# Medication preparation Type - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication preparation Type**

## CodeSystem: Medication preparation Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/CodeSystem/medication-type | *Version*:1.1.0 |
| Draft as of 2026-03-27 | *Computable Name*:BEMedicationType |

 
Medication preparation type 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BEMedicationTypeVS](ValueSet-medication-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medication-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/CodeSystem/medication-type",
  "version" : "1.1.0",
  "name" : "BEMedicationType",
  "title" : "Medication preparation Type",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-27T06:32:22+00:00",
  "publisher" : "HL7 Belgium",
  "contact" : [{
    "name" : "HL7 Belgium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hl7belgium.org"
    },
    {
      "system" : "email",
      "value" : "hl7belgium@hl7belgium.org"
    }]
  },
  {
    "name" : "Message Structure eHealth",
    "telecom" : [{
      "system" : "email",
      "value" : "message-structure@ehealth.fgov.be",
      "use" : "work"
    }]
  }],
  "description" : "Medication preparation type",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "magistral",
    "display" : "Magistral preparation"
  },
  {
    "code" : "officinal",
    "display" : "Officinal preparation"
  },
  {
    "code" : "medicinal-product",
    "display" : "Medicinal Product"
  },
  {
    "code" : "non-medicinal-product",
    "display" : "non-medicinal product e.g. supplement"
  }]
}

```
