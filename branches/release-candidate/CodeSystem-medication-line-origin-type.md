# Medication origin type - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication origin type**

## CodeSystem: Medication origin type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/CodeSystem/medication-line-origin-type | *Version*:1.1.0 |
| Active as of 2026-03-27 | *Computable Name*:MedicationLineOrigintype |

 
Medication treatment origin type - what is the type of care that originated the medication treatment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MedicationLineOrigintypeVS](ValueSet-medication-line-origin-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medication-line-origin-type",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/CodeSystem/medication-line-origin-type",
  "version" : "1.1.0",
  "name" : "MedicationLineOrigintype",
  "title" : "Medication origin type",
  "status" : "active",
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
  "description" : "Medication treatment origin type - what is the type of care that originated the medication treatment",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "ambulatory",
    "display" : "Ambulatory"
  },
  {
    "code" : "hospital",
    "display" : "Hospital"
  }]
}

```
