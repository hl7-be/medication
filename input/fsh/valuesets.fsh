// @Name: Include Entire Value Set
// @Description: A value set containing other value sets

Alias: ACT =  http://terminology.hl7.org/CodeSystem/v3-ActReason


ValueSet: SubstitutionReason
Id: medication-substitution-dispense-v1
Title: "medication substitution Value set"
Description:   "Value set for substituting a medication on dispense."
* include codes from valueset v3.SubstanceAdminSubstitutionReason
* ACT#UNABLE  "unable to use"