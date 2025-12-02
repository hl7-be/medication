# Medication Line (model) - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Line (model)**

## Logical Model: Medication Line (model) 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationLine | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:MedicationLine |

 
Logical data model for medication line. 

### Relationship with other elements:

The Medication Line relates to the other data structures in the following way:

* [Medication Line](StructureDefinition-BeModelMedicationDispense.md) may refer to a [Medication Dispense](StructureDefinition-BeModelMedicationDispense.md) that occurs in the treatment.
* [Medication Dispense](StructureDefinition-BeModelMedicationDispense.md) may be the trigger for creating or updating a [Medication Line](StructureDefinition-BeModelMedicationLine.md).

**Usages:**

* Refer to this Logical Model: [Medication Dispense (model)](StructureDefinition-BeModelMedicationDispense.md) and [Medication prescription (model)](StructureDefinition-BeModelMedicationPrescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeModelMedicationLine)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelMedicationLine.csv), [Excel](StructureDefinition-BeModelMedicationLine.xlsx) 

### Notes:

Detailed diagram:



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelMedicationLine",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationLine",
  "version" : "1.1.0",
  "name" : "MedicationLine",
  "title" : "Medication Line (model)",
  "status" : "active",
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
  "description" : "Logical data model for medication line.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationLine",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelMedicationLine",
        "path" : "BeModelMedicationLine",
        "short" : "Medication Line (model)",
        "definition" : "Logical data model for medication line."
      },
      {
        "id" : "BeModelMedicationLine.identifier",
        "path" : "BeModelMedicationLine.identifier",
        "short" : "Unique identifier",
        "definition" : "A unique identifier for the medication line. This identifier alone may be the same for different versions of the medication line.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.recordedDate",
        "path" : "BeModelMedicationLine.recordedDate",
        "short" : "Timestamp the medication line content was recorded or last updated.",
        "definition" : "Timestamp the medication line content was recorded or last updated.",
        "comment" : " We consider this is redundant with the above, given the intended use in Belgium (version is a date). How to ensure the compatibility?",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.recorder",
        "path" : "BeModelMedicationLine.recorder",
        "short" : "Recorder",
        "definition" : "Recorder",
        "comment" : "We understand this will be updated as the line changes",
        "min" : 1,
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
        "id" : "BeModelMedicationLine.patient",
        "path" : "BeModelMedicationLine.patient",
        "short" : "Patient",
        "definition" : "Patient",
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
        "id" : "BeModelMedicationLine.status",
        "path" : "BeModelMedicationLine.status",
        "short" : "Status of the line entry",
        "definition" : "Status of the line entry",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "`Draft`, `Recorded`, or `Entered in Error`"
        }
      },
      {
        "id" : "BeModelMedicationLine.adherence",
        "path" : "BeModelMedicationLine.adherence",
        "short" : "Whether the patient is known to be taking the medication",
        "definition" : "Whether the patient is known to be taking the medication",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.adherence.status",
        "path" : "BeModelMedicationLine.adherence.status",
        "short" : "The status - taking, not taking,...",
        "definition" : "The status - taking, not taking,...",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationLineAdherenceStatusVS"
        }
      },
      {
        "id" : "BeModelMedicationLine.adherence.adherenceStatusReason",
        "path" : "BeModelMedicationLine.adherence.adherenceStatusReason",
        "short" : "Reason for the adherence status",
        "definition" : "Reason for the adherence status",
        "comment" : "The value set provided is an indicative example",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationLineAdherenceStatusReasonVS"
        }
      },
      {
        "id" : "BeModelMedicationLine.medication",
        "path" : "BeModelMedicationLine.medication",
        "short" : "The product or substance",
        "definition" : "The product or substance",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.medication.product",
        "path" : "BeModelMedicationLine.medication.product",
        "short" : "Product reference, identifier or name",
        "definition" : "Product reference, identifier or name",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedication"
            ]
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.medication.type",
        "path" : "BeModelMedicationLine.medication.type",
        "short" : "Type of medication - magistral, medicinal product, non-medicinal product",
        "definition" : "Type of medication - magistral, medicinal product, non-medicinal product",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationTypeVS"
        }
      },
      {
        "id" : "BeModelMedicationLine.reason",
        "path" : "BeModelMedicationLine.reason",
        "short" : "Reason for the medication treatment",
        "definition" : "Reason for the medication treatment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.reason.reference",
        "path" : "BeModelMedicationLine.reason.reference",
        "short" : "Reference to existing condition or reason",
        "definition" : "Reference to existing condition or reason",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.reason.code",
        "path" : "BeModelMedicationLine.reason.code",
        "short" : "Code of the condition, or free text",
        "definition" : "Code of the condition, or free text",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.effectivePeriod",
        "path" : "BeModelMedicationLine.effectivePeriod",
        "short" : "Period of medication treatment",
        "definition" : "Period of medication treatment",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.effectivePeriod.start",
        "path" : "BeModelMedicationLine.effectivePeriod.start",
        "short" : "The begin of the medication line",
        "definition" : "The begin of the medication line",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.effectivePeriod.end",
        "path" : "BeModelMedicationLine.effectivePeriod.end",
        "short" : "The end of the medication line",
        "definition" : "The end of the medication line",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.dosage",
        "path" : "BeModelMedicationLine.dosage",
        "short" : "Structured Dosage",
        "definition" : "Structured Dosage",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelDosagingInformation"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.offLabel",
        "path" : "BeModelMedicationLine.offLabel",
        "short" : "Reason for Off-label use or dosage override",
        "definition" : "Reason for Off-label use or dosage override",
        "comment" : "isOffLabelUse and reason are expected to be manually filled by the prescriber, indicating that this dosage is not entered in error. This information is an indication (for example) for the pharmacist to see that there is a justification of the dosage difference.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "BeModelMedicationLine.exposure",
        "path" : "BeModelMedicationLine.exposure",
        "short" : "Therapeutic, Prophylactic",
        "definition" : "Therapeutic, Prophylactic",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationExposureIntentVS"
        }
      },
      {
        "id" : "BeModelMedicationLine.originType",
        "path" : "BeModelMedicationLine.originType",
        "short" : "The origin of the line - hospital, ambulatory",
        "definition" : "The origin of the line - hospital, ambulatory",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationLineOriginTypeVS"
        }
      },
      {
        "id" : "BeModelMedicationLine.note",
        "path" : "BeModelMedicationLine.note",
        "short" : "A note captured by a professional",
        "definition" : "A note captured by a professional",
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
