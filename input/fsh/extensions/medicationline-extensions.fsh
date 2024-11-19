
Extension: BeExtExposureCategory
Description: "Exposure - category."
Context: MedicationStatement
* value[x] only CodeableConcept
* value[x] from MedicationExposureCategoryVS (extensible)


//Extension: VisibilityFlag
//Description: "Visibility Flag."
//Context: MedicationStatement
//* value[x] only boolean


Extension: BeExtDispenseRequestNeededCategory
Description: "Dispense Request Needed - category."
Context: MedicationStatement
* value[x] only boolean

Extension: BeExtDosageOverride
Description: "Dispense override."
Context: MedicationStatement.dosage
* value[x] only boolean
//* context = #MedicationStatement.dosage

Extension: BeExtDosageOverrideReason
Description: "Dispense Request Needed - category."
Context: MedicationStatement.dosage
* value[x] only CodeableConcept


Extension: BeExtMedicationType
Description: "MedicationType"
Context: MedicationStatement.dosage
* value[x] only CodeableConcept
* value[x] from BEMedicationTypeVS (extensible)


