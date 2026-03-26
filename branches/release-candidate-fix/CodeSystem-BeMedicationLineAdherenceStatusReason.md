# Adherence Status Reason - Medication v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adherence Status Reason**

## CodeSystem: Adherence Status Reason 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationLineAdherenceStatusReason | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeMedicationLineAdherenceStatusReason |

 
Reasons for non-adherence to a treatment or intervention. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BeMedicationLineAdherenceStatusReasonVS](ValueSet-BeMedicationLineAdherenceStatusReasonVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "BeMedicationLineAdherenceStatusReason",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/BeMedicationLineAdherenceStatusReason",
  "version" : "1.1.0",
  "name" : "BeMedicationLineAdherenceStatusReason",
  "title" : "Adherence Status Reason",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-10T10:05:23+00:00",
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
  "description" : "Reasons for non-adherence to a treatment or intervention.",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "medprec",
      "display" : "Medical precaution",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Le patient présente actuellement un état médical pour lequel le traitement est contre-indiqué ou pour lequel une précaution est justifiée"
        },
        {
          "language" : "nl-BE",
          "value" : "De patiënt heeft momenteel een medische toestand waarvoor de behandeling gecontra-indiceerd is of waarvoor voorzichtigheid geboden is"
        }
      ]
    },
    {
      "code" : "immune",
      "display" : "Already immune",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Les tests ont montré que le patient était déjà immunisé contre l’agent ciblé"
        },
        {
          "language" : "nl-BE",
          "value" : "Tests hebben aangetoond dat de patiënt al immuun was voor het gerichte agens"
        }
      ]
    },
    {
      "code" : "patobj",
      "display" : "Patient objection",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Le patient refuse de suivre le traitement"
        },
        {
          "language" : "nl-BE",
          "value" : "De patiënt weigert de behandeling te volgen"
        }
      ]
    },
    {
      "code" : "ostock",
      "display" : "Out of stock",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Le produit n’est pas disponible"
        },
        {
          "language" : "nl-BE",
          "value" : "Het product is niet beschikbaar"
        }
      ]
    },
    {
      "code" : "allergy",
      "display" : "Allergy",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Le patient est allergique à au moins un des composants du médicament."
        },
        {
          "language" : "nl-BE",
          "value" : "De patiënt is allergisch voor minstens één van de bestanddelen van het geneesmiddel"
        }
      ]
    },
    {
      "code" : "modified",
      "display" : "Treatment modified",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Le traitement a été modifié"
        },
        {
          "language" : "nl-BE",
          "value" : "De behandeling werd aangepast"
        }
      ]
    },
    {
      "code" : "other",
      "display" : "Other",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Autre situation"
        },
        {
          "language" : "nl-BE",
          "value" : "Andere situatie"
        }
      ]
    }
  ]
}

```
