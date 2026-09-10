# OpenAI Navier–Stokes 2026 — Load-Bearing Lean Dependency Crosswalk 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_LOAD_BEARING_ANALYTIC_FALSIFICATION_AUDIT
PHASE = CROSS_CHECK_AGAINST_PINNED_LEAN_DEPENDENCY_GRAPH
DATE = 2026-09-10
OPENAI_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
OPENAI_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
CROSSWALK_STATUS = COMPLETE
MATERIAL_PAPER_FORMAL_MISMATCH_FOUND = NO
LOAD_BEARING_ORACLE_SUBSTITUTION_FOUND = NO
```

## 1. Purpose

This phase asks whether the independently reconstructed A1–A4 obligations are actually connected in the pinned formal artifact, or whether a load-bearing paper step disappears behind an assumption, unrelated existential witness, reselection of incompatible fields, or theorem whose hypotheses already contain the desired conclusion.

This is not another kernel replay. The prior formal-reproducibility operation already established kernel acceptance and the permitted axiom ceiling. Here the question is dependency semantics.

## 2. A1 — leading profile

### Independent obligation

Construct one profile satisfying the nominal cone, exact matching/moments, strict leading-stress cone, smooth/flat edge behavior and retained initialization prerequisites, before the correction waves are selected.

### Formal spine

```text
PreparedOutgoing.exists_prepared
  -> NominalConeAssembly.exists_nominal_cone
  -> ModulatedProfileAssembly.exists_of_certificate
  -> FinalSlowBase.profileData_nonempty
  -> FinalSlowBase.actualProfile
  -> BaseWitnessClosure.actual_profile_eq
  -> BaseWitnessClosure.actual_base_compatible
  -> BaseWitnessClosure.actual_finite_base
  -> BaseWitnessClosure.exists_closed_initialization
```

### Dependency check

`FinalSlowBase.profileData_nonempty` explicitly obtains a nominal-cone profile/certificate and then the finite modulation witness with `FullTrueCone`. Its result stores those objects in one `ProfileData`. `actualProfile` is a single `Classical.choice` of that nonempty structure.

`BaseWitnessClosure` then proves downstream facts about that same selected `ActualPrimary.profile`, including retained bounds on `h,lambda`, the same axis pressure datum, `NominalConeAssembly.Certificate`, `LeadingStressWeights.FullTrueCone`, finite base identities and the exact initialized cycle invariant.

No A2 wave amplitude, A3 improved residual, or A4 schedule occurs as an A1 premise.

```text
A1_ORACLE_SUBSTITUTION = NO
A1_RESELECTION_MISMATCH = NO
A1_FORMAL_DIRECTION = PROFILE -> CONE -> INITIALIZATION
```

## 3. A2 — oscillatory stress realization

### Independent obligation

From the fixed A1 stress cone, build positive primary oscillations and request-driven signed corrections whose exact divergence-free fields realize the required leading covariance while retaining all nonlinear/curl/cutoff remainder terms.

### Formal spine

```text
PrimaryTargetBounds / PrimaryCopyBounds
  -> ActualSignedControl.exists_actual_signed_control
  -> ActualSignedStageControls
  -> ActualSignedMeanBinding.signedRatio
  -> ActualSignedMeanBinding.requested_cross_tail
  -> LocalizedCurlRealization
  -> CurrentSignedCurl / ActualSignedCommonDynamics
  -> SignedMeanGain.covarianceIncrement
  -> SignedMeanGain.signed_tensor_bounds
  -> SignedCrossDefectClass
```

### Dependency check

The positive target amplitude is derived from the `FullTrueCone` of the already-fixed A1 profile. The later signed coefficient is an algebraic ratio/linear response around that positive reference; it is not required to be a new positive square root.

The formal covariance update is literal: `covarianceIncrement u w` is the new quadratic covariance minus the old one. The exact split retains the cross tensor and remainder tensor. The curl realization supplies the divergence-free correction and the curl difference remains in the bounds.

Finite-head failure of the tail covariance identity is not erased. `SignedCrossDefectClass` retains the literal finite defect and upgrades it to every weighted exponent only because it is supported in a fixed finite band head after the proved tail identity.

```text
A2_ORACLE_SUBSTITUTION = NO
A2_SIGNED_STRESS_AS_POSITIVE_SQUARE_ROOT = NO
A2_FINITE_HEAD_SILENTLY_ZEROED = NO
A2_FORMAL_DIRECTION = FIXED_CONE -> ACTUAL_WAVES -> EXACT_COVARIANCE_DECOMPOSITION
```

## 4. A3 — one complete residual-improvement cycle

### Independent obligation

Recompute the nonlinear outgoing residual after the particular wave, signed wave, mean/pressure/rank corrections and all cross terms, and prove a strict improvement in the same invariant class.

### Formal spine

```text
ActualParticularCycleData.actual_data
  -> ActualCyclePreservation.particularData
  -> ActualCyclePreservation.waveData_of_particular
  -> ActualCyclePreservation.stepData_of_particular
  -> CorrectionAnalyticStep.step
       |-> waveStages_residual_gain
       |-> finalBlock_uniform_cumulative
       |-> meanStages_residual_gain
       |-> CrossBasedMeanComposition.mean_gain_from_waves_of_cross_defects
       |-> ActualCycleExcluded.nextAxisymmetricAlias_all_powers
  -> CorrectionAnalyticStep.StepResult
  -> ActualCyclePreservation.next_runInvariant
  -> ActualCyclePreservation.state_runInvariant
```

### Dependency check

`WaveData` inputs only native constructed-wave estimates, smoothness, support, solenoidality and explicit linear combinations; it does not contain the desired completed outgoing invariant.

`CorrectionAnalyticStep.step` derives the outgoing `CycleAnalyticInvariant` at `sigma+1/10`. The full state carries residual, mean, debt, covariance, pressure, support, smoothness, periodicity and alias bookkeeping.

The particular linear estimate itself is produced in `ActualParticularCycleData.linear_bounds` from the literal current residual plus actual particular field cancellation, rather than postulated as a finished residual bound.

The five-row rank correction is built from a concrete localized moment inverse in `FiveRowRank`/`MeanRankUpdate`, not from an assumed nonsingular matrix.

```text
A3_ORACLE_SUBSTITUTION = NO
A3_OUTGOING_INVARIANT_AS_INPUT = NO
A3_NONLINEAR_RECOMPUTATION_PRESENT = YES
A3_FORMAL_DIRECTION = INCOMING_INVARIANT + ACTUAL_WAVES -> COMPLETE_OUTGOING_INVARIANT
```

## 5. A4 — diagonal summation and all-jet flatness

### Independent obligation

Select one final schedule from the actual finite stages; form one final locally finite smooth field; make its complete residual flat to all orders; preserve endpoint extensions and blowup; use the same field in the compact whole-space candidate.

### Formal spine

```text
ActualCandidateAssembly.estimates
  -> MixedCandidateAssembly.StageEstimates
  -> MixedDiagonalResidual.exists_physical_schedule_residual_zero
  -> LocalResidualFlatness.exists_schedule_all_jetRates
  -> LocalResidualFlatness.selected_schedule
       produces SAME a with:
       * MixedCandidateWitness.SelectedSchedule
       * ThreeCutBounds
       * AllResidualJetRates
  -> LocalScheduleWitness.selected_awayExtensions hs
  -> LocalScheduleWitness.selected_origin_blowup hs
  -> LocalScheduleWitness.selected_compact_candidate hs
  -> LocalPaper.properties_of_schedule hs hr
  -> PaperLocalization.local_theorem_with_compact_candidate
  -> R3 theorem chain
```

### The critical same-schedule check

This was the most important formal cross-check in A4.

`LocalResidualFlatness.selected_schedule` has the quantifier shape

```text
exists a,
  SelectedSchedule ... a
  AND ThreeCutBounds ... a
  AND AllResidualJetRates ... a.
```

`LocalScheduleWitness` is deliberately parameterized by an externally supplied `a`. Its file-level contract states that endpoint extensions and global-candidate conclusions are retained without reselection. `selected_compact_candidate hs` constructs the whole-space candidate from exactly that supplied schedule.

`LocalPaper.properties_of_schedule hs hr` consumes both the selected-schedule proof `hs` and the all-order residual rates `hr` for the same `a`.

Finally, `PaperLocalization.local_theorem_with_compact_candidate` performs:

```text
obtain ⟨a, hs, _, hr⟩ := LocalResidualFlatness.selected_schedule
obtain ⟨f, hc⟩ := LocalScheduleWitness.selected_compact_candidate hs
...
LocalPaper.properties_of_schedule hs hr
```

Therefore the local quantitative theorem and the compact R3 candidate are tied to one identical schedule and one identical local velocity/pressure germ. This closes a potentially serious reselection loophole.

```text
A4_ORACLE_SUBSTITUTION = NO
A4_SCHEDULE_RESELECTED_FOR_JET_ORDER = NO
A4_LOCAL_THEOREM_CANDIDATE_FIELD_MISMATCH = NO
A4_FORMAL_DIRECTION = ACTUAL_FINITE_STAGES -> ONE_SCHEDULE -> ONE_LOCAL_FIELD -> ONE_COMPACT_CANDIDATE
```

## 6. Global exact-choice chain

The pinned implementation closes the abstract existential layers into named exact choices:

```text
FinalSlowBase.actualProfile
  -> ActualPrimary.{outgoing,nominal,certificate,modulation,h}
  -> ActualCandidateConstruction.selectedBudget = 0
  -> ActualCandidateConstruction.selectedThreshold = startingThreshold 0
  -> ActualCandidateConstruction.selectedCycle
  -> ActualCandidateAssembly.selected{Potential,Direct,Pressure}Stages
  -> LocalResidualFlatness.selected_schedule
  -> LocalPaper local theorem + compact candidate using same a
```

The final proof therefore does not splice an A1 witness from one branch, A3 stages from a second, and an A4 candidate from a third.

## 7. Assumption/axiom cross-check

The prior reproducibility gate established that the exported R3 and periodic comparator theorems have only

```text
propext
Classical.choice
Quot.sound
```

as Lean axioms and no `sorryAx`.

This dependency crosswalk found no project-defined axiom or structure field at an A1–A4 junction whose content is the final theorem or an equivalent hidden existence assumption. Conditional generic lemmas occur, but the actual construction supplies their hypotheses through the preceding exact modules listed above.

`Classical.choice` is used to select witnesses from proved nonempty/existential results; it is not evidence of a mathematical existence assumption beyond those proofs.

## 8. Crosswalk verdict

```text
LEAN_DEPENDENCY_CROSSWALK = COMPLETE
A1_DEPENDENCY_MATCH = PASS
A2_DEPENDENCY_MATCH = PASS
A3_DEPENDENCY_MATCH = PASS
A4_DEPENDENCY_MATCH = PASS
GLOBAL_SAME_WITNESS_CHAIN = PASS
LOAD_BEARING_ORACLE_SUBSTITUTION_FOUND = NO
MATERIAL_PAPER_FORMAL_MISMATCH_FOUND = NO
```

This establishes semantic connectivity of the preregistered load-bearing spine inside the pinned formalization. It does not promote the formalization into an independent human proof of every auxiliary analytic lemma.

## 9. FCP isolation

No K9, framework, K1–K10, E1–E5, recurrence, empirical, physical-canonicity, NFC, or unforced-Navier–Stokes consequence is authorized by this crosswalk.