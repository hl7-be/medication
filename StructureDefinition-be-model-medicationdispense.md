# BeModelMedicationDispense - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeModelMedicationDispense**

## Logical Model: BeModelMedicationDispense 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-model-medicationdispense | *Version*:1.1.0 |
| Draft as of 2026-03-27 | *Computable Name*:BEModelMedicationDispense |

 
This is the logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense. 

### Relationship with other elements:

The Medication Line relates to the other data structures in the following way:

* [Medication Line](StructureDefinition-be-model-medicationline.md) may refer to a [Medication Dispense](StructureDefinition-be-model-medicationdispense.md) that occurs in the treatment.
* [Medication Dispense](StructureDefinition-be-model-medicationdispense.md) may be the trigger for creating or updating a [Medication Line](StructureDefinition-be-model-medicationline.md).

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/be-model-medicationdispense)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-model-medicationdispense.csv), [Excel](StructureDefinition-be-model-medicationdispense.xlsx) 

### Notes:

Detailed diagram:



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-model-medicationdispense",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-model-medicationdispense",
  "version" : "1.1.0",
  "name" : "BEModelMedicationDispense",
  "title" : "BeModelMedicationDispense",
  "status" : "draft",
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
  "description" : "This is the logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-model-medicationdispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "be-model-medicationdispense",
      "path" : "be-model-medicationdispense",
      "short" : "BeModelMedicationDispense",
      "definition" : "The logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense."
    },
    {
      "id" : "be-model-medicationdispense.identifier",
      "path" : "be-model-medicationdispense.identifier",
      "short" : "The business identifier(s) for the medication dispense record",
      "definition" : "The business identifier(s) for the medication dispense session, also known as Session GUID (SGUID).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "be-model-medicationdispense.patient",
      "path" : "be-model-medicationdispense.patient",
      "short" : "The person for which the medication is dispensed",
      "definition" : "The person for which the medication is dispensed.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "be-model-medicationdispense.dispenser",
      "path" : "be-model-medicationdispense.dispenser",
      "short" : "The dispenser, if known and relevant",
      "definition" : "The dispenser, if known and relevant",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "be-model-medicationdispense.dispenser.dispenser",
      "path" : "be-model-medicationdispense.dispenser.dispenser",
      "short" : "Reference to person that performed the recording or reporting",
      "definition" : "Reference to person that performed the recording or reporting",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "be-model-medicationdispense.dispenser.organization",
      "path" : "be-model-medicationdispense.dispenser.organization",
      "short" : "Reference to person that performed the recording or reporting",
      "definition" : "Reference to person that performed the recording or reporting",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }]
    },
    {
      "id" : "be-model-medicationdispense.dispenseDate",
      "path" : "be-model-medicationdispense.dispenseDate",
      "short" : "The date (or date+time) when the dispense ocurred",
      "definition" : "The date (or date+time) when the dispense ocurred",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "be-model-medicationdispense.prescription",
      "path" : "be-model-medicationdispense.prescription",
      "short" : "Information about a prescription related to the dispense",
      "definition" : "Information about a prescription related to the dispense",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "be-model-medicationdispense.prescription.isPrescribed",
      "path" : "be-model-medicationdispense.prescription.isPrescribed",
      "short" : "Whether this dispense was performed against a prescription",
      "definition" : "Whether this dispense was performed against a prescription",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "be-model-medicationdispense.prescription.prescription",
      "path" : "be-model-medicationdispense.prescription.prescription",
      "short" : "The prescription identification",
      "definition" : "The prescription identification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "be-model-medicationdispense.dispensedItem",
      "path" : "be-model-medicationdispense.dispensedItem",
      "short" : "Each product that was dispensed",
      "definition" : "Each product that was dispensed",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "be-model-medicationdispense.dispensedItem.product",
      "path" : "be-model-medicationdispense.dispensedItem.product",
      "short" : "The product that was dispensed - coded or not (e.g. for magistral preparations)",
      "definition" : "The product that was dispensed - coded or not (e.g. for magistral preparations)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "be-model-medicationdispense.dispensedItem.quantityDispensed",
      "path" : "be-model-medicationdispense.dispensedItem.quantityDispensed",
      "short" : "The amount of product that was dispensed",
      "definition" : "The amount of product that was dispensed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "be-model-medicationdispense.dispensedItem.dosageInstructions",
      "path" : "be-model-medicationdispense.dispensedItem.dosageInstructions",
      "short" : "The structured dosage or text instructions for use",
      "definition" : "The structured dosage or text instructions for use",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Dosage"
      }]
    },
    {
      "id" : "be-model-medicationdispense.dispensedItem.note",
      "path" : "be-model-medicationdispense.dispensedItem.note",
      "short" : "Additional information about the dispensed item - this can be relevant history, any remarks by the patient or professional, etc.",
      "definition" : "Additional information about the dispensed item - this can be relevant history, any remarks by the patient or professional, etc.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    },
    {
      "id" : "be-model-medicationdispense.note",
      "path" : "be-model-medicationdispense.note",
      "short" : "Additional information about the dispense - this can be relevant history, any remarks by the patient or professional, etc.",
      "definition" : "Additional information about the dispense - this can be relevant history, any remarks by the patient or professional, etc.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    }]
  }
}

```
