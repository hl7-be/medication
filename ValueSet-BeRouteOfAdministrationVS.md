# Route of Administration ValueSet - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Route of Administration ValueSet**

## ValueSet: Route of Administration ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeRouteOfAdministrationVS | *Version*:1.1.0 |
| Active as of 2025-12-02 | *Computable Name*:BeRouteOfAdministrationVS |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO); Belgium is a member of IHTSDO. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org | |

 
This ValueSet contains codes for the route of administration of medications. It is used to specify how a medication is administered to a patient, such as orally, intravenously, or topically. 

 **References** 

* [Medication Dosage](StructureDefinition-BeDosage.md)
* [Dosaging (model)](StructureDefinition-BeModelDosagingInformation.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 83 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "BeRouteOfAdministrationVS",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeRouteOfAdministrationVS",
  "version" : "1.1.0",
  "name" : "BeRouteOfAdministrationVS",
  "title" : "Route of Administration ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-02T14:49:22+00:00",
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
  "description" : "This ValueSet contains codes for the route of administration of medications. It is used to specify how a medication is administered to a patient, such as orally, intravenously, or topically.",
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
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO); Belgium is a member of IHTSDO. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "738982001",
            "display" : "Oromucosal use"
          },
          {
            "code" : "54471007",
            "display" : "Buccal use"
          },
          {
            "code" : "448598008",
            "display" : "Cutaneous use"
          },
          {
            "code" : "372449004",
            "display" : "Dental use"
          },
          {
            "code" : "372450004",
            "display" : "Endocervical use"
          },
          {
            "code" : "372451000",
            "display" : "Endosinusial use"
          },
          {
            "code" : "372452007",
            "display" : "Endotracheopulmonary use"
          },
          {
            "code" : "417985001",
            "display" : "Intestinal use"
          },
          {
            "code" : "764723001",
            "display" : "Epilesional use"
          },
          {
            "code" : "372453002",
            "display" : "Extraamniotic use"
          },
          {
            "code" : "766790006",
            "display" : "Haemodialysis"
          },
          {
            "code" : "714743009",
            "display" : "Extracorporeal use"
          },
          {
            "code" : "372454008",
            "display" : "Gastroenteral use"
          },
          {
            "code" : "372457001",
            "display" : "Gingival use"
          },
          {
            "code" : "718329006",
            "display" : "Infiltration"
          },
          {
            "code" : "372458006",
            "display" : "Intraamniotic use"
          },
          {
            "code" : "58100008",
            "display" : "Intraarterial use"
          },
          {
            "code" : "12130007",
            "display" : "Intraarticular use"
          },
          {
            "code" : "372459003",
            "display" : "Intrabursal use"
          },
          {
            "code" : "418821007",
            "display" : "Intracameral use"
          },
          {
            "code" : "372460008",
            "display" : "Intracardiac use"
          },
          {
            "code" : "418331006",
            "display" : "Intracartilaginous use"
          },
          {
            "code" : "372461007",
            "display" : "Intracavernous use"
          },
          {
            "code" : "446540005",
            "display" : "Intracerebral use"
          },
          {
            "code" : "420719007",
            "display" : "Intracerebroventricular use"
          },
          {
            "code" : "372462000",
            "display" : "Intracervical use"
          },
          {
            "code" : "58761000052107",
            "display" : "Intracholangiopancreatic use"
          },
          {
            "code" : "418892005",
            "display" : "Intracisternal use"
          },
          {
            "code" : "418608002",
            "display" : "Intracorneal use"
          },
          {
            "code" : "372463005",
            "display" : "Intracoronary use"
          },
          {
            "code" : "372464004",
            "display" : "Intradermal use"
          },
          {
            "code" : "372465003",
            "display" : "Intradiscal use"
          },
          {
            "code" : "448077001",
            "display" : "Intraepidermal use"
          },
          {
            "code" : "445768003",
            "display" : "Gastric use"
          },
          {
            "code" : "58751000052109",
            "display" : "Intraglandular use"
          },
          {
            "code" : "372466002",
            "display" : "Intralesional use"
          },
          {
            "code" : "372467006",
            "display" : "Intralymphatic use"
          },
          {
            "code" : "447121004",
            "display" : "Intramammary use"
          },
          {
            "code" : "78421000",
            "display" : "Intramuscular use"
          },
          {
            "code" : "372468001",
            "display" : "Intraocular use"
          },
          {
            "code" : "417255000",
            "display" : "Intraosseous use"
          },
          {
            "code" : "445771006",
            "display" : "Intrapericardial use"
          },
          {
            "code" : "38239002",
            "display" : "Intraperitoneal use"
          },
          {
            "code" : "372469009",
            "display" : "Intrapleural use"
          },
          {
            "code" : "58771000052103",
            "display" : "Intraportal use"
          },
          {
            "code" : "419810008",
            "display" : "Intraprostatic use"
          },
          {
            "code" : "420201002",
            "display" : "Intrapulmonary use"
          },
          {
            "code" : "372470005",
            "display" : "Intrasternal use"
          },
          {
            "code" : "72607000",
            "display" : "Intrathecal use"
          },
          {
            "code" : "447122006",
            "display" : "Intratumoral use"
          },
          {
            "code" : "62226000",
            "display" : "Intrauterine use"
          },
          {
            "code" : "47625008",
            "display" : "Intravenous use"
          },
          {
            "code" : "420287000",
            "display" : "Intraventricular use"
          },
          {
            "code" : "372471009",
            "display" : "Intravesical use"
          },
          {
            "code" : "418401004",
            "display" : "Intravitreal use"
          },
          {
            "code" : "420185003",
            "display" : "Laryngopharyngeal use"
          },
          {
            "code" : "46713006",
            "display" : "Nasal use"
          },
          {
            "code" : "385432009",
            "display" : "Route of administration not applicable"
          },
          {
            "code" : "372472002",
            "display" : "Oculonasal use"
          },
          {
            "code" : "54485002",
            "display" : "Ocular use"
          },
          {
            "code" : "26643006",
            "display" : "Oral use"
          },
          {
            "code" : "418664002",
            "display" : "Oropharyngeal use"
          },
          {
            "code" : "10547007",
            "display" : "Auricular use"
          },
          {
            "code" : "419165009",
            "display" : "Paravertebral use"
          },
          {
            "code" : "372474001",
            "display" : "Periarticular use"
          },
          {
            "code" : "447080003",
            "display" : "Epidural use"
          },
          {
            "code" : "372475000",
            "display" : "Perineural use"
          },
          {
            "code" : "447052000",
            "display" : "Periodontal use"
          },
          {
            "code" : "420047004",
            "display" : "Periosseous use"
          },
          {
            "code" : "58811000052103",
            "display" : "Peritumoral use"
          },
          {
            "code" : "58821000052106",
            "display" : "Posterior juxtascleral use"
          },
          {
            "code" : "37161004",
            "display" : "Rectal use"
          },
          {
            "code" : "447694001",
            "display" : "Inhalation use"
          },
          {
            "code" : "418321004",
            "display" : "Retrobulbar use"
          },
          {
            "code" : "372476004",
            "display" : "Subconjunctival use"
          },
          {
            "code" : "34206005",
            "display" : "Subcutaneous use"
          },
          {
            "code" : "37839007",
            "display" : "Sublingual use"
          },
          {
            "code" : "419874009",
            "display" : "Submucosal use"
          },
          {
            "code" : "58831000052108",
            "display" : "Subretinal use"
          },
          {
            "code" : "6064005",
            "display" : "Local use"
          },
          {
            "code" : "45890007",
            "display" : "Transdermal use"
          },
          {
            "code" : "90028008",
            "display" : "Urethral use"
          },
          {
            "code" : "16857009",
            "display" : "Vaginal use"
          }
        ]
      }
    ]
  }
}

```
