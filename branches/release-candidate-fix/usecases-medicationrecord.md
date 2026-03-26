# Medication Record - Use cases - Medication v1.1.0

* [**Table of Contents**](toc.md)
* **Medication Record - Use cases**

## Medication Record - Use cases

The following use cases related to the medication list are supported with this specification (this is not an exclusive list):

### Consulting a medication record

The case of consulting a medication record is straighforward. The key data object to be retrieved is the Medication Line (or set of medication lines for the patient). Other variants may be added but the primary scenario when querying a medication record is about retrieving the medication lines.

### Updating a medication record

The complementary use case is of updating a medication record by updating the medication lines. The professional decides (or is informed) that the patient is expected to take medication (or has taken it). This triggers the creation of a Medication Line entry, which will be submitted and added to the list of the patient’s Medication lines.

### Compiling a medication record

The alternative case (which may be combined with the previous) is the compilation of a medication record from different sources. This is a possible scenario in cross-border presscriptions, or in a transition phase where the information that exists is on prescriptions and dispenses, and it is far easier to be able to also retrieve these to recreate a patient’s medication list, besides asking the patient. In this case, the medication information is collected, from which the medication lines are created, and they are then updatedto the repository as per the other use cases.

