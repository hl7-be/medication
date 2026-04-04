# Medication preparation Type value set - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication preparation Type value set**

## ValueSet: Medication preparation Type value set 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationTypeVS | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeMedicationTypeVS |

 
Medication preparation type value set 

 **References** 

* [BeExtMedicationType](StructureDefinition-BeExtMedicationType.md)
* [Medication Line (model)](StructureDefinition-BeModelMedicationLine.md)

### Logical Definition (CLD)

* Include all codes defined in [`https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationType`](CodeSystem-BeMedicationType.md) version 📦1.1.0

 

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
  "id" : "BeMedicationTypeVS",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationTypeVS",
  "version" : "1.1.0",
  "name" : "BeMedicationTypeVS",
  "title" : "Medication preparation Type value set",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-10T10:16:02+00:00",
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
  "description" : "Medication preparation type value set",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationType"
      }
    ]
  }
}

```
