
The following use cases are supported with this specification:

### Registering a dispense
<div>
{% include usecase-dispense-1.svg %}
</div>
<br/>
The fundamental use case is the registration of a dispense by a healthcare professional or anyone in an organisation - in the latter case, the organization is considered the dispenser.
In this use case, the dispenser provides one BeMedicationDispense resource instance for each different medicinal product dispensed. More concretely, the following specific situations mayy occur:

#### Registering a dispense of a single item  

When a single product (one or more boxes but of the same product), systems are expected to issue a single instance of BeMedicationDispense, with a single Dispense GUID and a single Session GUID.
The quantity dispensed can be used to describe the amount of identical products dispensed: When two identical boxes of the same product are dispensed, it is possible to issue 2 BeMedicationDispense instances, or simply one instance with quantity = 2. When the products are not identical (e.g. they have different batch numbers and the pharmacy wants to register the batch number), this requires 2 instances of BeMedicationDispense resource.


#### Registering a dispense of several items in a single session  
When, during a visit to a pharmacy or during a dispense event (e.g. a preparation in a hospital), systems are expected to issue one instance of BeMedicationDispense for each distinct product (different products, or boxes of the same product but with different lot numbers). Each of these resources has a single Dispense GUID but they both share a single Session GUID. The dispensing systems are expected to be able to maintain the Session GUID for those 2 dispense records.


#### Registering a dispense of a magistral preparation  
When dispensing a magistral preparation (which implicitly includes or follows the step of preparing the medication), systems are expected to issue one instance of BeMedicationDispense for the medication, including a description of the preparation. Optionally, that preparation can be described by its ingredients which are represented as Medication resources that are ingredients of the main medication (the magistral preparation).


<br/>
<br/>

### Consulting the dispenses for a given patient
<div>
{% include usecase-dispense-2.svg %}
</div>

The other case directly supported is the consultation of a Dispense record (or several, for example query all dispenses for a patient, or all dispenses that are justified by a given prescription).
This use case is a simple use of the FHIR core functionalities of search and exchange. Any additional constraints or restrictions (e.g. bundling, or authorization) will be addressed when describing the technical details of each type of exchange, if necessary.


<br/>
<br/>
