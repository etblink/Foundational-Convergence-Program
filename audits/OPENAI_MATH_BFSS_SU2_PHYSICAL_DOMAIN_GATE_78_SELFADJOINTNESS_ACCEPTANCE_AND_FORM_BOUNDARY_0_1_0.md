# BFSS SU(2) Physical Domain — Gate #78 Self-Adjointness Acceptance and Closed-Form Boundary 0.1.0

**Date:** 2026-10-10 (Pacific)  
**Authority:** research branch qualified Lean Actions/kernel evidence only; no mutation to main, no framework verdict change, no upstream PR.

## 1. Exact pinned acceptance

- Branch `research/openai-math-su2-concrete-potential`
- Latest green: **BFSS SU2 Physical Domain Bridge #78**, Actions run `38052675918`, job `114214835584`, proof commit `ea51b6aebc8c8e953a2f4043da50ff232ded9aed`.
- Accepted new file: `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainD2B21SelfAdjointChargeSquareProbe.lean`.
- Exact toolchain/source: Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`.
- The workflow rechecked exact Gate #28 (51 axioms reports), Gate #47 (33 reports), D2B11–D2B20 source modules; it compiled and printed all **five** exact D2B21 theorem axiom reports with dependencies limited to `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`.
- Gate #76 green (run `38051968206`; commit `d81c4c1e2c5b28da18433481863244335170eb63`) compiled the actual surjectivity: every `h : G.physicalSpace` is `ψ + T†T ψ` for some `ψ` in the **natural** product domain, using the closed original charge graph and Hilbert orthogonal projection. Its three printed declarations also have only the same standard axioms.
- Failed runs #74, #75 are unaccepted D2B20 graph-adapter elaboration candidates; failed #77 is an instance-scope defect of D2B21's source-specific statement. The general self-adjointness criterion already compiled at #77, but the source-specific theorem was correctly not accepted until #78.

## 2. Exact theorem, neither weakened nor overclaimed

Let `T := sourcePhysicalHilbertChargeColumn M G` and `A := sourcePhysicalChargeAdjointSquare M G`, both originating from the pinned `N=2` original gauge-restricted charge graph rebased onto `G.physicalSpace`; `T` has the genuine sixteen-component `PiLp 2` Hilbert codomain and its true Mathlib Hilbert adjoint `T†` qualified in D2B17.

D2B18 defines `A` as the literal natural-domain product `T†T`, with
`Dom(A) = {ψ ∈ Dom(T) | Tψ ∈ Dom(T†)}`; not Mathlib's stronger, generally unlicensed `LinearPMap.comp`.

D2B19 establishes `A.IsFormalAdjoint A` and
`Re ⟪Aψ, ψ⟫ = ‖Tψ‖² ≥ 0` on `Dom(A)`.

D2B20 establishes surjectivity of `I + A` in graph form from the exact closed/dense source operator.

D2B21 establishes the genuine pinned Mathlib `IsSelfAdjoint A`, equivalent to `A.adjoint = A`, **plus dense domain and closedness**. The generic theorem `selfAdjoint_of_formalSymmetry_and_shift_surjectivity` is a separate kernel-checked source-independent result, and the physical application has an explicitly scoped pre-existing completeness instance `sourceOriginalPhysicalHilbert_complete M G`. No extra mathematical hypothesis or postulated completeness was introduced.

## 3. External source reuse / provenance

The proof route follows the general, independently published Lean formalization by Keisuke Suzuki: `QuantumSystem/ForMathlib/LinearAlgebra/LinearPMap.lean` (natural-domain composition) and `QuantumSystem/Analysis/UnboundedOperator/VonNeumann.lean` (graph projection, surjectivity and genuine self-adjointness), pinned public commit `a2bb99fcb82c820f040004a2f99c875575c72efd`, Apache-2.0. The FCP proof files explicitly attribute the source and disclose the pinned-toolchain mismatch (Suzuki's tree targets Lean 4.35.0-rc2). The adapted statements have been checked *inside* FCP's unchanged Lean 4.34.1 kernel; the external library is not imported and supplies no axiom or unverified result. Preserve the source's copyright/license attribution on any eventual distribution of adapted code; conduct a final license/NOTICE review before publishing copies.

## 4. Exact next scientific obligation

The October 5, 2026 BFSS manuscript (pinned TeX:
`openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`,
`preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`, intro lines approximately 107–143) defines on the invariant smooth core
`q(ψ) = (1/16) ∑_{α=1}^{16} ‖Qαψ‖²`, **closes the form**, and denotes by `H` its unique associated **nonnegative self-adjoint** operator on the physical gauge-invariant Hilbert space. This operator should be mathematically `(1/16)T†T` on the natural domain, *if and only if* the exact closed form correspondence and gauge representation alignment are discharged.

**Next bounded formal target:**
1. Identify the *exact* finite `PiLp 2` norm and the source `(1/16)` coefficient with the existing D2B14–D2B15 closed physical charge energy on **Dom(T)** (not only Dom(T†T)).
2. Prove the resulting form on Dom(T) is closed, densely defined, and is the closure of the identical gauge-invariant smooth-core form (use D2B13 graph-core theorem for the *minimal closed column*, not a maximal differential realization).
3. Construct or identify the actual associated `(1/16)T†T` nonnegative self-adjoint operator and prove its representation relation with the closed form. Avoid assuming arbitrary scalar partial-operator self-adjointness; discharge the exact positive-real scaling.
4. Check the physical gauge/Spin(48) representative identification required for literal correspondence to the manuscript. Do not conflate mathematical equivalence of presentations with a compiled unitary intertwiner that has not been proved.

Prioritize the existing qualified BFSS theorems and the pinned Mathlib source. A fresh broad literature review is not justified.

## 5. Scientific stopping conditions / negative knowledge

- `ORIGINAL_PHYSICAL_NATURAL_TSTAR_T_SELFADJOINT = QUALIFIED_GATE_78`.
- `ORIGINAL_PHYSICAL_NATURAL_TSTAR_T_POSITIVE_ENERGY = QUALIFIED_GATE_73`.
- `I_PLUS_TSTAR_T_SURJECTIVE = QUALIFIED_GATE_76`.
- `MANUSCRIPT_NORMALIZED_HAMILTONIAN_ASSOCIATED_FORM_IDENTITY = NOT_YET_QUALIFIED`.
- `SCALED_1_OVER_16_SELFADJOINT = NOT_YET_QUALIFIED`.
- `LITERAL_ABSTRACT_MANUSCRIPT_GAUGE_INTERTWINER = NOT_YET_QUALIFIED`.
- `POSITIVE_POINT_SPECTRUM_FORMALIZED = NO`.
- `FULL_SPECTRUM_ALL_N_LARGE_N_EMPIRICAL_FCP_FRAMEWORK_SELECTOR = NO`.
- `FCP_K1_K10_T6_T2 = UNCHANGED`.
- `MAIN_MERGE = NO`; `UPSTREAM_PR = NO`.

The source and the mathematical conclusion have **advanced**; there is no warrant to report a new empirical discovery, a verified spectrum, or completion of the manuscript Hamiltonian bridge.
