### Relationship with other elements:

The Medication Line relates to the other data structures in the following way:
<figure>
  {% include overview-BEModel-short.svg %}
</figure>


* [Medication Line](StructureDefinition-BELMMedicationLine.html) may refer to a [Medication Dispense](StructureDefinition-BEModelMedicationDispense.html) that occurs in the treatment.

* [Medication Dispense](StructureDefinition-BEModelMedicationDispense.html) may be the trigger for creating or updating a [Medication Line](StructureDefinition-BELMMedicationLine.html).
