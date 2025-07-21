### Relationship with other elements:


The Medication model relates to the other data structures in the following way:
<figure>
  {% include overview-BEModel-short.svg %}
</figure>

This model is just a placeholder and has not been implemented as a FHIR resource. Implementers are expected to use the Medication resource which will be profiled later.
{:.stu-note}

* [Medication Line](StructureDefinition-BeModelMedicationDispense.html) may refer to a [Medication Dispense](StructureDefinition-BeModelMedicationDispense.html) that occurs in the treatment.

* [Medication Dispense](StructureDefinition-BeModelMedicationDispense.html) may be the trigger for creating or updating a [Medication Line](StructureDefinition-BeModelMedicationLine.html).
