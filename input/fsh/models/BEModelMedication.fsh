// Logical: BeModelMedication
// Id:  BeModelMedication
// Title: "Medication (model)"
// Description: "Logical data model for medication."
// Characteristics: #can-be-target

// * ^status = #active

// * identifier 0..* BackboneElement "The identifier(s) of the product, independently of the level of product. If several identifiers are specified, they shall not have conflicting meanings." 
//   * medicinalProductIdentifier 0..* Identifier "Identifier at the product level - can be MPID or national identifier" 
//   * packagedProductIdentifier 0..* Identifier "Identifier at the package level - can be PCID or national"
//   * pharmaceuticalProductIdentifier 0..* Identifier "Identifier at the virtual or administrable product level - can be PhPID or national virtual/administrable product code"
// * productCode 0..1 CodeableConcept "Code for the product that is actually being specified, in established terminologies" // To do: challenge this with examples. Do  we want one code or more? 
// * classification 0..* CodeableConcept "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)"
// * packSize 0..* SimpleQuantity "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)"
// * productName 0..* BackboneElement "Name of the product (full name, invented name, other)"
//   * name 1..1 string "Name of type and language that is relevant for the users"
//   * language 0..1 CodeableConcept "Language of the name"
//   * type 0..1 CodeableConcept "Type of the name (full name, common name, etc)"


// * doseForm 0..1 CodeableConcept "Dose form(s) on a product level. Dose form for a single package item is defined below."

// * item 0..* BackboneElement "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined"
//   * doseForm 0..1 CodeableConcept "Dose form"
//   * ingredient 1..* BackboneElement "Ingredients"
//     * role 0..1 CodeableConcept "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected."
//     * substance 1..1 CodeableConcept "Substance"
//     * strengthInfo 0..1 BackboneElement "Concentration or presentation strength"
//       * strength 1..1 Ratio "Concentration or presentation strength of the precise active ingredient"
//       * strengthType 0..1 CodeableConcept "Type of strength that is expressed"
//       * strengthSubstance 0..1 CodeableConcept "Substance that the strength refers to, if different from the main substance"
//   * unitOfPresentation 0..1 CodeableConcept "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package."
//   * containedQuantity 0..1 SimpleQuantity "Manufactured item quantity for liquids (3ml/vial)"
//   * amount 0..1 SimpleQuantity "Number of such manufactured items in this product (5 vials)"
// * device 0..* BackboneElement "Administration device included in the product"
//   * deviceQuantity 1..1 SimpleQuantity "Number of such devices"
//   * device 1..1 CodeableConcept "Device coded"


Logical: BeModelMedication
Id:  BeModelMedication
Parent: Base
Title: "Medication (model)"
Description: "Logical data model for medication."
Characteristics: #can-be-target


* status 1..1 CodeableConcept "Status of the medication (active, inactive, etc.)"
* code 1..1 CodeableConcept "Code for the medication that is actually being specified. This can be a product code, a virtual product code, or a package code."
* doseForm 0..1 CodeableConcept "Dose form(s) on a product level. Dose form for a single package item is defined below."
* item 0..* BackboneElement "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined"
  * ingredient 1..* BackboneElement "Ingredients"
    * item 1..1 CodeableConcept "Substance or product that is ingredient"
    * role 0..1 CodeableConcept "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected."
//    * strengthInfo 0..1 BackboneElement "Concentration or presentation strength"
    * strength 0..1 Ratio "Concentration or presentation strength of the precise active ingredient"
  * amount 0..1 SimpleQuantity "Number of such manufactured items in this product (5 vials)"
* batch 0..1 BackboneElement "Batch or production information for the product"
  * lotNumber 1..1 string "Batch number"
  * expirationDate 0..1 dateTime "Expiry date"



