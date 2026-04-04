# Medication preparation Type value set - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication preparation Type value set**

## ValueSet: Medication preparation Type value set 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/ValueSet/medication-type-vs | *Version*:1.1.0 |
| Draft as of 2026-03-27 | *Computable Name*:BEMedicationTypeVS |

 
Medication preparation type value set 

 **References** 

* [BeExtMedicationType](StructureDefinition-BeExtMedicationType.md)
* [Medication Line - logical model](StructureDefinition-be-model-medicationline.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "medication-type-vs",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/ValueSet/medication-type-vs",
  "version" : "1.1.0",
  "name" : "BEMedicationTypeVS",
  "title" : "Medication preparation Type value set",
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
  "description" : "Medication preparation type value set",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/medication/CodeSystem/medication-type"
    }]
  }
}

```
