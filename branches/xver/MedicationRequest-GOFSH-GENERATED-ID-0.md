# GOFSH-GENERATED-ID-0 - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GOFSH-GENERATED-ID-0**

## Example MedicationRequest: GOFSH-GENERATED-ID-0



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "GOFSH-GENERATED-ID-0",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationPrescription"]
  },
  "contained" : [{
    "resourceType" : "PractitionerRole",
    "id" : "1eb84eda-44db-4d69-ad29-633cbf3e8c33",
    "meta" : {
      "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"]
    },
    "practitioner" : {
      "identifier" : {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
        "value" : "30021203001"
      }
    },
    "code" : [{
      "coding" : [{
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty",
        "code" : "persdentist",
        "display" : "persdentist"
      }]
    }]
  }],
  "extension" : [{
    "extension" : [{
      "url" : "isOffLabelUse",
      "valueBoolean" : false
    }],
    "url" : "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeExtOffLabel"
  }],
  "identifier" : [{
    "system" : "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-prescription"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "urn:be:samv2:amppackage",
      "userSelected" : false
    }],
    "text" : "qwer"
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value" : "urn:be:fgov:ehealth:pseudo:v2:BAEeFgg-BNMHWl1EQ3T8Ox4unll26hx_3EnYGQ6i3qfQyOChof_TWFgR8RBGSN6sqpe_I7UBGgy-Btb1use9uA42RQEyw105JK9PFPzTMUbIm_tXNRszA5IGtrpW47a9g9y9b0grudGfutTfVpipAPR0h0Br9TZ1GfSCDcFKkNGVumZzwg:eyJhdWQiOiJ1aG1lcF92MSIsImVuYyI6IkEyNTZHQ00iLCJleHAiOjE3NzMyMzg0NzAsImlhdCI6MTc3MzE1MjA3MCwiYWxnIjoiZGlyIiwia2lkIjoiYWMwNWIzMjktMzhhOS00NTE0LThlMGMtMjI0NTcyOTI4ZWI5In0..O06ctnwl5suSzwgy.Q0qq4ydRxYUQpjixPggakcNiEIbdv-hZqmp5nY_Xh058EO_qeAUZGcwfxtAzdRHC2zcGR3E1AznVvwVORU6xTMF2C088u0FKHiG8p8aA_4A58YTOjX3XeFqclR6_AAhOv-OeQLhCUzjUqrKRQhOg4EedKEmJ0eOce4uPZS0XiZ6QmdA8T6Er.QKUT6gMzTYvf7EAf_Gwwdg",
      "_value" : {
        "extension" : [{
          "extension" : [{
            "url" : "format",
            "valueCode" : "direct"
          },
          {
            "url" : "marker",
            "valueBoolean" : true
          }],
          "url" : "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
        }]
      }
    }
  },
  "authoredOn" : "2026-03-10T00:00:00+01:00",
  "requester" : {
    "reference" : "#1eb84eda-44db-4d69-ad29-633cbf3e8c33"
  },
  "dosageInstruction" : [{
    "asNeededBoolean" : false
  }],
  "dispenseRequest" : {
    "validityPeriod" : {
      "start" : "2026-03-10T00:00:00+01:00",
      "end" : "2026-06-09T00:00:00+02:00"
    }
  },
  "substitution" : {
    "allowedBoolean" : false
  }
}

```
