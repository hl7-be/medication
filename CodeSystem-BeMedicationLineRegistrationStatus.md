# Medication Line Registration Status - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Line Registration Status**

## CodeSystem: Medication Line Registration Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationLineRegistrationStatus | *Version*:1.1.0 |
| Active as of 2025-12-02 | *Computable Name*:BeMedicationLineRegistrationStatus |

 
This code system defines the registration statuses for medication lines. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BeMedicationLineRegistrationStatusVS](ValueSet-BeMedicationLineRegistrationStatusVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "BeMedicationLineRegistrationStatus",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationLineRegistrationStatus",
  "version" : "1.1.0",
  "name" : "BeMedicationLineRegistrationStatus",
  "title" : "Medication Line Registration Status",
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
  "description" : "This code system defines the registration statuses for medication lines.",
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
  "count" : 3,
  "concept" : [
    {
      "code" : "draft",
      "display" : "Draft"
    },
    {
      "code" : "recorded",
      "display" : "Recorded"
    },
    {
      "code" : "entered-in-error",
      "display" : "Entered in Error"
    }
  ]
}

```
