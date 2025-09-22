Alias: $be-patient = https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient
Alias: $be-organization = https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization
Alias: $be-practitioner = https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner
Alias: $be-practitionerrole = https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole


Profile:        BeMedicationDispense
Parent:         MedicationDispense
Id:             BeMedicationDispense
Title:          "BeMedicationDispense"
Description: "Defines constraints and extensions on the Medication Dispense resource for a record of a dispensation in Belgium."
* ^version = "0.2.0"
* ^status = #active
* . ^short = "The medication dispense entry"
* . ^definition = "A register of a medication dispense, describing the medication that has been dispensed by a professional or by an organization, including the medication, the patient, some prescription and treatment information."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* extension contains 
     http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.recorded named recorded 0..1 MS and 
     BasedOnMedicationLine named basedOnMedicationLine 0..1 MS 

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains DGUID 0..1 MS
* identifier[DGUID].type.coding.code = #dguid
* identifier[DGUID].system 1..
* identifier[DGUID].system = "https://www.gfd-dpp.be/fhir/reference/dguid" (exactly)
* medicationCodeableConcept 0..1 MS
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept from SNOMEDCTMedicationCodes (example)
* medicationCodeableConcept ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* medicationCodeableConcept ^binding.extension.valueString = "MedicationCode"
* medicationCodeableConcept ^binding.description = "The drug code. For example CNK code for the medication"
* medicationReference 0..1 MS
* medicationReference only Reference(http://hl7.org/fhir/StructureDefinition/Medication)
* subject 1.. MS
* subject only Reference($be-patient)
* context MS
* context ^short = "The dispense session identifier, for example an identifier of a visit to a pharmacy"
* context.identifier MS
* context.identifier.system = "https://www.gfd-dpp.be/fhir/reference/sguid"
* context.identifier.type.coding.code = #sguid
* context.identifier.type.coding.system = "https://www.gfd-dpp.be/fhir/reference/identifier_types"

* performer 1.. MS
* performer.function.text = "dispenser"
* performer.actor only Reference($be-organization or $be-practitioner or $be-practitionerrole)
* authorizingPrescription MS
* authorizingPrescription.identifier MS
* authorizingPrescription.display MS
* authorizingPrescription.display ^comment = "When there is a prescription but that prescription is not known to the system (e.g. a paper prescription from another country or a prescription that is not yet entered in the system), the display can be used to provide a confirmation that there is a prescription."
* quantity MS
* whenHandedOver 1.. MS
* note MS
* dosageInstruction MS
* dosageInstruction only BeMedicationDosage
* dosageInstruction.text MS
* dosageInstruction.patientInstruction MS
* extension contains 
   BeExtOffLabel named beExtOffLabel 0..1 MS
      

/*
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open
* performer contains 
   dispensingOrganization 0..1 MS and dispenser 0..1 MS
* performer[dispensingOrganization].actor only Reference(BeOrganization)
* performer[dispensingOrganization].actor ^type.profile = Canonical(BeOrganization)
* performer[dispensingOrganization] obeys performer-nidhi
* performer[dispensingOrganization] MS
* performer[dispenser].actor only Reference(BePractitioner)
* performer[dispenser].actor ^type.profile = Canonical(BePractitioner)
* performer[dispenser] obeys performer-nidhi
* performer[dispenser] MS
*/



Invariant:  performer-nidhi
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
