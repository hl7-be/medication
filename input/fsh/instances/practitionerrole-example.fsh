Instance: practitionerrole-example
InstanceOf: PractitionerRole
Usage: #inline
Title: "PractitionerRole Example"
Description: "Example PractitionerRole for prescription examples"
* meta.profile[0] = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"
* code = https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty#persphysician "physician"
* practitioner.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* practitioner.identifier.value = "12345678004"
