# BFSS SU(2) G4-I-B1 — actual exterior-Fock vacuum and one-particle continuity scope 0.1.0

**Date:** 2026-10-08
**Disposition:** `SCOPE_ONLY__UNCOMPILED`
**Latest accepted source:** G4-I-A Gate #114, qualified commit `f5d1da55fca22d5d0b20926353a29c353e52b32d`, [run 37865884624](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37865884624), source blob `f8dcadce8b6c3183da6c0170966ff59410b15f7d`, workflow blob `4496bb28bcc53212efe4c7f2d2b5180ce30f8c64`.

## Purpose

Gate #114 showed that the actual 24-mode SU(2) matrix varies continuously in the group parameter. The next mathematical problem is to show that its true induced **exterior-Fock** representation varies continuously, not merely that each fixed element defines a unitary equivalence.

The final target is still the literal pinned `GaugeData.fermion_continuous`; this bounded step isolates the true degree-zero and degree-one exterior-Fock sectors before tackling arbitrary multiparticle wedges.

## Exact G4-I-B1 targets

1. Prove `Continuous (fun g : GaugeGroup 2 => orbitalGauge g v)` on the real G4-A `Orbital 23 = Fin 24 → ℂ` for every fixed `v`, from accepted G4-I-A matrix continuity and the exact `Matrix.mulVec`.
2. Construct the actual complex-linear embedding `Orbital 23 →ₗ[ℂ] FockCoordinateSpace 23` by composing **pinned** `ExteriorAlgebra.ι ℂ` and `fockCoordinates 23`. Prove continuity of this linear map from finite dimensionality, rather than postulate any topology on `Space 23`.
3. Use the true G4-A `exteriorGauge` and the pinned `ExteriorAlgebra.map_apply_ι` equation to establish continuous parameter dependence of
   `fun g => fockCoordinates 23 (exteriorGauge g (ExteriorAlgebra.ι ℂ v))`.
4. Check the exact vacuum and 24 singleton occupation vectors as special cases. For singleton occupation vectors use the upstream `fockBasis_singleton` theorem, not an ad hoc basis.

## Boundary and next mathematical step

This is a source-derived, exact statement about the **actual degree 0/1 sector**, and it requires no assumed continuity of higher wedge maps. Even success does **NOT** prove continuity on degree 2–24 states, or on an arbitrary `Space 23` vector, or on the transported `Fermion 2` Hilbert space. Later G4-I-B must establish the multiwedge polynomial/finite basis action and its continuity; only afterward may G4-I-C transport that result and prove joint continuity, then G4-J build the pinned `GaugeData`.

Print axioms of every new theorem; require exactly `[propext, Classical.choice, Quot.sound]`. Preserve Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, existing resource bounds and exact source identities. Submit source and workflow atomically, then **stop without inspecting Gate #115** until the owner reports its result.

No mainline scientific claim, `main` merge, upstream change, public PR/issue or physical-spectrum conclusion is authorized.
