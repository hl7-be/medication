# Medication (model) - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication (model)**

## Logical Model: Medication (model) 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedication | *Version*:1.1.0 |
| Active as of 2025-12-02 | *Computable Name*:BeModelMedication |

 
Logical data model for medication. 

### Relationship with other elements:

The Medication model relates to the other data structures in the following way:

This model is just a placeholder and has not been implemented as a FHIR resource. Implementers are expected to use the Medication resource which will be profiled later.

* [Medication Line](StructureDefinition-BeModelMedicationDispense.md) may refer to a [Medication Dispense](StructureDefinition-BeModelMedicationDispense.md) that occurs in the treatment.
* [Medication Dispense](StructureDefinition-BeModelMedicationDispense.md) may be the trigger for creating or updating a [Medication Line](StructureDefinition-BeModelMedicationLine.md).

**Usages:**

* Refer to this Logical Model: [Medication Line (model)](StructureDefinition-BeModelMedicationLine.md) and [Medication prescription (model)](StructureDefinition-BeModelMedicationPrescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeModelMedication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelMedication.csv), [Excel](StructureDefinition-BeModelMedication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelMedication",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedication",
  "version" : "1.1.0",
  "name" : "BeModelMedication",
  "title" : "Medication (model)",
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
  "description" : "Logical data model for medication.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelMedication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelMedication",
        "path" : "BeModelMedication",
        "short" : "Medication (model)",
        "definition" : "Logical data model for medication."
      },
      {
        "id" : "BeModelMedication.status",
        "path" : "BeModelMedication.status",
        "short" : "Status of the medication (active, inactive, etc.)",
        "definition" : "Status of the medication (active, inactive, etc.)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedication.code",
        "path" : "BeModelMedication.code",
        "short" : "Code for the medication that is actually being specified. This can be a product code, a virtual product code, or a package code.",
        "definition" : "Code for the medication that is actually being specified. This can be a product code, a virtual product code, or a package code.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedication.doseForm",
        "path" : "BeModelMedication.doseForm",
        "short" : "Dose form(s) on a product level. Dose form for a single package item is defined below.",
        "definition" : "Dose form(s) on a product level. Dose form for a single package item is defined below.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedication.item",
        "path" : "BeModelMedication.item",
        "short" : "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined",
        "definition" : "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedication.item.ingredient",
        "path" : "BeModelMedication.item.ingredient",
        "short" : "Ingredients",
        "definition" : "Ingredients",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedication.item.ingredient.item",
        "path" : "BeModelMedication.item.ingredient.item",
        "short" : "Substance or product that is ingredient",
        "definition" : "Substance or product that is ingredient",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedication.item.ingredient.role",
        "path" : "BeModelMedication.item.ingredient.role",
        "short" : "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected.",
        "definition" : "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelMedication.item.ingredient.strength",
        "path" : "BeModelMedication.item.ingredient.strength",
        "short" : "Concentration or presentation strength of the precise active ingredient",
        "definition" : "Concentration or presentation strength of the precise active ingredient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "BeModelMedication.item.amount",
        "path" : "BeModelMedication.item.amount",
        "short" : "Number of such manufactured items in this product (5 vials)",
        "definition" : "Number of such manufactured items in this product (5 vials)",
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
        "id" : "BeModelMedication.batch",
        "path" : "BeModelMedication.batch",
        "short" : "Batch or production information for the product",
        "definition" : "Batch or production information for the product",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelMedication.batch.lotNumber",
        "path" : "BeModelMedication.batch.lotNumber",
        "short" : "Batch number",
        "definition" : "Batch number",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "BeModelMedication.batch.expirationDate",
        "path" : "BeModelMedication.batch.expirationDate",
        "short" : "Expiry date",
        "definition" : "Expiry date",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
