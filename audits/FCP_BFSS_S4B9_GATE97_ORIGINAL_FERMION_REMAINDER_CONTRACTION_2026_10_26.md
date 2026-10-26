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
