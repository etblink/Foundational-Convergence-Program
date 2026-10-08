# BFSS fermions F3-B7 — signed transported mode transitions, first gate scope 0.1.0

**Date:** 2026-10-08. **Status:** `F3B7_FIRST_COMPILER_CANDIDATE_UNQUALIFIED`.

Branch: `research/openai-math-su2-concrete-potential`; source pinned at `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` and Lean 4.34.1.

## Accepted inputs

F3-B6 Gate #72 passed, run `37756052439`, job `113240747890`, accepted source commit `4252253aac2e8ce9522d118cc45f2eb70f5afee0`. All three theorem axiom reports contain only `[propext, Classical.choice, Quot.sound]`. F3-A2 proves all theta-invariant submodules are stable under each genuine transported creator and annihilator. F3-B5 proves the complete 24-mode occupation basis expansion, and F3-B6 obtains one canonical occupation ket inside each nonzero invariant submodule.

## Bounded next proof obligations

Inspect pinned `OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/FockNorm.lean`, blob `17e71994583e7096c26a1af2fe97671f94336d84`, for `create_basis`, `create_unoccupied_basis_signed`, `creationCoefficient_signed` and `annihilate_occupied_basis`. Preserve the genuine exterior permutation sign.

F3-B7 transports these to the exact F1 BFSS `Fermion 2` space:
- For every mode i and occupancy A: `creator i (occupationKet A) = creationCoefficient i A • occupationKet (insert i A)`.
- For every i in A: `annihilator i (occupationKet A) = creationCoefficient i (A.erase i) • occupationKet (A.erase i)`.
- `creationCoefficient i A ≠ 0` whenever i is unoccupied; in particular the annihilation coefficient for any occupied i is nonzero.

Prove genuine action via `fockOperator_coordinates`, exact `fockBFSSUnitary`, and the pinned upstream `create_basis`/`annihilate_occupied_basis`. Do not replace coefficient with 1, or assume signs.

## Future obligations (not claimed)

Use the signed, nonzero transitions and accepted theta-stability to prove all occupation kets reachable from one canonical ket (for example, remove all occupied modes to reach vacuum and then add target modes). Then prove top submodule from basis-span and finally `theta_irreducible` and finish `AlgebraData 2`. This F3-B7 gate does not contain those results or any BFSS spectral/positivity/universal theory claim.

Exact full 24 modes; no `sorry`, `admit`, custom axioms, weakening, FCP main changes, or upstream edits. Print axioms for all new results; no new gate inspection before human GREEN/RED report.
