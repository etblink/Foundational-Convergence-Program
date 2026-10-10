# BFSS SU2 G4-K8E4 — Gate #161 warm cache and source bridge repair diagnosis 0.1.0

**Date:** 2026-10-09. **Disposition:** `RED__NAMESPACE_REPAIR_REQUIRED`. The prospective G4-K8E4 **overall remains UNQUALIFIED**, notwithstanding kernel-compiling partial lemmas.

## Verified run provenance and results

- [BFSS SU2 Concrete Color Gate #161](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38005904603), run `38005904603`, job `114074520632`: **FAILURE**, tested exact commit `0b16e1e5eb7086d2903e806caba5e660ff964d45`. Candidate source blob `1bb828afb48bea04298a03a5324c103861087153`.
- **Warm compiled-object cache HIT**, restoring `bfss-su2-accepted-g4k8e3-v1-31849ff72d569d38a18988e62e371c6b6f3e256c-Linux-X64-6aca76520618a7a61cf23fde5aff9bff07bb67af36ad54c9d9482f25e5789071`. Cache object checks passed. Independent Gate #159 final Lean compilation passed. Approximate wall-clock end-to-end runtime 3m05s versus ~26m cold compile in Gate #160. This measures real warm-cache saving, without changing the proof standard.
- The G4-K8E4 new source bridge was compiled with pinned Lean 4.34.1, original OpenAI Math and Mathlib revisions. Its first **four** #print axioms reports were precisely `[propext, Classical.choice, Quot.sound]` with no `sorryAx`:
  1. `sourceCoreToL2_injective`;
  2. `sourceCoreToL2_ne_zero`;
  3. `physicalInteractingCoreCharge_massless_L2_ne_zero`;
  4. `physicalInteractingCoreCharge_one_L2_ne_zero`.
- However, compiler errors at source lines 74, 81, 87 reported unknown identifier `physicalDeformedEnergy`, and line 88 unknown `radialBumpL2_norm_sq_pos`. The later three energy-related declarations consequently had `sorryAx` reports and are **not qualified**.

## Root cause and minimal next candidate

- Original `physicalDeformedEnergy` is literally defined in `FCP.BFSSSU2GaugeG4K6` in the pinned accepted `SU2BFSSG4K6PhysicalTrialEnergyLowerProbe.lean`.
- Original `radialBumpL2_norm_sq_pos` is a theorem in the **same namespace**. The current G4-K8E4 source imports the module transitively, but opens K8E3, K7, K3, K2B and G1A—not K6. Previously compiled K8C explicitly opens `FCP.BFSSSU2GaugeG4K6` to use the same constants.
- **One-line repair**: add `open FCP.BFSSSU2GaugeG4K6` to G4-K8E4 imports/open declarations. There is no proposed change to any theorem statement, proof body, source object, pinned dependency, cache key or workflow.
- This repair is **UNCOMPILED** until the next owner-reported gate. Do not infer the remaining energy proofs are qualified merely because the identifiers should resolve. Keep G4-K8E4 as unqualified until all seven exact axiom reports pass.

## Scientific boundary

The first four L² bridge declarations passed the compiler but are recorded as provisional subresults pending an accepted full gate. If the full candidate passes, this gives original source interacting charge L² nonzero for all h at m=0, potentially followed by strict positive energy at h=1 for **one** original physical trial state. It still does not establish a BFSS spectral lower bound, global infimum, ground state or mass gap. No physical assumptions, operators or auxiliary axioms are introduced by the repair.
