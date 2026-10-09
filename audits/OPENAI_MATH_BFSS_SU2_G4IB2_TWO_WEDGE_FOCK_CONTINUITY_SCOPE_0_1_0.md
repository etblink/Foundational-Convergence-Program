# BFSS SU(2) G4-I-B2 — actual two-particle exterior-Fock continuity scope 0.1.0

**Date:** 2026-10-08
**Status:** `SCOPE_ONLY__UNCOMPILED`
**Qualified predecessor:** G4-I-B1 Gate #116, [run 37870726296](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37870726296), exact source commit `71cd4b7ce7475cc98bf4c6d40e9291dfca7ff282`.

## Exact mathematical objective

Prove that the **actual** G4-A `exteriorGauge` depends continuously on `g : GaugeGroup 2` when acting on every two-particle exterior product

```lean
(ExteriorAlgebra.ι ℂ u) * (ExteriorAlgebra.ι ℂ v) : Space 23
```

for arbitrary `u v : Orbital 23`, when measured by the pinned normed Fock occupancy coordinates

```lean
fockCoordinates 23
  (exteriorGauge g (ExteriorAlgebra.ι ℂ u * ExteriorAlgebra.ι ℂ v))
```.

Derive the statement by **explicitly** proving the genuine two-wedge coordinate formula using `orbital_sum_modes 23`, the pinned exterior-algebra unit map and multiplication, and the finite complex-linear `fockCoordinates 23`. It must be a sum of products `u i * v j` multiplying the real fixed two-wedge coordinate vectors. Then apply accepted G4-I-B1 parameter continuity of `orbitalGauge g` and finite-sum/scalar-action continuity.

The G4-A identity `exteriorGauge g (ι u * ι v) = ι (orbitalGauge g u) * ι (orbitalGauge g v)` must be proven from the actual `AlgHom` source, not assumed.

Prove the all-orbital-two-wedge theorem, then optionally specialize to fixed orbital modes `mode i`, `mode j`. Do not replace the exact source or introduce an abstract proxy representation or unproved product-topology assumptions.

## Evidence standard and boundaries

Compile the source with the frozen workflow and pinned Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. `#print axioms` each new definition/theorem; require only `[propext, Classical.choice, Quot.sound]` and no `sorryAx`, `sorry`, `admit` or other axioms.

This step is **not** arbitrary multiparticle (`k=3..24`) continuity, not parameter-continuity on every exterior state, not transport to genuine `Fermion 2`, not joint `GaugeData.fermion_continuous`, and not full `pairedAlgebraData.GaugeData`. It is a substantive degree-two wedge case, preserving the precise physics-derived color action.

Submit exact source+workflow changes atomically, then stop without inspecting the new gate until owner reports its GREEN/RED status. No mainline merge, dependency/resource change, upstream issue/PR or spectrum claim.
