# Example organization for a pharmacy - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example organization for a pharmacy**

## Example Organization: Example organization for a pharmacy

Profile: [BeOrganization](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/StructureDefinition-be-organization.html)

**identifier**: [BeNSNIHDIOrganization](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ns-nihdi-organization.html)/27457532

**type**: independent pharmacy



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "apotheek-onder-de-toren",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
  },
  "identifier" : [{
    "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-organization",
    "value" : "27457532"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty",
      "code" : "orgpharmacy"
    }]
  }]
}

```
