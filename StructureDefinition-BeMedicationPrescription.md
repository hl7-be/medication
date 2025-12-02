# BeMedicationPrescription - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeMedicationPrescription**

## Resource Profile: BeMedicationPrescription 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationPrescription | *Version*:1.1.0 |
| Active as of 2025-12-02 | *Computable Name*:BeMedicationPrescription |

 
Medication Request profile - The common structure for medication request 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeMedicationPrescription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeMedicationPrescription.csv), [Excel](StructureDefinition-BeMedicationPrescription.xlsx), [Schematron](StructureDefinition-BeMedicationPrescription.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeMedicationPrescription",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationPrescription",
  "version" : "1.1.0",
  "name" : "BeMedicationPrescription",
  "title" : "BeMedicationPrescription",
  "status" : "active",
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
  "description" : "Medication Request profile - The common structure for medication request",
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
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest",
        "constraint" : [
          {
            "key" : "dosage-override-reason-required",
            "severity" : "error",
            "human" : "If isOffLabelUse is true, reason must be provided",
            "expression" : "extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/offLabel').hasValue() implies extension.where(url = 'https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/offlabel').exists()",
            "source" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationPrescription"
          }
        ]
      },
      {
        "id" : "MedicationRequest.extension",
        "path" : "MedicationRequest.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationRequest.extension:offLabel",
        "path" : "MedicationRequest.extension",
        "sliceName" : "offLabel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtOffLabel"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.extension:offLabel.extension:isOffLabelUse",
        "path" : "MedicationRequest.extension.extension",
        "sliceName" : "isOffLabelUse",
        "short" : "Indicates that the recommended dosage was overridden"
      },
      {
        "id" : "MedicationRequest.extension:offLabel.extension:reason",
        "path" : "MedicationRequest.extension.extension",
        "sliceName" : "reason",
        "short" : "The reason why the recommended dosage was overridden"
      },
      {
        "id" : "MedicationRequest.extension:basedOnMedicationLine",
        "path" : "MedicationRequest.extension",
        "sliceName" : "basedOnMedicationLine",
        "short" : "Medication Line where this prescription is based upon",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BasedOnMedicationLine"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.extension:instructionsForReimbursement",
        "path" : "MedicationRequest.extension",
        "sliceName" : "instructionsForReimbursement",
        "short" : "Instructions for reimbursement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtInstructionsForReimbursement"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.extension:statusChanged",
        "path" : "MedicationRequest.extension",
        "sliceName" : "statusChanged",
        "short" : "Indicates when the status of the medication request was last changed.",
        "comment" : "This is a FHIR R5 element, preadopted as an extension in this FHIR R4 specification.\nFor the full definition see here: [http://hl7.org/fhir/R5/medicationrequest-definitions.html#MedicationRequest.statusChanged](http://hl7.org/fhir/R5/medicationrequest-definitions.html#MedicationRequest.statusChanged)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.statusChanged"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.identifier",
        "path" : "MedicationRequest.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "system"
            }
          ],
          "description" : "Slice based on the identifier system",
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.identifier:recip-e",
        "path" : "MedicationRequest.identifier",
        "sliceName" : "recip-e",
        "short" : "Recip-E identifier",
        "definition" : "The national identifier for medication requests.",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.identifier:recip-e.system",
        "path" : "MedicationRequest.identifier.system",
        "min" : 1,
        "patternUri" : "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-prescription"
      },
      {
        "id" : "MedicationRequest.identifier:recip-e.value",
        "path" : "MedicationRequest.identifier.value",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.status",
        "path" : "MedicationRequest.status",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationPrescriptionStatusVS"
        }
      },
      {
        "id" : "MedicationRequest.statusReason",
        "path" : "MedicationRequest.statusReason",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.intent",
        "path" : "MedicationRequest.intent",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.priority",
        "path" : "MedicationRequest.priority",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.medication[x]",
        "path" : "MedicationRequest.medication[x]",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.subject",
        "path" : "MedicationRequest.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.supportingInformation",
        "path" : "MedicationRequest.supportingInformation",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.authoredOn",
        "path" : "MedicationRequest.authoredOn",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.requester",
        "path" : "MedicationRequest.requester",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.reasonCode",
        "path" : "MedicationRequest.reasonCode",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.reasonReference",
        "path" : "MedicationRequest.reasonReference",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.groupIdentifier",
        "path" : "MedicationRequest.groupIdentifier",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.note",
        "path" : "MedicationRequest.note",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dosageInstruction",
        "path" : "MedicationRequest.dosageInstruction",
        "min" : 1,
        "type" : [
          {
            "code" : "Dosage",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeDosage"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dispenseRequest",
        "path" : "MedicationRequest.dispenseRequest",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dispenseRequest.validityPeriod",
        "path" : "MedicationRequest.dispenseRequest.validityPeriod",
        "comment" : "The period of time that the prescription is valid for dispensing. The validity of the prescription for administration (i.e. whether the prescription can be administered after a given date) is conveyed in the dosage information.",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dispenseRequest.validityPeriod.start",
        "path" : "MedicationRequest.dispenseRequest.validityPeriod.start",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dispenseRequest.validityPeriod.end",
        "path" : "MedicationRequest.dispenseRequest.validityPeriod.end",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.dispenseRequest.quantity",
        "path" : "MedicationRequest.dispenseRequest.quantity",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.substitution",
        "path" : "MedicationRequest.substitution",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.substitution.allowed[x]",
        "path" : "MedicationRequest.substitution.allowed[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
