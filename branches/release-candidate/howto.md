# How to read this specification - Medication v1.1.0

* [**Table of Contents**](toc.md)
* **How to read this specification**

## How to read this specification

This is an introduction on how to use this specification:

 

### Background information

The background information contains the essential information for reading and understanding these specifications.

The Artifact Types page provides an overview of the diverse modules contained in this specification.

This publication also contains the general privacy and security considerations that apply to this entire set of specifications. Privacy is related to “who can legitimately access which data” and it relates to permission and audit trails, while security is focused on the mechanisms to ensure that the data is technically secure and protected, thus related to encryption, authentication etc.

For a background on FHIR, refer to [http://hl7.org/fhir/overview.html](http://hl7.org/fhir/overview.html)

 

### Functional module - for clinicians and functional / business analysts:

The Functional module in this publication contains the contextual environment of these specifications, such as an overview of the projects impacted, or legal and functional needs.

It describes several use cases as examples, which were used as input of the specification and are used to validate the specification, to demonstrate that the specification adequately covers the use cases needed.

It also contains the Logical Data Models, which express the functional data needs in a purely functional way, not attached to a particular technical implementation or standard. This is useful for expressing data needs in a business-friendly language, for example “a patient may have only one date of birth” or “patient gender is mandatory”. These are functional decisions which can be observed in the logical models.

The Functional module contains also the list of functional transactions that are covered in the specification – expressed as modular exchanges of data, with a purpose and a defined content specification.

 

### Detailed Specifications

The Detailed Specifications contain the technical content – i.e. the actual profiles that are used in this specification. These are implementable specifications and are therefore mostly targeted at technical developers and testers. The Artifact Index contains all definitions: profiles, data types, value sets and code systems.

For an overview of the FHIR standard for developers and implementers, refer to [http://hl7.org/fhir/overview-dev.html](http://hl7.org/fhir/overview-dev.html) or [http://hl7.org/fhir/overview-arch.html](http://hl7.org/fhir/overview-arch.html)

 

### Terminology

The Terminology module contains the vocabulary resources – naming systems, code systems and value sets.

Terminologies can be defined on the Logical or on the Technical level – some codes defined on the functional or legal level (e.g. marital status and country codes), while some other codes are defined on a more technical level – e.g. product or procedure codes, or asset status codes. While this is not a hard difference, it may be useful to consider whether a Logical Model will be bound to a Value Set, or if that binding will only be on the technical level (Profile).

To learn more about the use of terminologies in FHIR, check [http://build.fhir.org/terminologies](http://build.fhir.org/terminologies) and [http://build.fhir.org/terminology-module.html](http://build.fhir.org/terminology-module.html)

