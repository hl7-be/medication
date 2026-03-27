# Medicinal Product - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medicinal Product**

## Logical Model: Medicinal Product 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BELMMedProduct | *Version*:1.1.0 |
| Draft as of 2026-03-27 | *Computable Name*:BELMMedProduct |

 
A logical data model for representing a medicinal product. 

**Usages:**

* Refer to this Logical Model: [Medication Line - logical model](StructureDefinition-be-model-medicationline.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BELMMedProduct)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BELMMedProduct.csv), [Excel](StructureDefinition-BELMMedProduct.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BELMMedProduct",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BELMMedProduct",
  "version" : "1.1.0",
  "name" : "BELMMedProduct",
  "title" : "Medicinal Product",
  "status" : "draft",
  "date" : "2026-03-27T06:32:22+00:00",
  "publisher" : "HL7 Belgium",
  "contact" : [{
    "name" : "HL7 Belgium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hl7belgium.org"
    },
    {
      "system" : "email",
      "value" : "hl7belgium@hl7belgium.org"
    }]
  },
  {
    "name" : "Message Structure eHealth",
    "telecom" : [{
      "system" : "email",
      "value" : "message-structure@ehealth.fgov.be",
      "use" : "work"
    }]
  }],
  "description" : "A logical data model for representing a medicinal product.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BELMMedProduct",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BELMMedProduct",
      "path" : "BELMMedProduct",
      "short" : "Medicinal Product",
      "definition" : "A logical data model for representing a medicinal product."
    },
    {
      "id" : "BELMMedProduct.identifier",
      "path" : "BELMMedProduct.identifier",
      "short" : "Unique identifier",
      "definition" : "A unique identifier for the medication line",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BELMMedProduct.name",
      "path" : "BELMMedProduct.name",
      "short" : "The name or designation of the product",
      "definition" : "The name or designation of the product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BELMMedProduct.description",
      "path" : "BELMMedProduct.description",
      "short" : "The text description of the product when not coded",
      "definition" : "The text description of the product when not coded",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BELMMedProduct.ingredient",
      "path" : "BELMMedProduct.ingredient",
      "short" : "The ingredients or components of the product",
      "definition" : "The ingredients or components of the product",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BELMMedProduct.ingredient.product",
      "path" : "BELMMedProduct.ingredient.product",
      "short" : "The product or substance",
      "definition" : "The product or substance",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BELMMedProduct.ingredient.strength",
      "path" : "BELMMedProduct.ingredient.strength",
      "short" : "The quantity or amount of ingredient in the parent product",
      "definition" : "The quantity or amount of ingredient in the parent product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "BELMMedProduct.doseForm",
      "path" : "BELMMedProduct.doseForm",
      "short" : "The dose form of the product",
      "definition" : "The dose form of the product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
