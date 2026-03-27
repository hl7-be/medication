# BEMedicationLine - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BEMedicationLine**

## Resource Profile: BEMedicationLine 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-medicationline | *Version*:1.1.0 |
| Draft as of 2026-03-27 | *Computable Name*:BEMedicationLine |

 
Medication Line profile - contains the overview information for a single medication item 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/be-medicationline)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-medicationline.csv), [Excel](StructureDefinition-be-medicationline.xlsx), [Schematron](StructureDefinition-be-medicationline.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-medicationline",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-medicationline",
  "version" : "1.1.0",
  "name" : "BEMedicationLine",
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
  "description" : "Medication Line profile - contains the overview information for a single medication item",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.extension",
      "path" : "MedicationStatement.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "MedicationStatement.extension:exposure-category",
      "path" : "MedicationStatement.extension",
      "sliceName" : "exposure-category",
      "short" : "Exposure category",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtExposureCategory"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.extension:dispense-request-needed",
      "path" : "MedicationStatement.extension",
      "sliceName" : "dispense-request-needed",
      "short" : "Indication of whether a dispense request is needed for delivering the medication",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtDispenseRequestNeededCategory"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.extension:artifact-version",
      "path" : "MedicationStatement.extension",
      "sliceName" : "artifact-version",
      "short" : "The business version of the medication line - this version changes when the content update is considered clinically relevant",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/artifact-version"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.extension:artifact-date",
      "path" : "MedicationStatement.extension",
      "sliceName" : "artifact-date",
      "short" : "The business-relevant recorded date - the date the medication line was created or changed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/artifact-date"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.extension:adherence",
      "path" : "MedicationStatement.extension",
      "sliceName" : "adherence",
      "short" : "Indicates whether the medication is or is not being consumed or administered",
      "comment" : "This is a FHIR R5 element, preadopted as an extension in this FHIR R4 specification. \nFor the full definition see here: [http://hl7.org/fhir/R5/medicationstatement-definitions.html#MedicationStatement.adherence](http://hl7.org/fhir/R5/medicationstatement-definitions.html#MedicationStatement.adherence)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.adherence"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.identifier",
      "path" : "MedicationStatement.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice based on the identifier system",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.identifier:vidis",
      "path" : "MedicationStatement.identifier",
      "sliceName" : "vidis",
      "short" : "VIDIS identifier",
      "definition" : "The national identifier for medication lines.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.identifier:vidis.system",
      "path" : "MedicationStatement.identifier.system",
      "min" : 1,
      "patternUri" : "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-medicationline"
    },
    {
      "id" : "MedicationStatement.identifier:vidis.value",
      "path" : "MedicationStatement.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.status",
      "path" : "MedicationStatement.status",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.statusReason",
      "path" : "MedicationStatement.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.category",
      "path" : "MedicationStatement.category",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]",
      "path" : "MedicationStatement.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.extension",
      "path" : "MedicationStatement.medication[x].extension",
      "min" : 1
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.extension:medication-type",
      "path" : "MedicationStatement.medication[x].extension",
      "sliceName" : "medication-type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtMedicationType"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.subject",
      "path" : "MedicationStatement.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.effective[x]",
      "path" : "MedicationStatement.effective[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dateAsserted",
      "path" : "MedicationStatement.dateAsserted",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.informationSource",
      "path" : "MedicationStatement.informationSource",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.reasonCode",
      "path" : "MedicationStatement.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.reasonReference",
      "path" : "MedicationStatement.reasonReference",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.note",
      "path" : "MedicationStatement.note",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage",
      "path" : "MedicationStatement.dosage",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.extension:dosage-override",
      "path" : "MedicationStatement.dosage.extension",
      "sliceName" : "dosage-override",
      "short" : "Indicates that the recommended dosage was overridden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtDosageOverride"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.extension:dosage-override-reason",
      "path" : "MedicationStatement.dosage.extension",
      "sliceName" : "dosage-override-reason",
      "short" : "The reason why the recommended dosage was overridden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtDosageOverrideReason"]
      }],
      "mustSupport" : true
    }]
  }
}

```
