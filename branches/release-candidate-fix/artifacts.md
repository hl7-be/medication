# Artifacts Summary - Medication v1.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Logical Data Models 

Logical data models. The Logical data models are representations of the data needs for the scope of this Implementation Guide. The data models are primarily aligned with key projects, namely VIDIS, but are prepared in coordination with the Belgian community to ensure a common data structure that supports the projects and the implementation data needs.

| | |
| :--- | :--- |
| [Dosaging (model)](StructureDefinition-BeModelDosagingInformation.md) | Structured Dosage data model. |
| [Medication (model)](StructureDefinition-BeModelMedication.md) | Logical data model for medication. |
| [Medication Dispense (model)](StructureDefinition-BeModelMedicationDispense.md) | This is the logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense. |
| [Medication Line (model)](StructureDefinition-BeModelMedicationLine.md) | Logical data model for medication line. |
| [Medication prescription (model)](StructureDefinition-BeModelMedicationPrescription.md) | Logical model for medication prescription (or some other form of order) |

### Profiles 

Profiles for Medication. These are implementable FHIR profiles.

| | |
| :--- | :--- |
| [BeMedicationDispense](StructureDefinition-BeMedicationDispense.md) | Defines constraints and extensions on the Medication Dispense resource for a record of a dispensation in Belgium. |
| [BeMedicationLine](StructureDefinition-BeMedicationLine.md) | Medication Line profile - contains the overview information for a single medication item |
| [BeMedicationPrescription](StructureDefinition-BeMedicationPrescription.md) | Medication Request profile - The common structure for medication request |
| [Medication Dosage](StructureDefinition-BeDosage.md) | Specifications for a medication dosage for use in Belgian profiles. |

### Extensions 

Extensions for FHIR resources, to be used in Profiles

| | |
| :--- | :--- |
| [BasedOnMedicationLine](StructureDefinition-BasedOnMedicationLine.md) | Based on medication line. |
| [BeExtAdherenceStatus](StructureDefinition-BeExtAdherenceStatus.md) | Medication Line Adherence Status - statuses of taking the medication. |
| [BeExtInstructionsForReimbursement](StructureDefinition-BeExtInstructionsForReimbursement.md) | Instructions for Reimbursement. |
| [BeExtMedicationType](StructureDefinition-BeExtMedicationType.md) | The type of medication. |
| [BeExtRecordedDate](StructureDefinition-BeExtRecordedDate.md) | The date the information was recorded |
| [BeExtRecorder](StructureDefinition-BeExtRecorder.md) | The person that recorded the information |
| [BeMedicationExposureCategory](StructureDefinition-BeMedicationExposureCategory.md) | Exposure - category. |
| [Medication Line Registration Status](StructureDefinition-BeExtMedicationLineRegistrationStatus.md) | This extension indicates the registration status of a medication line, such as whether it is draft, recorded, or entered-in-error. |
| [MedicationRequest - Off-label use](StructureDefinition-BeExtOffLabel.md) | Indicates that the order placer has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product. |

### Terminology 

Terminology for Medication. These are value sets, code systems and naming systems for identifiers.

| | |
| :--- | :--- |
| [Adherence Status Reason](CodeSystem-BeMedicationLineAdherenceStatusReason.md) | Reasons for non-adherence to a treatment or intervention. |
| [Adherence Status Reason ValueSet](ValueSet-BeMedicationLineAdherenceStatusReasonVS.md) | ValueSet containing reasons for non-adherence to a treatment or intervention. |
| [be-ns-cnk-codes](NamingSystem-be-ns-cnk-codes.md) | Naming System - CNK Product Codes |
| [be-ns-cti-extended-code](NamingSystem-be-ns-cti-extended-code.md) | Naming System - CTI Extended Codes |
| [be-ns-prescription-ids](NamingSystem-be-ns-prescription-ids.md) | Naming System - Prescription IDs |
| [be-ns-product-package-type](NamingSystem-be-ns-product-package-type.md) | Naming System - Prescription IDs |
| [BeExtAdherenceStatus](ValueSet-BeMedicationLineAdherenceStatusVS.md) | The status of taking the medication. |
| [Dispenser Types](ValueSet-be-vs-dispenser-types.md) | Dispenser Types - from hcparty |
| [Medication exposure intent](ValueSet-BeMedicationExposureIntentVS.md) | The exposure purpose of a medication - whether the medication is given for therapeutic or prophylactic purposes. |
| [Medication Line Adherence Status](CodeSystem-BeMedicationLineAdherenceStatus.md) | Medication Line Adherence Status - ValueSet. |
| [Medication Line Registration Status](CodeSystem-BeMedicationLineRegistrationStatus.md) | This code system defines the registration statuses for medication lines. |
| [Medication Line Registration Status Value Set](ValueSet-BeMedicationLineRegistrationStatusVS.md) | This value set includes the registration statuses for medication lines. |
| [Medication origin Type](CodeSystem-BeMedicationLineOriginType.md) | Medication origin type |
| [Medication origin type value set](ValueSet-BeMedicationLineOriginTypeVS.md) | Medication origin type value set |
| [Medication preparation Type](CodeSystem-BeMedicationType.md) | Medication preparation type |
| [Medication preparation Type value set](ValueSet-BeMedicationTypeVS.md) | Medication preparation type value set |
| [Medication Prescription Status](ValueSet-BeMedicationPrescriptionStatusVS.md) | Medication prescription status codes. |
| [Medication request reimbursement type](CodeSystem-BeMedicationRequestReimbursementType.md) | Medication request reimbursement type - instructions for reimbursement of the medication request |
| [Medication request reimbursement type ValueSet](ValueSet-BeMedicationRequestReimbursementTypeVS.md) | Medication request reimbursement type - instructions for reimbursement of the medication request |
| [Route of Administration ValueSet](ValueSet-BeRouteOfAdministrationVS.md) | This ValueSet contains codes for the route of administration of medications. It is used to specify how a medication is administered to a patient, such as orally, intravenously, or topically. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example Dispense (minimal)](MedicationDispense-example-minimal-dispense.md) | Dispense Example - Minimal amount of information |
| [Example Dispense (simple)](MedicationDispense-medicationdispense-example-1.md) | Dispense Example - Simple example of a dispense |
| [Example Dispense entry - Community Pharmacy dispense, from prescription, with contained org.](MedicationDispense-medicationdispense-example-2.md) | Medication Dispense example |
| [Example Dispense from a hospital pharmacy](MedicationDispense-example-dispense-hospital.md) | A dispense from a hospital pharmacy, with a hospital nihdi and based on a prescription |
| [Medication Dispense example](MedicationDispense-example-dispense-communitypharmacy-1med.md) | Dispense entry Example - Community Pharmacy dispense, from prescription |
| [apotheek-onder-de-toren](Organization-apotheek-onder-de-toren.md) | Example organization for a pharmacy |

