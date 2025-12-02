# BeMedicationDispense - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeMedicationDispense**

## Resource Profile: BeMedicationDispense 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationDispense | *Version*:1.1.0 | |
| Active as of 2025-10-10 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeMedicationDispense |

 
Defines constraints and extensions on the Medication Dispense resource for a record of a dispensation in Belgium. 

**Usages:**

* Examples for this Profile: [MedicationDispense/example-dispense-communitypharmacy-1med](MedicationDispense-example-dispense-communitypharmacy-1med.md), [MedicationDispense/example-dispense-hospital](MedicationDispense-example-dispense-hospital.md), [MedicationDispense/example-minimal-dispense](MedicationDispense-example-minimal-dispense.md), [MedicationDispense/medicationdispense-example-1](MedicationDispense-medicationdispense-example-1.md) and [MedicationDispense/medicationdispense-example-2](MedicationDispense-medicationdispense-example-2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeMedicationDispense)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeMedicationDispense.csv), [Excel](StructureDefinition-BeMedicationDispense.xlsx), [Schematron](StructureDefinition-BeMedicationDispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeMedicationDispense",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationDispense",
  "version" : "1.1.0",
  "name" : "BeMedicationDispense",
  "title" : "BeMedicationDispense",
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
  "description" : "Defines constraints and extensions on the Medication Dispense resource for a record of a dispensation in Belgium.",
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
      "identity" : "rx-dispense-rmim",
      "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
      "name" : "V3 Pharmacy Dispense RMIM"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationDispense",
        "path" : "MedicationDispense",
        "short" : "The medication dispense entry",
        "definition" : "A register of a medication dispense, describing the medication that has been dispensed by a professional or by an organization, including the medication, the patient, some prescription and treatment information."
      },
      {
        "id" : "MedicationDispense.extension",
        "path" : "MedicationDispense.extension",
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
        "id" : "MedicationDispense.extension:recorded",
        "path" : "MedicationDispense.extension",
        "sliceName" : "recorded",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.recorded"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.extension:basedOnMedicationLine",
        "path" : "MedicationDispense.extension",
        "sliceName" : "basedOnMedicationLine",
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
        "id" : "MedicationDispense.extension:beExtOffLabel",
        "path" : "MedicationDispense.extension",
        "sliceName" : "beExtOffLabel",
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
        "id" : "MedicationDispense.identifier",
        "path" : "MedicationDispense.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.identifier:DGUID",
        "path" : "MedicationDispense.identifier",
        "sliceName" : "DGUID",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.identifier:DGUID.type.coding.code",
        "path" : "MedicationDispense.identifier.type.coding.code",
        "patternCode" : "dguid"
      },
      {
        "id" : "MedicationDispense.identifier:DGUID.system",
        "path" : "MedicationDispense.identifier.system",
        "min" : 1,
        "fixedUri" : "https://www.gfd-dpp.be/fhir/reference/dguid"
      },
      {
        "id" : "MedicationDispense.medication[x]",
        "path" : "MedicationDispense.medication[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationDispense.medication[x]:medicationCodeableConcept",
        "path" : "MedicationDispense.medication[x]",
        "sliceName" : "medicationCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "MedicationCode"
            }
          ],
          "strength" : "example",
          "description" : "The drug code. For example CNK code for the medication",
          "valueSet" : "http://hl7.org/fhir/ValueSet/medication-codes"
        }
      },
      {
        "id" : "MedicationDispense.medication[x]:medicationReference",
        "path" : "MedicationDispense.medication[x]",
        "sliceName" : "medicationReference",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Medication"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.subject",
        "path" : "MedicationDispense.subject",
        "min" : 1,
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
        "id" : "MedicationDispense.context",
        "path" : "MedicationDispense.context",
        "short" : "The dispense session identifier, for example an identifier of a visit to a pharmacy",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.context.identifier",
        "path" : "MedicationDispense.context.identifier",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.context.identifier.type.coding.system",
        "path" : "MedicationDispense.context.identifier.type.coding.system",
        "patternUri" : "https://www.gfd-dpp.be/fhir/reference/identifier_types"
      },
      {
        "id" : "MedicationDispense.context.identifier.type.coding.code",
        "path" : "MedicationDispense.context.identifier.type.coding.code",
        "patternCode" : "sguid"
      },
      {
        "id" : "MedicationDispense.context.identifier.system",
        "path" : "MedicationDispense.context.identifier.system",
        "patternUri" : "https://www.gfd-dpp.be/fhir/reference/sguid"
      },
      {
        "id" : "MedicationDispense.performer",
        "path" : "MedicationDispense.performer",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.performer.function.text",
        "path" : "MedicationDispense.performer.function.text",
        "patternString" : "dispenser"
      },
      {
        "id" : "MedicationDispense.performer.actor",
        "path" : "MedicationDispense.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.authorizingPrescription",
        "path" : "MedicationDispense.authorizingPrescription",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.authorizingPrescription.identifier",
        "path" : "MedicationDispense.authorizingPrescription.identifier",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.authorizingPrescription.display",
        "path" : "MedicationDispense.authorizingPrescription.display",
        "comment" : "When there is a prescription but that prescription is not known to the system (e.g. a paper prescription from another country or a prescription that is not yet entered in the system), the display can be used to provide a confirmation that there is a prescription.",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.quantity",
        "path" : "MedicationDispense.quantity",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.whenHandedOver",
        "path" : "MedicationDispense.whenHandedOver",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.note",
        "path" : "MedicationDispense.note",
        "mustSupport" : true
      },
      {
        "id" : "MedicationDispense.dosageInstruction",
        "path" : "MedicationDispense.dosageInstruction",
        "type" : [
          {
            "code" : "Dosage",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeDosage"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
