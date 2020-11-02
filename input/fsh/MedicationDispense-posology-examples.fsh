//This file contains examples for the medicationdispense-object, but focusses on the posology-element
//Posology in these examples may get complex as posologies that are used in the medication scheme. Something that shouldn't occur that much in the real world

/*
* ID 1 = example: 1 tablet a day in the morning. To drink with a glass of water - reason: bloodpressure
*/ 
Instance: posology-1-tablet-a-day
InstanceOf: MedicationDispense
Usage: #example
Description: "Posology example: once a day in the morning , with a glass of water"
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
* dosageInstruction.additionalInstruction.text = "In te nemen met een glas water" //snomed-able met SC419303009
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.when = #MORN 
* dosageInstruction.route.coding.system = "http://hl7.org/fhir/ValueSet/route-codes"
* dosageInstruction.route.coding.code = #26643006
* dosageInstruction.route.coding.display = "Via de mond"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "tablet"
* dosageInstruction.doseAndRate.doseQuantity.code = #{tbl}
* dosageInstruction.doseAndRate.doseQuantity.system = "http://hl7.org/fhir/Valueset/ucum-units"
//todo: per discussion: a couple of different systems that all implement a 'tablet'
//* dosageInstruction.doseAndRate.doseQuantity.code = #00005
//* dosageInstruction.doseAndRate.doseQuantity.system = "http://ehealth.fgov.be/kmehr-administrationunit"
//* dosageInstruction.doseAndRate.doseQuantity.code = #385055001
//* dosageInstruction.doseAndRate.doseQuantity.system = "snomed ct medication form codes"
//* dosageInstruction.doseAndRate.doseQuantity.code = #BDF-0069
//* dosageInstruction.doseAndRate.doseQuantity.system = "http://edqm.eu/basic-dose-form"


/*
Example 1 - Analysis Jens
- Missing information vs kmehr: 
    - temporality - chronic --> needed in posology? (I think this is not linked to posology, but might be a part in the medicationscheme)
    - medicationuse - why this medication is given

- Changes VS example 1 Jan
    - Jan used patientInstruction VS the use of 'additionalInstruction (which is codable)'. Kind of a weird distinction to make imho. 
      This means there are 3 possibilities for patient instructions - text, additionalInstruction and PatientInstruction
*/ 

/* Extra notes with these examples

Official unit documentation: 
 The unit element contains a displayable unit that defines what is measured. The unit may additionally be coded in some formal way using the code and the system (see Coding for further information about how to use the system element).

If the unit can be coded in UCUM and a code is provided, it SHOULD be a UCUM code. If a UCUM unit is provided in the code, then a canonical value can be generated for purposes of comparison between quantities. Note that the unit element will often contain text that is a valid UCUM unit, but it cannot be assumed that the unit actually contains a valid UCUM unit. 
---
The mapping to a kmehr - table should happen through a valueset-mapping. Putting in multiple dosageInstructions for multiple systems might introduce 
confusion on the actual dosage-rate that needs to be used in the case of multiple doses. 
*/

/*
* Example 2: Before breakfast and before dinner
*/
Instance: posology-2-tablets-breakfast-dinner
InstanceOf: MedicationDispense
Usage: #example
Description: "Posology example: 2 half tablets before breakfast and dinner"
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
* dosageInstruction.additionalInstruction.text = "In te nemen met een glas water" //snomed-able met SC419303009
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.when[0] = #ACM
* dosageInstruction.timing.repeat.when[1] = #ACV
* dosageInstruction.route.coding.system = "http://hl7.org/fhir/ValueSet/route-codes"
* dosageInstruction.route.coding.code = #26643006
* dosageInstruction.route.coding.display = "Via de mond"
* dosageInstruction.doseAndRate.doseQuantity.value = 0.5
* dosageInstruction.doseAndRate.doseQuantity.unit = "tablet"
* dosageInstruction.doseAndRate.doseQuantity.code = #{tbl}
* dosageInstruction.doseAndRate.doseQuantity.system = "http://hl7.org/fhir/Valueset/ucum-units"