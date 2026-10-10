# BFSS SU2 G4-K9D — Gate #170 source operator and smooth-core form acceptance 0.1.0

**Date:** 2026-10-09 (America/Los_Angeles; UTC execution on 2026-10-10). **Disposition:** `PASS__SOURCE_POTENTIAL_AND_SMOOTH_CORE_CHARGE_FORM_IDENTITY`. **Classification:** `SOURCE_DERIVED_LEAN_KERNEL_QUALIFIED`. **No framework/empirical promotion.**

## Immutable compiler evidence

- [BFSS SU2 Concrete Color Gate #170](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38011995220), run `38011995220`, job `114093842738`, complete **SUCCESS** at exact commit `1fbd0db2af96914d20b8750bfbbeb3af6770a491`, tree `c695002f65a0cfbc7b831dacca92b1a5a0e967a2`.
- New source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K9DSourcePotentialMultiplierProbe.lean`, exact blob `0695420e4e1d6fbe8accdc4aee9df6dd2d52d1ca`. The source itself is the original OpenAI Math definitions, not modified or substituted.
- Pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean `4.34.1`. Immutable accepted prerequisite checks and independent G4-K8E3, G4-K8E4, G4-K9A, G4-K9B, G4-K9C compilations succeeded; compiled object cache integrity checked.
- `lake env lean SU2BFSSG4K9DSourcePotentialMultiplierProbe.lean` succeeded. Four printed declarations each depend **exactly** on `[propext, Classical.choice, Quot.sound]`; no `sorryAx` or compiler errors.

## Accepted, precisely scoped declarations

1. Private proof helper `sourcePotentialCoefficientExpanded`: source `deformedPotentialCoefficients 1 0` equals the full original complex-coerced ordered color/spin expansion, using G4-K9C and finite distributivity. Passes axioms with only the three permitted baseline axioms.
2. `FCP.BFSSSU2GaugeG4K9D.sourcePotentialMultipliers_equal`: **unconditional original source** `M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x`, equality as continuous linear maps on the original Fermion N, for every admissible `M : AlgebraData N`, spin α and bosonic configuration x. No new hypotheses.
3. `FCP.BFSSSU2GaugeG4K9D.sourceUnconditionalCoreCharge_equal`: **unconditional all-SmoothCore** `M.deformedCoreCharge 1 0 α f = M.charge α f` for each spin and original compactly supported smooth f, obtained by discharging G4-K9B's formerly open multiplier-agreement premise.
4. `FCP.BFSSSU2GaugeG4K9D.sourceUnconditionalCoreForm_equal`: **unconditional all-SmoothCore** `M.deformedCoreEnergy 1 0 f = M.coreForm f`.

Grok's independent argument correctly identified the mathematical finite-sum regrouping, but the checkable qualification is the exact pinned Lean/GitHub proof, not Grok prose. The only Gate #169 failure was an incorrectly oriented finite-sum scalar multiplication normalization; it was repaired without changing the mathematical statements.

## Scientific interpretation and residual boundary

This closes the planned **coefficient → finite fermionic potential operator → exact full smooth-core source supercharge → smooth-core quadratic-form equivalence** chain, beyond the earlier nonzero L2 radial trial/positive trial energy result.

The original source also defines `M.fullCoreGraph := LinearMap.range (coreToL2.prod M.chargeVector)` and `M.fullClosedGraph := M.fullCoreGraph.topologicalClosure` in `Core.lean`; it defines `M.deformedChargeVector`, `M.deformedCoreGraph` and `M.deformedClosedGraph := (M.deformedCoreGraph h m).topologicalClosure` in `ClosedProfiles.lean`. The newly accepted charge equality is sufficient to **propose** these original source graphs and their closures agree at h=1,m=0; such a consequent theorem has not yet been separately compiled. That is a justified targeted next step, not a second attempt at a multiplier identity.

Equality of a defined closed *joint charge graph* is not the same as proof that the particular physically constrained closed quadratic form and self-adjoint Hamiltonian used in the 2026 spectral manuscript are identical. Domains and Hamiltonian association must be checked with the paper's exact definitions, gauge-invariant restriction and closure choices; do not silently equate the deformed graph, form, and self-adjoint operator.

## FCP source control

Preserve FCP `SOURCE_REGISTER.md` sources `SRC-FCP24-NONPERT-BFSS-1997` and `SRC-OPENAI-MATH-F270B-BFSS-2026`, `CLAIM_LEDGER.md` item `FCP24-STRING-002`, the T6 independent source-delta adjudication `T6_CONFIRMED__NO_T2__MODEL_LEVEL_STRENGTHENING_ONLY` (K1–K10 unchanged), and existing framework ledgers. The theorem does not prove a global spectral gap, full Hamiltonian-domain equality, infinitely many BFSS eigenvalues beyond the separately adjudicated 2026 source result, an M-theory claim, or experimental selection.

No main merge, upstream PR, theorem promotion beyond source-defined claims, or new axiom. The next gate, if launched, must remain conditional upon owner-reported CI result.
