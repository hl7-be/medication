# Medication prescription (model) - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication prescription (model)**

## Logical Model: Medication prescription (model) 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationPrescription | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeModelMedicationPrescription |

 
Logical model for medication prescription (or some other form of order) 

### Relationship with other elements:

The Medication Prescription relates to the other data structures in the following way:

* A [Medication Prescription](StructureDefinition-BeModelMedicationPrescription.md) may be based on a [Medication Line](StructureDefinition-BeModelMedicationLine.md)
* A [Medication Prescription](StructureDefinition-BeModelMedicationPrescription.md) may also be initiating a [Medication Line](StructureDefinition-BeModelMedicationLine.md)
* [Medication Dispense](StructureDefinition-BeModelMedicationDispense.md) may be associated with a [Medication Prescription](StructureDefinition-BeModelMedicationPrescription.md)

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeModelMedicationPrescription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelMedicationPrescription.csv), [Excel](StructureDefinition-BeModelMedicationPrescription.xlsx) 

### Notes:

Detailed diagram:



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelMedicationPrescription",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationPrescription",
  "version" : "1.1.0",
  "name" : "BeModelMedicationPrescription",
  "title" : "Medication prescription (model)",
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
  "description" : "Logical model for medication prescription (or some other form of order)",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedicationPrescription",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelMedicationPrescription",
        "path" : "BeModelMedicationPrescription",
        "short" : "Medication prescription (model)",
        "definition" : "Logical model for medication prescription (or some other form of order)"
      },
      {
        "id" : "BeModelMedicationPrescription.identifier",
        "path" : "BeModelMedicationPrescription.identifier",
        "short" : "Business identifier(s) for the prescription",
        "definition" : "Business identifier(s) for the prescription",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier|5.2.0"
            ]
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.recordedDate",
        "path" : "BeModelMedicationPrescription.recordedDate",
        "short" : "Time of authoring the prescription/draft in the information system",
        "definition" : "Time of authoring the prescription/draft in the information system",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.basedOnMedicationLine",
        "path" : "BeModelMedicationPrescription.basedOnMedicationLine",
        "short" : "Link to the Medication Line from which this request is based",
        "definition" : "Link to the Medication Line from which this request is based",
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
        "id" : "BeModelMedicationPrescription.patient",
        "path" : "BeModelMedicationPrescription.patient",
        "short" : "The person for whom the medication is prescribed/ordered",
        "definition" : "The person for whom the medication is prescribed/ordered",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.status",
        "path" : "BeModelMedicationPrescription.status",
        "short" : "Status of the prescription, this should not be status of treatment",
        "definition" : "Status of the prescription, this should not be status of treatment",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationPrescriptionStatusVS"
        }
      },
      {
        "id" : "BeModelMedicationPrescription.statusReason",
        "path" : "BeModelMedicationPrescription.statusReason",
        "short" : "Reason for the current status of prescription, for example the reason why the prescription was made invalid",
        "definition" : "Reason for the current status of prescription, for example the reason why the prescription was made invalid",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.statusChanged",
        "path" : "BeModelMedicationPrescription.statusChanged",
        "short" : "Date and time when the status of the prescription was changed",
        "definition" : "Date and time when the status of the prescription was changed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.medication",
        "path" : "BeModelMedicationPrescription.medication",
        "short" : "Prescribed product, branded, generic, virtual, extemporaneous, etc",
        "definition" : "Prescribed product, branded, generic, virtual, extemporaneous, etc",
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
        "id" : "BeModelMedicationPrescription.prescriber",
        "path" : "BeModelMedicationPrescription.prescriber",
        "short" : "The person who made the prescription, and who takes the responsibility of the treatment",
        "definition" : "Question: would we want to add basic Practicioner model?",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole"
            ]
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.organization",
        "path" : "BeModelMedicationPrescription.organization",
        "short" : "The organization from which the prescriber issues the prescription.",
        "definition" : "The organization from which the prescriber issues the prescription.",
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
        "id" : "BeModelMedicationPrescription.indication",
        "path" : "BeModelMedicationPrescription.indication",
        "short" : "Reason for the prescription (typically diagnosis, or a procedure)",
        "definition" : "Reason for the prescription (typically diagnosis, or a procedure)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.indication.reference",
        "path" : "BeModelMedicationPrescription.indication.reference",
        "short" : "Reason for the prescription (typically diagnosis, or a procedure)",
        "definition" : "Reason for the prescription (typically diagnosis, or a procedure)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.indication.code",
        "path" : "BeModelMedicationPrescription.indication.code",
        "short" : "Reason or text for the prescription (typically diagnosis, or a procedure)",
        "definition" : "Reason or text for the prescription (typically diagnosis, or a procedure)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.dosage",
        "path" : "BeModelMedicationPrescription.dosage",
        "short" : "Dosaging and administration instructions",
        "definition" : "Dosaging and administration instructions",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelDosagingInformation"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.offLabel",
        "path" : "BeModelMedicationPrescription.offLabel",
        "short" : "Off-Label / Dosage Override",
        "definition" : "Off-Label / Dosage Override",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.offLabel.isOffLabelUse",
        "path" : "BeModelMedicationPrescription.offLabel.isOffLabelUse",
        "short" : "Off-Label / Dosage Override",
        "definition" : "Off-Label / Dosage Override",
        "comment" : "isOffLabelUse and reason are expected to be manually filled by the prescriber, indicating that this dosage is not entered in error. This information is an indication (for example) for the pharmacist to see that there is a justification of the dosage difference.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.offLabel.reason",
        "path" : "BeModelMedicationPrescription.offLabel.reason",
        "short" : "Dosage Override reason",
        "definition" : "Dosage Override reason",
        "comment" : "isOffLabelUse and reason are expected to be manually filled by the prescriber, indicating that this dosage is not entered in error. This information is an indication (for example) for the pharmacist to see that there is a justification of the dosage difference.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.substitution",
        "path" : "BeModelMedicationPrescription.substitution",
        "short" : "Whether substitution is allowed, and reason",
        "definition" : "Whether substitution is allowed, and reason",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.substitution.substitutionAllowed",
        "path" : "BeModelMedicationPrescription.substitution.substitutionAllowed",
        "short" : "Substitution of the product is allowed.",
        "definition" : "Substitution of the product is allowed.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.instructionForReimbursement",
        "path" : "BeModelMedicationPrescription.instructionForReimbursement",
        "short" : "Instructions for reimbursement",
        "definition" : "Instructions for reimbursement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationRequestReimbursementTypeVS"
        }
      },
      {
        "id" : "BeModelMedicationPrescription.validFrom",
        "path" : "BeModelMedicationPrescription.validFrom",
        "short" : "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate",
        "definition" : "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.validUntil",
        "path" : "BeModelMedicationPrescription.validUntil",
        "short" : "The validity period end date. The prescription is not dispensable after this date.",
        "definition" : "The validity period end date. The prescription is not dispensable after this date.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.dispenseRequest",
        "path" : "BeModelMedicationPrescription.dispenseRequest",
        "short" : "Dispense Request or authorization for the prescribed medication",
        "definition" : "Dispense Request or authorization for the prescribed medication",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.dispenseRequest.dispenseInterval",
        "path" : "BeModelMedicationPrescription.dispenseRequest.dispenseInterval",
        "short" : "Minimum period of time between dispenses",
        "definition" : "Minimum period of time between dispenses",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Duration"
          }
        ]
      },
      {
        "id" : "BeModelMedicationPrescription.dispenseRequest.quantityPerDispense",
        "path" : "BeModelMedicationPrescription.dispenseRequest.quantityPerDispense",
        "short" : "Amount of medication to supply per dispense",
        "definition" : "Amount of medication to supply per dispense",
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
        "id" : "BeModelMedicationPrescription.note",
        "path" : "BeModelMedicationPrescription.note",
        "short" : "Additional information or comments",
        "definition" : "Additional information or comments",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
