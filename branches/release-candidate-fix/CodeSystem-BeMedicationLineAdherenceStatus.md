# Medication Line Adherence Status - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Line Adherence Status**

## CodeSystem: Medication Line Adherence Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationLineAdherenceStatus | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeMedicationLineAdherenceStatus |

 
Medication Line Adherence Status - ValueSet. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BeMedicationLineAdherenceStatusVS](ValueSet-BeMedicationLineAdherenceStatusVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "BeMedicationLineAdherenceStatus",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationLineAdherenceStatus",
  "version" : "1.1.0",
  "name" : "BeMedicationLineAdherenceStatus",
  "title" : "Medication Line Adherence Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-10T10:05:23+00:00",
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
  "description" : "Medication Line Adherence Status - ValueSet.",
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
  "hierarchyMeaning" : "is-a",
  "content" : "complete",
  "count" : 11,
  "concept" : [
    {
      "code" : "taking",
      "display" : "Taking",
      "definition" : "The medication is being taken.",
      "concept" : [
        {
          "code" : "taking-as-directed",
          "display" : "Taking As Directed",
          "definition" : "The medication is being taken as directed."
        },
        {
          "code" : "taking-not-as-directed",
          "display" : "Taking Not As Directed",
          "definition" : "The medication is not being taken as directed."
        }
      ]
    },
    {
      "code" : "not-taking",
      "display" : "Not Taking",
      "definition" : "The medication is not being taken.",
      "concept" : [
        {
          "code" : "on-hold",
          "display" : "On Hold",
          "definition" : "The medication is on hold.",
          "concept" : [
            {
              "code" : "on-hold-as-directed",
              "display" : "On Hold As Directed",
              "definition" : "The medication is on hold as directed."
            },
            {
              "code" : "on-hold-not-as-directed",
              "display" : "On Hold Not As Directed",
              "definition" : "The medication is on hold not as directed."
            }
          ]
        },
        {
          "code" : "stopped",
          "display" : "Stopped",
          "definition" : "The medication is stopped.",
          "concept" : [
            {
              "code" : "stopped-as-directed",
              "display" : "Stopped As Directed",
              "definition" : "The medication is stopped as directed."
            },
            {
              "code" : "stopped-not-as-directed",
              "display" : "Stopped Not As Directed",
              "definition" : "The medication is stopped not as directed."
            }
          ]
        }
      ]
    },
    {
      "code" : "unknown",
      "display" : "Unknown",
      "definition" : "Whether the medication is being taken or not is not currently known."
    }
  ]
}

```
