# apotheek-onder-de-toren - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **apotheek-onder-de-toren**

## Example Organization: apotheek-onder-de-toren

Profile: [BeOrganization](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/StructureDefinition-be-organization.html)

**identifier**: `https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization`/27457532

**type**: independent pharmacy



## Resource Content

```json
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

```
