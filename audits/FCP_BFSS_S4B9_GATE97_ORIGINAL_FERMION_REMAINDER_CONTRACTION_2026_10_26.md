# BFSS S4B9 / Gate97 — original source fermionic remainder contraction

**2026-10-26 Project Lead scoping. Proposal, not a certified theorem.**

## Immutable starting point
- Active research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`, qualified Gate96 #8 source derivative blob `7bf2ca5f9b02a3b17f91c1e5fd84dd29278fcd30`, [strict run 40357513090](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40357513090), 3/3 principal accepted and scoped S4 count 19.
- Original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, frozen Lean 4.34.1/Mathlib d13f23b. Original `DeformedCharge.lean` blob `c27c913c44090100f0c714e3eb34e25205f4d2d3`, `MixedEnergy.lean` blob `cc00f5b2ce4bb1811162e4bf2d9c773a9779ef8e`.
- Literal `MixedEnergy.remainderField B V x := ∑ α, ∑ p, B α p * fderiv ℝ (V α) x (EuclideanSpace.single p 1)`; `M.deformedFermionField h m x := (1/16:ℝ) • MixedEnergy.remainderField (M.kineticSkewSymbol) (M.deformedRealField h m) x`.
- Important original type: kineticSkewSymbol and deformedRealField take values in the **real** CLM `Fermion N →L[ℝ] Fermion N`; `*` is original composition with kinetic symbol on the left. No substitute coefficients, color algebra, or normalization.

## Proposed two strict principal roots
1. `FCP.BFSSSU2PhysicalDomainS4B9.originalMasslessDeformedFermionField_contraction`: exact massless original `deformedFermionField 1 0 x` equals `(1/16:ℝ) • ∑ α ∑ p (M.kineticSkewSymbol α p * sourceMasslessRealFieldVariation M x (EuclideanSpace.single p 1) α)`. Prove with only Gate96 accepted coordinate derivative, `Finset.sum_congr`, `congrArg`, and a change to the two original literal definitions. No expansion of Clifford finite sums.
2. `...originalMasslessDeformedFermionField_apply`: exact action on original Fock vector via source operation, using original `mul_apply_eq_comp` / `_root_.sum_apply` / `_root_.smul_apply`, preserving operator order and `1/16`.

Candidate blob `4da5780b101dfb40dcf17a84ceefc29142a0d6d7`, new strict workflow `bbbc5a8a20dfc628ba6e482220e25cf20e52d493`. Workflow checks the immutable parent blobs and original `DeformedCharge` and `MixedEnergy` blobs, rebuilds original source ancestors including those modules, recompiles S4B3–S4B8 and checks all parent theorem axioms, then fresh candidate `.olean`, error/warning-as-error and exactly two `#print axioms` reports. Allowed only `propext, Classical.choice, Quot.sound`, no `sorryAx`, no axiom additions. At this handoff **zero Gate97 roots accepted**; S4 cumulative remains **19** until full strict success.

## Boundary
Even complete success identifies only the original source-defined massless fermionic remainder-field contraction. It does **not** identify the Oct-2026 manuscript physical `B(x)`, prove closed physical Spin(9) action, form-domain coercivity, branch universal weight statements, existence of a nonzero reducing high-isotype, a positive eigenpair, or a mass gap. Failure is evidence and must be logged with first causal diagnostic, immutable run ID and source blobs; no automatic promotion. Canonical `main`, original source mathematics and draft PR #25 remain untouched.

## Gate97 #1 FINAL STRICT PASS — two source-exact fermion remainder roots

Independent Project Lead inspection of [run 40365451342](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40365451342), job `121721783802`, original compiler log: `completed/success` at immutable research commit `3217bea156f95f5228e789fce579f82dc53a42fb`. No prerequisite was silently substituted. Original BFSS `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib d13f23b, and source SHA preflight passed. Exact qualified G4K9C cache provenance passed. Original `OAI.MathematicalPhysics.BFSS.Core`, `MassiveCoercivity`, `ColorMatrices`, `MixedEnergy`, and `DeformedCharge` freshly compiled; parent S4B3–S4B8 theorem modules and axiom reports freshly qualified, including Gate96 accepted derivative parent `.olean` 487912 bytes. New source candidate blob `4da5780b101dfb40dcf17a84ceefc29142a0d6d7` and strict workflow blob `bbbc5a8a20dfc628ba6e482220e25cf20e52d493` unchanged.

Original compiler acceptance summary:
```
GATE97_CANDIDATE_SOURCE_WARNINGS []
GATE97_COMPILER_EXIT 0 AXIOM_REPORTS [
 ('FCP.BFSSSU2PhysicalDomainS4B9.originalMasslessDeformedFermionField_contraction', {'Classical.choice', 'Quot.sound', 'propext'}),
 ('FCP.BFSSSU2PhysicalDomainS4B9.originalMasslessDeformedFermionField_apply', {'Classical.choice', 'Quot.sound', 'propext'})]
GATE97_ORIGINAL_SOURCE_FERMION_REMAINDER_TWO_ROOTS_STRICT_PASS
```

**2/2 principal theorem roots accepted, scoped S4 total 19 → 21.** The strict workflow required fresh candidate Lean `.olean`, no `sorryAx`, warnings-as-errors, exactly the two names above, only `propext, Classical.choice, Quot.sound` axioms, and exact source/git provenance. The first theorem states literal original `M.deformedFermionField 1 0 x = (1/16:ℝ) • ∑ α ∑ p (M.kineticSkewSymbol α p * sourceMasslessRealFieldVariation M x (EuclideanSpace.single p 1) α)`; the second establishes pointwise action on an actual source Fock vector. It *does not* identify the October manuscript's explicit `B(x)`, prove actual global physical Spin(9) closed-domain invariance or existence of positive-energy normalizable eigenstates. Preserve all Gate96 #1–#7 red history separately as qualified negative knowledge, and do not conflate 21 scoped S4 roots with a global historical theorem count.

**Next scientific validation:** exact October manuscript's `B(x)` coefficient, gamma/color normalization, scalar restrictions and operator multiplication must be compared to the just-proved source contraction. Do not infer equality merely from schematic physical identities, and do not prematurely promote a full eigenpair or global mass gap. Canonical FCP `main`, original mathematical source, and draft PR #25 remain unchanged.
