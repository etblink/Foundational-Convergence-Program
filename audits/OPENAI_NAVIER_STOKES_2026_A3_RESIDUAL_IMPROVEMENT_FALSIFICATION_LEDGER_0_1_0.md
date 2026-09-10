# OpenAI Navier–Stokes 2026 — A3 Residual-Improvement Falsification Ledger 0.1.0

```text
OPERATION = OPENAI_NAVIER_STOKES_2026_LOAD_BEARING_ANALYTIC_FALSIFICATION_AUDIT
PHASE = PHASE_1_A3_ONE_FULL_RESIDUAL_IMPROVEMENT_CYCLE
NODE = A3
PAPER_NODE = PROPOSITION_9_6_AND_SUPPORTING_SECTIONS_8_9
STATUS = COMPLETE
DATE = 2026-09-10
VERDICT = REPRODUCED_NO_DEFECT_FOUND
OPENAI_LEAN_COMMIT = f9e8bc5b38b6e212696e8a30e3e91517af887bbd
OPENAI_LEAN_TREE = a503f07635f200c0f2f9c5361df1fa07f95c4741
```

## 1. Frozen A3 obligation

The preregistered falsification question is:

```text
AFTER_RECOMPUTING_THE_FULL_NONLINEAR_RESIDUAL_DOES_EVERY_NEW_TERM_FALL_STRICTLY_WITHIN_THE_CLAIMED_IMPROVED_ERROR_CLASS?
```

For one correction cycle with

```text
sigma >= 1/5
B = 1/2 + sigma
C* = 1 + sigma
kappa_s = 10^-5 = 1/100000
```

the claimed cycle advances the accuracy parameter to

```text
sigma' = sigma + 1/10,
B' = B + 1/10,
C*' = C* + 1/10.
```

The audit does not accept this from the exponent ledger alone. It checks the decomposition that produces each estimate, the exact arithmetic margins, the finite-head/cutoff handling, the mean/rank repair, and the pinned Lean producer chain.

## 2. Independent structural reconstruction of the cycle

The paper's Proposition 9.6 correction cycle has four ordered stages:

1. solve the inhomogeneous amplitude equation for the supported nonzero harmonics (particular correction);
2. modify oscillatory amplitudes to realize the signed stress needed to cancel the auxiliary-averaged tangential residual;
3. correct the zero-auxiliary-average mean residual by a temporal mean inverse;
4. apply the five-equation compact mean correction to the three recomputed defects.

Pressure is reconstructed after the corrections and the next residual/defects are computed from the updated state. This order matters because a proof that estimated each correction in isolation but never recomputed the nonlinear residual would be insufficient.

The pinned Lean implementation mirrors that dependency direction: `CorrectionAnalyticStep.step` first builds the literal particular and signed covariance increments, derives the mean updates and rank repair, then calls the full analytic `assemble`, whose returned `CycleAnalyticInvariant` stores the final recomputed residual at `sigma + 1/10`.

## 3. Residual-term ledger — Stage 1 particular correction

The incoming nonzero-harmonic wave residual has exponent `B`. The particular correction is constructed from the literal current residual source.

The paper's listed post-correction contributions have the following gains above `B`:

| contribution | exponent | gain above B |
|---|---:|---:|
| linear/source solve remainder | `B + 1/2 - 3 kappa_s` | `1/2 - 3 kappa_s` |
| interaction with old exact wave | `B + 1/2 - kappa_s` | `1/2 - kappa_s` |
| particular self-interaction | `2B - kappa_s` | `B - kappa_s` |
| cross-total/mean contribution | `B + 2/5` | `2/5` |

At the worst admissible input `sigma=1/5`, hence `B=7/10`, and `kappa_s=1/100000`, the minimum gain is exactly

```text
min(
  1/2 - 3/100000,
  1/2 - 1/100000,
  7/10 - 1/100000,
  2/5
) = 2/5.
```

Therefore Stage 1 has at least `0.4`, comfortably above the required `0.1` cycle gain.

Adversarial check: the potentially dangerous quadratic term is the self-interaction of the newly added particular wave. Its exponent is `2B-kappa_s`; at the minimum `B=0.7` it is much better than `B+0.1`. It is not omitted from the paper's bound, and the pinned Lean `waveStages_residual_gain` receives the actual wave blocks plus their linear-cancellation bounds rather than an assumed finished residual estimate.

## 4. Residual-term ledger — Stage 2 signed stress correction

Write the signed wave as the tangent component plus its curl/solenoidal correction. The exact covariance change of a current oscillatory field `w` under signed increment `s` is

```text
Delta Cov = B(w,s) + s tensor s,
```

where `B` is the symmetric bilinear covariance. If `p` is the fixed primary and `s=t+r` (tangent plus curl remainder), then algebraically

```text
B(w,s) + s tensor s
 = B(p,t)
 + B(w-p,t)
 + B(w,r)
 + s tensor s.
```

This identity is exhaustive: the first term is the intended leading stress realization and the other three terms are the full covariance remainder. There is no additional quadratic covariance term left outside the decomposition.

The paper assigns, before the final radial-divergence loss, the following relevant remainder exponents:

| contribution | pre-divergence exponent | relation to C* |
|---|---:|---:|
| old-wave remainder x tangent | `B + 17/25 - kappa_s` | `C* + 9/50 - kappa_s` |
| signed curl x old exact wave | `C* + 1/2 - 2 kappa_s` | `C* + 1/2 - 2 kappa_s` |
| signed self interaction | `2B - 2 kappa_s` | `C* + sigma - 2 kappa_s` |

A radial divergence can cost an additional `kappa_s`, so the worst gains above `C*` include

```text
9/50 - 2 kappa_s,
1/2 - 3 kappa_s,
sigma - 3 kappa_s,
1 - kappa_s,
1 - 2 kappa_s.
```

At `sigma >= 1/5` and `kappa_s=1/100000`, every one is strictly greater than `17/100`. The most restrictive displayed one is

```text
9/50 - 2/100000 = 0.17998 > 0.17.
```

Thus the signed mean/cross residual is available at `C*+0.17`, again above the `+0.1` cycle target.

### Finite-head adversarial check

A high-risk possibility would be that the leading covariance identity is valid only asymptotically in band number but the proof silently treats it as exact at every band.

The pinned Lean implementation does not do this. `SignedCrossDefectClass` defines the literal difference between the actual averaged cross covariance and the requested physical stress. The difference is retained on every finite band. Only the proved tail identity makes it vanish beyond a fixed tail start; the finitely many earlier bands are then controlled as a finite-head object and may lie in every weighted exponent class without being set equal to zero.

This is a materially stronger bookkeeping check than merely confirming the leading stress formula.

### Signed-amplitude adversarial check

Another possible failure would be illegitimately taking a square root of a signed correction. The pinned construction instead divides the requested signed covariance increment by a fixed positive primary amplitude generated from the strict-cone target. The signed coefficient itself may have either sign. No positivity of the requested correction is silently assumed.

## 5. Residual-term ledger — Stage 3 temporal mean correction

After the signed step, the target mean-update exponent is

```text
H = C* - 2 kappa_s.
```

The paper recomputes the residual difference for the mean increments. The theta component contains, schematically and explicitly, all of

```text
- epsilon dT Delta v
- epsilon (Delta_0 - R^-2) Delta v
+ (Dr + 2/R)[(b+beta)Delta v + (V+v)Delta beta + Delta beta Delta v]
+ Dz[(G+gamma)Delta v + (V+v)Delta gamma + Delta gamma Delta v].
```

The axial component likewise retains

```text
- epsilon dT Delta gamma
- epsilon Delta_0 Delta gamma
+ F_ax
+ (Dr + 1/R)[(b+beta)Delta gamma + (G+gamma)Delta beta + Delta beta Delta gamma]
+ Dz[2(G+gamma)Delta gamma + (Delta gamma)^2 + Delta p_m].
```

These identities contain the old/new cross interactions and increment-squared terms that would be easiest to lose in an informal linearized argument.

The lower exponents are:

```text
slow time:       H + 1
radial flux:     H + 1 - kappa_s
axial terms:     H + 1
viscous terms:   H + 1 - 2 kappa_s.
```

Thus the complete difference is in at least `M_(H+1-2 kappa_s)`.

The basic gap from the old wave exponent is already

```text
H - B = 1/2 - 2 kappa_s = 0.49998 > 0.1.
```

No same-order mean-update interaction was found outside the displayed exact residual difference.

The pinned Lean `CorrectionStep.lean` independently represents these state changes as exact nonlinear residual-difference identities rather than black-box transitions. `CorrectionAnalyticStep.assemble` subsequently uses `meanStages_residual_gain` on the actual final blocks and actual temporal/rank increments to construct the stored final residual.

## 6. Residual-term ledger — Stage 4 five-row compact mean/rank repair

The five-equation system corrects three current debts while preserving two mass constraints. On the reserved repair patch the background has the form

```text
V(R) = C R^(-1-2 lambda),
G(R) = 0,
lambda > 0,
C != 0.
```

The angular repair requires three moments with powers

```text
2,
-2 - 2 lambda,
-2 lambda,
```

and the axial repair requires two powers

```text
1,
1 - 2 lambda.
```

For every fixed `lambda>0`, the three angular powers are pairwise distinct and the two axial powers are distinct. Together with `C != 0`, this is the required nondegeneracy for the separated localized moment inverse. The pinned Lean `FiveRowRank.lean` proves these injectivity statements and constructs the repairs from `LocalizedMomentRepair`; its file-level contract explicitly does not assume nonsingularity or a preimage.

`MeanRankUpdate.lean` then transports the same five exact rows into physical units, including the different powers of the physical length scale for pressure, angular moment, and axial moment.

### Nonlinear remainder adversarial check

Cancelling the five linear rows is not enough; applying the repair creates new nonlinear terms. The paper explicitly recomputes the radial-source remainder, including terms of the forms

```text
-t* Delta beta,
-(Dr+1/R)(2b Delta beta + 2 beta Delta beta + (Delta beta)^2),
-Dz(b Delta gamma + G Delta beta + beta Delta gamma + gamma Delta beta + Delta beta Delta gamma),
+(2v Delta v + (Delta v)^2)/R,
+ epsilon(Delta_0-R^-2)Delta beta.
```

It then recomputes the new pressure/angular/axial defect integrals from that updated remainder, including `Delta gamma Delta v`, `2 gamma Delta gamma`, `(Delta gamma)^2`, and the radial-source contribution to the axial defect.

The resulting defect gain is at least

```text
H + 9/10 - 2 kappa_s
= C* + 9/10 - 4 kappa_s.
```

With the fixed loss,

```text
9/10 - 4/100000 = 0.89996 > 0.1.
```

Thus the nonlinear remainder generated by the rank repair is far inside the next required class.

## 7. Exact cycle-closure arithmetic

With the paper's fixed `kappa_s=1/100000` and `sigma>=1/5`, the independent arithmetic reconstruction gives:

```text
PARTICULAR_MIN_GAIN = 2/5 = 0.4
SIGNED_MIN_GAIN = 2/5 - 1/100000 = 0.39999
H_MINUS_B = 1/2 - 2/100000 = 0.49998
SIGNED_MEAN_GAIN = 17/100 = 0.17
RANK_DEFECT_GAIN = 9/10 - 4/100000 = 0.89996
MIN_SIGNED_INCREMENT_EXPONENT_AT_sigma=1/5 = 7/10 - 1/100000 = 0.69999
```

Required cycle improvement:

```text
REQUIRED_GAIN = 1/10 = 0.1.
```

All closing inequalities have strictly positive slack. The arithmetic is therefore not the identified weak point of Proposition 9.6.

The pinned `ExponentLedger.lean` proves the same exact rational inequalities but explicitly states that those arithmetic facts are conditional on the analytic estimates. This audit therefore treats the arithmetic as a consistency cross-check, not as an independent proof of A3.

## 8. Actual-producer / no-oracle check

A formalization can be misleading if it proves a correct implication from a hypothesis that simply assumes the hard analytic step. The audit therefore traced the producer chain.

### Particular-wave producer

`ActualParticularCycleData.Data` contains the amplitude, pressure, support, solenoidality, regularity, and the key linear-cancellation estimate. Crucially, `actual_data` constructs this record from the incoming analytic invariant, separately tracked periodicity, and the fixed geometric threshold.

The `linear_bounds` proof is not a field named by an external oracle. It derives the estimate from:

- the actual residual block of the current state;
- the actual particular block constructed from that residual source;
- a proved field-level cancellation identity;
- regularity, realness, carrier, and coefficient estimates.

### Signed covariance producer

`ActualSignedMeanBinding` constructs the actual signed ratio from the fixed selected covariance matrix, the fixed positive primary target amplitudes, and the literal current requested stress. Its actual tail identity is proved from this construction.

### Full cycle producer

`ActualCyclePreservation.state_runInvariant` inductively derives the invariant for every stage from the initial invariant and `next_runInvariant`; `particularData` is reconstructed at each stage from the actual current invariant. There is no top-level premise that every stage already satisfies the desired improved residual estimate.

`CorrectionAnalyticStep.step` returns the complete `StepResult`; its `invariant` field is the newly derived `CycleAnalyticInvariant` at `sigma+1/10`. The implementation separately retains wave-stage, mean-stage, covariance, pressure, support, periodicity, debt, and defect bookkeeping.

Given the prior independent kernel replay showing no solution-side `sorry`, `admit`, or project-defined theorem axiom in the exported proof path, this producer trace substantially reduces the risk that the Lean proof is merely formalizing the desired cycle estimate as an assumption.

## 9. Adversarial checklist

| candidate failure mode | result |
|---|---|
| arithmetic gain fails at smallest sigma | NOT_FOUND |
| derivative-loss kappa consumes the 0.1 gain | NOT_FOUND |
| signed covariance expansion omits the new-wave square | NOT_FOUND |
| old-wave remainder × signed tangent omitted | NOT_FOUND |
| curl-related signed covariance term omitted | NOT_FOUND |
| finite pre-tail covariance defect silently erased | NOT_FOUND |
| signed correction improperly requires positive requested coefficient | NOT_FOUND |
| mean correction linearizes away increment-squared terms | NOT_FOUND |
| five-row repair assumes an unproved matrix inverse | NOT_FOUND |
| five-row power system degenerates for allowed lambda | NOT_FOUND_FOR_FIXED_lambda>0 |
| rank repair cancels linear rows but ignores its new nonlinear defects | NOT_FOUND |
| final invariant uses pre-update rather than recomputed residual | NOT_FOUND |
| actual iteration assumes preservation as a stage oracle | NOT_FOUND |

No unresolved same-order term was identified in this A3 audit.

## 10. What A3 does and does not establish

A3 establishes only that the load-bearing *one-cycle residual-improvement mechanism* survived this targeted independent falsification audit.

It does not independently establish:

- existence/correctness of the leading profile A1;
- correctness of the full oscillatory realization A2 beyond the parts needed to trace A3's covariance bookkeeping;
- convergence/all-jet flatness of the infinite iteration A4;
- joint feasibility of every parameter inequality across A1–A4;
- a full independent rederivation of all analytic lemmas used by the native wave estimates;
- community consensus or Clay recognition.

Accordingly, the overall operation remains open.

## 11. A3 verdict

```text
A3_VERDICT = REPRODUCED_NO_DEFECT_FOUND
MATERIAL_ANALYTIC_DEFECT_FOUND = NO
UNRESOLVED_SAME_ORDER_RESIDUAL_TERM = NO
ARITHMETIC_CLOSURE = PASS
FINITE_HEAD_DEFECT_HANDLING = RETAINED_EXPLICITLY
FIVE_ROW_NONDEGENERACY_AT_FIXED_lambda>0 = PASS
FULL_UPDATED_RESIDUAL_RECOMPUTATION = SUPPORTED_BY_PAPER_AND_PINNED_LEAN
TOP_LEVEL_STAGE_ORACLE_FOUND = NO
```

The verdict is deliberately stronger than `NOT_INDEPENDENTLY_REPRODUCED` because the audit independently reconstructed the exact cycle algebra and numerical closure and then cross-checked that reconstruction against a formal implementation whose actual producer path has been traced. It remains narrower than a full independent human proof of every supporting estimate.

## 12. FCP isolation

```text
K9_CORPUS_EFFECT = NONE
FRAMEWORK_EFFECT = NONE
K1_K10_EFFECT = NONE
E1_E5_EFFECT = NONE
RECURRENCE_EFFECT = NONE
EMPIRICAL_EFFECT = NONE
NFC_SUPPORT = NONE
CURRENT_STATE_MUTATION = NONE
SOURCE_REGISTER_MUTATION = NONE
```

The next admissible phase is A2, the oscillatory-stress realization audit. A3 must be reopened if A2 later finds that one of the native signed-wave estimates or covariance identities used here was not actually earned by the concrete construction.
