# Class - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Class**

## Data Type Profile: Class 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class | *Version*:1.1.0 |
| Draft as of 2026-03-27 | *Computable Name*:Class |

 
Class of data elements 

**Usages:**

* Use this DataType Profile: [KMEHR Medication Schema v5.8](StructureDefinition-KMEHRMS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/Class)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Class.csv), [Excel](StructureDefinition-Class.xlsx), [Schematron](StructureDefinition-Class.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Class",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class",
  "version" : "1.1.0",
  "name" : "Class",
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
  "description" : "Class of data elements",
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
  "type" : "BackboneElement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/BackboneElement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "BackboneElement",
      "path" : "BackboneElement",
      "short" : "group",
      "definition" : "Class of data elements"
    }]
  }
}

```
