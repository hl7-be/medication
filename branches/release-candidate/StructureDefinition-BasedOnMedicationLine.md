# BasedOnMedicationLine - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BasedOnMedicationLine**

## Extension: BasedOnMedicationLine 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BasedOnMedicationLine | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BasedOnMedicationLine |

Based on medication line.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeMedicationDispense](StructureDefinition-BeMedicationDispense.md) and [BeMedicationPrescription](StructureDefinition-BeMedicationPrescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BasedOnMedicationLine)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BasedOnMedicationLine.csv), [Excel](StructureDefinition-BasedOnMedicationLine.xlsx), [Schematron](StructureDefinition-BasedOnMedicationLine.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BasedOnMedicationLine",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BasedOnMedicationLine",
  "version" : "1.1.0",
  "name" : "BasedOnMedicationLine",
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
  "description" : "Based on medication line.",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "MedicationRequest"
    },
    {
      "type" : "element",
      "expression" : "MedicationDispense"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "definition" : "Based on medication line."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BasedOnMedicationLine"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationLine"
            ]
          }
        ]
      }
    ]
  }
}

```
