# Medication Dispense example - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Dispense example**

## Example MedicationDispense: Medication Dispense example

Language: fr-BE

Profile: [BeMedicationDispense](StructureDefinition-BeMedicationDispense.md)

**identifier**: dguid/a8c45fdc-72aa-11e7-8cf7-a6007ad37dc0

**status**: Completed

**medication**: Topazolam tab 50x 1,0mg

**subject**: Identifier: `https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin`/64110219106

**context**: Identifier: sguid/b8ca980c-72aa-11e7-8cf7-a6006ad3dba0

> **performer****actor**: Jan Janssen (Identifier:`https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-practitioner`/6547432)

> **performer****actor**: Apotheek onder de toren (Identifier:`https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization`/27457532)

**authorizingPrescription**: Prescription 2014fd (Identifier: [BeNSPrescriptions](NamingSystem-be-ns-prescription-ids.md)/2d8dab92-5c38-4380-96a9-e461be2014fd)

**quantity**: 1(unit package from https://www.gfd-dpp.be/fhir/reference/packaging)(Details: packaging codepackage = 'package')

**whenHandedOver**: 2020-03-10

### DosageInstructions

| | |
| :--- | :--- |
| - | **Text** |
| * | 3 x par jour |



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "example-dispense-communitypharmacy-1med",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationDispense"
    ]
  },
  "language" : "fr-BE",
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "code" : "dguid"
          }
        ]
      },
      "system" : "https://www.gfd-dpp.be/fhir/reference/dguid",
      "value" : "a8c45fdc-72aa-11e7-8cf7-a6007ad37dc0"
    }
  ],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes",
        "code" : "1439562",
        "display" : "Topazolam tab 50x 1,0mg",
        "_display" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "lang",
                  "valueCode" : "nl-BE"
                },
                {
                  "url" : "content",
                  "valueString" : "Topazolam tab 50x 1,0mg"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }
          ]
        }
      }
    ]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin",
      "value" : "64110219106"
    }
  },
  "context" : {
    "identifier" : {
      "type" : {
        "coding" : [
          {
            "code" : "sguid"
          }
        ]
      },
      "system" : "https://www.gfd-dpp.be/fhir/reference/sguid",
      "value" : "b8ca980c-72aa-11e7-8cf7-a6006ad3dba0"
    }
  },
  "performer" : [
    {
      "actor" : {
        "identifier" : {
          "system" : "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-practitioner",
          "value" : "6547432"
        },
        "display" : "Jan Janssen"
      }
    },
    {
      "actor" : {
        "identifier" : {
          "system" : "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization",
          "value" : "27457532"
        },
        "display" : "Apotheek onder de toren"
      }
    }
  ],
  "authorizingPrescription" : [
    {
      "identifier" : {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/prescription-id",
        "value" : "2d8dab92-5c38-4380-96a9-e461be2014fd"
      },
      "display" : "Prescription 2014fd"
    }
  ],
  "quantity" : {
    "value" : 1,
    "system" : "https://www.gfd-dpp.be/fhir/reference/packaging",
    "code" : "package"
  },
  "whenHandedOver" : "2020-03-10",
  "dosageInstruction" : [
    {
      "text" : "3 x par jour",
      "_text" : {
        "extension" : [
          {
            "extension" : [
              {
                "url" : "lang",
                "valueCode" : "nl-BE"
              },
              {
                "url" : "content",
                "valueString" : "3 x per dag"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }
        ]
      }
    }
  ]
}

```
