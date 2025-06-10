Extension: StatusChanged
Id: be-ext-StatusChanged
Title: "MedicationRequest - Status Changed"
Description: """
    Indicates when the status of the medication request was last changed. This extension allows capturing the timestamp of the status change for audit and tracking purposes.

    This is a FHIR R5 element, preadopted as an extension in this FHIR R4 specification. For the full definition see here: [http://hl7.org/fhir/R5/medicationrequest-definitions.html#MedicationRequest.statusChanged](http://hl7.org/fhir/R5/medicationrequest-definitions.html#MedicationRequest.statusChanged)
    """
Context: MedicationRequest
* value[x] only dateTime
* value[x] ^short = "Indicates when the status of the medication request was last changed."
