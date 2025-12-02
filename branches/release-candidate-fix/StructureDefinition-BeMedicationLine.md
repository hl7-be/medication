# BeMedicationLine - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeMedicationLine**

## Resource Profile: BeMedicationLine 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationLine | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeMedicationLine |

 
Medication Line profile - contains the overview information for a single medication item 

**Usages:**

* Refer to this Profile: [BasedOnMedicationLine](StructureDefinition-BasedOnMedicationLine.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeMedicationLine)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeMedicationLine.csv), [Excel](StructureDefinition-BeMedicationLine.xlsx), [Schematron](StructureDefinition-BeMedicationLine.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeMedicationLine",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationLine",
  "version" : "1.1.0",
  "name" : "BeMedicationLine",
  "title" : "BeMedicationLine",
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
  "description" : "Medication Line profile - contains the overview information for a single medication item",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationStatement",
        "path" : "MedicationStatement"
      },
      {
        "id" : "MedicationStatement.extension",
        "path" : "MedicationStatement.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 5
      },
      {
        "id" : "MedicationStatement.extension:recordedDate",
        "path" : "MedicationStatement.extension",
        "sliceName" : "recordedDate",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtRecordedDate"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.extension:recorder",
        "path" : "MedicationStatement.extension",
        "sliceName" : "recorder",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtRecorder"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.extension:exposure-category",
        "path" : "MedicationStatement.extension",
        "sliceName" : "exposure-category",
        "short" : "Exposure category",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationExposureCategory"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.extension:artifact-version",
        "path" : "MedicationStatement.extension",
        "sliceName" : "artifact-version",
        "short" : "The business version of the medication line - this version changes when the content update is considered clinically relevant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/artifact-version|5.2.0"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.extension:artifact-date",
        "path" : "MedicationStatement.extension",
        "sliceName" : "artifact-date",
        "short" : "The business-relevant recorded date - the date the medication line was created or changed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/artifact-date|5.2.0"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.extension:adherenceStatus",
        "path" : "MedicationStatement.extension",
        "sliceName" : "adherenceStatus",
        "short" : "Indicates whether the medication is or is not being consumed or administered",
        "comment" : "This is a FHIR R5 element, preadopted as an extension in this FHIR R4 specification. \nFor the full definition see here: [http://hl7.org/fhir/R5/medicationstatement-definitions.html#MedicationStatement.adherence](http://hl7.org/fhir/R5/medicationstatement-definitions.html#MedicationStatement.adherence)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.adherence.code"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.extension:adherenceStatus.value[x]",
        "path" : "MedicationStatement.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationLineAdherenceStatusVS"
        }
      },
      {
        "id" : "MedicationStatement.extension:registrationStatus",
        "path" : "MedicationStatement.extension",
        "sliceName" : "registrationStatus",
        "short" : "The registration status of the medication line - preadopting the values in R5",
        "definition" : "The registration status of the medication line, indicating whether it is draft, recorded, or entered-in-error.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtMedicationLineRegistrationStatus"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.extension:offLabel",
        "path" : "MedicationStatement.extension",
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
        "id" : "MedicationStatement.extension:offLabel.extension:reason",
        "path" : "MedicationStatement.extension.extension",
        "sliceName" : "reason",
        "short" : "The reason why the recommended dosage was overridden"
      },
      {
        "id" : "MedicationStatement.identifier",
        "path" : "MedicationStatement.identifier",
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
        "id" : "MedicationStatement.identifier:vidis",
        "path" : "MedicationStatement.identifier",
        "sliceName" : "vidis",
        "short" : "VIDIS identifier",
        "definition" : "The national identifier for medication lines.",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.identifier:vidis.system",
        "path" : "MedicationStatement.identifier.system",
        "min" : 1,
        "patternUri" : "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-medicationline"
      },
      {
        "id" : "MedicationStatement.identifier:vidis.value",
        "path" : "MedicationStatement.identifier.value",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.status",
        "path" : "MedicationStatement.status",
        "patternCode" : "unknown",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.statusReason",
        "path" : "MedicationStatement.statusReason",
        "mustSupport" : true,
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationLineAdherenceStatusReasonVS"
        }
      },
      {
        "id" : "MedicationStatement.category",
        "path" : "MedicationStatement.category",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationLineOriginTypeVS"
        }
      },
      {
        "id" : "MedicationStatement.medication[x]",
        "path" : "MedicationStatement.medication[x]",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.medication[x].extension:medicationType",
        "path" : "MedicationStatement.medication[x].extension",
        "sliceName" : "medicationType",
        "short" : "Type of medication",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtMedicationType"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.subject",
        "path" : "MedicationStatement.subject",
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
        "id" : "MedicationStatement.effective[x]",
        "path" : "MedicationStatement.effective[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.effective[x]:effectivePeriod",
        "path" : "MedicationStatement.effective[x]",
        "sliceName" : "effectivePeriod",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.effective[x]:effectivePeriod.start",
        "path" : "MedicationStatement.effective[x].start",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.effective[x]:effectivePeriod.end",
        "path" : "MedicationStatement.effective[x].end",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dateAsserted",
        "path" : "MedicationStatement.dateAsserted",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.informationSource",
        "path" : "MedicationStatement.informationSource",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.reasonCode",
        "path" : "MedicationStatement.reasonCode",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.reasonReference",
        "path" : "MedicationStatement.reasonReference",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.note",
        "path" : "MedicationStatement.note",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage",
        "path" : "MedicationStatement.dosage",
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
