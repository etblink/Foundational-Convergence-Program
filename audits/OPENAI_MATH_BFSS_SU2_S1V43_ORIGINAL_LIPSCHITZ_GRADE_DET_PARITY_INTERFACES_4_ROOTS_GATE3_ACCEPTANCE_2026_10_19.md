# S1V43 — Genuine Original Lipschitz48 Grade/Determinant Parity Interfaces — Strict Gate #3 ACCEPTED

**Qualified Project Lead disposition (October 19, 2026 PDT / October 20 UTC):**
`S1V43_G3_4_GRADE_DET_PARITY_ROOTS_KERNEL_PASS__S1V42_CACHE_RESTORED__S1V43_CACHE_SAVED__GENERATOR_ONE_MUL_ONLY__INVERSE_CLOSURE_AND_SPIN_ORIENTATION_OPEN`.

## Immutable compiler and CI evidence

- [S1V43 Original Lipschitz Grade Determinant Parity Interfaces Gate #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39363609264) passed **SUCCESS**; job `118435218922`; exact source and workflow commit `493b5d443333abcec9d745db92bbfe57e11f9c55`; mathematical candidate revision `a56ca025e96f18c8e62617efc38e6f33c51cce3c`; Git blob `28abd21ab1cc50c57ab7a73e9c7f6824e3a4f4cd`.
- Original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; original FCP source `Fin 24 × Fin 2 → ℝ` and `source48Quadratic`, all exact source hash and toolchain preflight green.
- Previously accepted S1V42 `.olean` cache **restored**: `bfss-s1v42-isolated-source48-actual-generator-det-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Required prior qualified source dependencies all checked nonempty.
- Exact source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V43OriginalLipschitzGradeDetParityInterfacesProbe.lean` compiled to a nonempty `.olean`. All FOUR literal `#print axioms` reports exactly `[propext, Classical.choice, Quot.sound]`, no Lean errors, `sorryAx` or unknown identifiers. Strict marker `S1V43_ORIGINAL_GRADE_DET_PARITY_4_ROOTS_KERNEL_PASS`.
- New qualified cache **saved successfully**: `bfss-s1v43-isolated-source48-grade-det-parity-interfaces-v1-adc7f124-lean4341-d13f23b-Linux-X64`; uploaded log artifact `bfss-s1v43-grade-det-parity-39363609264`, ID `12238247293`.

## Exact mathematical scope (FOUR ROOTS)

All statements refer to the **actual pinned Mathlib** `lipschitzGroup source48Quadratic`, its genuine Clifford units, the unchanged original `CliffordAlgebra.involute` grade involution, and S1V41's qualified *real determinant character*, not to an abstract Pin surrogate.

1. `FCP.BFSSS1V43.source48LipschitzGradeDetParity`: literal parity relation `involute (↑x : CliffordAlgebra Q) = (δ_L(x) : ℝ) • (↑x : CliffordAlgebra Q)`. This declaration DEFINES the predicate, not universal proof.
2. `source48LipschitzGradeDetParity_one`: parity holds for the actual Lipschitz group identity.
3. `source48LipschitzGradeDetParity_mul`: for any genuine Lipschitz `x` and `y`, if parity holds separately for `x` and `y` then it holds for their genuine Clifford-unit product. The proof uses the true multiplicative determinant character, pinned AlgHom grade-involution map-mul and the explicit typed `smul_mul_smul_comm` in the correct direction.
4. `source48LipschitzGradeDetParity_generator`: parity holds for every actual invertible original Clifford generator `source48CliffordGeneratorLipschitz a`; uses accepted S1V42 determinant `-1` on that genuine generator and pinned `CliffordAlgebra.involute_ι`.

**Scope boundary:** These are the mathematical *closure ingredients* `P(1)`, `P(x) ∧ P(y) → P(xy)`, and `P(u_a)` for genuine invertible degree-one generators. They do **not** imply `∀ x : lipschitzGroup Q, P(x)` without **inverse closure** and an actual `Subgroup.closure_induction''`. No determinant+1 assertion is made for original source Spin elements.

## Preserved red-gate negative knowledge

- [Gate #1 #39362452995](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39362452995) **RED**; three roots already axiom-clean but `source48LipschitzGradeDetParity_mul` failed with unresolved `SMulCommClass` metavariables because `smul_mul_smul_comm _ _ _ _` did not determine the scalar and Clifford element types. [Gate #1 causal audit](OPENAI_MATH_BFSS_SU2_S1V43_GATE1_SMUL_MUL_TYPECLASS_METAVARIABLE_RED_2026_10_19.md).
- [Gate #2 #39363006514](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39363006514) **RED**; explicit typed arguments solved the metavariable problem, but `(smul_mul_smul_comm ...).symm` had the reverse equality orientation to the goal. [Gate #2 causal audit](OPENAI_MATH_BFSS_SU2_S1V43_GATE2_SMUL_MUL_EQ_DIRECTION_RED_2026_10_19.md).
- Gate #3 passed after removing only `.symm`, with source statements unchanged, all four axiom reports clean and new reusable cache saved. These were Lean elaboration/proof-direction defects, NOT counterexamples to the grade/determinant relation.

## Bounded next proof architecture

Before a universal Lipschitz claim, construct and STRICTLY qualify the inverse preservation lemma `P(x) → P(x⁻¹)`, preferably using `Units.map` applied to the original Clifford `involute` and to `algebraMap ℝ (CliffordAlgebra Q)`, then translating the real scalar result back to the source predicate. This avoids manipulating the full concrete Fock algebra. Type all original units and homs explicitly, reuse `Algebra.commutes` for central scalar units, and apply `map_inv` through true invertible units rather than unproved naive noncommutative inversion.

Once that inverse lemma has its own strict qualification, use the genuine pinned Mathlib `Subgroup.closure_induction''` on `lipschitzGroup Q` and the three accepted S1V43 interfaces, with a separate typed preimage-to-generator identity via S1V42. Only after a universal parity theorem and a nonzero Clifford unit sign-disambiguation may `spinGroup.involute_eq` be used to prove real determinant +1. Independently compare Spin-only S1V35/S1V36 action to the restriction of S1V41 before promoting original Spin orientation.

No global continuous SU2→Spin lift, Spin double cover, manuscript module intertwiner, physical closed-operator bridge or BFSS positive spectral/mass-gap theorem follows from S1V43. Do not conflate canonical FCP main with this isolated BFSS proof branch.

## Repository protection
The audit is documentation-only, path exempt from experimental CI. Canonical main, upstream `etblink/math` and draft PR #25 remain untouched. No additional proof CI was triggered by this acceptance documentation.
