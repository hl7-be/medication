# be-ns-product-package-type - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **be-ns-product-package-type**

## NamingSystem: be-ns-product-package-type 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-product-package-type | *Version*:1.1.0 |
| Active as of 2020-07-24 | *Computable Name*:BeNSProductPackage |

 
Naming System - Product Package Types 

### Summary

| | |
| :--- | :--- |
| Defining URL | https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-product-package-type |
| Version | 1.1.0 |
| Name | BeNSProductPackage |
| Status | active |
| Definition | Naming System - Product Package Types |
| Publisher | eHealth Platform |

### Identifiers

* **Type**: URI
  * **Value**: https://www.ehealth.fgov.be/standards/fhir/NamingSystem/product-package-type
  * **Preferred**: true



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "be-ns-product-package-type",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/be-ns-product-package-type"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "1.1.0"
    }
  ],
  "name" : "BeNSProductPackage",
  "status" : "active",
  "kind" : "codesystem",
  "date" : "2020-07-24",
  "publisher" : "eHealth Platform",
  "contact" : [
    {
      "name" : "eHealth Platform",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ehealth.fgov.be/standards/fhir"
        },
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net"
        }
      ]
    },
    {
      "name" : "Message Structure eHealth",
      "telecom" : [
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Naming System - Product Package Types",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "BE",
          "display" : "Belgium"
        }
      ]
    }
  ],
  "uniqueId" : [
    {
      "type" : "uri",
      "value" : "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/product-package-type",
      "preferred" : true
    }
  ]
}

```
