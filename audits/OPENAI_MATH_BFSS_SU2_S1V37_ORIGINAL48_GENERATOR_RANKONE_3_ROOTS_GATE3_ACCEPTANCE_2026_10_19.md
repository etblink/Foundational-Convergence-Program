# BFSS S1V37 — genuine original 48-real Clifford generator/rank-one determinant — strict Gate #3 ACCEPTED

**Project Lead disposition (2026-10-19 PDT; CI 2026-10-20 UTC):**
`S1V37_G3_THREE_SOURCE48_ROOTS_KERNEL_PASS__SOURCE_AND_TOOLCHAIN_PINNED__S1V36_CACHE_RESTORED__S1V37_CACHE_SAVED__FULL_GENERATOR_MATRIX_BRIDGE_AND_SPIN_ORIENTATION_OPEN`.

## Exact final immutable evidence

- [BFSS S1V37 Original48 Clifford Generator Rank-One Determinant Strict Gate #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39353100636), job `118401628492`, completed **SUCCESS**, workflow-pinned original commit `9114b9231c8212510e0820475e8db95a7fc3adb6`. New Lean source mathematical proof commit `a5967590dc1faa5d5bbc64f8a09472f3d59a144d`.
- Source exact `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Original S1V0 source Git blob `22f3101b243a7b7857d9597b547322174d9281c8`; final S1V37 Git blob `2d3d40134e4eaba80751c62a160d1803f22c828b`; source and toolchain verification green before Lean build.
- Exact previously accepted S1V36 cache **restored** with key `bfss-s1v36-isolated-source48-real-spin-determinant-character-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Original source geometry, real GL group hom and determinant character `.olean` prerequisites tested nonempty.
- Source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V37Original48CliffordGeneratorRankOneDeterminantProbe.lean` compiled to nonempty `.olean` with all three newly named Lean roots:
  1. `FCP.BFSSS1V37.source48_polar_inverse_self`;
  2. `FCP.BFSSS1V37.source48_clifford_generator_conjugation`;
  3. `FCP.BFSSS1V37.source48_rankOneConjugationMatrix_det`.
- Every `#print axioms` report EXACTLY `[propext, Classical.choice, Quot.sound]`; no compiler errors, `sorryAx`, or unknown identifier; strict marker `S1V37_ORIGINAL_SOURCE48_GENERATOR_RANKONE_3_ROOTS_KERNEL_PASS`.
- New accepted cache **saved** as `bfss-s1v37-isolated-source48-generator-rankone-v1-adc7f124-lean4341-d13f23b-Linux-X64`; log artifact `bfss-s1v37-rankone-39353100636` uploaded as ID `12233589541`.

## Qualified mathematical scope

All statements are tied to the original source `Source48Vector := Fin 24 × Fin 2 → ℝ`, with the original unit-weight quadratic form `Q := source48Quadratic`:

1. For `a : Source48Vector` with `Q(a)` invertible, the original quadratic polarization satisfies
   `⅟(Q a) * QuadraticMap.polar Q a a = 2`.
2. For `a,b : Source48Vector` with genuine invertibility of `CliffordAlgebra.ι Q a` and `Q(a)`, the literal original Clifford conjugation equation is
   `ι Q ((⅟(Q a) * polar Q a b) • a - b) = ι Q a * ι Q b * ⅟(ι Q a)`.
3. For arbitrary original source label vectors `a,ell : Source48Vector` with `ell ⬝ᵥ a = 2`, the exact 48×48 matrix
   `source48_rankOneConjugationMatrix a ell = -(1 + replicateCol (Fin 1) a * replicateRow (Fin 1) (-ell))`
   has real determinant `-1`.

**Boundary:** The third theorem is conditional on a source-dimension `ell` normalization, and the actual original Clifford generator conjugation is separately proved in the second theorem. Their **equality as a particular matrix-acting-on-vectors for the original coefficient choice has not yet been proved**. Accordingly, claiming `det(ρ(ι a))=-1` as a single kernel-certified actual generator theorem is premature. The generalized Lipschitz action/hom, character-parity relation, actual Spin determinant `+1`, Spin→SO cover/kernel/topology/global SU2 lift, independent manuscript Hilbert/Clifford intertwiner, and BFSS spectral assertions remain open.

## Exact two-red learning sequence and why Gate #3 qualifies

- Gate #1 [run #39351601519](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39351601519) red: in third root the generic rank-one `rw` did not match the `Fin 1`-specialized determinant target, with `sorryAx`; first two root reports permitted but whole module unqualified; [causal audit](OPENAI_MATH_BFSS_SU2_S1V37_GATE1_RANK_ONE_DETERMINANT_REWRITE_IMPLICIT_INDEX_RED_2026_10_19.md).
- Gate #2 [run #39352399902](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39352399902) red: even after explicit `(ι := Fin 1)` to the rewrite lemma, the determinant target still did not match; `sorryAx`; [causal audit](OPENAI_MATH_BFSS_SU2_S1V37_GATE2_EXPLICIT_INDEX_RW_MISMATCH_RED_2026_10_19.md).
- Gate #3 **changes the proof architecture**, not the three mathematical statements: binds the pinned determinant lemma to a named and fully typed intermediate `hmatrix`, then composes `Matrix.det_neg`, the exact equality and normalized scalar arithmetic through a short `calc`. All three roots and the nonempty `.olean` passed the strict gate and reusable cache was saved.
- Treat the two red Gate outcomes as feedback about Lean elaboration/rewrite interfaces, not mathematical countermodels or evidence for changing original Clifford sign/labels. No unchanged red was rerun.

## Next necessary mathematical bridge — discriminating stages only

A bounded follow-up should first prove on the **exact original unit-weight source Q**:
```text
Q(a) = a ⬝ᵥ a
polar_Q(a,b) = 2 * (a ⬝ᵥ b)
ell_a(i) = (⅟(Q(a)) * 2) * a(i)
ell_a ⬝ᵥ a = 2
```
Use pinned `QuadraticMap.weightedSumSquares_apply`, `QuadraticMap.polar`, `Matrix.dotProduct` linearity and accepted S1V37 `source48_polar_inverse_self`; prove exact correspondence of `source48_rankOneConjugationMatrix a ell_a` acting on `b` to `(⅟(Q a) * polar Q a b) • a - b`. By injectivity of the already accepted S1V30 Clifford generator, identify this action with genuine invertible `ι Q a` conjugation and apply S1V37 determinant. **Only then** extend from genuine unit generators to actual `lipschitzGroup` and restrict determinant parity to `spinGroup`.

Stop if source-to-matrix identification becomes an unproductive elaboration detour: prefer an abstract rank-one coordinate lemma plus exact specialization over expanding entire original Fock expressions. No new CI is warranted until one such separately typed bridge has been source checked.

## Repository safeguards

Only the isolated `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018` branch is changed. No merge/promotion to canonical `main`, no touch to upstream `etblink/math` or draft PR #25, and no assertion of positive eigenvalues, spectral gap, or BFSS mass-gap theorem.
