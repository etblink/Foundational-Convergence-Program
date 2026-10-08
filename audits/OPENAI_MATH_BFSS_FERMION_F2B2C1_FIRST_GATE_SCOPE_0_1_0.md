# BFSS fermions Stage F2-B2c1 — distinct-mode mixed Majorana CAR gate scope 0.1.0

**Date:** 2026-10-07 Pacific / 2026-10-08 UTC
**Status:** `F2B2C1_COMPILER_CANDIDATE__NO_KERNEL_ACCEPTANCE`
**Branch:** `research/openai-math-su2-concrete-potential`
**Pinned upstream:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`.

Accepted predecessors: F1 Gate #36, F2-A Gate #39, F2-B1 Gate #46, F2-B2a Gate #49, F2-B2b Gate #50 (run `37732302759`, job `113163954830`); Gate #50 formal acceptance recorded in `audits/OPENAI_MATH_BFSS_FERMION_F2B2B_GATE_50_FORMAL_ACCEPTANCE_0_1_0.md`.

## Exact goal

File: `experiments/openai-math-su2-concrete-potential/SU2FermionF2B2MixedProbe.lean`.

```lean
theorem majorana01_car_ne (i j : Fin 24) (hij : i ≠ j) :
    majorana0 i * majorana1 j + majorana1 j * majorana0 i =
      (0 : BFSSOp)
```

`BFSSOp` is exactly the pinned `OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2`. The distinct-mode hypothesis `i ≠ j` is legitimate for this *scoped subgate*, not an artificial assumption of the full CAR theorem. Existing F2-A creators/annihilators anticommute with their off-mode counterparts; phase transport preserves all four zero anticommutators; their sums yield the mixed zero relation after the real normalization is factored. No new axioms.

**Acceptance:** one newly identified successful exact-head GitHub Actions compiler gate including `lake env lean SU2FermionF2B2MixedProbe.lean`; `#print axioms majorana01_car_ne` contains only standard Lean `[propext, Classical.choice, Quot.sound]` or subset and no `sorryAx`. The green result must include compilation of this new file, not only acceptance of earlier stages.

**Open:** the same-mode mixed identity `{majorana0 i,majorana1 i}=0` remains F2-B2c2. Full all-mode mixed closure, the exact 48-index Majorana and upstream `theta_CAR` normalization, and F3 irreducibility are not implied. No physical spectral/gauge result or FCP program-level K1–K10 change.

**Governance:** Research branch only; pinned sources, `main`, reviewers and upstream public channels unchanged. Do not inspect or poll the newly triggered gate before human-owner GREEN/RED.
