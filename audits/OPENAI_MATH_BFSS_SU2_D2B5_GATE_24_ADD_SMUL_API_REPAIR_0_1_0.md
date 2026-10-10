# BFSS SU2 Physical Domain Gate #24 — source Haar add/smul API repair 0.1.0

**Date:** 2026-10-09 America/Los_Angeles / GitHub Actions UTC 2026-10-10. **Status:** `GATE_24_RED__D2B5_NOT_QUALIFIED`; next attempted correction **UNCOMPILED**.

## Exact compiler evidence

[BFSS SU2 Physical Domain Bridge #24](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38024023275) run `38024023275`, job `114130911726`, tested commit `6f8921fac66f73e2b333eeb0f3622fdc41167b8f`. The qualified D1/D3A/D3B/D2A/D2B1/D2B2/D2B3/D2B3J/D2B4 source files, exact toolchain pins, mathematical cache, recompilations and strict axiom checks all passed.

Five new D2B5 reports were emitted. `sourceHaarAverageCore_idempotent` and `sourceBosonPullback_norm` compiled with only `[propext, Classical.choice, Quot.sound]`: these prove genuine original SmoothCore SU2 Haar idempotence and exact original full-L² bosonPullback norm preservation, respectively.

D2B5 lines 49 and 69 each failed due solely to **unknown names** `FunLike.add_apply` and `FunLike.smul_apply`, followed by a no-progress simplifier; their errors propagated to both preliminary complex-linearity lemmas and the resulting linear-map packaging. Those two short names are **not** valid exact pinned Mathlib declarations. In `Mathlib/Analysis/Distribution/TestFunction.lean` the original `TestFunction` supports `IsAddApply` and `IsSmulApply` and the general expression `add_apply`/`smul_apply` applies. Pinned upstream OpenAI Math proof examples use `simp only [add_apply, map_add]` and `simp only [smul_apply, map_smul]`.

## Narrow repair

Replace only these two simplifier lists in new D2B5 source:
```lean
simp only [FunLike.add_apply, map_add]
simp only [FunLike.smul_apply, map_smul]
```
with
```lean
simp only [add_apply, map_add]
simp only [smul_apply, map_smul]
```

The exact gauge integrals, original source `SmoothCore`, `GaugeData`, `sourceHaar`, D2B5 proposition statements, verified idempotence and boson pullback isometry, and all qualified D1–D2B4 source files are unchanged. This candidate is not yet compiler-qualified. The next CI gate must validate all FIVE exact reports and no `sorryAx` or `error:`; a green D2B5 still does not establish bounded averaging on full L² or `G.coreNormClosure=G.physicalSpace`. Retain that distinction; do not make BFSS spectral/Hamiltonian claims or add physical axioms.

No main merge, upstream PR, cache pin changes, qualified source changes or surrogate objects.
