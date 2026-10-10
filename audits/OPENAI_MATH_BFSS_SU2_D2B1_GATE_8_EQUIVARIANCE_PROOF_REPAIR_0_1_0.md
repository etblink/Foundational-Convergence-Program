# BFSS SU2 Physical Domain D2B1 — Gate #8 equivariance proof repair 0.1.0

**Date:** 2026-10-09 Pacific (Actions UTC 2026-10-10). **Status:** `GATE_8_RED__D2B1_UNQUALIFIED__BOUNDED_REPAIR_PROSPECTIVE`.

## Verified compiler evidence

[BFSS SU2 Physical Domain Bridge #8](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38017614316), run `38017614316`, job `114111297862`, tested commit `f22b092bf348f1083e295fa7f0aad8100512f44f`, D2B1 source blob `e5e8072a3dcaa786ef3654afec430e5b04276fe4`.

Prerequisites D1, D3A, D3B, D2A compiled with all accepted axioms. Exact pinned G4-K10A cache restored; accepted source hashes intact. In prospective D2B1, `sourceHaarIntegrand_continuous`, `sourceHaarIntegrand_integrable` and `sourceHaarAverageRaw_fixed` compiled and their `#print axioms` showed only `propext`, `Classical.choice`, `Quot.sound`. `sourceHaarAverageRaw_equivariant` did **not** compile, and its axiom report included `sorryAx`.

Two specific Lean errors in the remaining *proof*:

1. Line 75: `LinearIsometryEquiv.mul_apply` is an unknown identifier. The true `G.boson` and `G.fermion` are group homomorphisms into linear isometry equivalences. The required source identity is expansion of homomorphic actions, inverses and associativity; no special named `mul_apply` is needed. The proposed bounded replacement is `simp [mul_inv_rev, map_mul, map_inv, mul_assoc]`.
2. Line 96: an `.symm` reversed the exact orientation required by `ContinuousLinearMap.integral_comp_comm`. The theorem already states `∫ ρ_h (F_g) dg = ρ_h (∫ F_g dg)`; remove `.symm`.

Neither change modifies an objective theorem statement, source pins, source group or Haar measure, physical assumption, CI gate policy, qualified mathematical sources or original proof cache. There are no physics/spectral implications to repairing these script errors.

## Evidence standard and remaining scope

This patch is **uncompiled** until its next dedicated Actions run succeeds and emits the four declared D2B1 theorem axiom reports with no `sorryAx` or compiler errors. If red, inspect the exact new diagnostics instead of inserting an assumption. Even if green, D2B1 remains a pointwise equivariant integrable average and does **not** yet prove `C_c^∞` smoothness/support, an L²-contractive physical projection, full physical-core density, or equivalence to the manuscript Hamiltonian. D2B remains open until actual physical-space norm closure equality is established.

No main merge, upstream PR, claim-ledger change or further automatic gate expansion.
