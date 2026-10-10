# BFSS SU(2) Physical Domain — Gate #70 Adjoint Acceptance and Hamiltonian Boundary 0.1.0

**Date:** 2026-10-10 (Pacific)  
**Classification:** `RESEARCH_BRANCH_COMPILER_ACCEPTANCE_AND_READ_ONLY_NEXT_OBLIGATION`  
**Scope:** Source-bound D2B17; no FCP canonical `main` change, no upstream contribution, no new spectral result.

## Exact provenance

- Research branch: `research/openai-math-su2-concrete-potential`.
- **Gate #70: GREEN**, Actions run `38049387488`, job `114205277297`, accepted proof commit `f0a9f97915f58c98f3cc4dd165ebf857066438d2`.
- Proof file: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B17TruePhysicalChargeAdjointProbe.lean`.
- Pinned upstream: `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Accepted upstream dependencies: exact Gate #174 source/cache, Gate #28 twelve-object / 51-theorem smoke, Gate #47 ten-module / 33-theorem smoke, and D2B11–D2B16 recompiled in this run.
- All **eight** D2B17 printed theorem axiom reports contain only `propext`, `Classical.choice`, `Quot.sound`; no `sorryAx`. The workflow emitted `D2B17_CORRECT_SOURCE_PHYSICAL_ELL2_CHARGE_ADJOINT_PASS`.

## Exact positive content

The original `G.deformedModelGraph 1 0` is transported (not replaced by an invented differential operator) to input `G.physicalSpace` and output `PiLp 2 (fun _ : SpinIndex => FullL2 2)`, a true sixteen-component Hilbert direct sum. The pinned `PiLp.continuousLinearEquiv` provides an exact continuous complex-linear identification with the source sixteen-component function type.

The compiled statements establish source graph membership correspondence, resulting Mathlib `LinearPMap` graph identity, graph closedness, density of its domain in the *actual physical input Hilbert space*, completeness of that Hilbert space, existence and formal-adjoint property of `sourceOriginalPhysicalChargeAdjoint`, its closedness, and the defining Hilbert inner-product identity.

These statements are source-specific to the `N=2` BFSS setting, parametric in the stated `M : AlgebraData 2` and `G : M.GaugeData`, and rely on the already qualified exact source-domain chain. They do not install additional axioms or identify the manuscript's abstract Clifford/gauge realization by a separately proved unitary intertwiner.

Gate #69 (commit `d8024077dc31d7592aea72002184892b25da47dc`) failed only in the output-equivalence rewrite after physical completeness and inner-product elaboration were repaired; Gate #70 replaced that step by an exact explicit equality/rewrite. Gate #68 and earlier failed candidates remain unaccepted. The standard-axiom result is a pinned CI/kernel-check result, not an independent line-by-line adversarial review.

## Primary scientific target and next gap

The pinned October 5 manuscript, `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex` at lines approximately 107–143, fixes the physical gauge-invariant core and
`q(ψ) = (1/16) ∑α ‖Qα ψ‖²`. It defines `H` as the **nonnegative self-adjoint operator associated with the closure of this form**, not as an arbitrarily selected maximal differential operator. Its positive-point-spectrum theorem is for this specific `H`.

The correct next formal obligation is the **closed-form-to-operator bridge**. Mathematically, for the now-closed densely defined joint charge operator `T`, the form `q(ψ)=(1/16)‖Tψ‖²` on `Dom(T)` is closed, and the associated operator is represented by `(1/16)T* T` on the *natural product domain*
`{ψ ∈ Dom(T) | Tψ ∈ Dom(T*)}`. Prove this relationship in the actual pinned API and verify exact initial core/form normalization, not merely a plausible operator formula.

**Important API trap:** pinned Mathlib `LinearPMap.comp g f H` in `Mathlib/LinearAlgebra/LinearPMap.lean` requires `∀ x : f.domain, f x ∈ g.domain`. This is **not** a general hypothesis for an unbounded `T* T` and must not be smuggled in. A natural-domain partial-operator construction or an appropriate closed-form representation interface is required before any self-adjointness claim.

## Scientific ceiling / negative knowledge

- `D2B17_ADJOINT = COMPILER_ACCEPTED`.
- `NATURAL_DOMAIN_TSTAR_T = NOT_YET_KERNEL_CONSTRUCTED`.
- `ASSOCIATED_SELF_ADJOINT_PHYSICAL_H = NOT_YET_KERNEL_IDENTIFIED`.
- `PAPER_GAUGE_REPRESENTATION_UNITARY_INTERTWINER = NOT_YET_FORMALIZED`.
- `POSITIVE_POINT_SPECTRUM_IN_LEAN = NOT_ESTABLISHED`.
- `ESSENTIAL_SELF_ADJOINTNESS_OF_MAXIMAL_DIFFERENTIAL_REALIZATION = NOT_ESTABLISHED`.
- `FULL_PHYSICAL_SPECTRUM_OR_LARGE_N_RESULT = NOT_ESTABLISHED`.
- `FCP_K1_K10_T6_T2_STATUS = UNCHANGED`.
- `MAIN_MERGE = NO`; `UPSTREAM_PR = NO`.

**Routing:** Follow the natural-domain / closed-form-operator API and exact manuscript correspondence first. Do not open a spectral proof gate or infer new BFSS physics from an adjoint. Preserve accepted D2B11–D2B17 source objects without edits unless a concrete flaw is detected.
