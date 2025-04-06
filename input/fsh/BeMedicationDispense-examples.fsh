Instance: example-dispense-communitypharmacy-1med
InstanceOf: MedicationDispense
Usage: #example
Title: "Medication Dispense example"
Description:    "Dispense entry Example - Community Pharmacy dispense, from prescription"
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationDispense"
* language = #fr-BE
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "64110219106"
* context.identifier.system = "https://www.gfd-dpp.be/fhir/reference/sguid"
* context.identifier.type.coding.code = #sguid
* context.identifier.value = "b8ca980c-72aa-11e7-8cf7-a6006ad3dba0"
* identifier[0].system = "https://www.gfd-dpp.be/fhir/reference/dguid"
* identifier[0].type.coding.code = #dguid
* identifier[0].value = "a8c45fdc-72aa-11e7-8cf7-a6007ad37dc0"
* status = #completed
* medicationCodeableConcept.coding[+].system = "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes"
* medicationCodeableConcept.coding[=].code = #1439562
//* medicationCodeableConcept.coding[+].system = "http://www.whocc.no/atc"
//* medicationCodeableConcept.coding[=].code = #N05BA12
* medicationCodeableConcept.coding.display = "Topazolam tab 50x 1,0mg"

* medicationCodeableConcept.coding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* medicationCodeableConcept.coding.display.extension[0].extension[0].url = "lang"
* medicationCodeableConcept.coding.display.extension[0].extension[0].valueCode = #nl-BE
* medicationCodeableConcept.coding.display.extension[0].extension[1].url = "content"
* medicationCodeableConcept.coding.display.extension[0].extension[1].valueString = "Topazolam tab 50x 1,0mg"


* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-practitioner"
* performer[0].actor.identifier.value = "6547432"
* performer[0].actor.display = "Jan Janssen"

* performer[1].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-organization"
* performer[1].actor.identifier.value = "27457532"
* performer[1].actor.display = "Apotheek onder de toren"


* authorizingPrescription.display = "Prescription 2014fd"
* authorizingPrescription.identifier.value = "2d8dab92-5c38-4380-96a9-e461be2014fd"
* authorizingPrescription.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/prescription-id"
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
InstanceOf: BeOrganization
Description: "Example Pharmacy (Organization): Apotheek onder de toren"
Title: "Example organization for a pharmacy"
Usage: #example
/*
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* extension[0].extension[0].url = "latitude"
* extension[0].extension[0].valueDecimal = 51.239847
* extension[0].extension[1].url = "longitude"
* extension[0].extension[1].valueDecimal = 3.319952
*/
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-organization"
* identifier.value = "27457532"
* type.coding.system = "https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty"
* type.coding.code = $hcparty#orgpharmacy



Instance: medicationdispense-example-2
InstanceOf: MedicationDispense
Usage: #example
Description: "Medication Dispense example"
Title:    "Example Dispense entry - Community Pharmacy dispense, from prescription, with contained org."
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationDispense"
* contained[0] = apotheek-onder-de-toren
* language = #nl-BE
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "64110219106"
* context.identifier.system = "https://www.gfd-dpp.be/fhir/reference/sguid"
* context.identifier.type.coding.code = #sguid
* context.identifier.value = "b8ca980c-72aa-11e7-8cf7-a6006ad3dba0"
* identifier[0].system = "https://www.gfd-dpp.be/fhir/reference/dguid"
* identifier[0].type.coding.code = #dguid
* identifier[0].value = "a8ca980c-aa4f-44f3-8cf7-547e6ad3dba0"
* status = #completed
* medicationCodeableConcept.coding.system = "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes"
* medicationCodeableConcept.coding.code = #1439562
* medicationCodeableConcept.coding.display = "Topazolam tab 50x 1,0mg"
* medicationCodeableConcept.coding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* medicationCodeableConcept.coding.display.extension[0].extension[0].url = "lang"
* medicationCodeableConcept.coding.display.extension[0].extension[0].valueCode = #nl-BE
* medicationCodeableConcept.coding.display.extension[0].extension[1].url = "content"
* medicationCodeableConcept.coding.display.extension[0].extension[1].valueString = "Topazolam tab 50x 1,0mg"

* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-organization"
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



Instance: example-dispense-hospital
InstanceOf: MedicationDispense
Usage: #example
Description: "A dispense from a hospital pharmacy, with a hospital nihdi and based on a prescription"
Title: "Example Dispense from a hospital pharmacy"
//Created from the concept on http://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/StructureDefinition-be-medicationdispense.html
//* id = 
* meta.versionId = "1"
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationDispense"
//* implicitRules = 
* language = #nl-BE
//* text = 
//* contained = 
//* extension = 
//* modifierExtenstion = 
* identifier[0].system = "https://www.gfd-dpp.be/fhir/reference/dguid" //If this is a local identifier, then constraining this is hard. a hospital presription will NOT have a dguid, we could gen a guid, which is extra
//* identifier[0].type.coding[0].id =  //Where does this come from? Coding doesn't have an id - https://www.hl7.org/fhir/datatypes.html#Coding, looks to be unique to extensions
* identifier[0].type.coding[0].system = "https://www.nexuzhealth.be/fhir/prescription/ambulatory"
* identifier[0].type.coding[0].code = #dguid
* identifier[0].value = "1000321345"
* identifier[0].type.coding[0].version = "1"
* status = #completed
//* category.system = "http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category"
//* category.code = "discharge"
//* category.version = "4.0.1"
// Implementing the medication concept feels kind of weird, beMedication of cnkMedication should be hammered down in a profile imo
// See http://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/StructureDefinition-be-medicationdispense.html
// This profile does not yet exist
* medicationCodeableConcept.coding.system = "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes"
* medicationCodeableConcept.coding.code = #2055218
//].medicationCodeableConcept.coding.display = //Display and extended display both needed? extended only needed in special cases? magistral medication? 
* medicationCodeableConcept.coding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* medicationCodeableConcept.coding.display.extension[0].extension[0].url = "lang"
* medicationCodeableConcept.coding.display.extension[0].extension[0].valueCode = #nl-BE
* medicationCodeableConcept.coding.display.extension[0].extension[1].url = "content"
* medicationCodeableConcept.coding.display.extension[0].extension[1].valueString = "Crestor filmomh. tabl. 100x 10mg"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

* performer.actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-organization"
* performer.actor.identifier.value = "123123123"



//* context.identifier = ...
* authorizingPrescription.display = "Prescription"
* authorizingPrescription.identifier.value = "BEP1TSRY1XGE"
* authorizingPrescription.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/prescription-id" //Recip-e ID
//* type = 
* quantity.value = 1 
* quantity.unit = "package"
* quantity.system = "http://unitsofmeasure.org"
* quantity.code = #1
//dayssupply
//whenPrepared
* whenHandedOver = "2020-09-21T13:00:00+02:00"
//Destination
//Receiver 
* dosageInstruction.text = "3 x a day"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* dosageInstruction.text.extension[0].extension[0].url = "lang"
* dosageInstruction.text.extension[0].extension[0].valueCode = #nl-BE
* dosageInstruction.text.extension[0].extension[1].url = "content"
* dosageInstruction.text.extension[0].extension[1].valueString = "3 x per dag"
* dosageInstruction.text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* dosageInstruction.text.extension[1].extension[0].url = "lang"
* dosageInstruction.text.extension[1].extension[0].valueCode = #fr-BE
* dosageInstruction.text.extension[1].extension[1].url = "content"
* dosageInstruction.text.extension[1].extension[1].valueString = "3 x par jour"


/*
* An example of a medication dispense with the minimal amount of necessary information
*/ 
Instance: example-minimal-dispense
InstanceOf: MedicationDispense
Usage: #example
Title: "Example Dispense (minimal)"
Description:    "Dispense Example - Minimal amount of information"
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationDispense"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "64110219106"
* status = #completed
* medicationCodeableConcept.coding.system = "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes"
* medicationCodeableConcept.coding.code = #1439562
* medicationCodeableConcept.coding.display = "Topazolam tab 50x 1,0mg"
* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-practitioner"
* performer[0].actor.identifier.value = "6547432"
* performer[0].actor.display = "Jan Janssen"
* whenHandedOver = "2020-03-10"

// Instance: example-dispense-with-atc
// InstanceOf: MedicationDispense
// Usage: #example
// Description: "Medication Dispense example with ATC code"
// Title:    "Dispense Example - Minimal amount of information"
// * meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/be-medicationdispense"
// * subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
// * subject.identifier.value = "64110219106"
// * status = #completed
// * medicationCodeableConcept.coding[+].system = "https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes"
// * medicationCodeableConcept.coding[=].code = #1439562
// //* medicationCodeableConcept.coding[+].system = "http://www.whocc.no/atc"
// //* medicationCodeableConcept.coding[=].code = #N05BA12
// * medicationCodeableConcept.coding.display = "Topazolam tab 50x 1,0mg"
// * performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-practitioner"
// * performer[0].actor.identifier.value = "6547432"
// * performer[0].actor.display = "Jan Janssen"
// * whenHandedOver = "2020-03-10"


Alias: $cnk-codes = https://www.ehealth.fgov.be/standards/fhir/medication/NamingSystem/cnk-codes

Instance: medicationdispense-example-1
InstanceOf: MedicationDispense
Usage: #example
Title: "Example Dispense (simple)"
Description: "Dispense Example - Simple example of a dispense"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/BeMedicationDispense"
* language = #fr-BE
* subject.identifier
  * system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
  * value = "64110219106"
* context.identifier
  * system = "https://www.gfd-dpp.be/fhir/reference/sguid"
  * type.coding.code = #sguid
  * value = "b8ca980c-72aa-11e7-8cf7-a6006ad3dba0"
* identifier
  * system = "https://www.gfd-dpp.be/fhir/reference/dguid"
  * type.coding.code = #dguid
  * value = "a8ca980c-72aa-11e7-8cf7-a6006ad3dba0"
* status = #completed
* medicationCodeableConcept.coding = $cnk-codes#1439562 "Topazolam tab 50x 1,0mg"
  * display.extension
    * url = "http://hl7.org/fhir/StructureDefinition/translation"
    * extension[0]
      * url = "lang"
      * valueCode = #nl-BE
    * extension[+]
      * url = "content"
      * valueString = "Topazolam tab 50x 1,0mg"
* performer.actor
  * identifier
    * system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi-organization"
    * value = "27457532"
  * display = "Apotheek onder de toren"
* authorizingPrescription.display = "Prescription"
* quantity = 1 https://www.gfd-dpp.be/fhir/reference/packaging#package
* whenHandedOver = "2020-03-10"
* dosageInstruction.text = "3 x par jour"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/translation"
    * extension[0]
      * url = "lang"
      * valueCode = #nl-BE
    * extension[+]
      * url = "content"
      * valueString = "3 x per dag"
