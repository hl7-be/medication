Instance: example-dispense-communitypharmacy-1med
InstanceOf: MedicationDispense
Usage: #example
Description: "Medication Dispense example"
Title:    "Dispense entry Example - Community Pharmacy dispense, from prescription"
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


* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-practitioner"
* performer[0].actor.identifier.value = "6547432"
* performer[0].actor.display = "Jan Janssen"

* performer[1].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-organization"
* performer[1].actor.identifier.value = "27457532"
* performer[1].actor.display = "Apotheek onder de toren"


* authorizingPrescription.display = "Prescription"
* authorizingPrescription.identifier.value = "Prescription"
* authorizingPrescription.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/prescription-id"
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
* type.coding.system = "https://www.ehealth.fgov.be/standards/fhir/CodeSystem/cd-hcparty"
* type.coding.code = #pharmacy
* type.text = "pharmacy"


Instance: medication-dispense-example-2
InstanceOf: MedicationDispense
Usage: #example
Description: "Medication Dispense example"
Title:    "Dispense entry Example - Community Pharmacy dispense, from prescription, with contained org."
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



Instance: medication-dispense-hospital
InstanceOf: MedicationDispense
Usage: #example
Description: "A dispense from a hospital pharmacy, with a hospital nihii and based on a prescription"
Title: "A dispense from a hospital pharmacy"
//Created from the concept on http://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/StructureDefinition-be-medicationdispense.html
//* id = 
* meta.versionId = "1"
* meta.profile[0] = "https://www.hl7belgium.be/fhir/StructureDefinition/be-medicationdispense"
//* implicitRules = 
* language = #nl-BE
//* text = 
//* contained = 
//* extension = 
//* modifierExtenstion = 
* identifier[0].system = "https://www.gfd-dpp.be/fhir/reference/dguid" //If this is a local identifier, then constraining this is hard. a hospital presription will NOT have a dguid, we could gen a guid, which is extra
//* identifier[0].type.coding[0].id =  //Where does this come from? Coding doesn't have an id - https://www.hl7.org/fhir/datatypes.html#Coding, looks to be unique to extensions
* identifier[0].type.coding[0].system = "https://www.nexuzhealth.be/fhir/prescription/ambulatory"
* identifier[0].type.coding[0].code = #1000321345
* identifier[0].type.coding[0].version = "1"
* status = #completed
//* category.system = "http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category"
//* category.code = "discharge"
//* category.version = "4.0.1"
// Implementing the medication concept feels kind of weird, beMedication of cnkMedication should be hammered down in a profile imo
// See http://build.fhir.org/ig/hl7-be/hl7-be-fhir-medication/StructureDefinition-be-medicationdispense.html
// This profile does not yet exist
* medicationCodeableConcept.coding.system = "https://cnk.apb.be/codings/cnk_product_codes"
* medicationCodeableConcept.coding.code = #2055218
//].medicationCodeableConcept.coding.display = //Display and extended display both needed? extended only needed in special cases? magistral medication? 
* medicationCodeableConcept.coding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* medicationCodeableConcept.coding.display.extension[0].extension[0].url = "lang"
* medicationCodeableConcept.coding.display.extension[0].extension[0].valueCode = #nl-BE
* medicationCodeableConcept.coding.display.extension[0].extension[1].url = "content"
* medicationCodeableConcept.coding.display.extension[0].extension[1].valueString = "Crestor filmomh. tabl. 100x 10mg"

* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"

//* context.identifier = ...
* authorizingPrescription.display = "Prescription"
* authorizingPrescription.identifier.value = "BEP1TSRY1XGE"
* authorizingPrescription.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/prescription-id" //Recip-e ID
//* type = 
* quantity.value = 1 
* quantity.unit = "package"
* quantity.system = "http://hl7.org/fhir/Valueset/ucum-units"
* quantity.code = #{package}
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
Description: "Medication Dispense example"
Title:    "Dispense Example - Minimal amount of information"
* meta.profile[0] = "https://www.hl7belgium.be/fhir/StructureDefinition/be-medicationdispense"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* subject.identifier.value = "64110219106"
* status = #completed
* medicationCodeableConcept.coding.system = "https://cnk.apb.be/codings/cnk_product_codes"
* medicationCodeableConcept.coding.code = #1439562
* medicationCodeableConcept.coding.display = "Topazolam tab 50x 1,0mg"
* performer[0].actor.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi-practitioner"
* performer[0].actor.identifier.value = "6547432"
* performer[0].actor.display = "Jan Janssen"
* whenHandedOver = "2020-03-10"
