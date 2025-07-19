
CodeSystem: BeMedicationLineAdherenceStatus
Title: "Medication Line Adherence Status"
Description: "Medication Line Adherence Status - ValueSet."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International"
* ^jurisdiction = $m49.htm#001 "World"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* #taking "Taking" "The medication is being taken."
  * #taking-as-directed "Taking As Directed" "The medication is being taken as directed."
  * #taking-not-as-directed "Taking Not As Directed" "The medication is not being taken as directed."
* #not-taking "Not Taking" "The medication is not being taken."
  * #on-hold "On Hold" "The medication is on hold."
    * #on-hold-as-directed "On Hold As Directed" "The medication is on hold as directed."
    * #on-hold-not-as-directed "On Hold Not As Directed" "The medication is on hold not as directed."
  * #stopped "Stopped" "The medication is stopped."
    * #stopped-as-directed "Stopped As Directed" "The medication is stopped as directed."
    * #stopped-not-as-directed "Stopped Not As Directed" "The medication is stopped not as directed."
* #unknown "Unknown" "Whether the medication is being taken or not is not currently known."


ValueSet: BeMedicationLineAdherenceStatusVS
Title: "BeExtAdherenceStatus"
Description: "The status of taking the medication."

* ^status = #draft
* ^experimental = false
* include codes from system BeMedicationLineAdherenceStatus
