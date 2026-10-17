# BFSS SU(2) H5E8AZ — original physical charge domain density reduction Gate #2

**Date:** 2026-10-17 PDT. **Disposition:** `PASS__SOURCE_ORIGINAL_PHYSICAL_CHARGE_CORE_DOMAIN_INCLUSION_AND_CONDITIONAL_DENSITY__TWO_AXIOM_CLEAN_ROOTS`.

## Strict source and compiler provenance

- [H5E8AZ Original Physical Charge Domain Density Reduction #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39065429555) **SUCCESS**, source/workflow commit **`bfb3e633c9252bdf84499af0969a55bf5a8f30f6`**, strict job **117491997448**.
- Original source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AZOriginalPhysicalChargeDomainDensityReductionProbe.lean`, immutable Git blob **`cd900c47e2bcbccd0c8761df1beb69553430b68a`**.
- Frozen source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, Mathlib **`d13f23b723b8a846827a245b89c10fc7d3f11612`**, and original G1A accepted proof cache/source identities verified. All **22** AD–AZ original source charge/parity/Hilbert operator modules compiled, including accepted AY Gate #2, producing a fresh AZ OLEAN.
- Both exact root `#print axioms` reports used only **`propext`, `Classical.choice`, `Quot.sound`**, with **NO `sorryAx`**, no compiler `error:` or unverified imported density theorem. Strict marker `L6H5E8AZ_PHYSICAL_CHARGE_DENSITY_CONDITIONAL_REDUCTION_TWO_ROOTS_CLEAN_PASS`.
- Evidence artifact `bfss-su2-opposite-gamma-39065429555`, ID **12112239765**, digest **`sha256:c7e7a35fe71d922fde89df3ed341a28d04caa4388ec8855c0a168a8bb32077c6`**, retention through October 31, 2026.

## Exactly what has been formally proved

Namespace `FCP.BFSSSU2PhysicalDomainL6H5E8AZ`.

1. `originalMinimalPhysicalHilbertChargeColumn_core_mem_domain`: for every genuine original `f : G.invariantCore`, its real gauge-invariant L² embedding `coreToL2 f.val`, considered as an element of **the actual physical input Hilbert subspace**, belongs to the **natural domain of H5E8AY's accepted source-original physical-Hilbert/`PiLp 2` sixteen-charge `LinearPMap`**. Proof constructs the literal `(coreToL2 f.val, M.chargeVector f.val)` source core graph point, includes it in the accepted AU minimal closed graph, and transports it through AY's exact Hilbert graph-membership equivalence. **No source density assumption.**
2. `originalMinimalPhysicalHilbertChargeColumn_domain_dense_of_coreNormClosure_eq`: source-typed **conditional theorem** for arbitrary `N`, `M : AlgebraData N`, `G : M.GaugeData`:
   ```
   (hd : G.coreNormClosure = G.physicalSpace) →
   Dense ((originalMinimalPhysicalHilbertChargeColumn M G).domain :
     Set G.physicalSpace)
   ```
   First prove core-range inclusion in the true AY operator domain, then apply `Subtype.dense_iff` and `closure_mono`. `G.coreNormClosure` is precisely the pinned original `ClosedProfiles` topological closure of **the true gauge-invariant SmoothCore `coreToL2` range**. The displayed equality is an **explicit theorem premise**, not a new axiom, unspoken regularity condition, or an unconditional conclusion.

**Crucial limitation:** This green AZ theorem by itself is **NOT an unconditional proof that AY has a dense domain** in the source physical Hilbert space. The independently accepted physical Haar source theorem `FCP.BFSSSU2PhysicalDomainD2B10C.sourceCoreNormClosure_eq_physical_unconditional` at source `N = 2` is qualified in [Gate #47](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38033802017), exact source blob `5099e7720d5251b8b41c68c559800b619be332fe` and frozen pins, with an [independent source-boundary review packet](./BFSS_SU2_GATE47_INDEPENDENT_SOURCE_BOUNDARY_REVIEW_PACKET_0_1_0.md). **That historical theorem is NOT imported and its `.olean` proof objects were NOT restaged or checked by this AZ run.** A future dedicated jointly source-pinned theorem must actually apply:
```lean
originalMinimalPhysicalHilbertChargeColumn_domain_dense_of_coreNormClosure_eq
  M G (sourceCoreNormClosure_eq_physical_unconditional M G)
```
after verifying D2B10C is present in the **same** compiled source context. Only then can unconditional domain density be promoted and physical Hilbert adjoint theory invoked.

## Negative knowledge and CI maintenance

[AZ Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39064841425) RED due to missing original `OAI.MathematicalPhysics.BFSS.ClosedProfiles` source import, not a density gap. Source `G.coreNormClosure` is defined in that pinned original source module. Full first causal diagnostics and sole source-import repair are preserved in [AZ Gate #1 negative-knowledge audit](./OPENAI_MATH_BFSS_SU2_H5E8AZ_GATE_1_CLOSEDPROFILES_MISSING_IMPORT_NEGATIVE_2026_10_17.md). Repaired source adds only the exact missing source import; all 22 modules compiled in Gate #2. Gate #1 `sorryAx` output not accepted.

After successful Gate #2, [commit `9418f417c37c4dce989f8d5aa7c4ee53c91ec306`](https://github.com/etblink/Foundational-Convergence-Program/commit/9418f417c37c4dce989f8d5aa7c4ee53c91ec306) moves AZ strict workflow to **manual-only** requalification, to avoid repeated expensive builds from cumulative PR path matching. All exact source/hashes/allowlisted-axiom checks remain unchanged.

## Remaining actual mathematics

Next prioritized research theorem: true original BFSS SU(2) source `N=2` physical Hilbert charge **UNCONDITIONAL** domain density, by jointly building/importing the accepted D2B10C source Haar density proof and this AZ implication with a reproducible pinned dependency/cache plan. Then derive a genuine adjoint and `(1/16) T†T` associated self-adjoint Hamiltonian including its exact natural domain, and parity conjugation under qualified AX physical input and AT output Hilbert unitaries. Source D2B12/D2B28 historical deformed-model operator alias identification remains a separate bridge (old Gate93 cache unavailable on S3L PR).

The independent 2026 manuscript Cl(48)/Spin(48) physical/gauge unitary, Spin(9) isotype spectral theorem and infinitely many positive eigenvalue result remain distinct unproved research; no global BFSS mass gap is claimed.

**Governance:** source S3L research branch, PR #25 draft/open/unmerged; no edits to canonical main, original BFSS model/gamma signs, pinned Mathlib, gauge action, or any accepted AU–AY source module.
