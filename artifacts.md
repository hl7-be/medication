# Artifacts Summary - Medication v1.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [BeModelMedicationDispense](StructureDefinition-be-model-medicationdispense.md) | This is the logical model for the Dispense Record entry - the information that can be captured upon the act of dispensing - in a hospital pharmacy, or a community pharmacy. This is not for a future dispense, rather a record of an actual dispense. |
| [KMEHR Medication Schema v5.8](StructureDefinition-KMEHRMS.md) | This model represents the Medication Schema KMEHR V5.8. It is shown for demonstrating the field correspondence/equivalence, and not to imply any intended scope or intended behaviour. |
| [Medication Line - logical model](StructureDefinition-be-model-medicationline.md) | A logical data model of the medication line. |
| [Medicinal Product](StructureDefinition-BELMMedProduct.md) | A logical data model for representing a medicinal product. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BEMedicationLine](StructureDefinition-be-medicationline.md) | Medication Line profile - contains the overview information for a single medication item |
| [BeMedicationDispense](StructureDefinition-be-medicationdispense.md) | Defines constraints and extensions on the Medication Dispense resource for a record of a dispensation in Belgium. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AD](StructureDefinition-AD.md) | Address |
| [ANY](StructureDefinition-ANY.md) | An abstract type |
| [BL](StructureDefinition-BL.md) | Boolean - true or false |
| [CD](StructureDefinition-CD.md) | ConceptDescriptor |
| [Class](StructureDefinition-Class.md) | Class of data elements |
| [DT](StructureDefinition-DT.md) | Date |
| [EN](StructureDefinition-EN.md) | EntityName |
| [II](StructureDefinition-II.md) | InstanceIdentifier |
| [INT](StructureDefinition-INT.md) | IntegerNumber |
| [PQ](StructureDefinition-PQ.md) | PhysicalQuantity |
| [REAL](StructureDefinition-REAL.md) | RealNumber |
| [RTO](StructureDefinition-RTO.md) | Ratio |
| [ST](StructureDefinition-ST.md) | CharacterString |
| [TS](StructureDefinition-TS.md) | TimeStamp |
| [Untyped](StructureDefinition-Untyped.md) | No data type defined |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeExtDispenseRequestNeededCategory](StructureDefinition-BeExtDispenseRequestNeededCategory.md) | Dispense Request Needed - category. |
| [BeExtDosageOverride](StructureDefinition-BeExtDosageOverride.md) | Dispense override. |
| [BeExtDosageOverrideReason](StructureDefinition-BeExtDosageOverrideReason.md) | Dispense Request Needed - category. |
| [BeExtExposureCategory](StructureDefinition-BeExtExposureCategory.md) | Exposure - category. |
| [BeExtMedicationType](StructureDefinition-BeExtMedicationType.md) | MedicationType |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Dispenser Types](ValueSet-be-vs-dispenser-types.md) | Dispenser Types - from hcparty |
| [Medication exposure intent](ValueSet-medication-exposure-category-vs.md) | The exposure purpose of a medication - whether the medication is given for therapeutic or prophylactic purposes. |
| [Medication origin type ValueSet](ValueSet-medication-line-origin-type-vs.md) | Medication treatment origin type - what is the type of care that originated the medication treatment |
| [Medication preparation Type value set](ValueSet-medication-type-vs.md) | Medication preparation type value set |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Medication origin type](CodeSystem-medication-line-origin-type.md) | Medication treatment origin type - what is the type of care that originated the medication treatment |
| [Medication preparation Type](CodeSystem-medication-type.md) | Medication preparation type |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [be-ns-cnk-codes](NamingSystem-be-ns-cnk-codes.md) | Naming System - CNK Product Codes |
| [be-ns-cti-extended-code](NamingSystem-be-ns-cti-extended-code.md) | Naming System - CTI Extended Codes |
| [be-ns-prescription-ids](NamingSystem-be-ns-prescription-ids.md) | Naming System - Prescription IDs |
| [be-ns-product-package-type](NamingSystem-be-ns-product-package-type.md) | Naming System - Prescription IDs |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [A dispense from a hospital pharmacy](MedicationDispense-example-dispense-hospital.md) | A dispense from a hospital pharmacy, with a hospital nihdi and based on a prescription |
| [Dispense Example - Minimal amount of information](MedicationDispense-example-minimal-dispense.md) | Medication Dispense example |
| [Dispense entry Example - Community Pharmacy dispense, from prescription](MedicationDispense-example-dispense-communitypharmacy-1med.md) | Medication Dispense example |
| [Dispense entry Example - Community Pharmacy dispense, from prescription, with contained org.](MedicationDispense-medicationdispense-example-2.md) | Medication Dispense example |
| [Example organization for a pharmacy](Organization-apotheek-onder-de-toren.md) | Example Pharmacy (Organization): Apotheek onder de toren |
| [medicationdispense-example-1](MedicationDispense-medicationdispense-example-1.md) |  |

