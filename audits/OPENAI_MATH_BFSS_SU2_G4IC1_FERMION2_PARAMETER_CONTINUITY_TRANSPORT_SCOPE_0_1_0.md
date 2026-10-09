# BFSS SU(2) G4-I-C1 — exact Fermion 2 parameter-continuity transport scope 0.1.0

**Date:** 2026-10-08
**Status:** `SCOPE_ONLY__UNCOMPILED`
**Accepted predecessor:** Gate #120, source commit `516f517f3592c13e75dead6d71502f5ee4b28213`, run `37877762098`. G4-I-B3 proved continuity in real pinned Fock coordinates for every fixed `x : Space 23`.

## Purpose

Transport the **actual** G4-I-B3 result through the source-qualified G4-B/G4-E bridge to the exact upstream `OAI.BFSSQuantum.Fermion 2` Hilbert type (dimension `2^24`):

```lean
∀ v : Fermion 2,
  Continuous (fun g : GaugeGroup 2 =>
    FCP.BFSSSU2GaugeG4E.fermionGaugeUnitaryHom g v)
```

This closes the remaining **fixed-state parameter-continuity** gap on the literal upstream BFSS fermionic type. It does **not** imply **joint** continuity of `(g,v)`.

## Source-bound proof route

1. Take `v = fockAlgebraToBFSS x` via the certified surjective G4-B linear equivalence.
2. Use the **literal** G4-E group homomorphism `fermionGaugeUnitaryHom` and `fermionGaugeUnitaryEquiv`, whose underlying map is definitionally G4-B `fermionGaugeLinearEquiv`.
3. Use the proven G4-B intertwining formula:
```lean
fermionGaugeLinearEquiv g (fockAlgebraToBFSS x) =
  fockAlgebraToBFSS (exteriorGauge g x)
```
4. Definitional G4-B transport is `fockAlgebraToBFSS = (fockCoordinates 23).trans fockBFSSUnitary.toLinearEquiv`; `fockBFSSUnitary` is the true F1 complex-linear **isometric** equivalence into `Fermion 2`.
5. Compose its continuity with accepted `FCP.BFSSSU2GaugeG4IB3.exteriorGauge_allCoordinates_continuous x`.
6. Print axioms for the exact theorem, allowing only `[propext, Classical.choice, Quot.sound]`.

**Next task G4-I-C2:** Prove literal **joint continuity**

```lean
Continuous (fun z : GaugeGroup 2 × Fermion 2 =>
  fermionGaugeUnitaryHom z.1 z.2)
```

using the isometry property of **this very same** group action and certified fixed-state parameter continuity, e.g. triangle norm estimate; do not infer joint continuity from group representation laws alone. Only then attempt G4-J exact six-field `pairedAlgebraData.GaugeData`.

Preserve Lean `4.34.1`, pinned OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, unchanged resource budget, source-bound type and dependency identity. Work only on research branch. Submit actual Lean source and exact workflow changes atomically and **do not inspect the next gate until the owner reports**. No `main` merge, public PR/issue, custom axiom, spectral claim or physical validation promotion.
