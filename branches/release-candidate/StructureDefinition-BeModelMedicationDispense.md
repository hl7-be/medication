# Medication Dispense (model) - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Dispense (model)**

## Logical Model: Medication Dispense (model) 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationDispense | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeModelMedicationDispense |

 
This is the logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense. 

### Relationship with other elements:

The Medication Line relates to the other data structures in the following way:

* [Medication Line](StructureDefinition-BeModelMedicationLine.md) may refer to a [Medication Dispense](StructureDefinition-BeModelMedicationDispense.md) that occurs in the treatment.
* [Medication Dispense](StructureDefinition-BeModelMedicationDispense.md) may be the trigger for creating or updating a [Medication Line](StructureDefinition-BeModelMedicationLine.md).

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeModelMedicationDispense)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelMedicationDispense.csv), [Excel](StructureDefinition-BeModelMedicationDispense.xlsx) 

### Notes:

Detailed diagram:



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelMedicationDispense",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationDispense",
  "version" : "1.1.0",
  "name" : "BeModelMedicationDispense",
  "title" : "Medication Dispense (model)",
  "status" : "active",
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
  "description" : "This is the logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense.",
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
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelMedicationDispense",
        "path" : "BeModelMedicationDispense",
        "short" : "Medication Dispense (model)",
        "definition" : "Logical data model for Medication Dispense."
      },
      {
        "id" : "BeModelMedicationDispense.identifier",
        "path" : "BeModelMedicationDispense.identifier",
        "short" : "The business identifier(s) for the medication dispense record",
        "definition" : "The business identifier(s) for the medication dispense session, also known as Session GUID (SGUID).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.recordedDate",
        "path" : "BeModelMedicationDispense.recordedDate",
        "short" : "The date (or date+time) when the dispense was recorded",
        "definition" : "The date (or date+time) when the dispense was recorded",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.basedOnMedicationLine",
        "path" : "BeModelMedicationDispense.basedOnMedicationLine",
        "short" : "The medication line that this dispense is related to",
        "definition" : "The medication line that this dispense is related to",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationLine"
            ]
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.patient",
        "path" : "BeModelMedicationDispense.patient",
        "short" : "The person for which the medication is dispensed",
        "definition" : "The person for which the medication is dispensed.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
            ]
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.status",
        "path" : "BeModelMedicationDispense.status",
        "short" : "The status of the dispense record",
        "definition" : "The status of the dispense record",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/medicationdispense-status"
        }
      },
      {
        "id" : "BeModelMedicationDispense.statusReason",
        "path" : "BeModelMedicationDispense.statusReason",
        "short" : "The reason why the dispense was not performed, if it was not performed",
        "definition" : "The reason why the dispense was not performed, if it was not performed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/medicationdispense-status-reason"
        }
      },
      {
        "id" : "BeModelMedicationDispense.dispenser",
        "path" : "BeModelMedicationDispense.dispenser",
        "short" : "The dispenser, if known and relevant",
        "definition" : "The dispenser, if known and relevant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.dispenser.dispenser",
        "path" : "BeModelMedicationDispense.dispenser.dispenser",
        "short" : "Reference to person that performed the recording or reporting",
        "definition" : "Reference to person that performed the recording or reporting",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.dispenser.organization",
        "path" : "BeModelMedicationDispense.dispenser.organization",
        "short" : "Reference to person that performed the recording or reporting",
        "definition" : "Reference to person that performed the recording or reporting",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
            ]
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.dispenseDate",
        "path" : "BeModelMedicationDispense.dispenseDate",
        "short" : "The date (or date+time) when the dispense ocurred",
        "definition" : "The date (or date+time) when the dispense ocurred",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.prescription",
        "path" : "BeModelMedicationDispense.prescription",
        "short" : "Information about a prescription related to the dispense",
        "definition" : "Information about a prescription related to the dispense",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.prescription.isPrescribed",
        "path" : "BeModelMedicationDispense.prescription.isPrescribed",
        "short" : "Whether this dispense was performed against a prescription",
        "definition" : "Whether this dispense was performed against a prescription",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.prescription.prescription",
        "path" : "BeModelMedicationDispense.prescription.prescription",
        "short" : "The prescription identification",
        "definition" : "The prescription identification",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.dispensedItem",
        "path" : "BeModelMedicationDispense.dispensedItem",
        "short" : "Each product that was dispensed",
        "definition" : "Each product that was dispensed",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.dispensedItem.product",
        "path" : "BeModelMedicationDispense.dispensedItem.product",
        "short" : "The product that was dispensed - coded or not (e.g. for magistral preparations)",
        "definition" : "The product that was dispensed - coded or not (e.g. for magistral preparations)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.dispensedItem.quantityDispensed",
        "path" : "BeModelMedicationDispense.dispensedItem.quantityDispensed",
        "short" : "The amount of product that was dispensed",
        "definition" : "The amount of product that was dispensed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.dispensedItem.dosage",
        "path" : "BeModelMedicationDispense.dispensedItem.dosage",
        "short" : "The structured dosage or text instructions for use",
        "definition" : "The structured dosage or text instructions for use",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Dosage"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.dispensedItem.offLabel",
        "path" : "BeModelMedicationDispense.dispensedItem.offLabel",
        "short" : "Text or coded reason for different dosage",
        "definition" : "Text or coded reason for different dosage",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedicationDispense.note",
        "path" : "BeModelMedicationDispense.note",
        "short" : "Additional information about the dispense - this can be relevant history, any remarks by the patient or professional, etc.",
        "definition" : "Additional information about the dispense - this can be relevant history, any remarks by the patient or professional, etc.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      }
    ]
  }
}

```
