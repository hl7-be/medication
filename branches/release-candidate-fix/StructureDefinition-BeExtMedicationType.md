# BeExtMedicationType - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeExtMedicationType**

## Extension: BeExtMedicationType 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtMedicationType | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeExtMedicationType |

The type of medication.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeMedicationLine](StructureDefinition-BeMedicationLine.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeExtMedicationType)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeExtMedicationType.csv), [Excel](StructureDefinition-BeExtMedicationType.xlsx), [Schematron](StructureDefinition-BeExtMedicationType.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeExtMedicationType",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtMedicationType",
  "version" : "1.1.0",
  "name" : "BeExtMedicationType",
  "title" : "BeExtMedicationType",
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
  "description" : "The type of medication.",
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
      "expression" : "MedicationStatement.medication[x]"
    },
    {
      "type" : "element",
      "expression" : "MedicationRequest.medication[x]"
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
        "short" : "BeExtMedicationType",
        "definition" : "The type of medication."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtMedicationType"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeMedicationTypeVS"
        }
      }
    ]
  }
}

```
