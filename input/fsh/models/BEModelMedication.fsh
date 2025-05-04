Logical: BeModelMedication
Id:  BeModelMedication
Title: "Medication (model)"
Description: "Logical data model for medication."
Characteristics: #can-be-target

* doseForm 0..1 CodeableConcept "Dose form(s) on a product level. Dose form for a single package item is defined below."
* item 0..* BackboneElement "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined"
  * ingredient 1..* BackboneElement "Ingredients"
    * role 0..1 CodeableConcept "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected."
    * item 1..1 CodeableConcept "Substance or product that is ingredient"
    * strengthInfo 0..* BackboneElement "Concentration or presentation strength"
      * strength 1..1 Ratio "Concentration or presentation strength of the precise active ingredient"
  * amount 0..1 SimpleQuantity "Number of such manufactured items in this product (5 vials)"
