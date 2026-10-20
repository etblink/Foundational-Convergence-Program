# BFSS S1V37 — source Spin(48) orientation: rank-one generator determinant strategy

**2026-10-19 PDT Project Lead research scope, NOT a Lean-accepted theorem.**
Status: `S1V36_ACCEPTED__S1V37_PINNED_RANK_ONE_GENERATOR_STRATEGY_SOURCE_SCOPED__NO_NEW_LEAN_CANDIDATE_OR_CI`.

The qualified S1V36 determinant hom is **not** the universal +1 theorem. This note narrows the next proof into exact mathematical sub-obligations using **already-present immutable Mathlib APIs**, avoiding premature covering-space machinery, monolithic 48-dimensional diagonalization, or new physical assumptions.

## 1. Exact source and existing qualified objects

- Research branch: `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`. Frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- `FCP.BFSSS1V0.Source48Vector = Fin24 × Fin2 → ℝ` (48 coordinates); `source48Quadratic` is the actual unit-weight `QuadraticMap.weightedSumSquares`. Do not substitute a surrogate representation or re-index without a proved equivalence.
- S1V30 injects `CliffordAlgebra.ι source48Quadratic`; S1V31–32 qualify the genuine Spin action's generator equation, additivity, scalar and group laws; S1V34 the actual original quadratic isometry equivalence; S1V35 the exact GL hom; S1V36 the exact `ℝˣ` determinant character. Final S1V36 [strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39348658794) and its [post-result acceptance](OPENAI_MATH_BFSS_SU2_S1V36_ACTUAL_SOURCE_SPIN48_REAL_DET_CHARACTER_3_ROOTS_GATE1_ACCEPTANCE_2026_10_19.md).

## 2. Exact pinned APIs — original Mathlib source, not guessed lemmas

1. [CliffordAlgebra/Inversion.lean at immutable Mathlib](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/CliffordAlgebra/Inversion.lean#L45-L55): `CliffordAlgebra.ι_mul_ι_mul_invOf_ι` gives, with a genuine invertible `ι Q a` and `Q a`,
   `ι Q a * ι Q b * ⅟(ι Q a) = ι Q ((⅟(Q a) * QuadraticMap.polar Q a b) • a - b)`.
   Same file lines 60–73 furnishes `invertibleOfInvertibleι` and `isUnit_ι_iff`, so the defining Lipschitz degree-one-unit hypothesis genuinely permits the formula.
2. [Matrix/SchurComplement.lean at immutable Mathlib](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/Matrix/SchurComplement.lean#L399-L420): `Matrix.det_one_sub_mul_comm` and the rank-one scalar formula `Matrix.det_one_add_replicateCol_mul_replicateRow`. These avoid a bespoke 48×48 Leibniz determinant proof.
3. [CliffordAlgebra/SpinGroup.lean at immutable Mathlib](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/CliffordAlgebra/SpinGroup.lean#L60-L141): `lipschitzGroup` is the `Subgroup.closure` of invertible actual `ι Q a` units; the pinned file itself performs `Subgroup.closure_induction''` to extend conjugation-generator properties. Lines 291–318: `spinGroup Q` is Pin intersect even and `spinGroup.involute_eq` yields involute fixation. The involute comparison to ordinary conjugation on Spin is also explicitly present.
4. [CliffordAlgebra/Grading.lean at immutable Mathlib](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/CliffordAlgebra/Grading.lean): even/odd grading and `even_induction` are available if needed. Do not conflate Clifford parity with an already established determinant sign.

## 3. The exact generator computation: a true 48-real rank-one identity

For any original source `a : Source48Vector` with `ι Q a` a unit, set `q = Q(a) ≠ 0` and `\ell_a(b) = q⁻¹ · polar_Q(a,b)`. Define the source vector action of that generator by the **actual Clifford equation**:
```text
C_a(b) = ℓ_a(b) • a − b
ι Q (C_a(b)) = ι Q a * ι Q b * (ι Q a)⁻¹.
```
The exact original polarization identity gives `ℓ_a(a) = 2`. In the original `Fin24 × Fin2` coordinate basis, the 48×48 matrix is
```text
C_a = -(I − a·ℓ_aᵀ) .
```
The rank-one determinant lemma gives
```text
det(I − a·ℓ_aᵀ) = 1 − ℓ_a(a) = −1.
det(C_a) = (-1)^48 · (−1) = −1.
```
This uses only the original 48-real labels, nonzero `Q(a)`, true Clifford generator conjugation, exact polar self-identity and a pinned determinant lemma. There is no assumption `Q(a)=1`, no arbitrary new Spin module, and no topological sign choice.

**Important Lean boundary:** the equations above are mathematically justified source-scoped candidate targets, **not** newly compiled declarations. In Lean one must still qualify `LinearMap.toMatrix` for the source coordinate basis and discharge the `ℓ_a(a)=2` and `det_neg` simplification under the exact pinned theorem API. A failure here would localize the cause before introducing the full Lipschitz group.

## 4. Extend to the genuinely defined Lipschitz group, then restrict to Spin

The desired character comparison is most efficiently expressed on actual `lipschitzGroup Q` **units**, not on a hypothesized abstract Pin group.

1. Generalize the already-accepted S1V29–S1V32 source action construction from Spin to Lipschitz, using the pinned `lipschitzGroup.conjAct_smul_ι_mem_range_ι`, S1V30 generator injectivity and the actual group inverse. Define and qualify a true `Lipschitz →* (Source48Vector ≃ₗ[ℝ] Source48Vector)` hom and its real determinant character `δ`. Do **not** silently use the S1V35 Spin hom outside its domain.
2. Establish that this generalized Lipschitz action on each invertible actual generator agrees with the rank-one formula `C_a`, hence `δ(ι(a)) = -1`.
3. Prove the multiplicatively coherent parity relation for **every** genuine Lipschitz unit `u`:
   ```text
   CliffordAlgebra.involute (u : CliffordAlgebra Q)
       = ((δ u : ℝ) • (u : CliffordAlgebra Q)).
   ```
   Source proof architecture: `Subgroup.closure_induction''`; generator step uses the pinned involute-on-degree-one identity and rank-one determinant; one, product and inverse cases use actual units, multiplicativity and central real scalars. Audit inverse scalar operations and unit-coercion types separately.
4. For any source `s : spinGroup Q`, use `spinGroup.units_mem_lipschitzGroup` and `spinGroup.involute_eq` to conclude `δ(s)=1` by cancellation of its invertible Clifford value. Establish pointwise equality of generalized Lipschitz vector action with S1V35's **original source** Spin vector action via `ι` injection; therefore `S1V36.sourceSpin48OriginalRealDetCharacter s=1`. Only then package actual source `Spin(48)→SO(48)`.

The parity lemma is a *proposed* strong scientific interface; no assumption that every even Clifford unit arises from an arbitrary even-length representation is inserted. Membership and extension must be proved with the actual Lipschitz subgroup closure.

## 5. Minimal next gate and stop criteria

**Candidate S1V37 first test only:** prove the original `C_a` action equation, concrete 48-real matrix rank-one representation, and determinant `-1` for every invertible actual Clifford generator. Do not combine the complete Lipschitz hom/parity induction in the same initial gate. First source-check `QuadraticMap.polar_self` name/sign, the exact function-basis matrix API, and the pinned rank-one theorem parameters. Compile only a self-contained, source-pinned candidate with an exact root count, axiom audit, no holes, and cache persistence; if those API checks fail, do not trigger CI.

If the rank-one matrix route is unexpectedly costly, independently compare pinned `Submodule.det_reflection` from `Mathlib/Analysis/InnerProductSpace/Projection/FiniteDimensional.lean` and a source Q-to-standard-inner-product bridge as a second *genuinely different* implementation. Do not repeat nearly identical elaboration failures.

**Unchanged scientific ceiling:** the global normalized original SU(2)→Spin(48) lift, its cover and center-parity bridge, independent manuscript complex Clifford/Hilbert intertwiner, physical closed-domain comparison, global Spin(9) and BFSS spectral/mass-gap conclusions remain open. No change to upstream source, canonical main or draft PR #25; research branch only.

