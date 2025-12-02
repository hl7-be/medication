# Medication Prescription Status - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Prescription Status**

## ValueSet: Medication Prescription Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationPrescriptionStatusVS | *Version*:1.1.0 |
| Active as of 2025-12-02 | *Computable Name*:BeMedicationPrescriptionStatusVS |

 
Medication prescription status codes. 

 **References** 

* [BeMedicationPrescription](StructureDefinition-BeMedicationPrescription.md)
* [Medication prescription (model)](StructureDefinition-BeModelMedicationPrescription.md)

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
  "id" : "BeMedicationPrescriptionStatusVS",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationPrescriptionStatusVS",
  "version" : "1.1.0",
  "name" : "BeMedicationPrescriptionStatusVS",
  "title" : "Medication Prescription Status",
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
  "description" : "Medication prescription status codes.",
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
        "system" : "http://hl7.org/fhir/CodeSystem/medicationrequest-status",
        "concept" : [
          {
            "code" : "active"
          },
          {
            "code" : "completed"
          },
          {
            "code" : "cancelled"
          },
          {
            "code" : "stopped"
          },
          {
            "code" : "entered-in-error"
          }
        ]
      }
    ]
  }
}

```
