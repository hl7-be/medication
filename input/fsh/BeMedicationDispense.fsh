Alias: $be-patient = https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient
Alias: $be-organization = https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-organization
Alias: $be-practitioner = https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-practitioner


Profile:        BeMedicationDispense
Parent:         MedicationDispense
Id:             be-medicationdispense
Title:          "BeMedicationDispense"
Description:    """ 
 Defines constraints and extensions on the Medication Dispense resource for a record of a dispensation in Belgium.
 """
* ^version = "0.2.0"
* ^status = #active


* identifier MS
* subject MS
* performer MS
* whenHandedOver MS
* authorizingPrescription MS
* medicationCodeableConcept MS
* medicationReference MS
* quantity MS
* dosageInstruction MS
* note MS

* subject 1..1
* subject only Reference(BePatient)
* whenHandedOver 1..1 
* whenHandedOver MS
* authorizingPrescription.identifier MS
* authorizingPrescription.display MS

* performer 1..*
* performer.function.text = "dispenser"

/*
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open
* performer contains 
   dispensingOrganization 0..1 MS and dispenser 0..1 MS

* performer[dispensingOrganization].actor only Reference(BeOrganization)
* performer[dispensingOrganization].actor ^type.profile = Canonical(BeOrganization)
* performer[dispensingOrganization] obeys performer-organization-nidhi
* performer[dispensingOrganization] MS

* performer[dispenser].actor only Reference(BePractitioner)
* performer[dispenser].actor ^type.profile = Canonical(BePractitioner)
* performer[dispenser] obeys performer-practitioner-nidhi
* performer[dispenser] MS
*/

* performer.actor only Reference(BeOrganization or BePractitioner)


* . ^short = "The medication dispense entry"
* . ^definition = "A register of a medication dispense, describing the medication that has been dispensed by a professional or by an organization, including the medication, the patient, some prescription and treatment information."

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains DGUID 0..1 MS

* identifier[DGUID].type.coding.code = #dguid
* identifier[DGUID].system = "https://www.gfd-dpp.be/fhir/reference/dguid" (exactly)

* dosageInstruction.patientInstruction MS

* context MS
* context ^short = "The dispense session identifier, for example an identifier of a visit to a pharmacy"
* medicationCodeableConcept  ^binding.description = "The drug code. For example CNK code for the medication"
* context.identifier.system = "https://www.gfd-dpp.be/fhir/reference/sguid"
* context.identifier.type.coding.code = #sguid
* context.identifier MS
* dosageInstruction.text MS




Invariant:  performer-organization-nidhi
Description: "When an organization is referred to by use of an identifier, the naming system SHOULD be NIHDI number"
Expression: "actor.identifier.exists() implies (actor.identifier.system='https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization' or  actor.identifier.system='https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-practitioner'"
Severity:   #warning

/*

Extension:      TranslationExtension
Id:             translationExtension
Title:          "Translation Extension"
Description:    "Language translation from base language of resource to another language."
* extension contains
    lang 1..1 and
    content 1..1
* extension[lang] ^short = "Code for language"
* extension[lang].value[x] only code
* extension[content].value[x] only string
* extension[content] ^short = "Content in other language"

*/