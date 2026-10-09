# BFSS SU(2) G4-I-B3 — full exterior-Fock parameter continuity scope 0.1.0

**Date:** 2026-10-08
**Status:** `SCOPE_ONLY__NOT_COMPILED`
**Accepted predecessor:** Gate #118, exact commit `093660e99bb3048d8221fda36e66de744bfb40fb`, run `37874663799`.

## Mathematical objective

Derive the continuity of the **actual** G4-A SU(2) exterior-algebra transformation on **every** fixed vector of `Space 23`, measured by the real pinned finite occupation coordinates:

```lean
∀ (x : OAI.Laughlin.Fock.Space 23),
  Continuous (fun g : GaugeGroup 2 =>
    OAI.ContinuumCoulomb.HubbardGlobal.fockCoordinates 23
      (FCP.BFSSSU2GaugeG4A.exteriorGauge g x))
```

The proof must not assume this map continuous. Establish it from the accepted source-bound 24-mode matrix continuity, real exterior wedge action, the `fockBasis 23` occupation expansion and finite-dimensional continuity in the actual `FockCoordinateSpace 23` Euclidean norm.

## New obligations

1. Exact **all-state multiplication-coordinate polynomial**:
```lean
fockCoordinates 23 (x*y) =
  ∑ A, ∑ B,
    (fockCoordinates 23 x A * fockCoordinates 23 y B) •
      fockCoordinates 23 (fockBasis 23 A * fockBasis 23 B)
```
where both `x y : Space 23`. This is the real wedge product in the genuine pinned exterior-algebra basis, not a substitute.
2. Show multiplication is **jointly continuous** when represented through the fixed pinned `fockCoordinates 23` equivalence:
```lean
Continuous (fun p : FockCoordinateSpace 23 × FockCoordinateSpace 23 =>
  fockCoordinates 23
    ((fockCoordinates 23).symm p.1 * (fockCoordinates 23).symm p.2))
```
using finite coordinate sums, complex product and scalar-action continuity. Do not assume normed-algebra multiplication on bare `Space 23`.
3. For each `x : Space 23`, prove continuity in `g` by `CliffordAlgebra.left_induction`: scalar vacuum/constant case, addition, and wedge left multiplication by `ExteriorAlgebra.ι ℂ v`. Use the genuine map equation `exteriorGauge_ι_mul` from accepted G4-D (or definitional `ExteriorAlgebra.map` properties) and the accepted G4-I-B1 degree-one continuity. Each step must be a source-bound equality and no additional continuity hypothesis.

## Boundary

A successful G4-I-B3 would establish *parameter continuity for every fixed exterior-Fock vector*, not yet the pinned joint continuity of `fermionGaugeUnitaryHom` on the exact BFSS `Fermion 2`. Next G4-I-C must transport through actual `fockAlgebraToBFSS` and use G4-E isometry for joint continuity. Only then may the exact six-field `GaugeData` be assembled, and physical spectrum remains unproved.

Run frozen Lean `4.34.1`, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Print each new declaration's axioms and require exactly `[propext, Classical.choice, Quot.sound]`. No `sorry`, `admit`, custom axioms, unsupported topology, higher resource limits, pin changes, `main` merge, upstream PR/issue, or scientific claim promotion. Submit source and workflow changes **atomically**, then stop without inspecting the newly triggered gate until the owner reports.
