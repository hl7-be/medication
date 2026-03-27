# KMEHR Medication Schema v5.8 - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KMEHR Medication Schema v5.8**

## Logical Model: KMEHR Medication Schema v5.8 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/KMEHRMS | *Version*:1.1.0 |
| Draft as of 2026-03-27 | *Computable Name*:KMEHRMS |

 
This model represents the Medication Schema KMEHR V5.8. It is shown for demonstrating the field correspondence/equivalence, and not to imply any intended scope or intended behaviour. 

 Thís model reflects some key aspects of the KMEHR Medication Schema structure and their use. It is not an authoritative source. It is just represented here as information, reflecting the discussions about a possible correspondence for mapping between KMEHR and FHIR. For a full documentation - technical or functional - of the Medication Schema in KMEHR, users should refer to the eHealth platform documentation. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.medication|current/StructureDefinition/KMEHRMS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-KMEHRMS.csv), [Excel](StructureDefinition-KMEHRMS.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "KMEHRMS",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/KMEHRMS",
  "version" : "1.1.0",
  "name" : "KMEHRMS",
  "title" : "KMEHR Medication Schema v5.8",
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
  "description" : "This model represents the Medication Schema KMEHR V5.8. It is shown for demonstrating the field correspondence/equivalence, and not to imply any intended scope or intended behaviour.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/KMEHRMS",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "KMEHRMS",
      "path" : "KMEHRMS",
      "short" : "KMEHR Medication Schema v5.8",
      "definition" : "This model represents the Medication Schema KMEHR V5.8. It is shown for demonstrating the field correspondence/equivalence, and not to imply any intended scope or intended behaviour."
    },
    {
      "id" : "KMEHRMS.KMEHRMessage",
      "path" : "KMEHRMS.KMEHRMessage",
      "short" : "KMEHR Message",
      "definition" : "KMEHR Message",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header",
      "path" : "KMEHRMS.KMEHRMessage.header",
      "short" : "KMEHR Message header",
      "definition" : "KMEHR Message header",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.standard",
      "path" : "KMEHRMS.KMEHRMessage.header.standard",
      "short" : "Which version of the standard is used",
      "definition" : "Which version of the standard is used",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.standard.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.standard.cd",
      "short" : "The version of the KMEHR standard used",
      "definition" : "The version of the KMEHR standard used",
      "comment" : "* S-VALUE = CD-STANDARD \n* value = always '20161201' \" referring the eHealth XSD version",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/CD"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.date",
      "path" : "KMEHRMS.KMEHRMessage.header.date",
      "short" : "Date",
      "definition" : "Date",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.time",
      "path" : "KMEHRMS.KMEHRMessage.header.time",
      "short" : "Time",
      "definition" : "Time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender",
      "path" : "KMEHRMS.KMEHRMessage.header.sender",
      "short" : "Sender",
      "definition" : "Sender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyHub",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyHub",
      "short" : "the identifier of the hub",
      "definition" : "the identifier of the hub",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyHub.itemId",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyHub.itemId",
      "short" : "the hub identifier",
      "definition" : "the hub identifier",
      "comment" : "S-VALUE= ID-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "1990001916"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyHub.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyHub.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyHub.name",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyHub.name",
      "short" : "the name of the hub",
      "definition" : "the name of the hub",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg",
      "short" : "the identifier of the org",
      "definition" : "the identifier of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.itemId",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.itemId",
      "short" : "the org identifier - NIHDII number of the org",
      "definition" : "the org identifier - NIHDII number of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "1990001916"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.idencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.idencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-ACTOR\n* value = [selection of you NIHII nr]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.idencryptionApplication",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.idencryptionApplication",
      "short" : "Application",
      "definition" : "Application",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-APPLICATION",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.cdencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.cdencryptionActor",
      "short" : "Usage & cardinality",
      "definition" : "Usage & cardinality",
      "requirements" : "* S-VALUE = CD-ENCRYPTION-ACTOR\n* valueset: \n  * EHP\n  * NIHII\n  * SSIN\n  *...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.name",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyOrg.name",
      "short" : "The name of the org",
      "definition" : "The name of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual",
      "short" : "the identifier of the individual",
      "definition" : "the identifier of the individual",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.idriziv",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.idriziv",
      "short" : "the RIZIV individual identifier",
      "definition" : "the RIZIV individual identifier",
      "comment" : "S-VALUE= ID-HCPARTY",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.idinss",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.idinss",
      "short" : "the Belgian Social Security Number identifier",
      "definition" : "the Belgian Social Security Number identifier",
      "comment" : "S-VALUE= INSS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "69060733632"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.idencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.idencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-ACTOR\n* value = [selection of you NIHII nr]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "persphysician"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.cdencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.cdencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* valueset: \n  * EHP\n  * NIHII\n  * SSIN\n  *...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.firstname",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.firstname",
      "short" : "the first name of the individual",
      "definition" : "the first name of the individual",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.familyname",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.familyname",
      "short" : "the last name of the individual",
      "definition" : "the last name of the individual",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "Hendrix"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.address",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.address",
      "short" : "Home, work, ... address(es) of the patient or healthcare party.",
      "definition" : "Home, work, ... address(es) of the patient or healthcare party.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.address.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.address.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S-VALUE = CD-ADDRESS\n* example.valueString = home",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.address.nis",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.address.nis",
      "short" : "explanation: https://nl.wikipedia.org/wiki/NIS-code",
      "definition" : "explanation: https://nl.wikipedia.org/wiki/NIS-code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "24062"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.telecom",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyindividual.telecom",
      "short" : "Fax, phone, … number(s) of the healthcare party.",
      "definition" : "Fax, phone, … number(s) of the healthcare party.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyapplication",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyapplication",
      "short" : "the software identifier",
      "definition" : "the software identifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyapplication.itemId",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyapplication.itemId",
      "short" : "the software identifier",
      "definition" : "the software identifier",
      "requirements" : "* S-VALUE = LOCAL\n* SL-VALUE = endusersoftwareinfo\n* value = [received eHealth client-ID to access specific environment]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyapplication.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyapplication.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "requirements" : "* S-VALUE = CD-HCPARTY\n* value = APPLICATION",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyapplication.name",
      "path" : "KMEHRMS.KMEHRMessage.header.sender.hcpartyapplication.name",
      "short" : "The name of the application.",
      "definition" : "The name of the application.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient",
      "short" : "Recipient",
      "definition" : "Recipient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyHub",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyHub",
      "short" : "the identifier of the hub",
      "definition" : "the identifier of the hub",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyHub.itemId",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyHub.itemId",
      "short" : "the hub identifier",
      "definition" : "the hub identifier",
      "comment" : "S-VALUE= ID-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "1990001916"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyHub.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyHub.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyHub.name",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyHub.name",
      "short" : "the name of the hub",
      "definition" : "the name of the hub",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg",
      "short" : "the identifier of the org",
      "definition" : "the identifier of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.itemId",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.itemId",
      "short" : "the org identifier - NIHDII number of the org",
      "definition" : "the org identifier - NIHDII number of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "1990001916"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.idencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.idencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-ACTOR\n* value = [selection of you NIHII nr]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.idencryptionApplication",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.idencryptionApplication",
      "short" : "Application",
      "definition" : "Application",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-APPLICATION",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.cdencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.cdencryptionActor",
      "short" : "Usage & cardinality",
      "definition" : "Usage & cardinality",
      "requirements" : "* S-VALUE = CD-ENCRYPTION-ACTOR\n* valueset: \n  * EHP\n  * NIHII\n  * SSIN\n  *...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.name",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyOrg.name",
      "short" : "The name of the org",
      "definition" : "The name of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual",
      "short" : "the identifier of the individual",
      "definition" : "the identifier of the individual",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.idriziv",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.idriziv",
      "short" : "the RIZIV individual identifier",
      "definition" : "the RIZIV individual identifier",
      "comment" : "S-VALUE= ID-HCPARTY",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.idinss",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.idinss",
      "short" : "the Belgian Social Security Number identifier",
      "definition" : "the Belgian Social Security Number identifier",
      "comment" : "S-VALUE= INSS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "69060733632"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.idencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.idencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-ACTOR\n* value = [selection of you NIHII nr]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "persphysician"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.cdencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.cdencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* valueset: \n  * EHP\n  * NIHII\n  * SSIN\n  *...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.firstname",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.firstname",
      "short" : "the first name of the individual",
      "definition" : "the first name of the individual",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.familyname",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.familyname",
      "short" : "the last name of the individual",
      "definition" : "the last name of the individual",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "Hendrix"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.address",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.address",
      "short" : "Home, work, ... address(es) of the patient or healthcare party.",
      "definition" : "Home, work, ... address(es) of the patient or healthcare party.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.address.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.address.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S-VALUE = CD-ADDRESS\n* example.valueString = home",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.address.nis",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.address.nis",
      "short" : "explanation: https://nl.wikipedia.org/wiki/NIS-code",
      "definition" : "explanation: https://nl.wikipedia.org/wiki/NIS-code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "24062"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.telecom",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyindividual.telecom",
      "short" : "Fax, phone, … number(s) of the healthcare party.",
      "definition" : "Fax, phone, … number(s) of the healthcare party.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyapplication",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyapplication",
      "short" : "the software identifier",
      "definition" : "the software identifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyapplication.itemId",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyapplication.itemId",
      "short" : "the software identifier",
      "definition" : "the software identifier",
      "requirements" : "* S-VALUE = LOCAL\n* SL-VALUE = endusersoftwareinfo\n* value = [received eHealth client-ID to access specific environment]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyapplication.cd",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyapplication.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "requirements" : "* S-VALUE = CD-HCPARTY\n* value = APPLICATION",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyapplication.name",
      "path" : "KMEHRMS.KMEHRMessage.header.recipient.hcpartyapplication.name",
      "short" : "The name of the application.",
      "definition" : "The name of the application.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder",
      "path" : "KMEHRMS.KMEHRMessage.folder",
      "short" : "The only data that matters",
      "definition" : "The only data that matters",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.idkmehr",
      "path" : "KMEHRMS.KMEHRMessage.folder.idkmehr",
      "short" : "ID-KMEHR",
      "definition" : "ID-KMEHR",
      "comment" : " To Be checked if always 1",
      "requirements" : "* Equal to 1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient",
      "short" : "the patient",
      "definition" : "the patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.idinss",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.idinss",
      "short" : "the Belgian Social Security Number identifier",
      "definition" : "the Belgian Social Security Number identifier",
      "requirements" : "* S = INSS\n* format = 11 digits",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.firstname",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.firstname",
      "short" : "First name of the patient. If no first name exists, the element will be empty.",
      "definition" : "First name of the patient. If no first name exists, the element will be empty.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.familyname",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.familyname",
      "short" : "Family name of the patient",
      "definition" : "Family name of the patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.birthdate",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.birthdate",
      "short" : "Birth date of the patient (uses the basic data types for dates)",
      "definition" : "Birth date of the patient (uses the basic data types for dates)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.deathdate",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.deathdate",
      "short" : "this is not used",
      "definition" : "this is not used",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.sex",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.sex",
      "short" : "Sex of the patient",
      "definition" : "Sex of the patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.sex.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.sex.cd",
      "short" : "Coded value of patient sex",
      "definition" : "Coded value of patient sex",
      "requirements" : "* S = CD-sex\n* ^example.valueString = female",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.address",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.address",
      "short" : "Home, work, … address(es) of the patient.",
      "definition" : "Home, work, … address(es) of the patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.address.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.address.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S = CD-ADDRESS \n* ^example.valueString = home",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.address.zip",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.address.zip",
      "short" : "Zip-code of the city",
      "definition" : "Zip-code of the city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.address.city",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.address.city",
      "short" : "The name of the city",
      "definition" : "The name of the city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.address.street",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.address.street",
      "short" : "The name of the street",
      "definition" : "The name of the street",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.address.housenumber",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.address.housenumber",
      "short" : "Housenumber within the street",
      "definition" : "Housenumber within the street",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.nationality",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.nationality",
      "short" : "Nationality of the patient. Initially, the use of the CD-COUNTRY dictionary was required. We now recommend the use of the CD-FED-COUNTRY dictionary.",
      "definition" : "Nationality of the patient. Initially, the use of the CD-COUNTRY dictionary was required. We now recommend the use of the CD-FED-COUNTRY dictionary.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.nationality.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.nationality.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S = CD-FED-COUNTRY\n* ^example.valueString = de",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.usuallanguage",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.usuallanguage",
      "short" : "Usual language of the patient using the W3C language codes.",
      "definition" : "Usual language of the patient using the W3C language codes.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.telecom",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.telecom",
      "short" : "Fax, phone, … number(s) of the patient.",
      "definition" : "Fax, phone, … number(s) of the patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.recorddatetime",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.recorddatetime",
      "short" : "Date of recording of the patient data.",
      "definition" : "Date of recording of the patient data.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.patient.text",
      "path" : "KMEHRMS.KMEHRMessage.folder.patient.text",
      "short" : "Comment about the patient.",
      "definition" : "Comment about the patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction",
      "short" : "The metadata for the message",
      "definition" : "The metadata for the message",
      "comment" : "here is a comment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.idothers",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.idothers",
      "short" : "Local ID of the medication line",
      "definition" : "*Value set*:\n  * vitalinkuri\n  * RSBID\n  * RSWID",
      "requirements" : "* S-VALUE= LOCAL\n* SL-Value = 'vitalinkuri' - the identifier of the namespace\n  * valueset:\n    * vitalinkuri\n    * RSBID\n    * RSWID",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.cd",
      "short" : "code",
      "definition" : "code",
      "requirements" : "* S= CD-TRANSACTION\n* valueset:\n  * medicationscheme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.date",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.date",
      "short" : "The date when the line was registered in the schema",
      "definition" : "The date when the line was registered in the schema",
      "requirements" : "* ?To be checked if mandatory\n* Format = yyyy-mm-dd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.time",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.time",
      "short" : "The time when the line was registered in the schema",
      "definition" : "The time when the line was registered in the schema",
      "requirements" : "* ?To be checked if mandatory\n* ?Format = hh:mm:ss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author",
      "short" : "The author of the line in the schema",
      "definition" : "The author of the line in the schema",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyHub",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyHub",
      "short" : "the identifier of the hub",
      "definition" : "the identifier of the hub",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyHub.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyHub.itemId",
      "short" : "the hub identifier",
      "definition" : "the hub identifier",
      "comment" : "S-VALUE= ID-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "1990001916"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyHub.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyHub.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyHub.name",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyHub.name",
      "short" : "the name of the hub",
      "definition" : "the name of the hub",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg",
      "short" : "the identifier of the org",
      "definition" : "the identifier of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.itemId",
      "short" : "the org identifier - NIHDII number of the org",
      "definition" : "the org identifier - NIHDII number of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "1990001916"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.idencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.idencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-ACTOR\n* value = [selection of you NIHII nr]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.idencryptionApplication",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.idencryptionApplication",
      "short" : "Application",
      "definition" : "Application",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-APPLICATION",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.cdencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.cdencryptionActor",
      "short" : "Usage & cardinality",
      "definition" : "Usage & cardinality",
      "requirements" : "* S-VALUE = CD-ENCRYPTION-ACTOR\n* valueset: \n  * EHP\n  * NIHII\n  * SSIN\n  *...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.name",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyOrg.name",
      "short" : "The name of the org",
      "definition" : "The name of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual",
      "short" : "the identifier of the individual",
      "definition" : "the identifier of the individual",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.idriziv",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.idriziv",
      "short" : "the RIZIV individual identifier",
      "definition" : "the RIZIV individual identifier",
      "comment" : "S-VALUE= ID-HCPARTY",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.idinss",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.idinss",
      "short" : "the Belgian Social Security Number identifier",
      "definition" : "the Belgian Social Security Number identifier",
      "comment" : "S-VALUE= INSS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "69060733632"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.idencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.idencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-ACTOR\n* value = [selection of you NIHII nr]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "persphysician"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.cdencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.cdencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* valueset: \n  * EHP\n  * NIHII\n  * SSIN\n  *...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.firstname",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.firstname",
      "short" : "the first name of the individual",
      "definition" : "the first name of the individual",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.familyname",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.familyname",
      "short" : "the last name of the individual",
      "definition" : "the last name of the individual",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "Hendrix"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.address",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.address",
      "short" : "Home, work, ... address(es) of the patient or healthcare party.",
      "definition" : "Home, work, ... address(es) of the patient or healthcare party.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.address.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.address.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S-VALUE = CD-ADDRESS\n* example.valueString = home",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.address.nis",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.address.nis",
      "short" : "explanation: https://nl.wikipedia.org/wiki/NIS-code",
      "definition" : "explanation: https://nl.wikipedia.org/wiki/NIS-code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "24062"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.telecom",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyindividual.telecom",
      "short" : "Fax, phone, … number(s) of the healthcare party.",
      "definition" : "Fax, phone, … number(s) of the healthcare party.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyapplication",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyapplication",
      "short" : "the software identifier",
      "definition" : "the software identifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyapplication.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyapplication.itemId",
      "short" : "the software identifier",
      "definition" : "the software identifier",
      "requirements" : "* S-VALUE = LOCAL\n* SL-VALUE = endusersoftwareinfo\n* value = [received eHealth client-ID to access specific environment]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyapplication.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyapplication.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "requirements" : "* S-VALUE = CD-HCPARTY\n* value = APPLICATION",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyapplication.name",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.author.hcpartyapplication.name",
      "short" : "The name of the application.",
      "definition" : "The name of the application.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.isComplete",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.isComplete",
      "short" : "is complete",
      "definition" : "is complete",
      "comment" : "Always set to true because it is not used",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.isValidated",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.isValidated",
      "short" : "is validated",
      "definition" : "is validated",
      "comment" : "Always set to true because it is not used",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.version",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSTransaction.version",
      "short" : "version of the medication scheme",
      "definition" : "version of the medication scheme",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension",
      "short" : "The treatment suspension line(s)",
      "definition" : "The treatment suspension line(s)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.idkmehr",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.idkmehr",
      "short" : "the KMEHR identifier for the medication line",
      "definition" : "the KMEHR identifier for the medication line",
      "comment" : "S-VALUE= ID-KMEHR",
      "requirements" : "* Sequential, starting from 2",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.idother",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.idother",
      "short" : "Local ID of the medication line",
      "definition" : "Local ID of the medication line",
      "requirements" : "* S-VALUE= LOCAL\n* SL-Value = 'vitalinkuri' - the identifier of the namespace\n  * valueset:\n    * vitalinkuri\n    * RSBID\n    * RSWID",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S= CD-TRANSACTION\n* valueset:\n  * medicationschemeelement\n  * treatmentsuspension",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.date",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.date",
      "short" : "The date when the line was registered in the schema",
      "definition" : "The date when the line was registered in the schema",
      "requirements" : "* ?To be checked if mandatory\n* Format = yyyy-mm-dd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.time",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.time",
      "short" : "The time when the line was registered in the schema",
      "definition" : "The time when the line was registered in the schema",
      "requirements" : "* ?To be checked if mandatory\n* ?Format = hh:mm:ss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author",
      "short" : "The author of the line in the schema",
      "definition" : "The author of the line in the schema",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyHub",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyHub",
      "short" : "the identifier of the hub",
      "definition" : "the identifier of the hub",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyHub.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyHub.itemId",
      "short" : "the hub identifier",
      "definition" : "the hub identifier",
      "comment" : "S-VALUE= ID-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "1990001916"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyHub.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyHub.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyHub.name",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyHub.name",
      "short" : "the name of the hub",
      "definition" : "the name of the hub",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg",
      "short" : "the identifier of the org",
      "definition" : "the identifier of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.itemId",
      "short" : "the org identifier - NIHDII number of the org",
      "definition" : "the org identifier - NIHDII number of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "1990001916"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.idencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.idencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-ACTOR\n* value = [selection of you NIHII nr]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.idencryptionApplication",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.idencryptionApplication",
      "short" : "Application",
      "definition" : "Application",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-APPLICATION",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.cdencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.cdencryptionActor",
      "short" : "Usage & cardinality",
      "definition" : "Usage & cardinality",
      "requirements" : "* S-VALUE = CD-ENCRYPTION-ACTOR\n* valueset: \n  * EHP\n  * NIHII\n  * SSIN\n  *...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.name",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyOrg.name",
      "short" : "The name of the org",
      "definition" : "The name of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual",
      "short" : "the identifier of the individual",
      "definition" : "the identifier of the individual",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.idriziv",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.idriziv",
      "short" : "the RIZIV individual identifier",
      "definition" : "the RIZIV individual identifier",
      "comment" : "S-VALUE= ID-HCPARTY",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.idinss",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.idinss",
      "short" : "the Belgian Social Security Number identifier",
      "definition" : "the Belgian Social Security Number identifier",
      "comment" : "S-VALUE= INSS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "69060733632"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.idencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.idencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-ACTOR\n* value = [selection of you NIHII nr]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "persphysician"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.cdencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.cdencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* valueset: \n  * EHP\n  * NIHII\n  * SSIN\n  *...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.firstname",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.firstname",
      "short" : "the first name of the individual",
      "definition" : "the first name of the individual",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.familyname",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.familyname",
      "short" : "the last name of the individual",
      "definition" : "the last name of the individual",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "Hendrix"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.address",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.address",
      "short" : "Home, work, ... address(es) of the patient or healthcare party.",
      "definition" : "Home, work, ... address(es) of the patient or healthcare party.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.address.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.address.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S-VALUE = CD-ADDRESS\n* example.valueString = home",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.address.nis",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.address.nis",
      "short" : "explanation: https://nl.wikipedia.org/wiki/NIS-code",
      "definition" : "explanation: https://nl.wikipedia.org/wiki/NIS-code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "24062"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.telecom",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyindividual.telecom",
      "short" : "Fax, phone, … number(s) of the healthcare party.",
      "definition" : "Fax, phone, … number(s) of the healthcare party.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyapplication",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyapplication",
      "short" : "the software identifier",
      "definition" : "the software identifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyapplication.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyapplication.itemId",
      "short" : "the software identifier",
      "definition" : "the software identifier",
      "requirements" : "* S-VALUE = LOCAL\n* SL-VALUE = endusersoftwareinfo\n* value = [received eHealth client-ID to access specific environment]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyapplication.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyapplication.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "requirements" : "* S-VALUE = CD-HCPARTY\n* value = APPLICATION",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyapplication.name",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.author.hcpartyapplication.name",
      "short" : "The name of the application.",
      "definition" : "The name of the application.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.isComplete",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.isComplete",
      "short" : "is complete",
      "definition" : "is complete",
      "comment" : "Always set to true because it is not used",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.isValidated",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.isValidated",
      "short" : "is validated",
      "definition" : "is validated",
      "comment" : "Always set to true because it is not used",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication",
      "short" : "This describes the medication it is linked to, but has no further relevance",
      "definition" : "This describes the medication it is linked to, but has no further relevance",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.itemId",
      "short" : "a sequential unique item ID within the transaction, start=1",
      "definition" : "a sequential unique item ID within the transaction, start=1",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.cd",
      "short" : "describes the item category",
      "definition" : "describes the item category",
      "comment" : "* S = CD-ITEM\n* value = medication",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.beginMoment",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.beginMoment",
      "short" : "The beginmoment of the medication/treatment suspension",
      "definition" : "The beginmoment of the medication/treatment suspension",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.beginMoment.date",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.beginMoment.date",
      "short" : "Date",
      "definition" : "Date",
      "requirements" : "Format = yyyy-mm-dd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.beginMoment.time",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.beginMoment.time",
      "short" : "Time",
      "definition" : "Time",
      "requirements" : "Format = HH:MM:SS or HH:MM:SS.xxxxxxx+02:00 or ... ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.endMoment",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.endMoment",
      "short" : "the end date (and time) of the suspension",
      "definition" : "The end moment of the medication/treatment suspension",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.endMoment.date",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.endMoment.date",
      "short" : "Date",
      "definition" : "Date",
      "requirements" : "Format = yyyy-mm-dd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.endMoment.time",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.endMoment.time",
      "short" : "Time",
      "definition" : "Time",
      "requirements" : "Format = HH:MM:SS or HH:MM:SS.xxxxxxx+02:00 or ... ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content",
      "short" : "To Do",
      "definition" : "To Do",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.medicinalproduct",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.medicinalproduct",
      "short" : "Description of the medicinal product",
      "definition" : "Description of the medicinal product",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.medicinalproduct.intendedName",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.medicinalproduct.intendedName",
      "short" : "Name of prescribed product",
      "definition" : "Name of prescribed product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.medicinalproduct.intendedCd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.medicinalproduct.intendedCd",
      "short" : "CD-DRUG-CNK + Code (CNK)",
      "definition" : "CD-DRUG-CNK + Code (CNK)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/CD"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.medicinalproduct.deliveredName",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.medicinalproduct.deliveredName",
      "short" : "Name of delivered product",
      "definition" : "Name of delivered product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.medicinalproduct.deliveredCd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.medicinalproduct.deliveredCd",
      "short" : "CD-DRUG-CNK + Code (CNK)",
      "definition" : "CD-DRUG-CNK + Code (CNK)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/CD"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.substanceproduct",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.substanceproduct",
      "short" : "Description of the generic product",
      "definition" : "Description of the generic product",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.substanceproduct.intendedName",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.substanceproduct.intendedName",
      "short" : "Name of prescribed product",
      "definition" : "Name of prescribed product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST"]
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "chloorfenamine + paracetamol oraal 3,2 mg + 240 mg"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.substanceproduct.intendedCd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.substanceproduct.intendedCd",
      "short" : "Code of prescribed product (VMPGROUP or CNK)",
      "definition" : "Code of prescribed product (VMPGROUP or CNK)",
      "comment" : "INN is not supported",
      "requirements" : "* S-Value= CD-INNCLUSTER is not supported\n* S-Value= CD-VMPGROUP \n* SV-value = e.g. LOCALDB\n* ^example.valueString = \"0006106\"",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/CD"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.substanceproduct.deliveredName",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.substanceproduct.deliveredName",
      "short" : "Name of delivered product",
      "definition" : "Name of delivered product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.substanceproduct.deliveredCd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.substanceproduct.deliveredCd",
      "short" : "Code of delivered product (CNK)",
      "definition" : "Code of delivered product (CNK)",
      "comment" : "This has to be CNK, not a substance, because it is a delivered product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/CD"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.compoundprescription",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.compoundprescription",
      "short" : "Description of the compound product",
      "definition" : "Description of the compound product",
      "comment" : "Note that in XML this can directly be populated with the description (as it is in Wallonia)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.compoundprescription.magistraltext",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.compoundprescription.magistraltext",
      "short" : "Recipe of the prescription",
      "definition" : "Recipe of the prescription",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST"]
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "R/ Aluminiumchloride hexahydraat 15 g + Isopropylalcohol 78 g + Gezuiverd water q.s. ad 100 g T"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.compoundprescription.compound",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.compoundprescription.compound",
      "short" : "NOT USED",
      "definition" : "NOT USED",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.compoundprescription.formularyReference",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.content.compoundprescription.formularyReference",
      "short" : "TBD",
      "definition" : "TBD",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.text",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.text",
      "short" : "Mandatory if compoundprescription is used - !!to be checked if possible in TS transaction!!",
      "definition" : "Mandatory if compoundprescription is used - !!to be checked if possible in TS transaction!!",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.lifecycle",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.lifecycle",
      "short" : "The indication of the status, only used in a TS with value 'suspended'",
      "definition" : "The indication of the status, only used in a TS with value 'suspended'",
      "requirements" : "* S = CD-LIFECYCLE\n* value = suspended",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.lnk",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemmedication.lnk",
      "short" : "using a link to the transaction (in the current MedicationSchema) of the related medicine",
      "definition" : "using a link to the transaction (in the current MedicationSchema) of the related medicine",
      "requirements" : "* TYPE = isplannedfor\n* URL = link to the ID-KMEHR of the medication this TS relates to\n  * format = \"//transaction[id[@S='ID-KMEHR']='5']\"",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemtransactionreason",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemtransactionreason",
      "short" : "Extra information on the reason of suspention of the linked medication",
      "definition" : "Extra information on the reason of suspention of the linked medication",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemtransactionreason.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemtransactionreason.itemId",
      "short" : "a sequential unique item ID within the transaction, start=1",
      "definition" : "a sequential unique item ID within the transaction, start=1",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemtransactionreason.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemtransactionreason.cd",
      "short" : "describes the item category",
      "definition" : "describes the item category",
      "requirements" : "* S = CD-ITEM\n* value = transactionreason",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemtransactionreason.contenttext",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemtransactionreason.contenttext",
      "short" : "Text",
      "definition" : "Text",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemtransactionreason.contenttext.text",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionTreatmentSuspension.itemtransactionreason.contenttext.text",
      "short" : "cardinality to be checked",
      "definition" : "cardinality to be checked",
      "comment" : "L-VALUE = [language] fr or nl or ...",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "Temporairement ne pas prendre en raison de l'interaction avec Y."
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication",
      "short" : "The medication lines",
      "definition" : "The medication lines",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.idkmehr",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.idkmehr",
      "short" : "the KMEHR identifier for the medication line",
      "definition" : "the KMEHR identifier for the medication line",
      "comment" : "S-VALUE= ID-KMEHR",
      "requirements" : "* Sequential, starting from 2",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.idother",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.idother",
      "short" : "Local ID of the medication line",
      "definition" : "Local ID of the medication line",
      "requirements" : "* S-VALUE= LOCAL\n* SL-Value = 'vitalinkuri' - the identifier of the namespace\n  * valueset:\n    * vitalinkuri\n    * RSBID\n    * RSWID",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S= CD-TRANSACTION\n* valueset:\n  * medicationschemeelement\n  * treatmentsuspension",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.date",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.date",
      "short" : "The date when the line was registered in the schema",
      "definition" : "The date when the line was registered in the schema",
      "requirements" : "* ?To be checked if mandatory\n* Format = yyyy-mm-dd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.time",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.time",
      "short" : "The time when the line was registered in the schema",
      "definition" : "The time when the line was registered in the schema",
      "requirements" : "* ?To be checked if mandatory\n* ?Format = hh:mm:ss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author",
      "short" : "The author of the line in the schema",
      "definition" : "The author of the line in the schema",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyHub",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyHub",
      "short" : "the identifier of the hub",
      "definition" : "the identifier of the hub",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyHub.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyHub.itemId",
      "short" : "the hub identifier",
      "definition" : "the hub identifier",
      "comment" : "S-VALUE= ID-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "1990001916"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyHub.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyHub.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyHub.name",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyHub.name",
      "short" : "the name of the hub",
      "definition" : "the name of the hub",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg",
      "short" : "the identifier of the org",
      "definition" : "the identifier of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.itemId",
      "short" : "the org identifier - NIHDII number of the org",
      "definition" : "the org identifier - NIHDII number of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "1990001916"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.idencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.idencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-ACTOR\n* value = [selection of you NIHII nr]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.idencryptionApplication",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.idencryptionApplication",
      "short" : "Application",
      "definition" : "Application",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-APPLICATION",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.cdencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.cdencryptionActor",
      "short" : "Usage & cardinality",
      "definition" : "Usage & cardinality",
      "requirements" : "* S-VALUE = CD-ENCRYPTION-ACTOR\n* valueset: \n  * EHP\n  * NIHII\n  * SSIN\n  *...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.name",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyOrg.name",
      "short" : "The name of the org",
      "definition" : "The name of the org",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual",
      "short" : "the identifier of the individual",
      "definition" : "the identifier of the individual",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.idriziv",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.idriziv",
      "short" : "the RIZIV individual identifier",
      "definition" : "the RIZIV individual identifier",
      "comment" : "S-VALUE= ID-HCPARTY",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.idinss",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.idinss",
      "short" : "the Belgian Social Security Number identifier",
      "definition" : "the Belgian Social Security Number identifier",
      "comment" : "S-VALUE= INSS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "69060733632"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.idencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.idencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* S-VALUE = ID-ENCRYPTION-ACTOR\n* value = [selection of you NIHII nr]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "comment" : "S-VALUE= CD-HCPARTY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "persphysician"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.cdencryptionActor",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.cdencryptionActor",
      "short" : "to be checked: usage & cardinality",
      "definition" : "to be checked: usage & cardinality",
      "requirements" : "* valueset: \n  * EHP\n  * NIHII\n  * SSIN\n  *...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.firstname",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.firstname",
      "short" : "the first name of the individual",
      "definition" : "the first name of the individual",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.familyname",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.familyname",
      "short" : "the last name of the individual",
      "definition" : "the last name of the individual",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "Hendrix"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.address",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.address",
      "short" : "Home, work, ... address(es) of the patient or healthcare party.",
      "definition" : "Home, work, ... address(es) of the patient or healthcare party.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.address.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.address.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S-VALUE = CD-ADDRESS\n* example.valueString = home",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.address.nis",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.address.nis",
      "short" : "explanation: https://nl.wikipedia.org/wiki/NIS-code",
      "definition" : "explanation: https://nl.wikipedia.org/wiki/NIS-code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "24062"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.telecom",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyindividual.telecom",
      "short" : "Fax, phone, … number(s) of the healthcare party.",
      "definition" : "Fax, phone, … number(s) of the healthcare party.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyapplication",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyapplication",
      "short" : "the software identifier",
      "definition" : "the software identifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyapplication.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyapplication.itemId",
      "short" : "the software identifier",
      "definition" : "the software identifier",
      "requirements" : "* S-VALUE = LOCAL\n* SL-VALUE = endusersoftwareinfo\n* value = [received eHealth client-ID to access specific environment]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyapplication.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyapplication.cd",
      "short" : "the type of the hcparty",
      "definition" : "the type of the hcparty",
      "requirements" : "* S-VALUE = CD-HCPARTY\n* value = APPLICATION",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyapplication.name",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.author.hcpartyapplication.name",
      "short" : "The name of the application.",
      "definition" : "The name of the application.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.isComplete",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.isComplete",
      "short" : "is complete",
      "definition" : "is complete",
      "comment" : "Always set to true because it is not used",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.isValidated",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.isValidated",
      "short" : "is validated",
      "definition" : "is validated",
      "comment" : "Always set to true because it is not used",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.version",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.version",
      "short" : "TO DO",
      "definition" : "TO DO",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse",
      "short" : "Extra information on the usage of the medication within this transaction",
      "definition" : "Extra information on the usage of the medication within this transaction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.itemId",
      "short" : "a sequential unique item ID within the transaction, start=1",
      "definition" : "a sequential unique item ID within the transaction, start=1",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.cd",
      "short" : "describes the item category",
      "definition" : "describes the item category",
      "requirements" : "* S = CD-ITEM\n* value = healthcareelement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.contentcategory",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.contentcategory",
      "short" : "Category",
      "definition" : "Category",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.contentcategory.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.contentcategory.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S-VALUE=CD-ITEM-MS\n* value = medicationuse",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.contenttext",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.contenttext",
      "short" : "Text",
      "definition" : "Text",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.contenttext.text",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationUse.contenttext.text",
      "short" : "cardinality to be checked",
      "definition" : "cardinality to be checked",
      "comment" : "L-VALUE = [language] fr or nl or ...",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "pression artérielle"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition",
      "short" : "Extra information on the endcondition of the medication within this MSE-transaction",
      "definition" : "Extra information on the endcondition of the medication within this MSE-transaction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.itemId",
      "short" : "a sequential unique item ID within the transaction, start=1",
      "definition" : "a sequential unique item ID within the transaction, start=1",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.cd",
      "short" : "describes the item category",
      "definition" : "describes the item category",
      "requirements" : "* S = CD-ITEM\n* value = healthcareelement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.contentcategory",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.contentcategory",
      "short" : "Category",
      "definition" : "Category",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.contentcategory.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.contentcategory.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S-VALUE=CD-ITEM-MS\n* value = endcondition",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.contenttext",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.contenttext",
      "short" : "Text",
      "definition" : "Text",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.contenttext.text",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemendCondition.contenttext.text",
      "short" : "cardinality to be checked",
      "definition" : "cardinality to be checked",
      "comment" : "L-VALUE = [language] fr or nl or ...",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "pression artérielle"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition",
      "short" : "Extra information on the begincondition of the medication within this MSE-transaction",
      "definition" : "Extra information on the begincondition of the medication within this MSE-transaction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.itemId",
      "short" : "a sequential unique item ID within the transaction, start=1",
      "definition" : "a sequential unique item ID within the transaction, start=1",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.cd",
      "short" : "describes the item category",
      "definition" : "describes the item category",
      "requirements" : "* S = CD-ITEM\n* value = healthcareelement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.contentcategory",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.contentcategory",
      "short" : "Category",
      "definition" : "Category",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.contentcategory.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.contentcategory.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S-VALUE=CD-ITEM-MS\n* value = begincondition",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.contenttext",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.contenttext",
      "short" : "Text",
      "definition" : "Text",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.contenttext.text",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itembeginCondition.contenttext.text",
      "short" : "cardinality to be checked",
      "definition" : "cardinality to be checked",
      "comment" : "L-VALUE = [language] fr or nl or ...",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "pression artérielle"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemorigin",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemorigin",
      "short" : "non-permitted",
      "definition" : "non-permitted",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationType",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedicationType",
      "short" : "non-permitted",
      "definition" : "non-permitted",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemadaptationFlag",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemadaptationFlag",
      "short" : "non-permitted",
      "definition" : "non-permitted",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication",
      "short" : "To Do",
      "definition" : "To Do",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.itemId",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.itemId",
      "short" : "a sequential unique item ID within the transaction, start=1",
      "definition" : "a sequential unique item ID within the transaction, start=1",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.cd",
      "short" : "describes the item category",
      "definition" : "describes the item category",
      "comment" : "* S = CD-ITEM\n* value = medication",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.beginMoment",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.beginMoment",
      "short" : "The beginmoment of the medication/treatment suspension",
      "definition" : "The beginmoment of the medication/treatment suspension",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.beginMoment.date",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.beginMoment.date",
      "short" : "Date",
      "definition" : "Date",
      "requirements" : "Format = yyyy-mm-dd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.beginMoment.time",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.beginMoment.time",
      "short" : "Time",
      "definition" : "Time",
      "requirements" : "Format = HH:MM:SS or HH:MM:SS.xxxxxxx+02:00 or ... ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.endMoment",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.endMoment",
      "short" : "The end moment of the medication/treatment suspension",
      "definition" : "The end moment of the medication/treatment suspension",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.endMoment.date",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.endMoment.date",
      "short" : "Date",
      "definition" : "Date",
      "requirements" : "Format = yyyy-mm-dd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.endMoment.time",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.endMoment.time",
      "short" : "Time",
      "definition" : "Time",
      "requirements" : "Format = HH:MM:SS or HH:MM:SS.xxxxxxx+02:00 or ... ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.duration",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.duration",
      "short" : "The duration of the treatment",
      "definition" : "The duration of the treatment",
      "requirements" : "The duration is mutually exclusive with endMoment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification",
      "short" : "To Do",
      "definition" : "To Do",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.medicinalproduct",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.medicinalproduct",
      "short" : "Description of the medicinal product",
      "definition" : "Description of the medicinal product",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.medicinalproduct.intendedName",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.medicinalproduct.intendedName",
      "short" : "Name of prescribed product",
      "definition" : "Name of prescribed product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.medicinalproduct.intendedCd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.medicinalproduct.intendedCd",
      "short" : "CD-DRUG-CNK + Code (CNK)",
      "definition" : "CD-DRUG-CNK + Code (CNK)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/CD"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.medicinalproduct.deliveredName",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.medicinalproduct.deliveredName",
      "short" : "Name of delivered product",
      "definition" : "Name of delivered product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.medicinalproduct.deliveredCd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.medicinalproduct.deliveredCd",
      "short" : "CD-DRUG-CNK + Code (CNK)",
      "definition" : "CD-DRUG-CNK + Code (CNK)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/CD"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.substanceproduct",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.substanceproduct",
      "short" : "Description of the generic product",
      "definition" : "Description of the generic product",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.substanceproduct.intendedName",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.substanceproduct.intendedName",
      "short" : "Name of prescribed product",
      "definition" : "Name of prescribed product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST"]
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "chloorfenamine + paracetamol oraal 3,2 mg + 240 mg"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.substanceproduct.intendedCd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.substanceproduct.intendedCd",
      "short" : "Code of prescribed product (VMPGROUP or CNK)",
      "definition" : "Code of prescribed product (VMPGROUP or CNK)",
      "comment" : "INN is not supported",
      "requirements" : "* S-Value= CD-INNCLUSTER is not supported\n* S-Value= CD-VMPGROUP \n* SV-value = e.g. LOCALDB\n* ^example.valueString = \"0006106\"",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/CD"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.substanceproduct.deliveredName",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.substanceproduct.deliveredName",
      "short" : "Name of delivered product",
      "definition" : "Name of delivered product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.substanceproduct.deliveredCd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.substanceproduct.deliveredCd",
      "short" : "Code of delivered product (CNK)",
      "definition" : "Code of delivered product (CNK)",
      "comment" : "This has to be CNK, not a substance, because it is a delivered product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/CD"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.compoundprescription",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.compoundprescription",
      "short" : "Description of the compound product",
      "definition" : "Description of the compound product",
      "comment" : "Note that in XML this can directly be populated with the description (as it is in Wallonia)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.compoundprescription.magistraltext",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.compoundprescription.magistraltext",
      "short" : "Recipe of the prescription",
      "definition" : "Recipe of the prescription",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ST"]
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "R/ Aluminiumchloride hexahydraat 15 g + Isopropylalcohol 78 g + Gezuiverd water q.s. ad 100 g T"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.compoundprescription.compound",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.compoundprescription.compound",
      "short" : "NOT USED",
      "definition" : "NOT USED",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.compoundprescription.formularyReference",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.contentmedicationIdentification.compoundprescription.formularyReference",
      "short" : "TBD",
      "definition" : "TBD",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.content",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.content",
      "short" : "Extra content field which can be added if neccessary",
      "definition" : "Extra content field which can be added if neccessary",
      "requirements" : "* S = LOCAL\n* SL = SAMPROOF\n* ^example.valueString = qSv76SJEeOMdbZdVgQEDZA==",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.text",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.text",
      "short" : "Mandatory if compoundprescription is used",
      "definition" : "Mandatory if compoundprescription is used",
      "comment" : "L-VALUE = [language] fr or nl or ...",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "Aluminiumchloride transpiratieremmende hydroalcoholische oplossing 15 % TMF"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.temporality",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.temporality",
      "short" : "The temporality",
      "definition" : "The temporality",
      "requirements" : "* S = CD-TEMPORALITY\n* valueset:\n  * chronic\n  * acute\n  * oneshot",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.temporality.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.temporality.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.frequency",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.frequency",
      "short" : "To Do",
      "definition" : "To Do",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.frequency.periodicity",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.frequency.periodicity",
      "short" : "To Do",
      "definition" : "To Do",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.frequency.periodicity.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.frequency.periodicity.cd",
      "short" : "S-VALUE=CD-PERIODICITY",
      "definition" : "S-VALUE=CD-PERIODICITY",
      "requirements" : "* valueset:\n  * D\n  * DT\n  * J\n  ...",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology",
      "short" : "The freetext posology is mutual exclusive with the structured Regimen",
      "definition" : "The freetext posology is mutual exclusive with the structured Regimen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology.text",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology.text",
      "short" : "Contains the ingestion pattern in textual form",
      "definition" : "Contains the ingestion pattern in textual form",
      "comment" : "L-VALUE = [language] fr or nl or ...",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "tot 4 x per dag 1 tablet"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology.low",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology.low",
      "short" : "Not used here, only in SumEHR",
      "definition" : "Not used here, only in SumEHR",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology.high",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology.high",
      "short" : "Not used here, only in SumEHR",
      "definition" : "Not used here, only in SumEHR",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology.unit",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology.unit",
      "short" : "Not used here, only in SumEHR",
      "definition" : "Not used here, only in SumEHR",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology.takes",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.posology.takes",
      "short" : "Not used here, only in SumEHR",
      "definition" : "Not used here, only in SumEHR",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen",
      "short" : "To Do",
      "definition" : "To Do",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.date",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.date",
      "short" : "date, mostly used icw periodicity=monthly or at a specifiec time of the day",
      "definition" : "date, mostly used icw periodicity=monthly or at a specifiec time of the day",
      "comment" : "* Format= yyyy-mm-dd",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.weekday",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.weekday",
      "short" : "Day of the week, mostly used icw periodicity=weekly",
      "definition" : "Day of the week, mostly used icw periodicity=weekly",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.weekday.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.weekday.cd",
      "short" : "the day of the week",
      "definition" : "the day of the week",
      "comment" : "S-VALUE=CD-WEEKDAY",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "monday"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.daynumber",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.daynumber",
      "short" : "Daynumber, mostly used icw periodicity=weekly or daily",
      "definition" : "Daynumber, mostly used icw periodicity=weekly or daily",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.daytime",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.daytime",
      "short" : "indication of the intake moment",
      "definition" : "indication of the intake moment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.daytime.time",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.daytime.time",
      "short" : "The time when the line was registered in the schema",
      "definition" : "The time when the line was registered in the schema",
      "requirements" : "* ?To be checked if mandatory\n* ?Format = hh:mm:ss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.daytime.dayperiod",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.daytime.dayperiod",
      "short" : "mutual exclusive with &lt;time&gt;",
      "definition" : "mutual exclusive with &lt;time&gt;",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.daytime.dayperiod.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.daytime.dayperiod.cd",
      "short" : "Coded value",
      "definition" : "Coded value",
      "requirements" : "* S = CD-DAYPERIOD\n* valueset:\n  * morning\n  * betweenlunchanddinner\n  * beforesleep\n  * beforebreakfast\n  * ...",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.quantity",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.quantity",
      "short" : "To Do",
      "definition" : "To Do",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.quantity.decimal",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.quantity.decimal",
      "short" : "the amount, expressed in a number",
      "definition" : "the amount, expressed in a number",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.quantity.unit",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.quantity.unit",
      "short" : "the prescribed administration unit where the decimal applies to",
      "definition" : "the prescribed administration unit where the decimal applies to",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.quantity.unit.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.regimen.quantity.unit.cd",
      "short" : "To Do",
      "definition" : "To Do",
      "requirements" : "* S = CD-ADMINISTRATIONUNIT\n* valueset:\n  * 00001\n  * gm\n  * micrograms\n  * tbl\n  * mg\n  * ...",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.route",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.route",
      "short" : "The drug administration route",
      "definition" : "The drug administration route",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/Class"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.route.cd",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.route.cd",
      "short" : "To Do",
      "definition" : "To Do",
      "requirements" : "* S = CD-DRUG-ROUTE\n* valueset:\n  * 00060\n  * 00001\n  * ear-left\n  * derm\n  * transderm\n  * ...",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.instructionForOverDosing",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.instructionForOverDosing",
      "short" : "NOT USED in MS",
      "definition" : "NOT USED in MS",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.instructionForReimbursement",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.instructionForReimbursement",
      "short" : "NOT USED in MS",
      "definition" : "NOT USED in MS",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.isSubstitutionAllowed",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.isSubstitutionAllowed",
      "short" : "NOT USED in MS",
      "definition" : "NOT USED in MS",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.feedback",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.feedback",
      "short" : "NOT USED in MS",
      "definition" : "NOT USED in MS",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.local",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.local",
      "short" : "NOT USED in MS",
      "definition" : "NOT USED in MS",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.batch",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.batch",
      "short" : "NOT USED in MS",
      "definition" : "NOT USED in MS",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.deliveryDate",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.deliveryDate",
      "short" : "NOT USED in MS",
      "definition" : "NOT USED in MS",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Element",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/ANY"]
      }]
    },
    {
      "id" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.instructionforpatient",
      "path" : "KMEHRMS.KMEHRMessage.folder.MSETransactionmedication.itemmedication.instructionforpatient",
      "short" : "Usage instructions for the patient.",
      "definition" : "Usage instructions for the patient.",
      "comment" : "L-VALUE = [language] fr or nl or ...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "example" : [{
        "label" : "Example",
        "valueString" : "A diminuer si possible"
      }]
    }]
  }
}

```
