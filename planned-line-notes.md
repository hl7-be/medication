# Planned Line vs Medication Line

## Which FHIR resource

The Medication Line states *knowledge*: "the patient is (believed to be) on this medication". In FHIR that is an **event**: `MedicationStatement`.

A declaration of intent, "this is what should be", is a **request**: `MedicationRequest`. The `intent` element separates the flavours:

| intent | FHIR definition (short) | Typical source |
|---|---|---|
| `proposal` | a suggestion, by someone who does **not** intend to ensure it happens and gives no authorization | CDS hint, pharmacist review advice, patient request |
| `plan` | an **intention to ensure it happens**, without giving others authorization to act | the treating physician's treatment plan |
| `order` | an authorization to act | the prescription (`BeMedicationPrescription`) |

"Declaration of intent" is literally the definition of `plan`, so the profile fixes `intent = #plan`. If the use case also covers advice from a party that does not carry responsibility for the treatment (e.g. a pharmacist proposing a change to the GP), loosen the profile to `intent from proposal | plan` and let the value carry that distinction.

## Element mapping

| Medication Line (model) | BeMedicationLine (MedicationStatement) | Planned Line (model) | BePlannedLine (MedicationRequest) |
|---|---|---|---|
| `identifier` 1..* | `identifier` 1..*, slice `vidis` | `identifier` 1..* | `identifier` 1..*, open slicing, no national slice yet |
| `recordedDate` 1..1 | ext `BeExtRecordedDate` 1..1 (+ `artifact-version` 1..1, `artifact-date` 0..1, `dateAsserted` 1..1, none of which are in the model) | `recordedDate` 1..1 | `authoredOn` 1..1 (native) |
| `recorder` 1..1 Practitioner | ext `BeExtRecorder` 1..1, plus `informationSource` 1..1 | `planner` 1..1 Practitioner/PractitionerRole | `requester` 1..1 (native); `recorder` optional |
| `patient` 1..1 | `subject` 1..1 BePatient | `patient` 1..1 | `subject` 1..1 BePatient |
| `status` draft / recorded / entered-in-error | ext `registrationStatus` 1..1 (R5 values pre-adopted); R4 `status` not constrained | `status` draft / active / on-hold / completed / revoked / entered-in-error | `status` (native request lifecycle) + ext R5 `statusChanged` 0..1 |
| `adherence.status` 1..1 | ext R5 `MedicationStatement.adherence.code` 1..1 | *removed* | *none* |
| `adherence.adherenceStatusReason` 0..1 | `statusReason` | *removed* | `statusReason` kept only for the lifecycle status (why revoked / on hold) |
| *none* | *none* | `basedOn` 0..* PlannedLine | `basedOn` only PlannedLine (native) |
| `medication.product` 1..1 | `medication[x]` | `medication.product` 1..1 | `medication[x]` 1..1 |
| `medication.type` 1..1 | `medication[x].extension[medicationType]` 0..1 | `medication.type` 1..1 | `medication[x].extension[medicationType]` 0..1 |
| `reason.reference` / `reason.code` | `reasonReference` 0..1 / `reasonCode` | same | `reasonReference` / `reasonCode` |
| `effectivePeriod.start` 1..1 | `effectivePeriod.start` 1..1 | `effectivePeriod.start` 1..1 | ext R5 `effectiveDosePeriod.start` 1..1 |
| `effectivePeriod.end` 0..1 | `effectivePeriod.end` 0..1 | `effectivePeriod.end` **1..1** | ext R5 `effectiveDosePeriod.end` **1..1** |
| `dosage` 0..* | `dosage` 0..* BeDosage | `dosage` **1..*** | `dosageInstruction` **1..*** BeDosage |
| `offLabel` 0..1 string | ext `BeExtOffLabel` (boolean + coded reason) | `offLabel` 0..1 string | ext `BeExtOffLabel` (same) |
| `exposure` 0..1 | ext `BeMedicationExposureCategory` | `exposure` 0..1 | ext `BeMedicationExposureCategory` (context widened to MedicationRequest) |
| `originType` 0..1 | `category` | `originType` 0..1 | `category` |
| `note` 0..* | `note` | `note` 0..* | `note` |
| *n/a* | | *n/a* | `intent` fixed `plan`; `doNotPerform`, `priority`, `dispenseRequest`, `substitution` forbidden (0..0) |

## What does not fit, or fits differently

1. **Treatment period.** R4 `MedicationRequest` has no treatment period. `dispenseRequest.validityPeriod` is the dispensing window, not the treatment, and the existing prescription profile says as much. The R5 element `effectiveDosePeriod` is pre-adopted as an extension from `hl7.fhir.uv.xver-r5.r4`, the same package already used for `adherence` and `statusChanged`.
2. **basedOn chain replaces the `BasedOnMedicationLine` extension.** The plan is the source of intent, so nothing points from a plan back to a Line. `BeMedicationPrescription.basedOn` now references `BePlannedLine` natively, and the extension was removed from the prescription profile and model. `MedicationRequest.basedOn` cannot reference a MedicationStatement anyway (CarePlan, MedicationRequest, ServiceRequest, ImmunizationRecommendation only). The extension definition itself still exists because `BeMedicationDispense` uses it: MedicationDispense has no `basedOn`, and `authorizingPrescription` is the order, not the plan. Decide whether the dispense keeps the Line link, moves to `authorizingPrescription` → prescription → plan, or drops it.
3. **Status.** The Medication Line needs the `registrationStatus` extension because R4 `MedicationStatement.status` conflates lifecycle and taking, while R5 reduced it to `draft | recorded | entered-in-error`. The R4 status is left unconstrained (it was previously fixed to `unknown`; one VIDIS example already used `active`). On `MedicationRequest` the native status *is* the lifecycle of the intent, so no extension is needed. Two consequences: "recorded" becomes `active`, and a plan gains states the Line does not have (`completed`, `cancelled`/`stopped` for revoked, `on-hold`).
4. **Recorder vs planner.** The Line's `recorder` is whoever updated the knowledge. For a plan the meaningful actor is the one responsible for the intent, which is `requester`. `recorder` stays available for the data-entry person.
5. **Adherence.** Dropped entirely. A plan says what should happen; whether the patient follows it belongs on the Medication Line that is later derived from (or reconciled against) the plan.
6. **Exposure category extension.** Its context was `MedicationStatement` only. Widened to `MedicationStatement, MedicationRequest` so the plan can carry it. `BeExtRecordedDate`, `BeExtRecorder` and `registrationStatus` did not need widening because native elements cover them.
7. **Elements the prescription profile has but a plan should not.** `dispenseRequest`, `substitution`, `priority` and `doNotPerform` are set to 0..0. `instructionsForReimbursement` and the Recip-E identifier slice are also not carried over. If any of these turn out to be wanted on a plan, they are one-line changes.
8. **Versioning.** `BeMedicationLine` requires `artifact-version` and allows `artifact-date`, which the logical model does not have. Not carried over to the plan pending a decision on whether plans are versioned the same way as lines.
9. **Model-to-profile drift inherited from the Line.** `offLabel` is a string in both models but a boolean-plus-coded-reason extension in both profiles. `medication.type` is 1..1 in both models but 0..1 in both profiles. These pre-exist and are left as they are.

## Files

- `input/fsh/models/BeModelPlannedLine.fsh` (logical model)
- `input/fsh/profiles/BePlannedLine.fsh` (profile on MedicationRequest)
- `input/fsh/instances/example-planned-line-01.fsh` (example)
- `input/fsh/extensions/ExposureCategory.fsh` (context widened)
- `input/fsh/profiles/BeMedicationRequest.fsh`, `input/fsh/models/BeModelMedicationPrescription.fsh` (`basedOnMedicationLine` extension replaced by native `basedOn` → PlannedLine)
- `sushi-config.yaml` (both StructureDefinitions added to their groups)

## The VIDIS examples (G1V1 .. G4V1) as Planned Lines

Converted copies are in `planned-line-examples/` (not part of the IG build). Mapping applied:

| MedicationStatement (Line) | MedicationRequest (Plan) |
|---|---|
| `registrationStatus` recorded | `status` active |
| `adherence` taking | dropped |
| `adherence` not-taking | no plan version at all - the plan is unchanged, the Line changes |
| `informationSource` | `requester` |
| ext `BeExtRecorder` | `recorder` (native) |
| ext `BeExtRecordedDate` | `authoredOn` |
| `dateAsserted` | dropped |
| `effectivePeriod` | ext R5 `effectiveDosePeriod` |
| `dosage` | `dosageInstruction` |
| `artifact-version` | dropped (not allowed on MedicationRequest either) |
| `status` (R4) | ignored |
| `intent` | `plan` |

Validation against `BePlannedLine` (terminology-server failures filtered out):

| Example | Result | Why |
|---|---|---|
| G1V1, G2V1, G2V3, G3V1 | pass | straightforward "taking" versions with dosage and end date |
| G1V2 | fail | `route` has only text; `BeDosage` requires a coded route. Pre-existing data issue, also fails on the Line |
| G2V2, G2V4 | no plan | these Line versions only change adherence and drop the dosage; nothing about the intent changed, so there is no new plan version |
| G4V1 | pass, but wrong | `informationSource` is a pharmacy (Organization). A pharmacy reports knowledge; it does not plan. This is the `proposal` case, or simply not a plan |

What the exercise shows:

1. **The Line versions that record adherence changes (G2V2, G2V4) are not plans.** They say "the patient is not taking it", with no dosage. That is knowledge, and it belongs on the Line. Request `status` is the planner's will: `on-hold` means "I intend this to pause", `stopped` means "I intend this to end". Neither may be inferred from observed non-adherence, so adherence is never captured on a plan, and a plan version only appears when the intent itself changes.
2. **The G2 history is really two things interleaved:** an intent (Sifrol 0.18 mg, one week on, evening, 3 h before sleep, until 5 Sep) and observations about it (taking / not taking). As plan + line they separate cleanly: one plan, one line whose adherence flips.
3. **Identifier.** The plans reuse the `be-ns-medicationline` identifier. A plan needs its own naming system, or the decision that a plan and its line share an identifier.
4. **G4V1 (pharmacy source)** cannot be a plan by a responsible professional. Either the pharmacy proposes (`intent = proposal`, requester Organization allowed) or this stays a Line only.
5. **`dateAsserted` and `recordedDate` collapse** into `authoredOn`. The Line carries both; the plan has one timestamp.
