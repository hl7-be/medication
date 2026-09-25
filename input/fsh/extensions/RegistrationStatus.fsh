Extension: BeExtMedicationLineRegistrationStatus
Title: "BeExtMedicationLineRegistrationStatus"
Description: "This extension indicates the registration status of a medication line, whether it is recorded or entered-in-error. Not used by the BeMedicationLine profile, where the registration status converges with the clinical status into MedicationStatement.status."
Context: MedicationStatement
* value[x] only code
* valueCode from BeMedicationLineRegistrationStatusVS (required)


