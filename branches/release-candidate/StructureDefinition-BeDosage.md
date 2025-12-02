# Medication Dosage - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Dosage**

## Data Type Profile: Medication Dosage 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeDosage | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeDosage |

 
Specifications for a medication dosage for use in Belgian profiles. 

**Usages:**

* Use this DataType Profile: [BeMedicationDispense](StructureDefinition-BeMedicationDispense.md), [BeMedicationLine](StructureDefinition-BeMedicationLine.md) and [BeMedicationPrescription](StructureDefinition-BeMedicationPrescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeDosage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeDosage.csv), [Excel](StructureDefinition-BeDosage.xlsx), [Schematron](StructureDefinition-BeDosage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeDosage",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeDosage",
  "version" : "1.1.0",
  "name" : "BeDosage",
  "title" : "Medication Dosage",
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
  "description" : "Specifications for a medication dosage for use in Belgian profiles.",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Dosage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Dosage",
        "path" : "Dosage"
      },
      {
        "id" : "Dosage.text",
        "path" : "Dosage.text",
        "mustSupport" : true
      },
      {
        "id" : "Dosage.patientInstruction",
        "path" : "Dosage.patientInstruction",
        "mustSupport" : true
      },
      {
        "id" : "Dosage.timing.event",
        "path" : "Dosage.timing.event",
        "mustSupport" : true
      },
      {
        "id" : "Dosage.timing.code",
        "path" : "Dosage.timing.code",
        "mustSupport" : true
      },
      {
        "id" : "Dosage.route",
        "path" : "Dosage.route",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeRouteOfAdministrationVS"
        }
      },
      {
        "id" : "Dosage.doseAndRate.dose[x]",
        "path" : "Dosage.doseAndRate.dose[x]",
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
        "id" : "Dosage.doseAndRate.dose[x]:doseRange",
        "path" : "Dosage.doseAndRate.dose[x]",
        "sliceName" : "doseRange",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Dosage.doseAndRate.dose[x]:doseQuantity",
        "path" : "Dosage.doseAndRate.dose[x]",
        "sliceName" : "doseQuantity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
