CodeSystem: BeMedicationLineAdherenceStatusReason
// Id: adherence-status-reason
Title: "Adherence Status Reason"
Description: "Reasons for non-adherence to a treatment or intervention."
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false

* #medprec "Medical precaution"
  * ^designation[0].language = #fr-BE
  * ^designation[0].value = "Le patient présente actuellement un état médical pour lequel le traitement est contre-indiqué ou pour lequel une précaution est justifiée"
  * ^designation[1].language = #nl-BE
  * ^designation[1].value = "De patiënt heeft momenteel een medische toestand waarvoor de behandeling gecontra-indiceerd is of waarvoor voorzichtigheid geboden is"

* #immune "Already immune"
  * ^designation[0].language = #fr-BE
  * ^designation[0].value = "Les tests ont montré que le patient était déjà immunisé contre l’agent ciblé"
  * ^designation[1].language = #nl-BE
  * ^designation[1].value = "Tests hebben aangetoond dat de patiënt al immuun was voor het gerichte agens"

* #patobj "Patient objection"
  * ^designation[0].language = #fr-BE
  * ^designation[0].value = "Le patient refuse de suivre le traitement"
  * ^designation[1].language = #nl-BE
  * ^designation[1].value = "De patiënt weigert de behandeling te volgen"

* #ostock "Out of stock"
  * ^designation[0].language = #fr-BE
  * ^designation[0].value = "Le produit n’est pas disponible"
  * ^designation[1].language = #nl-BE
  * ^designation[1].value = "Het product is niet beschikbaar"

* #allergy "Allergy"
  * ^designation[0].language = #fr-BE
  * ^designation[0].value = "Le patient est allergique à au moins un des composants du médicament."
  * ^designation[1].language = #nl-BE
  * ^designation[1].value = "De patiënt is allergisch voor minstens één van de bestanddelen van het geneesmiddel"

* #modified "Treatment modified"
  * ^designation[0].language = #fr-BE
  * ^designation[0].value = "Le traitement a été modifié"
  * ^designation[1].language = #nl-BE
  * ^designation[1].value = "De behandeling werd aangepast"

* #other "Other"
  * ^designation[0].language = #fr-BE
  * ^designation[0].value = "Autre situation"
  * ^designation[1].language = #nl-BE
  * ^designation[1].value = "Andere situatie"

ValueSet: BeMedicationLineAdherenceStatusReasonVS
Title: "Adherence Status Reason ValueSet"
Description: "ValueSet containing reasons for non-adherence to a treatment or intervention."
* ^status = #active
* ^experimental  = true
* include codes from system BeMedicationLineAdherenceStatusReason
