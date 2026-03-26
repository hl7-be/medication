# Prescription Example 01 - Lasix - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prescription Example 01 - Lasix**

## Example MedicationRequest: Prescription Example 01 - Lasix



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "example-01-lasix",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationPrescription"]
  },
  "contained" : [{
    "resourceType" : "PractitionerRole",
    "id" : "practitionerrole-example",
    "meta" : {
      "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"]
    },
    "practitioner" : {
      "identifier" : {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
        "value" : "12345678004"
      }
    },
    "code" : [{
      "coding" : [{
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty",
        "code" : "persphysician",
        "display" : "physician"
      }]
    }]
  }],
  "identifier" : [{
    "system" : "http://ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-prescription",
    "value" : "BEP1LASIX001"
  },
  {
    "system" : "urn:be:swh:ns-identifier",
    "value" : "SWH-RX-2025-001"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "urn:be:samv2:amppackage",
      "code" : "067663-02",
      "display" : "Lasix 40 mg tabl. 50",
      "userSelected" : true
    }]
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
  "authoredOn" : "2025-10-19T00:00:00+02:00",
  "requester" : {
    "reference" : "#practitionerrole-example"
  },
  "dosageInstruction" : [{
    "timing" : {
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/timing-abbreviation",
          "code" : "QOD",
          "display" : "QOD"
        }]
      }
    }
  }],
  "dispenseRequest" : {
    "validityPeriod" : {
      "start" : "2025-10-19T00:00:00+02:00",
      "end" : "2026-01-18T00:00:00+01:00"
    }
  }
}

```
