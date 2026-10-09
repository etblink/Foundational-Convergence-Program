# BFSS SU(2) G4-I — exact fermionic joint continuity plan; G4-I-A coefficient-continuity scope 0.1.0

**Date:** 2026-10-08
**Status:** `SCOPE_ONLY__NOT_YET_COMPILED`
**Latest accepted gate:** G4-H Gate #113, source commit `e9cc5583431c6bd52eb282525e185aa5e5403e52`, run `37862788857`.

## The physical-model obligation

The pinned `OAI.BFSSQuantum.AlgebraData.GaugeData` structure at OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a` has this exact field:

```lean
fermion_continuous :
  Continuous
    (fun z : GaugeGroup 2 × Fermion 2 =>
      fermionGaugeUnitaryHom z.1 z.2)
```

Its `fermion` must be the same G4-E `fermionGaugeUnitaryHom` already proved unitary and shown in G4-H to transform the actual paired theta fields correctly.

This is **joint continuity in both the SU(2) parameter and Fock vector**. It does not follow merely from a homomorphism into `Fermion 2 ≃ₗᵢ[ℂ] Fermion 2`, even though each fixed action is an isometry.

## Bounded construction program

1. **G4-I-A, next exact gate:** Prove parameter continuity of the source-bound adjoint color coefficient `adjointColorMatrix g B A` and the actual 24×24 complex matrix `complexOneParticleMatrix g`. Derive it from the pinned matrix formula involving `g`, `gᴴ`, the actual `pairedAlgebraData.color`, matrix multiplication, finite trace, and real-part extraction. Prove every `Fin 24` matrix entry using the certified G3-C block equation and explicit `colorModeEquiv`. This gate is **not** the `fermion_continuous` field.
2. **G4-I-B:** Propagate the continuous 24-mode coefficients into the exterior algebra action by a finite occupation/wedge expansion, or an equivalent explicit finite-dimensional polynomial construction, obtaining parameter-continuity of `exteriorGauge g x` for every fixed `x : Space 23`. Preserve the genuine G4-A map; do not substitute an unrelated representation.
3. **G4-I-C:** Transport to `Fermion 2` through the accepted G4-B `fockAlgebraToBFSS`, with continuity of the coordinate transport proved rather than assumed. Use G4-E isometry to derive **joint** continuity by the estimate `‖G(g)v - G(g₀)v₀‖ ≤ ‖v-v₀‖ + ‖G(g)v₀-G(g₀)v₀‖`, or another kernel-certified equivalent.
4. **G4-J:** Assemble literal pinned `pairedAlgebraData.GaugeData` from G2-A bosonic group representation, G4-E fermionic group representation, G2-A and G4-H adjoint equations, G2-B bosonic continuity, and G4-I-C fermionic continuity. Print the full structure's axioms.

If a general abstract library lemma certifies step 2 or 3, use it only after checking its exact hypotheses and correct physical-model instance. No stronger assumptions, arbitrary label equivalences or topology substitutes.

## G4-I-A concrete end targets

```lean
Continuous (fun g : GaugeGroup 2 => adjointColorMatrix g B A)
Continuous (fun g : GaugeGroup 2 => complexOneParticleMatrix g)
```

The second statement must be about the **actual** G3-C matrix, not a merely pointwise-equivalent proxy. Confirm source/workflow blob identities and print `#print axioms` for every new theorem. Require the same standard-only axiom list `[propext, Classical.choice, Quot.sound]`.

## Scientific/operational boundaries

G4-H removed a nontrivial exact indexing/covariance uncertainty. G4-I-A removes only the continuity uncertainty for the **one-particle** coefficients. It does not prove the exterior or BFSS fermionic representations depend continuously on the group parameter, complete `GaugeData`, or physical-spectrum consequences.

Keep Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; no resource raises, false GREEN claims, unsupported axioms, mainline FCP changes, upstream edits or external PRs. Submit the new source and modified workflow **atomically**, then stop without inspecting that new gate until the owner reports its result.
