# ST - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ST**

## Data Type Profile: ST 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST | *Version*:1.1.0 |
| Draft as of 2026-03-27 | *Computable Name*:ST |

 
CharacterString 

**Usages:**

* Use this DataType Profile: [KMEHR Medication Schema v5.8](StructureDefinition-KMEHRMS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/ST)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ST.csv), [Excel](StructureDefinition-ST.xlsx), [Schematron](StructureDefinition-ST.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ST",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST",
  "version" : "1.1.0",
  "name" : "ST",
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
  "description" : "CharacterString",
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
      "short" : "Text",
      "definition" : "String"
    }]
  }
}

```
