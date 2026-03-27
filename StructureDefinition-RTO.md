# RTO - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RTO**

## Data Type Profile: RTO 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/RTO | *Version*:1.1.0 |
| Draft as of 2026-03-27 | *Computable Name*:RTO |

 
Ratio 

**Usages:**

* This DataType Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/RTO)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RTO.csv), [Excel](StructureDefinition-RTO.xlsx), [Schematron](StructureDefinition-RTO.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RTO",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/RTO",
  "version" : "1.1.0",
  "name" : "RTO",
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
  "description" : "Ratio",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Element",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Element",
      "path" : "Element",
      "short" : "Ratio of quantities",
      "definition" : "A quantity constructed as the quotient of a numerator quantity divided by a denominator quantity."
    }]
  }
}

```
