# Medication Line as a statement of intent: findings

## Premise

The Medication Line, as modelled today, represents the knowledge of whether a patient is on a medication. It is a statement of **fact**, and in FHIR that is an event: `MedicationStatement`.

As requested, this exercise applied the same content to a statement of **intent**: "this is what should be". In FHIR a statement of intent is a request, so the target resource is `MedicationRequest`, with `intent = plan`. `plan` is the intention of a responsible professional to ensure something happens, without yet authorising anyone to act. `proposal` would be a suggestion from a party without that responsibility; `order` is the prescription.

The hypothesis under test: the Medication Line content can serve, with small adjustments, as that statement of intent. The adjustments asked for were: no adherence, dosage required, end date required.

## What was built

- `BeModelPlannedLine`: the Line logical model with those adjustments.
- `BePlannedLine`: a profile on `MedicationRequest` mapping that model.
- `BeMedicationPrescription.basedOn` now points to the plan; the `BasedOnMedicationLine` extension is no longer needed there.
- The eight VIDIS example Lines (G1V1 to G4V1) converted to plans.

## Finding 1: the model fits MedicationRequest better than it fits MedicationStatement

Most of what the Line needs extensions for on `MedicationStatement` is native on `MedicationRequest`:

| Line concept | On MedicationStatement | On MedicationRequest |
|---|---|---|
| recorded date | extension | `authoredOn` |
| recorder / responsible person | extension | `requester`, `recorder` |
| registration status | extension, R4 status left meaningless | `status` |
| link to prior plan | extension | `basedOn` |
| treatment period | native | R5 `effectiveDosePeriod`, pre-adopted |
| adherence | extension | not applicable |

Only the treatment period needs a pre-adopted R5 extension on the request side. This is a strong hint that the Line's content was, in part, request-shaped all along.

## Finding 2: three things change nature, not just cardinality

- **Adherence disappears entirely.** It is an observation about the patient. It can never be on a plan, and it cannot be translated into a plan status. `on-hold` means "I intend this to pause", `stopped` means "I intend this to end". Neither may be inferred from "the patient is not taking it".
- **Status becomes a lifecycle.** The Line's registration status (draft, recorded, entered-in-error) says whether the record is valid. A plan's status says whether the intent holds: draft, active, on-hold, completed, revoked. "Recorded" maps to "active", and the plan gains states the Line does not have.
- **Recorder becomes planner.** The Line's recorder is whoever last updated the knowledge. A plan needs the person who carries responsibility for the intent.

## Finding 3: the examples contain statements of fact that contradict the hypothesis

Converting the VIDIS examples exposed content that only makes sense as fact, not as intent:

| Example | What it says | Why it is not intent |
|---|---|---|
| G2V2, G2V4 | patient not taking, dosage removed | an observation. Nothing about the intended treatment changed. No plan version exists for these |
| G2V3 | dosage dates move to a later week | ambiguous: a re-plan by the prescriber, or the Line catching up with a dispense. The data cannot tell |
| G1V2, G2V2 to G2V4 | `effectivePeriod.start` advances with every version | intent has one start. A start that moves is "where we are now", which is fact |
| G4V1 | source is a pharmacy | a pharmacy reports what it knows or proposes; it does not carry responsibility for the treatment. At most a `proposal` |
| all | `dateAsserted` and `recordedDate` both present | two timestamps for one act of asserting knowledge. A plan has one: when it was authored |
| G2 series | four versions | the version counter counts observations. The intent behind them changed at most once |

Every one of these is a legitimate thing to record. None of them belongs on a statement of intent.

## Finding 4: the version history conflates two streams

The G2 series is one intent (Sifrol in the evening, one-week courses, until 5 September) interleaved with observations about it (taking, not taking, taking, not taking). Modelled as plan plus line, they separate cleanly:

| Line version | Adherence | Plan |
|---|---|---|
| G2V1 | taking | plan v1, active |
| G2V2 | not taking | plan v1, unchanged |
| G2V3 | taking, new dates | plan v1, or v2 if the planner really re-planned |
| G2V4 | not taking | plan v1, unchanged |

Four Line versions, one or two plan versions. The asymmetry is the point.

## Conclusion

The Medication Line is, and should stay, a statement of fact. The hypothesis that its content can double as a statement of intent does not hold: the examples are full of facts (adherence, moving start dates, pharmacy sources, observation-driven versions) that have no place on a request.

What does hold is that a statement of intent is a distinct, useful resource, and that the Line's *structure* maps onto it with fewer extensions than it needs on `MedicationStatement`. The two co-exist in a chain:

plan (`MedicationRequest`, intent plan) → prescription (`MedicationRequest`, intent order, `basedOn` plan) → dispense → Line (`MedicationStatement`, the resulting knowledge)

## Open decisions

1. Does the plan get its own identifier naming system, or does it share the Line's?
2. Does the plan carry `artifact-version` like the Line? Note the extension is not allowed on either resource today.
3. Should `intent` also allow `proposal`, to cover the pharmacy case?
4. `BasedOnMedicationLine` still exists for the dispense. Keep it there, or reach the plan via the prescription?
5. Is G2V3 a re-plan or a Line update? Only the business process can answer.

## Files

- `planned-line-notes.md`: element-by-element mapping and detailed remarks
- `planned-line-examples/`: the six converted VIDIS examples that are plans
- `input/fsh/models/BeModelPlannedLine.fsh`, `input/fsh/profiles/BePlannedLine.fsh`, `input/fsh/instances/example-planned-line-01.fsh`
