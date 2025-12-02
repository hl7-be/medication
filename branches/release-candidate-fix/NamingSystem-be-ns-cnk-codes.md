# be-ns-cnk-codes - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **be-ns-cnk-codes**

## NamingSystem: be-ns-cnk-codes 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-cnk-codes | *Version*:1.1.0 |
| Active as of 2020-07-24 | *Computable Name*:BeNSCNK |

 
Naming System - CNK Product Codes 

### Summary

| | |
| :--- | :--- |
| Defining URL | https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-cnk-codes |
| Version | 1.1.0 |
| Name | BeNSCNK |
| Status | active |
| Definition | Naming System - CNK Product Codes |
| Publisher | eHealth Platform |

### Identifiers

* **Type**: URI
  * **Value**: https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes
  * **Preferred**: true



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "be-ns-cnk-codes",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-cnk-codes"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "1.1.0"
    }
  ],
  "name" : "BeNSCNK",
  "status" : "active",
  "kind" : "codesystem",
  "date" : "2020-07-24",
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
  "description" : "Naming System - CNK Product Codes",
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
  "uniqueId" : [
    {
      "type" : "uri",
      "value" : "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes",
      "preferred" : true
    }
  ]
}

```
