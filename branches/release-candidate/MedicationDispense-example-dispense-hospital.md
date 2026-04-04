# A dispense from a hospital pharmacy - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A dispense from a hospital pharmacy**

## Example MedicationDispense: A dispense from a hospital pharmacy

version: 1; Language: nl-BE

Profile: [BeMedicationDispense](StructureDefinition-be-medicationdispense.md)

**identifier**: dguid/1000321345

**status**: Completed

**medication**: 2055218

**subject**: Identifier: [BeSSINNamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html)/64110219106

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | Identifier:[BeNSNIHDIOrganization](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ns-nihdi-organization.html)/123123123 |

**authorizingPrescription**: Prescription (Identifier: `https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/prescription-id`/BEP1TSRY1XGE)

**quantity**: 1 package (Details: UCUM code1 = '1')

**whenHandedOver**: 2020-09-21 13:00:00+0200

### DosageInstructions

| | | |
| :--- | :--- | :--- |
| - | **Text** | **Timing** |
| * | 3 x a day | 3 per 1 day |



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "example-dispense-hospital",
  "meta" : {
    "versionId" : "1",
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-medicationdispense"]
  },
  "language" : "nl-BE",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "https://www.nexuzhealth.be/fhir/prescription/ambulatory",
        "version" : "1",
        "code" : "dguid"
      }]
    },
    "system" : "https://www.gfd-dpp.be/fhir/reference/dguid",
    "value" : "1000321345"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes",
      "code" : "2055218",
      "_display" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "nl-BE"
          },
          {
            "url" : "content",
            "valueString" : "Crestor filmomh. tabl. 100x 10mg"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value" : "64110219106"
    }
  },
  "performer" : [{
    "actor" : {
      "identifier" : {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-organization",
        "value" : "123123123"
      }
    }
  }],
  "authorizingPrescription" : [{
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/prescription-id",
      "value" : "BEP1TSRY1XGE"
    },
    "display" : "Prescription"
  }],
  "quantity" : {
    "value" : 1,
    "unit" : "package",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "whenHandedOver" : "2020-09-21T13:00:00+02:00",
  "dosageInstruction" : [{
    "text" : "3 x a day",
    "_text" : {
      "extension" : [{
        "extension" : [{
          "url" : "lang",
          "valueCode" : "nl-BE"
        },
        {
          "url" : "content",
          "valueString" : "3 x per dag"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      },
      {
        "extension" : [{
          "url" : "lang",
          "valueCode" : "fr-BE"
        },
        {
          "url" : "content",
          "valueString" : "3 x par jour"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
      }]
    },
    "timing" : {
      "repeat" : {
        "frequency" : 3,
        "period" : 1,
        "periodUnit" : "d"
      }
    }
  }]
}

```
