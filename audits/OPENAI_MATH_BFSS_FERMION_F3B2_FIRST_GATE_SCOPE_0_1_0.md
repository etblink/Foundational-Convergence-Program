# BFSS fermions F3-B2 — concrete transported occupation-basis action first gate 0.1.0

**Date:** 2026-10-08 UTC / 2026-10-07 Pacific  
**Status:** `F3B2_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE`  
**Research branch:** `research/openai-math-su2-concrete-potential`.

## Accepted predecessor

F3-B1 at Gate #61, run `37741947954`, job `113194444323`, exact source commit `a213b41bbc994449efc952c02fa30fa8b5ee73b4`, is kernel accepted. Both `thetaInvariant_occupiedMode` and `thetaInvariant_vacantMode` use only `[propext, Classical.choice, Quot.sound]`.

## Precise new target

Name the **actual transported canonical occupation basis vector**
`occupationKet (A : Finset (Fin 24))` as
`fockBFSSUnitary (fockCoordinates 23 (fockBasis 23 A))`,
using the exact accepted F1 unitary and pinned upstream basis, not a substitute basis.

Prove the equalities for **every** mode `i : Fin 24` and occupation set `A : Finset (Fin 24)`:

- `occupiedMode i (occupationKet A) = if i ∈ A then occupationKet A else 0`.
- `vacantMode i (occupationKet A) = if i ∈ A then 0 else occupationKet A`.

These are concrete operator-action claims, unlike the earlier mere invariant-submodule stability statements. The source must explicitly connect `occupiedMode i` with the transported upstream `fockOperator (number i)`, then use the exact conjugation action and `number_basis`.

## Source-first evidence

- FCP `SOURCE_REGISTER.md`, `audits/OPENAI_MATH_BFSS_FCP_SOURCE_FIRST_CROSSWALK_0_1_0.md`, and accepted F3-A2/F3-B1 audits keep scientific and formal roles distinct.
- Pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`:
  - `lean/OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/HubbardGlobal.lean`: `number i = transfer i i`, `transfer i j = create i * annihilate j`; also `number_idempotent` and `number_commute`.
  - `lean/OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/HubbardOccupation.lean`: `number_basis` on the full exterior occupation basis, with exact spectator modes.
  - `lean/OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/FockNorm.lean`: `fockOperator_mul`, `fockOperator_coordinates`.
  - Accepted F1 `SU2FermionFockProbe.lean`: `fockBFSSUnitary`, `onBFSS`, and transported creation/annihilation operators.
  - Exact pinned Lean `4.34.1` and mathlib dependency used in existing gates.

## Explicit limits

Basis action on basis vectors is not yet the arbitrary-vector coordinate-isolation theorem. Basis independence, full spanning in the BFSS type, finite selector products, nonzero-vector extraction, complete reachability by creators/annihilators, and `theta_irreducible` remain separate proof obligations. Do not assume a Fock basis projector algebra without proof, and do not claim the full `AlgebraData 2` witness.

## Gate discipline

A separate F3-B2 Lean module must import kernel-accepted F3-B1. Recompile predecessor modules and print the axioms for every new theorem. Qualify only an independently completed GREEN run at the intended source commit with no `sorryAx` and no custom axioms. Submit once, then **do not inspect/poll** the new workflow until the owner reports GREEN or RED. All writes on the research branch only; no modifications to FCP `main`, pinned upstream, reviewer scripts, or scientific classifications.
