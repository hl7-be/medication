# Example Dispense entry - Community Pharmacy dispense, from prescription, with contained org. - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Dispense entry - Community Pharmacy dispense, from prescription, with contained org.**

## Example MedicationDispense: Example Dispense entry - Community Pharmacy dispense, from prescription, with contained org.



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "medicationdispense-example-2",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationDispense"
    ]
  },
  "language" : "nl-BE",
  "contained" : [
    {
      "resourceType" : "Organization",
      "id" : "apotheek-onder-de-toren",
      "meta" : {
        "profile" : [
          "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
        ]
      },
      "identifier" : [
        {
          "system" : "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization",
          "value" : "27457532"
        }
      ],
      "type" : [
        {
          "coding" : [
            {
              "system" : "https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty",
              "code" : "orgpharmacy"
            }
          ]
        }
      ]
    }
  ],
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
      "value" : "a8ca980c-aa4f-44f3-8cf7-547e6ad3dba0"
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
        "reference" : "#apotheek-onder-de-toren",
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
      "display" : "Prescription"
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
      "text" : "3 x per dag",
      "_text" : {
        "extension" : [
          {
            "extension" : [
              {
                "url" : "lang",
                "valueCode" : "fr-BE"
              },
              {
                "url" : "content",
                "valueString" : "3 x par jour"
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
