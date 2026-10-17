# H5E8AZ source physical domain-density reduction Gate #1 — missing original source ClosedProfiles import

**Date:** October 17, 2026 PDT. **Disposition:** `RED__PINNED_ORIGINAL_CLOSEDPROFILES_MODULE_NOT_IMPORTED__NO_AZ_THEOREM_QUALIFIED`.

## Strict evidence and first causal error

- [AZ Original Physical Charge Domain Density Reduction #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39064841425) **RED** in strict job `117490238568`, source/workflow commit `8c8620722700215c5e4370fec0761d87b3070411`, original AZ source Git blob `33beeb944e11f23495c930ab726870a0811a7db5`.
- Exact `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; all **21** accepted original AD–AY source modules compiled successfully in the same gate. The red is **at the new AZ source**, not in qualified AY or upstream source.
- AZ line 77 and line 92: `error(lean.invalidField): Invalid field coreNormClosure: The environment does not contain OAI.BFSSQuantum.AlgebraData.GaugeData.coreNormClosure`. This is a source **import scope** problem. The actual `GaugeData.coreNormClosure` declaration is in original `OAI.MathematicalPhysics.BFSS.ClosedProfiles` (pinned source lines 125–126), not the already-imported base `GaugeCore`/AU/AY modules.
- The first AZ `originalMinimalPhysicalHilbertChargeColumn_core_mem_domain` *appeared* with exactly the standard `[propext, Classical.choice, Quot.sound]` in failed-run printouts; the second density implication included `sorryAx`. **Neither AZ result is counted accepted from this RED file**, despite the unrelated 21 preceding green module builds.

## Minimal source-exact repair

Add only:
```lean
import OAI.MathematicalPhysics.BFSS.ClosedProfiles
```
after the actual AY source import. The original pinned source `G.coreNormClosure` definition is unchanged, and the D2B10C unconditional Haar theorem is **NOT** imported or assumed. Research commit [`2d18c64605a62c06aa9884b79cb55e6101c70fa8`](https://github.com/etblink/Foundational-Convergence-Program/commit/2d18c64605a62c06aa9884b79cb55e6101c70fa8) updates the AZ source blob to `cd900c47e2bcbccd0c8761df1beb69553430b68a`. Strict workflow source-pin update [`bfb3e633c9252bdf84499af0969a55bf5a8f30f6`](https://github.com/etblink/Foundational-Convergence-Program/commit/bfb3e633c9252bdf84499af0969a55bf5a8f30f6) triggers fresh Gate #2. The repair is strictly module availability, not a change in mathematics or relaxed axioms.

## Scientific boundary

AZ, even if Gate #2 becomes green, is a **conditional theorem**: density of the AY native original source physical-domain charge operator follows provided `G.coreNormClosure = G.physicalSpace`. The latter is independently accepted at historical [Gate #47](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38033802017), source D2B10C Haar proof (blob `5099e7720d5251b8b41c68c559800b619be332fe`), but its original compiled proof objects are not assumed available on the S3L PR. A later **joint pinned import and discharge** is needed before promoting unconditional density and using `LinearPMap.adjoint`.

No source gamma/sign/CAR conventions, full-Hilbert norm, original gauge action, physical charge operator, normalized Hamiltonian or independently published spectrum are changed. Research draft PR #25 remains open/unmerged. No mass gap conclusion.
