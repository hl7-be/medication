# be-ns-prescription-ids - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **be-ns-prescription-ids**

## NamingSystem: be-ns-prescription-ids 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-prescription-ids | *Version*:1.1.0 |
| Active as of 2020-07-24 | *Computable Name*:BeNSPrescriptions |

 
Naming System - Prescription IDs 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "be-ns-prescription-ids",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-prescription-ids"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "1.1.0"
  }],
  "name" : "BeNSPrescriptions",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2020-07-24",
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
  "description" : "Naming System - Prescription IDs",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/prescription-id",
    "preferred" : true
  }]
}

```
