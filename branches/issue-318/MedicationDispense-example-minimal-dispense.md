# Example Dispense (minimal) - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Dispense (minimal)**

## Example MedicationDispense: Example Dispense (minimal)

Profile: [BeMedicationDispense](StructureDefinition-BeMedicationDispense.md)

**status**: Completed

**medication**: Topazolam tab 50x 1,0mg

**subject**: Identifier: [BeSSINNamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html)/64110219106

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | Jan Janssen (Identifier:`https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-practitioner`/6547432) |

**whenHandedOver**: 2020-03-10



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "example-minimal-dispense",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationDispense"
    ]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes",
        "code" : "1439562",
        "display" : "Topazolam tab 50x 1,0mg"
      }
    ]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value" : "64110219106"
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
    }
  ],
  "whenHandedOver" : "2020-03-10"
}

```
