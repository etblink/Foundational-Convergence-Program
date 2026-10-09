# BFSS SU(2) G4-I-C2 — exact joint continuity on Fermion 2 scope 0.1.0

**Date:** 2026-10-08
**Status:** `SCOPE_ONLY__UNCOMPILED`
**Accepted predecessor:** Gate #121, source commit `dababd2531d0f5b40e1df38b4d8c0bcb3fcbe939`, [run 37879221608](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37879221608).

## Objective

Discharge the **literal** `AlgebraData.GaugeData.fermion_continuous` proposition for the **existing** SU(2) Fermion 2 group action of G4-E:

```lean
Continuous (fun z : GaugeGroup 2 × Fermion 2 =>
  FCP.BFSSSU2GaugeG4E.fermionGaugeUnitaryHom z.1 z.2)
```

No alternate action or assumed joint continuity is permissible.

## Source-bound proof

Use exactly (a) `FCP.BFSSSU2GaugeG4IC1.fermionGauge_parameter_continuous v` for each fixed `v : Fermion 2`; (b) isometry `fermionGaugeUnitaryHom g' : Fermion 2 ≃ₗᵢ[ℂ] Fermion 2`, which preserves norms of differences by linearity; (c) true product topology on `GaugeGroup 2 × Fermion 2`; (d) norm-limit characterization of continuity.

At arbitrary `(g,v)`, prove for every `(g',v')` the exact estimate

```text
‖U(g')v' - U(g)v‖ ≤ ‖v' - v‖ + ‖U(g')v - U(g)v‖.
```

Both RHS terms tend to zero in the genuine topology. This proves joint continuity. Do not infer it solely from the group law or unitarity.

Print the exact theorem's axiom dependencies and accept only `[propext, Classical.choice, Quot.sound]` with no `sorryAx`.

A successful gate would complete **the final missing continuity proposition** but would **not itself create** a field-checked `pairedAlgebraData.GaugeData`. That separate G4-J step must assemble all six exact fields and compile its own axiom report. The representation-theoretic mathematics does not establish BFSS Hamiltonian spectrum or physical theory validation.

Use pinned Lean `4.34.1`, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` and unchanged compiler/workflow budgets. Work only on research branch. Submit new source and workflow atomically, then **do not inspect the next gate** until owner's color report. No main merge or upstream PR/issue.
