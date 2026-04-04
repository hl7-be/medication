# MedicationRequest - Off-label use - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationRequest - Off-label use**

## Extension: MedicationRequest - Off-label use 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtOffLabel | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeExtOffLabel |

Indicates that the order placer has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeMedicationDispense](StructureDefinition-BeMedicationDispense.md), [BeMedicationLine](StructureDefinition-BeMedicationLine.md) and [BeMedicationPrescription](StructureDefinition-BeMedicationPrescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeExtOffLabel)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeExtOffLabel.csv), [Excel](StructureDefinition-BeExtOffLabel.xlsx), [Schematron](StructureDefinition-BeExtOffLabel.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeExtOffLabel",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtOffLabel",
  "version" : "1.1.0",
  "name" : "BeExtOffLabel",
  "title" : "MedicationRequest - Off-label use",
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
  "description" : "Indicates that the order placer has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product.",
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
      "expression" : "MedicationStatement"
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
        "short" : "MedicationRequest - Off-label use",
        "definition" : "Indicates that the order placer has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product.",
        "constraint" : [
          {
            "key" : "offLabel-reason-required",
            "severity" : "error",
            "human" : "If isOffLabelUse is true, reason must be provided",
            "expression" : "extension.where(url = 'isOffLabelUse').value.ofType(boolean).where($this = true).exists() implies extension.where(url = 'reason').exists()",
            "source" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtOffLabel"
          }
        ]
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:isOffLabelUse",
        "path" : "Extension.extension",
        "sliceName" : "isOffLabelUse",
        "short" : "Indicates that the recommended dosage was overridden. Must be 'true' when .reason is provided.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:isOffLabelUse.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:isOffLabelUse.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "isOffLabelUse"
      },
      {
        "id" : "Extension.extension:isOffLabelUse.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Extension.extension:reason",
        "path" : "Extension.extension",
        "sliceName" : "reason",
        "short" : "Reason or related clarification for off-label use.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:reason.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:reason.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "reason"
      },
      {
        "id" : "Extension.extension:reason.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtOffLabel"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
