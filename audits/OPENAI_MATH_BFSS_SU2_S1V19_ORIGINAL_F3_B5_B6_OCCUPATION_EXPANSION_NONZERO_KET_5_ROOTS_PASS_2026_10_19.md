# BFSS SU(2) — Original F3B5 Occupation Expansion and F3B6 Nonzero Occupation Ket ACCEPTED

**Research date:** October 19, 2026 (PDT).  
**Strict GitHub Actions qualification:** [Original F3 Occupation Expansion And Ket Strict Gate #1, run #39288103400 — GREEN](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39288103400), job `118181316767`, checked out source commit `c0b8905596cf2d7d837642f11fed9304cffc3e0a`.  
**Exact original OAI dependency pin:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`. Toolchain Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.  
**Accepted cache actually saved:** `bfss-s1v19-isolated-f3b6-occupation-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

## Original mathematical roots, no new axioms

The gate **restored** the original axiom-qualified F3B4 occupation-selector compiled cache, checked a nonempty `SU2FermionF3B4SelectorProbe.olean`, and compiled two unchanged original Fock source modules with fresh nonempty `.olean` artifacts:

| Original file | Source Git blob | Strict qualified roots |
|---|---|---|
| `SU2FermionF3B5CoordinateProbe.lean` | `594b8f2b95b190d6e0084f04094120c05ac140a6` | `FCP.BFSSFermionF3B5.occupationExpansion`, `occupationSelector_apply` |
| `SU2FermionF3B6NonzeroKetProbe.lean` | `7065e9c7ab30c3be2c1fb0358e2912a0e716244b` | `FCP.BFSSFermionF3B6.thetaInvariant_occupationSelector`, `exists_nonzero_occupationCoeff`, `thetaInvariant_contains_occupationKet` |

The runtime printed **all five** precise Lean `#print axioms` declarations with only `[propext, Classical.choice, Quot.sound]` and no compiler error or `sorryAx`. The strict parser independently qualified **two** and **three** root names respectively, and the successful job emitted:

```
ACCEPTED_ORIGINAL_F3B4_SELECTOR_MODULES_RESTORED
SU2FermionF3B5CoordinateProbe ORIGINAL_F3B5_B6_AXIOM_CLEAN_PASS 2
SU2FermionF3B6NonzeroKetProbe ORIGINAL_F3B5_B6_AXIOM_CLEAN_PASS 3
ORIGINAL_FOCK_F3_B5_B6_OCCUPATION_5_ROOTS_KERNEL_PASS
Cache saved with key: bfss-s1v19-isolated-f3b6-occupation-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

**Interpretation:** The original source occupation expansion and extraction of a nonzero occupation ket from a nontrivial theta-invariant subspace are kernel-qualified. The historically expensive `occupationExpansion` is now explicitly requalified in this branch. This is source Fock geometry, not yet the global F3 irreducibility theorem itself, which additionally needs signed-mode reachability and invariant-submodule dichotomy.

## Next strictly scoped gate

[Original F3 Signed Reachability And Irreducibility #39289623155](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39289623155) deliberately tests original files `F3B7SignedMode`, `F3B8LocalReachability`, `F3B9FiniteReachability`, `F3C1SubmoduleDichotomy` and `F3C2ThetaFields`, and 14 exact named roots, from this accepted F3B6 cache. **This next gate is UNQUALIFIED until its full CI verdict, logs, and axiom audit pass.** Its proof conclusions must not be back-propagated into this accepted audit.

If the next gate passes, the correct next step is to qualify original `SU2BFSSFullAlgebraDataProbe`, G1A/G1B, G2A/G2B and G3A/G3B in explicit source-sized cache layers, then the original S1G and S1J imports with S1V19/S1V20's new typed original quarter-turn identification. The separate S1V21 upstream coefficient theorem is already accepted conditionally, with explicit `hcolor` and `hg` premises.

**Open physical obligations:** Continuous all-group SU(2)→Spin(48) lift, its original central sign and norm-continuity, actual original Fock-module intertwiner, original Hamiltonian operator-domain identity, and spectral/mass-gap conclusions are not established by these source Fock algebra roots.

## Repository governance

Only isolated `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018` branch and its path-scoped workflows were modified. Original pinned OAI source, active PR25 branch, and `main` remain untouched. No merge or broad historical PR Actions trigger was performed.
