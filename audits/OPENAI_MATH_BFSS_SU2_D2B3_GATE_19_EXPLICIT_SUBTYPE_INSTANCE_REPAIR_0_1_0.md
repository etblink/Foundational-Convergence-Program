# BFSS SU2 D2B3 — Gate #19 exact subtype second-countability repair 0.1.0

**Date:** 2026-10-09 Pacific / 2026-10-10 Actions UTC. **Gate #19:** `RED__D2B3_NOT_FULLY_QUALIFIED`. Next candidate **PROSPECTIVE / UNCOMPILED**.

## Actual pinned CI

[Physical Domain Bridge Gate #19](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38022098505), run `38022098505`, job `114125094223`, tested commit `77cc87b023b5605747fd93c75133bbf9320a1252`, prior D2B3 blob `68b770b9baa74acbc659e563665d2c36b0caabad`.

Both dependency caches and the original pinned `OAI.Analysis.VlasovMaxwell.Regularity.SmoothIntegral` `.olean` compilation passed. Accepted D1, D3A, D3B, D2A, D2B1, D2B2 source freezes, recompilations and strict axiom guards all passed. The actual D2B3 `sourceHaarSpatialSlice_contDiff` also compiled with only `[propext, Classical.choice, Quot.sound]`.

The only D2B3 failure was on line 79:
```text
failed to synthesize instance of type class
  SecondCountableTopology ↥(GaugeGroup 2)
```
This was **inside the previous local `haveI ... := inferInstance`**. The second theorem's axiom report included `sorryAx`, so no D2B3-wide qualification occurred.

## Exact source verification and negative knowledge

At Mathlib commit `d13f23b723b8a846827a245b89c10fc7d3f11612`, `Mathlib/Topology/Bases.lean` places
```lean
instance Subtype.secondCountableTopology (s : Set α) [SecondCountableTopology α] :
    SecondCountableTopology s := secondCountableTopology_induced s α (↑)
```
under **`namespace TopologicalSpace`**, making the fully qualified declaration `TopologicalSpace.Subtype.secondCountableTopology`. Its parent product `SecondCountableTopology (Fin 2 → Fin 2 → ℂ)` is obtained in the prior local proof and had already compiled in Gate #18. The source group `GaugeGroup 2` is definitionally the subtype of `Matrix.specialUnitaryGroup (Fin 2) ℂ`, a standard submonoid of that matrix product, not a surrogate gauge group.

Two failed invocation patterns must be preserved as negative knowledge:
1. Gate #18: unqualified `Subtype.secondCountableTopology _` yielded `Unknown constant` due to namespace.
2. Gate #19: `haveI : SecondCountableTopology (GaugeGroup 2) := inferInstance` left its target unresolved at its own declaration, rather than constructing an instance from the parent.

Neither failure proves any topological or mathematical counterexample.

## Bounded next candidate

Change **only the failing proof step** of `sourceHaarAverageRaw_contDiff_of_jointJets` to:
```lean
  haveI : SecondCountableTopology (GaugeGroup 2) :=
    TopologicalSpace.Subtype.secondCountableTopology _
```
Retain the exact successful parent product `SecondCountableTopology` evidence, all actual pinned physics/source inputs, the untouched theorem statement, and the explicit unproved all-jet hypothesis `hJets`. The fully qualified theorem name was verified in the pinned source; **the new invocation has not yet been compiled**, and the next gate decides.

## Scientific boundary

D2B3 fixed-gauge spatial `C∞` is source-compiled. Its second conditional smooth Haar-integral theorem is not accepted until the strict CI passes both theorem axiom reports. Even then, the truly substantive mathematical obligation remains proving **all-order joint continuity of the true source spatial Fréchet jets** without assuming it. Full Haar-averaged `SmoothCore` membership, invariance at the source test-function level, (L²) contraction/density, and `G.coreNormClosure = G.physicalSpace` remain open. No BFSS physical spectrum or Hamiltonian theorem is advanced by this step.

No original-source, pin, accepted predecessor, main, upstream or new axiom changes.
