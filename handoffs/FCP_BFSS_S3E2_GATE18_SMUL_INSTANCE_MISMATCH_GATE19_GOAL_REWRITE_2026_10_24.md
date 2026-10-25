# FCP BFSS Project Lead succession — S3E2 Gate18 standalone `smul_zero` instance mismatch RED; Gate19 goal-directed source Fock scalar-zero rewrite

**October 24 Pacific / October 25 UTC, 2026.** Active `etblink/Foundational-Convergence-Program` research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The strict allowed axioms are exactly `propext`, `Classical.choice`, `Quot.sound` and NEVER `sorryAx`. Source math, canonical `main`, draft PR #25 remain unchanged. **Truth and negative compiler knowledge outrank cosmetic green CI runs.**

## Accepted baseline

Gates #7/#8/#9/#11 independently strictly requalified 28 already-existing genuine original BFSS source theorem declarations; they are *historical source requalifications*, not 28 newly discovered principal roots. [Gate13 #40155001241](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40155001241), job `121054385035`, strictly accepted precisely ONE genuinely NEW source-defined Fock 48-Majorana S3E1 color-local quadratic raw commutator theorem `FCP.BFSSSU2PhysicalDomainS3E1.pairedFermionSpinQuadraticColor_comm_same_color_raw`, exact qualified 117-path child cache saved:
```text
bfss-fcp-s3l-s3e1-forward-smulsub-4b5f4f9e-gate13-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Accepted H4E3D4C4 genuine physical graph operator equivalence and H4G1B conditional eigenpair iff do NOT prove positive normalizable eigenpair existence.

## Genuine scientific S3E2 objective (three NEW mathematical source roots, none accepted yet)

For actual source Fermion2 Fock and `pairedTheta gamma A`, prove the beta and alpha Kronecker-selector contractions and the exact genuine same-color bounded Fock commutator
```text
[pairedFermionSpinQuadraticColor J A, pairedTheta gamma A]
= sum_alpha (((J alpha gamma : Real):Complex) -
              ((J gamma alpha:Real):Complex)) • pairedTheta alpha A
```
for arbitrary real source spinor matrix J, **not** yet skew, not presuming gamma index orientation or a hidden S3D 1/2. Source original S3E2 three declaration statements have been *text-identical across all probes*.

## Gate18 original Lean failure independently verified

[Strict Gate18 #40157884523](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40157884523), job `121063059982`, workflow commit `16671329741341db57ae9dcf946cdb6a07aa9255`, run/job `completed/failure`, 0/3 roots. Frozen source/Lean/Mathlib, exact S3E2 original and V2/V3/V4/V5 proof source SHA, deterministic exactly two V4→V5 typed lemma changes, qualified source Gate13 117-path cache restore and compiled S3C/D/E1 ancestor checks passed. Actual fresh `lake env lean -DwarningAsError=true` compiled V5 `experiments/openai-math-su2-physical-domain/recovery/SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbeV5.lean`, Git blob `805132eba5103803ad44b05decf9fd6a901029c5`, and produced precisely TWO type mismatches in source selector false-index branches:
```text
S3E2...lean:48:16: error: Type mismatch
smul_zero ↑(J α β) elaborated
  @HSMul.hSMul ℂ ?m.154 ?m.154
    (@instHSMul ℂ ?m.154 SMulZeroClass.toSMul) (↑(J α β)) 0 = 0
but goal expects
  @HSMul.hSMul ℂ (Fermion 2 →L[ℂ] Fermion 2)
    (Fermion 2 →L[ℂ] Fermion 2)
    (@instHSMul ℂ (Fermion 2 →L[ℂ] Fermion 2) ContinuousLinearMap.instSMul)
    (↑(J α β)) 0 = 0.
S3E2...lean:81:20: SAME wrong inferred `SMulZeroClass.toSMul` versus original CLM.instSMul.
```
These two errors left all three theorem axiom reports containing `sorryAx`. NO S3E2 child cache was saved. Original diagnostic artifact ID `12585178267`, ZIP SHA256 `f782220dfacdf9280ae88eacfbb2875cf582a74dc5e9f225b2bb75d0fdc57918`. [Gate18 permanent strict RED audit](../audits/FCP_BFSS_S3E2_GATE18_TYPED_SMUL_ZERO_INSTANCE_MISMATCH_STRICT_RED_2026_10_24.md), audit commit `229aaa8340e4eb0a612d58c8950e9d4b9b59ac34`.

**Root cause:** Lean detached polymorphic `smul_zero` instantiated the `SMulZeroClass.toSMul` action with metavariables before the explicit equality ascription forced the actual fully elaborated `ContinuousLinearMap.instSMul`; this is theorem elaboration/instance mismatch, **not a scalar-zero or BFSS CAR counterexample**. Do not repeat a standalone typed `exact smul_zero` attempt.

Prior negative knowledge: Gate14 broad finite-sum simp and sub_smul; Gate15 run1 source-diff Python escaped-newline scanner; Gate15 run2 varying matrix J implicit-transparency; Gate16 explicit index substitution succeeded but left two scalar-action-on-zero leaves; Gate17 `exact smul_zero _` ambiguous `SMulZeroClass`; Gate18 typed standalone `smul_zero` still mismatched CLM instance. All red audits retained, no source theorem weakened.

## New V6 and strict Gate19 in progress

V6 source `experiments/openai-math-su2-physical-domain/recovery/SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbeV6.lean`, immutable Git blob `84d94e0b0f534cbc8e5d9f4da59f18d8a4439836`, commit `49dd0194bc05859266b45b7780ac9784de16d35a`, differs from V5 in exactly TWO proof-only replacements:
```lean
-- V5 incorrectly detaches and elaborates the polymorphic theorem
exact (smul_zero (((J α β : ℝ) : ℂ)) :
  ((((J α β : ℝ) : ℂ) • (0 : Fermion 2 →L[ℂ] Fermion 2)) = 0))
-- V6 rewrites the ALREADY elaborated source CLM scalar-action goal
simp only [smul_zero]
```
No new axiom, sorry, warning suppression, source operator or theorem statement. The proof still preserves genuine pointwise Kronecker-case splitting, strict original Fock CAR, original gamma matrix coefficient orientation and real-to-complex coercion.

New workflow `.github/workflows/bfss-s3l-s3e2-goal-directed-smul-zero-strict-gate19.yml`, source commit `9b26b6a7bae9df33fe7c02dbdf6fdd8d5c434b48`, [Gate19 #40158386562](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40158386562), **IN PROGRESS; no S3E2 root accepted**. Exact immutability checks include original math/Lean/Mathlib, original and S3E2 V2–V6 separate source Git blobs and exact V5→V6 TWO proof-only rewrites, unchanged three source statements/no sorry. Restores accepted Gate13 117-path cache; builds V6 using original unchanged module name with `-DwarningAsError=true` and bounded timeout; checks exact THREE source theorem `#print axioms` reports whitelist-only, no `sorryAx` and no actual Lean warnings, and SAVES a new **118-path child cache ONLY if** the whole workflow and new source pass:
```text
bfss-fcp-s3l-s3e2-goal-smul-84d94e0b-gate19-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
**Immediate successor action:** inspect run/job original logs. If successful, independently verify all three exact theorem axioms and child-cache save, then count **three genuinely NEW source support roots** (distinct from 28 historical requalifications + 1 accepted new S3E1). If red, preserve the exact first actual Lean error. Do not automatically issue another simplifier permutation: isolate `ContinuousLinearMap.instSMul` module law in a typed minimal Fock operator helper proof, using target-directed elaboration or original CLM action lemma. Only promote mathematically meaningful qualified roots with strict provenance.

## Next actual science after contraction, conditional

Specialize `J` to the actual skew source `pairedPlaneSpinGenerator i j` from S3A; resolve complex coefficients/sign and source full S3D factor `1/2`, derive true original fermionic gamma-plane infinitesimal rotation for all three colors, source Fock generator skew-adjointness. Then original cubic R4A/C1/C2/D, all sixteen original source kinetic+cubic supercharges Spin9 covariance, gauge physical Hilbert representation, closed original quadratic form and domain invariance, high-spin reducing sectors, compactness and actual positive normalizable SU(2) BFSS point eigenvalue existence remain **OPEN**. No global mass gap claimed; canonical main, frozen math and draft PR25 unchanged.