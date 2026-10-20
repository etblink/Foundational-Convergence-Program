# BFSS S1V36 — actual source Spin(48) real determinant character — Gate #1 ACCEPTED

**Project Lead succession disposition (2026-10-19 PDT; CI 2026-10-20 UTC):** `S1V36_GATE1_ACTUAL_ORIGINAL_SOURCE_REAL_DET_CHARACTER_3_ROOTS_KERNEL_PASS__S1V35_CACHE_RESTORED__S1V36_CACHE_SAVED__ORIENTATION_PLUS_ONE_OPEN`.

This is a **post-result** acceptance record. The earlier handoff `OPENAI_MATH_BFSS_SU2_S1V35_ACCEPTED_S1V36_TRUE_SOURCE_SPIN48_DET_CHARACTER_EXECUTION_2026_10_19.md` accurately records the pre-result state *at the time it was written*; its “running/unqualified” statement is superseded for the S1V36 gate only by the independently checked final run below. Historical handoff text is not retrospectively rewritten.

## Immutable original CI and exact source qualification

- [BFSS S1V36 Original Source Spin48 Real Determinant Character Strict Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39348658794) completed **SUCCESS**. Job `118387326488`, workflow/source checkout commit `a33789c062c3a9d300442443c7541ea0be7b5da9`. All required steps succeeded, including source/toolchain pins, prerequisite artifact checks, Lean compilation, axiom audit, and cache save.
- Immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; preflight emitted `S1V36_ACTUAL_SOURCE_SPIN48_DET_CHARACTER_BLOBS_PINNED` and `S1V36_PINNED_LEAN_MATHLIB_VERIFIED`.
- Exact new candidate Git blob `20a35e07db60913adafc93b0b842c88d75ae1086` for `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V36ActualSpin48OriginalRealDeterminantCharacterProbe.lean`. Pinned S1V34 Git blob `d6b736c7430f779f679a9674b34dec95f68bf03e`; pinned S1V35 Git blob `084acd408fc0ccd56572c7cea9483f16d062d4cd`.
- Exact accepted prerequisite S1V35 cache restored with key `bfss-s1v35-isolated-original-spin48-real-gl-group-hom-v1-adc7f124-lean4341-d13f23b-Linux-X64`; required original four named `.olean` artifacts and original OAI GaugeCore checked nonempty. The job printed `S1V36_ACCEPTED_ORIGINAL_SPIN48_GL_HOM_OLEANS_READY`.
- Full source compiled to a nonempty `.olean`. Exactly THREE `#print axioms` reports qualified the roots:
  1. `FCP.BFSSS1V36.sourceSpin48OriginalRealDetCharacter`;
  2. `FCP.BFSSS1V36.sourceSpin48OriginalRealDetCharacter_value`;
  3. `FCP.BFSSS1V36.sourceSpin48OriginalRealDetCharacter_mul`.
- Every root reports **exactly** `[propext, Classical.choice, Quot.sound]`; no `sorryAx`, Lean compiler error or invalid identifier. Strict marker `S1V36_GENUINE_SOURCE_SPIN48_ORIGINAL_REAL_DET_CHARACTER_3_ROOTS_KERNEL_PASS` printed.
- Saved accepted new cache `bfss-s1v36-isolated-source48-real-spin-determinant-character-v1-adc7f124-lean4341-d13f23b-Linux-X64`. The CI artifact `bfss-s1v36-det-character-39348658794` uploaded successfully (artifact ID `12232631661`).

## What the newly qualified mathematics actually says

For the exact original source `Source48Vector = Fin24 × Fin2 → ℝ` and quadratic form `source48Quadratic`, S1V35 already has a genuine source group homomorphism
`ρ : spinGroup source48Quadratic →* (Source48Vector ≃ₗ[ℝ] Source48Vector)`.
S1V36 now proves the actual determinant character, composed with pinned `LinearEquiv.det`:

```lean
sourceSpin48OriginalRealDetCharacter :
  spinGroup source48Quadratic →* ℝˣ
```

The second theorem identifies its coercion to `ℝ` with `LinearMap.det` of the accepted original-source S1V34 real-linear equivalence. The third states the true group-order multiplicativity `χ(s * t) = χ(s) * χ(t)`. None uses a surrogate vector space or a postulated Spin representation.

**Exact non-implication:** This construction does **not** prove `χ(s) = 1` for each Spin element. S1V33–V34 quadratic preservation entails `det ρ(s) ∈ {+1,-1}` mathematically, but the universal sign selection, explicit `Spin(48) → SO(48)` hom, covering map, kernel `{±1}`, topology and source-normalized global `SU(2) → Spin(48)` lift are separate obligations. The successful *historical quarter-turn* equality S1V27 does not establish a global group lift.

## Bounded post-S1V36 orientation decision and negative knowledge

Pinned Mathlib `Mathlib/LinearAlgebra/CliffordAlgebra/SpinGroup.lean` defines `lipschitzGroup Q` as `Subgroup.closure` of the invertible actual degree-one Clifford generators, `pinGroup Q` as Lipschitz plus unitary, and `spinGroup Q` as Pin intersect even. It supplies `spinGroup.involute_eq`, i.e. even Spin elements are involute-fixed. These facts are source evidence, **not themselves** a determinant-`+1` theorem.

Preferred discriminating mathematical route: establish on genuine Lipschitz generators that real 48-dimensional untwisted conjugation has determinant `-1` and involution sign `-1`; extend the determinant/parity relation through `Subgroup.closure_induction''` with explicit inverse and product laws. Then restrict to involute-fixed Spin. This requires independently constructing or specializing the **true source-sized Lipschitz vector action**, with a checked determinant comparison to the existing S1V35 Spin action; merely extending a property proved for Spin to the full Lipschitz group is circular.

Alternative to assess if this grows too costly: a source-coordinate Clifford pseudoscalar/top exterior-degree route in even real dimension 48. Prove that Spin's even Clifford elements centralize the pseudoscalar and that conjugation scales it by the determinant of the actual 48-real Q-isometry. Neither implication is currently qualified in Lean.

**First small step:** source-check pinned invertible-generator, conjugation, reflection/determinant, Clifford involution, and subgroup-closure APIs before selecting a Lean gate. Stop and reassess if a proposed test cannot distinguish an actual mathematical gap from a repeated elaboration issue. Do not fire speculative or duplicate CI.

## Scientific and workflow boundaries

Still unproved: a normalized continuous original source global SU(2)/SO(3) Spin lift, the independently specified manuscript complex irreducible Clifford module and Hilbert/unitary bridge, original physical closed-domain Hamiltonian transport to that manuscript, global Spin(9) sector claims, positive spectral gap or BFSS mass-gap theorem. Original `+i` Pauli and source labels, normalized fermion coefficients, original (1/16) physical form coefficient, historical strict green caches and all causal reds remain unchanged.

This audit only documents independently checked existing evidence and a next proof obligation. No new Lean theorem, CI, canonical-main merge, upstream modification, or PR #25 promotion is asserted or authorized by writing this record. Research remains isolated to `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`.
