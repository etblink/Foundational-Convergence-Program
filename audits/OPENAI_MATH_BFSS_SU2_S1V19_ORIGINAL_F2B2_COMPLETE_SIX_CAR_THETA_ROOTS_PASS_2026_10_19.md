# Original SU2 Fock F2B2 complementary Majorana CAR chain — six axiom-clean roots ACCEPTED

**Date:** October 19, 2026 PDT.  
**Strict Gate:** [#39281928744 GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39281928744), job `118157756533`, isolated checkout SHA `55fa887176c68438c2a700e5b8f30cb506ad666a`.  
**Pinned OAI:** original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The job exact-key restored the previously accepted 13-root Fock F1/F2/F2B/F2B2 base and its original OAI dependencies. It then compiled the following SIX ORIGINAL source modules, in the original dependency order, and strictly audited their corresponding `#print axioms` declarations:

| Module | Immutable Git blob | Qualified root |
|---|---|---|
| `SU2FermionF2B2ImagProbe` | `c2b0f0dd651fd9c8786be475adf531aed1f2f6f4` | `majorana1_car_all` |
| `SU2FermionF2B2MixedProbe` | `3da7fc2293313a9db570f74e7ba6636f0719684c` | `majorana01_car_ne` |
| `SU2FermionF2B2MixedDiagProbe` | `5268e6e81614e12a98a19090c563be39db224ea8` | `majorana01_car_self` |
| `SU2FermionF2B2MixedAllProbe` | `7afb106bc5f5af98a973fcd6a4ee61b99dbcc036` | `majorana01_car_all` |
| `SU2FermionF2B2IndexedProbe` | `a61f2e3080a60b18a9298336a79643b2d25359a2` | `majoranaCandidate_car` |
| `SU2FermionF2B2ThetaProbe` | `04acfa41a3ab0183bb9038549c0ef8c6fba68c23` | `thetaCandidate_CAR` |

All SIX printed root axiom lists contain ONLY `[propext, Classical.choice, Quot.sound]`. Fresh nonempty `.olean` source artifacts and no `sorryAx`/compiler errors were enforced. Runner terminal marker:

`ORIGINAL_FOCK_F2B2_IMAG_MIXED_ALL_INDEXED_THETA_6_ROOTS_KERNEL_PASS`.

The runner actually saved the combined pinned original OAI and Fock sources cache at:

`bfss-s1v19-isolated-f2b2-complete-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

**Next intentionally launched separate gate:** [#39285628113](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39285628113), the original F3 `Invariant→Recovery→B1 Occupation→B2 BasisAction→B3 Projector→B4 Selector` chain, with thirteen explicit `#print axioms` roots and exact restore of THIS accepted F2B2 cache. Its status must be checked separately; no assumption of a pass is permitted before logs and conclusion are inspected. Later F3B5 `occupationExpansion` is intentionally a separate expensive proof boundary.

No Fock irreducibility completion, original G1A gauge-data bridge, global Spin lift or physical BFSS spectrum theorem is inferred from these CAR foundations. Work on isolated branch only; PR25/main untouched.
