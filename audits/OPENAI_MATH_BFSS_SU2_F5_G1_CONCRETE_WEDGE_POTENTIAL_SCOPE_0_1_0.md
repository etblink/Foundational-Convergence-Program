# BFSS SU(2) F5-G1 — unconditional concrete wedge potential and nonnegativity gate scope 0.1.0

**Date:** 2026-10-08. **Status:** `F5_G1_SUBMITTED_UNCOMPILED`.

## Starting authority

Exact branch `research/openai-math-su2-concrete-potential`, pinned upstream `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1. Gate #82 verified `FCP.BFSSSU2Full.concreteAlgebraData : OAI.BFSSQuantum.AlgebraData 2` with only `[propext, Classical.choice, Quot.sound]`, run `37767936582`, job `113280052503`, exact accepted head `55a99e8f61bac3df0e1a50129a2f4f4bc9448caa`.

Earlier compiled `SU2ColorCrossProbe.lean` establishes the correct **conditional** exact algebraic relations for normalizedPauli color:
- `algebraData_structureConstant_of_pauli_color`: `M.structureConstant a b c = √2 * epsilon3 a b c`;
- `coordinateBracket_of_pauli_color`: the upstream color bracket equals `√2` times the standard cross product;
- `deformedBosonicPotential_one_zero_eq_wedge`: at `(h,m)=(1,0)`, the pinned upstream potential equals the three squared spatial color minors summed over spatial pairs.
Each requires `hcolor : ∀ a, M.color a = normalizedPauli a`. Gate #82 supplies this **unconditionally** for `concreteAlgebraData` via its identity theorem.

## F5-G1 target

Prove these direct specializations for the exact constructed `AlgebraData 2`:
1. `concreteAlgebraData.structureConstant` equals `√2 epsilon3` for all colors;
2. `concreteAlgebraData.coordinateBracket` equals `√2 colorCross` for every real bosonic configuration and spatial pair;
3. `concreteAlgebraData.deformedBosonicPotential 1 0 x` equals the actual (finite) sum of color-wedge square minors for every `x : Boson 2`;
4. That **specific bosonic potential** is nonnegative, using the explicit sum-of-squares identity.

No spectral gap, confinement, full Hamiltonian positivity, eigenvalue, or gauge-invariant operator property follows from the sum-of-squares alone. Do not infer physical BFSS or FCP/K1–K10 classification upgrades.

No replacement definitions, custom axioms, `sorry`, `admit`, increased resource limits, weakening, writes to upstream or FCP main. All new declarations must print standard-only axiom reports and exact pinned CI success. Submit one gate then stop without checking it before human GREEN/RED report.
