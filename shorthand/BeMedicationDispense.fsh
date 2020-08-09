Profile:        BeMedicationDispense
Parent:         MedicationDispense
Id:             be-medicationdispense
Title:          "BeMedicationDispense"
Description:    """ 
    Defines constraints and extensions on the Medication Dispense resource for a regord of a dispensation in Belgium."""
// NOTE: MS can also be done in multiple lines:
// * identifier MS
// * identifier.system MS
// ...
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
* performer.function.text = "dispenser"
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open
* performer 1..*
* performer contains 
   dispensingOrganization 0..1 and dispenser 0..1
* performer[dispensingOrganization].actor only Reference(BeOrganization)
* performer[dispensingOrganization] obeys performer-organization-nidhi
* performer[dispensingOrganization] MS
* performer[dispenser].actor only Reference(BePractitioner)
* performer[dispenser].actor.identifier.system obeys performer-practitioner-nidhi
* performer[dispenser] MS
* . ^short = "The medication dispense entry"
* . ^definition = "A register of a medication dispense, describing the medication that has been dispensed by a professional or by an organization, including the medication, the patient, some prescription and treatment information."

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains DGUID 0..1
* identifier[DGUID].system = "https://www.gfd-dpp.be/fhir/reference/dguid" (exactly)
* identifier[DGUID].type.coding.code = #dguid
* identifier[DGUID] MS

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
Expression: "actor.identifier.exists() implies actor.identifier.system='https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization'"
Severity:   #warning

Invariant:  performer-practitioner-nidhi
Description: "When an organization is referred to by use of an identifier, the system naming SHOULD be NIHDI number"
Expression: "actor.identifier.exists() implies actor.identifier.system='https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-practitioner'"
Severity:   #warning



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




Instance: medication-dispense-example-1
InstanceOf: MedicationDispense
Usage: #example
Description: "Medication Dispense example"
Title:    "MedicationDispense Example - 1."
* meta.profile[0] = "https://www.hl7belgium.be/fhir/StructureDefinition/be-medicationdispense"
* language = #fr-BE
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"
* context.identifier.system = "https://www.gfd-dpp.be/fhir/reference/sguid"
* context.identifier.type.coding.code = #sguid
* context.identifier.value = "b8ca980c-72aa-11e7-8cf7-a6006ad3dba0"
* identifier[0].system = "https://www.gfd-dpp.be/fhir/reference/dguid"
* identifier[0].type.coding.code = #dguid
* identifier[0].value = "a8ca980c-72aa-11e7-8cf7-a6006ad3dba0"
* status = #completed
* medicationCodeableConcept.coding.system = "https://cnk.apb.be/codings/cnk_product_codes"
* medicationCodeableConcept.coding.code = #1439562
* medicationCodeableConcept.coding.display = "Topazolam tab 50x 1,0mg"

* medicationCodeableConcept.coding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* medicationCodeableConcept.coding.display.extension[0].extension[0].url = "lang"
* medicationCodeableConcept.coding.display.extension[0].extension[0].valueCode = #nl-BE
* medicationCodeableConcept.coding.display.extension[0].extension[1].url = "content"
* medicationCodeableConcept.coding.display.extension[0].extension[1].valueString = "Topazolam tab 50x 1,0mg"

* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization"
* performer[0].actor.identifier.value = "27457532"
* performer[0].actor.display = "Apotheek onder de toren"

// if we want to put a location, we have to contain a resource - new example needed
// location ="Location/27457532-PHARMACY.NIHII" />

* authorizingPrescription.display = "Prescription"
* quantity.value = 1
* quantity.system = "https://www.gfd-dpp.be/fhir/reference/packaging"
* quantity.code = #package

* whenHandedOver = "2020-03-10"
* dosageInstruction.text = "3 x par jour"
* dosageInstruction.text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* dosageInstruction.text.extension[0].extension[0].url = "lang"
* dosageInstruction.text.extension[0].extension[0].valueCode = #nl-BE
* dosageInstruction.text.extension[0].extension[1].url = "content"
* dosageInstruction.text.extension[0].extension[1].valueString = "3 x per dag"



Instance: apotheek-onder-de-toren
InstanceOf: Organization
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* extension[0].extension[0].url = "latitude"
* extension[0].extension[0].valueDecimal = 51.239847
* extension[0].extension[1].url = "longitude"
* extension[0].extension[1].valueDecimal = 3.319952
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization"
* identifier.value = "27457532"


Instance: medication-dispense-example-2
InstanceOf: MedicationDispense
Usage: #example
Description: "Medication Dispense example"
Title:    "MedicationDispense Example - 2."
* meta.profile[0] = "https://www.hl7belgium.be/fhir/StructureDefinition/be-medicationdispense"
* contained[0] = apotheek-onder-de-toren
* language = #nl-BE
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"
* context.identifier.system = "https://www.gfd-dpp.be/fhir/reference/sguid"
* context.identifier.type.coding.code = #sguid
* context.identifier.value = "b8ca980c-72aa-11e7-8cf7-a6006ad3dba0"
* identifier[0].system = "https://www.gfd-dpp.be/fhir/reference/dguid"
* identifier[0].type.coding.code = #dguid
* identifier[0].value = "a8ca980c-72aa-11e7-8cf7-a6006ad3dba0"
* status = #completed
* medicationCodeableConcept.coding.system = "https://cnk.apb.be/codings/cnk_product_codes"
* medicationCodeableConcept.coding.code = #1439562
* medicationCodeableConcept.coding.display = "Topazolam tab 50x 1,0mg"
* medicationCodeableConcept.coding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* medicationCodeableConcept.coding.display.extension[0].extension[0].url = "lang"
* medicationCodeableConcept.coding.display.extension[0].extension[0].valueCode = #nl-BE
* medicationCodeableConcept.coding.display.extension[0].extension[1].url = "content"
* medicationCodeableConcept.coding.display.extension[0].extension[1].valueString = "Topazolam tab 50x 1,0mg"

* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization"
* performer[0].actor.identifier.value = "27457532"
* performer[0].actor.display = "Apotheek onder de toren"
* performer[0].actor.reference = "#apotheek-onder-de-toren"

* authorizingPrescription.display = "Prescription"
* quantity.value = 1
* quantity.system = "https://www.gfd-dpp.be/fhir/reference/packaging"
* quantity.code = #package

* whenHandedOver = "2020-03-10"
* dosageInstruction.text = "3 x per dag"
* dosageInstruction.text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* dosageInstruction.text.extension[0].extension[0].url = "lang"
* dosageInstruction.text.extension[0].extension[0].valueCode = #fr-BE
* dosageInstruction.text.extension[0].extension[1].url = "content"
* dosageInstruction.text.extension[0].extension[1].valueString = "3 x par jour"
