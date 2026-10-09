# BFSS SU(2) G4-K1 — actual Gauss physical Hilbert subspace and smooth-core consequences 0.1.0

**Date:** 2026-10-08
**Disposition:** `SOURCE_BOUND_SCOPE__UNCOMPILED_CANDIDATE`.
**Prerequisite:** Gate #127 exact G4-J upstream six-field `pairedGaugeData`.

## Exact target

Using only `FCP.BFSSSU2GaugeG4J.pairedGaugeData` and pinned upstream `GaugeCore.lean`, specialize:
1. `pairedGaugeData.physicalSpace` to `Submodule ℂ (FullL2 2)`;
2. `pairedGaugeData.physicalSpace_closed` to prove the literal concrete Hilbert submodule closed;
3. `pairedGaugeData.invariantCore_equivariant` to obtain pointwise equality `f (bosonGauge g x) = fermionGaugeUnitaryHom g (f x)` for every section **already in the invariantCore**;
4. `pairedGaugeData.invariantCore_norm_gauge` to obtain exact pointwise norm invariance on gauge orbits.

All four use precisely the G2-A boson and G4-E fermion actions qualified and stored in the G4-J data. Check each `#print axioms` for only standard `[propext, Classical.choice, Quot.sound]`.

## Strict scientific boundary

This stage is **source-bound specialization**, not a novel proof of Gauss subspace nonzero. For instance `0` is always a closed invariant submodule. It is **incorrect** to infer a physical state from the invariance of the Fock vacuum alone without constructing a genuine normalizable, nonzero bosonic L² section and proving its Gauss relation. Invariant-core density, Hamiltonian domain stability, spectral properties, bound states, physical predictions and comparison with observations are open. Do not promote such claims.

## Next valuable test

After this field consequence compiles, separately scope actual **nontriviality** of the Gauss-invariant `physicalSpace`, ideally with a nonzero normalizable radial bosonic wavepacket tensored with the source-qualified gauge-invariant fermionic vacuum. First inspect the precise `FullL2`, `SmoothCore`, composition and measure conventions; prove invariance of the radial bosonic scalar under the literal boson isometries and nonzero L² norm. Do not assume shortcuts or change pinned definitions.

Work only on research branch; preserve Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, workflow settings, six-field gauge identity; no sorry/admit/new axioms. Submit source + exact workflow + Gate #127 acceptance atomically and stop before inspecting resulting gate until owner reports color.
