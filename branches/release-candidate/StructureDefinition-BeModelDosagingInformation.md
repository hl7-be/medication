# Dosaging (model) - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dosaging (model)**

## Logical Model: Dosaging (model) 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelDosagingInformation | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeModelDosagingInformation |

 
Structured Dosage data model. 

**Usages:**

* Use this Logical Model: [Medication Line (model)](StructureDefinition-BeModelMedicationLine.md) and [Medication prescription (model)](StructureDefinition-BeModelMedicationPrescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/BeModelDosagingInformation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelDosagingInformation.csv), [Excel](StructureDefinition-BeModelDosagingInformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelDosagingInformation",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelDosagingInformation",
  "version" : "1.1.0",
  "name" : "BeModelDosagingInformation",
  "title" : "Dosaging (model)",
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
  "description" : "Structured Dosage data model.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeModelDosagingInformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelDosagingInformation",
        "path" : "BeModelDosagingInformation",
        "short" : "Dosaging (model)",
        "definition" : "Structured Dosage data model."
      },
      {
        "id" : "BeModelDosagingInformation.timing",
        "path" : "BeModelDosagingInformation.timing",
        "short" : "When medication should be administered (period, time of day, frequency, etc)",
        "definition" : "When medication should be administered (period, time of day, frequency, etc)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelDosagingInformation.timing.event",
        "path" : "BeModelDosagingInformation.timing.event",
        "short" : "Exact date and/or time of the administration",
        "definition" : "Exact date and/or time of the administration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelDosagingInformation.timing.code",
        "path" : "BeModelDosagingInformation.timing.code",
        "short" : "Timing abbreviation (AM - morning, Q4H - once in every 4 hours, BID - twice a day, etc)",
        "definition" : "Timing abbreviation (AM - morning, Q4H - once in every 4 hours, BID - twice a day, etc)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelDosagingInformation.doseRange",
        "path" : "BeModelDosagingInformation.doseRange",
        "short" : "Amount of medication per one dose (e.g '1 tablet', '2-3 tablets', '20ml')",
        "definition" : "Amount of medication per one dose (e.g '1 tablet', '2-3 tablets', '20ml')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "BeModelDosagingInformation.doseQuantity",
        "path" : "BeModelDosagingInformation.doseQuantity",
        "short" : "Amount of medication per one dose (e.g '1 tablet', '2-3 tablets', '20ml')",
        "definition" : "Amount of medication per one dose (e.g '1 tablet', '2-3 tablets', '20ml')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "BeModelDosagingInformation.instructions",
        "path" : "BeModelDosagingInformation.instructions",
        "short" : "Free text instructions for the patient, e.g 'take with food', 'do not take with alcohol', etc",
        "definition" : "Free text instructions for the patient, e.g 'take with food', 'do not take with alcohol', etc",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "BeModelDosagingInformation.routeOfAdministration",
        "path" : "BeModelDosagingInformation.routeOfAdministration",
        "short" : "Route of administration",
        "definition" : "Route of administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeRouteOfAdministrationVS"
        }
      }
    ]
  }
}

```
