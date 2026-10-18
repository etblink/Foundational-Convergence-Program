# S1H exact source SU(2) gauge representation uniqueness — accepted

**Date:** 2026-10-18 PDT.
**Disposition:** `STRICT_KERNEL_PASS__THREE_ROOTS__EXPLICIT_SOURCE_48_THETA_COVARIANCE__NO_MANUSCRIPT_SPIN48`.

## Strict qualification

[BFSS SU2 Source Gauge Representation Uniqueness, **Gate #2**](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39144318743), run `39144318743`, job `117724947952`, **SUCCESS**.

Candidate source and workflow commit: `81b052cc9c71e88fba8248ca54ba3b4f87dd3f43`.
New S1H Lean source: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1HSourceGaugeCovariantImplementerUniquenessProbe.lean`, exact Git blob `f4c02e412e06d93841696dc9b36e926ee93c33bb`; both pinned in frozen job.
Source Math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, historical original source Euler import cache qualified under Gate #9.
S1D, S1E, S1F and all **11** S1G source-character roots compiled and passed first in the same job; S1G marker `S1G_EXACT_SOURCE_SU2_CHARACTER_TRIVIALITY_11_ROOTS_KERNEL_PASS`.

**Three new kernel-compiled S1H declarations:**

1. `FCP.BFSSSU2PhysicalDomainS1H.original_source_implementer_unique_apply`: equality of actions on each literal `Fermion 2` vector.
2. `FCP.BFSSSU2PhysicalDomainS1H.original_source_implementer_unique`: equality of `Fermion 2 ≃ₗ[ℂ] Fermion 2` invertible linear maps at each source SU(2) element.
3. `FCP.BFSSSU2PhysicalDomainS1H.original_source_gauge_representation_unique`: equality `V = fermionGaugeLinearHom` of complete gauge-group monoid homomorphisms.

All three printed axiom sets were **exactly `[propext, Classical.choice, Quot.sound]`** with **no `sorryAx`**. Strict audit marker: `S1H_ORIGINAL_SOURCE_SU2_GAUGE_REPRESENTATION_UNIQUENESS_3_ROOTS_KERNEL_PASS`. The `.olean` was emitted and verified present by the gate.

## Exact hypothesis and mathematical strength

Given `V : GaugeGroup 2 →* (Fermion 2 ≃ₗ[ℂ] Fermion 2)` **together with the explicitly included** covariance hypothesis `hV`:

```lean
∀ (g : GaugeGroup 2) (α : SpinIndex)
  (A : ColorIndex 2) (v : Fermion 2),
  V g (pairedTheta α A v) =
    ∑ B : ColorIndex 2,
      (pairedAlgebraData.adjointCoefficient g A B : ℂ) •
        pairedTheta α B (V g v)
```

the full source gauge implementation `V` equals the accepted original `fermionGaugeLinearHom`. The proof uses the exact S1D scalar formula `relativeGaugeScalar_apply` and the accepted S1G theorem `original_relativeGaugeScalar_trivial`, followed by extensionality at each operator and the monoid homomorphism level.

**DO NOT construe the quantified conditional as an unconditional construction of an independent manuscript representation.** The representation `V` and exact 48-Majorana covariance are hypotheses. The accepted source gauge representation exists separately, but an independent Spin(48) manuscript module, its lift, and its identification with the source module have **not** been constructed by S1H. A paper-level unitary equivalence, supercharge-domain transport, original Hamiltonian identity, positive point spectrum, and mass gap are NOT claimed.

## Negative knowledge: Gate #1 red vs Gate #2 accepted

[Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39140625288) successfully recompiled S1G and all historical dependencies, then failed S1H at lines 43,44,46,54,62 with `Unknown identifier hV`, followed by `sorryAx`. Root cause: Lean omitted section variable `hV` from theorem contexts since it did not occur in the theorem conclusions. The failing original blob was `ed02abec2b21daf7638f8b8c4c60cbc3702f3187`.

Repair added only `include hV` after the existing exact covariance section variable and before the first theorem; no theorem conclusion, proof body, source action, sign or convention was changed. Repaired blob `f4c02e412e06d93841696dc9b36e926ee93c33bb` passed Gate #2.

See companion Gate #1 diagnostic audit: `audits/OPENAI_MATH_BFSS_SU2_S1H_GATE1_RED_SCOPE_BINDER_FAILURE_2026_10_18.md`.

## Governance

Only draft research branch `research/openai-math-su2-s3l-combined-rotation`, PR #25 unmerged; no upstream source or `main` changes. The S1H and S1G workflows remain manual-only to avoid expensive redundant PR runs. Next mathematical boundary is an **independent manuscript Clifford/Spin(48) realization** and correct unitary identification with accepted original source Fermion 2; S1H solves the *relative scalar gauge ambiguity after* the precise hypothesis is independently met, not that construction.
