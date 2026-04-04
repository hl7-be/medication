# Medication Line - logical model - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Line - logical model**

## Logical Model: Medication Line - logical model 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-model-medicationline | *Version*:1.1.0 |
| Draft as of 2026-03-27 | *Computable Name*:MedicationLine |

 
A logical data model of the medication line. 

### Relationship with other elements:

The Medication Line relates to the other data structures in the following way:

* [Medication Line](StructureDefinition-be-model-medicationline.md) may refer to a [Medication Dispense](StructureDefinition-be-model-medicationdispense.md) that occurs in the treatment.
* [Medication Dispense](StructureDefinition-be-model-medicationdispense.md) may be the trigger for creating or updating a [Medication Line](StructureDefinition-be-model-medicationline.md).

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/be-model-medicationline)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-model-medicationline.csv), [Excel](StructureDefinition-be-model-medicationline.xlsx) 

### Notes:

Detailed diagram:



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-model-medicationline",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-model-medicationline",
  "version" : "1.1.0",
  "name" : "MedicationLine",
  "title" : "Medication Line - logical model",
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
  "description" : "A logical data model of the medication line.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-model-medicationline",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "be-model-medicationline",
      "path" : "be-model-medicationline",
      "short" : "Medication Line - logical model",
      "definition" : "A logical data model of the medication line."
    },
    {
      "id" : "be-model-medicationline.uniqueIdentifier",
      "path" : "be-model-medicationline.uniqueIdentifier",
      "short" : "Unique identifier",
      "definition" : "A unique identifier for the medication line. This identifier alone may be the same for different versions of the medication line.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "be-model-medicationline.versionIdentifier",
      "path" : "be-model-medicationline.versionIdentifier",
      "short" : "Version of the medication line at the time the content was recorded or last updated.",
      "definition" : "Version of the medication line at the time the content was recorded or last updated.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "be-model-medicationline.lastUpdatedDate",
      "path" : "be-model-medicationline.lastUpdatedDate",
      "short" : "Timestamp the medication line content was recorded or last updated.",
      "definition" : "Timestamp the medication line content was recorded or last updated.",
      "comment" : " We consider this is redundant with the above, given the intended use in Belgium (version is a date). How to ensure the compatibility?",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "be-model-medicationline.status",
      "path" : "be-model-medicationline.status",
      "short" : "Status of the line entry",
      "definition" : "Status of the line entry",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "be-model-medicationline.statusReason",
      "path" : "be-model-medicationline.statusReason",
      "short" : "Reason for the status",
      "definition" : "Reason for the status",
      "comment" : " We consider this is not necessary - should we add?",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "be-model-medicationline.dateAsserted",
      "path" : "be-model-medicationline.dateAsserted",
      "short" : "Date the medication line was first asserted or known",
      "definition" : "Date the medication line was first asserted or known",
      "comment" : " We consider this is not necessary",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "be-model-medicationline.recorder",
      "path" : "be-model-medicationline.recorder",
      "short" : "Recorder",
      "definition" : "Recorder",
      "comment" : "We understand this will be updated as the line changes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }]
    },
    {
      "id" : "be-model-medicationline.patient",
      "path" : "be-model-medicationline.patient",
      "short" : "Patient",
      "definition" : "Patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "be-model-medicationline.category",
      "path" : "be-model-medicationline.category",
      "short" : "Category for the line",
      "definition" : "Category for the line",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "be-model-medicationline.category.originType",
      "path" : "be-model-medicationline.category.originType",
      "short" : "The origin of the line - hospital, ambulatory",
      "definition" : "The origin of the line - hospital, ambulatory",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "be-model-medicationline.medication",
      "path" : "be-model-medicationline.medication",
      "short" : "The product or substance",
      "definition" : "The product or substance",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "be-model-medicationline.medication.product",
      "path" : "be-model-medicationline.medication.product",
      "short" : "Product reference, identifier or name",
      "definition" : "Product reference, identifier or name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BELMMedProduct"]
      }]
    },
    {
      "id" : "be-model-medicationline.medication.type",
      "path" : "be-model-medicationline.medication.type",
      "short" : "Type of medication - magistral, medicinal product, non-medicinal product",
      "definition" : "Type of medication - magistral, medicinal product, non-medicinal product",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/medication/ValueSet/medication-type-vs"
      }
    },
    {
      "id" : "be-model-medicationline.exposure",
      "path" : "be-model-medicationline.exposure",
      "short" : "Therapeutic, Prophylactic",
      "definition" : "Therapeutic, Prophylactic",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/medication/ValueSet/medication-exposure-category-vs"
      }
    },
    {
      "id" : "be-model-medicationline.reason",
      "path" : "be-model-medicationline.reason",
      "short" : "Reason for the medication treatment",
      "definition" : "Reason for the medication treatment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "be-model-medicationline.reason.reference",
      "path" : "be-model-medicationline.reason.reference",
      "short" : "Reference to existing condition or reason",
      "definition" : "Reference to existing condition or reason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "be-model-medicationline.reason.code",
      "path" : "be-model-medicationline.reason.code",
      "short" : "Code of the condition, or free text",
      "definition" : "Code of the condition, or free text",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "be-model-medicationline.effectivePeriod",
      "path" : "be-model-medicationline.effectivePeriod",
      "short" : "Period of medication treatment",
      "definition" : "Period of medication treatment",
      "comment" : ".effectiveDateTime OR .effectivePeriod.start. Do we need to support both? Can we use effectivePeriod when .end is known? And when only .start is known, we use dateTime?",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "be-model-medicationline.effectivePeriod.start",
      "path" : "be-model-medicationline.effectivePeriod.start",
      "short" : "The begin of the medication line",
      "definition" : "The begin of the medication line",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "be-model-medicationline.effectivePeriod.end",
      "path" : "be-model-medicationline.effectivePeriod.end",
      "short" : "The end of the medication line",
      "definition" : "The end of the medication line",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "be-model-medicationline.adherence",
      "path" : "be-model-medicationline.adherence",
      "short" : "Whether the patient is known to be taking the medication",
      "definition" : "Whether the patient is known to be taking the medication",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "be-model-medicationline.adherence.code",
      "path" : "be-model-medicationline.adherence.code",
      "short" : "The status - taking, not taking,...",
      "definition" : "The status - taking, not taking,...",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "be-model-medicationline.adherence.adherenceReason",
      "path" : "be-model-medicationline.adherence.adherenceReason",
      "short" : "Reason for the adherence status",
      "definition" : "Reason for the adherence status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "be-model-medicationline.dosage",
      "path" : "be-model-medicationline.dosage",
      "short" : "Dosage",
      "definition" : "Dosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "be-model-medicationline.dosage.dosageDetails",
      "path" : "be-model-medicationline.dosage.dosageDetails",
      "short" : "Structure Dosage",
      "definition" : "Structure Dosage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Dosage"
      }]
    },
    {
      "id" : "be-model-medicationline.dosage.dosageOverride",
      "path" : "be-model-medicationline.dosage.dosageOverride",
      "short" : "Dosage Override",
      "definition" : "Dosage Override",
      "comment" : "should these be extensions on dosage or on the line?",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "be-model-medicationline.dosage.dosageOverrideReason",
      "path" : "be-model-medicationline.dosage.dosageOverrideReason",
      "short" : "Dosage Override reason",
      "definition" : "Dosage Override reason",
      "comment" : "should these be extensions on dosage or on the line?",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "be-model-medicationline.note",
      "path" : "be-model-medicationline.note",
      "short" : "A note captured by a professional",
      "definition" : "A note captured by a professional",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    },
    {
      "id" : "be-model-medicationline.dispenseRequestNeeded",
      "path" : "be-model-medicationline.dispenseRequestNeeded",
      "short" : "Whether the medication needs a prescription or request to be dispensed",
      "definition" : "Whether the medication needs a prescription or request to be dispensed",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
