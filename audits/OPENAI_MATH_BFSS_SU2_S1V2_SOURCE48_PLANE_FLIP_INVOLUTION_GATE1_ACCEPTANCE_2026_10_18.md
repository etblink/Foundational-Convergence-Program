# BFSS SU(2) S1V2 — strict source-48 plane-flip involution acceptance

**Research date:** 2026-10-18 PDT; CI completed 2026-10-19 UTC.  
**Disposition:** `S1V2_STANDALONE_SOURCE48_ROTOR_INDUCED_PLANE_FLIP_INVOLUTION_4_ROOTS_KERNEL_PASS__ORIGINAL_S1V3_IMPORT_BRIDGE_OPEN`.

## Qualification evidence

- Strict [GitHub Actions S1V2 run #39208029778](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39208029778), job **117915021618**, conclusion **SUCCESS**, started at exact checkout commit `1343871087def4ceecc7bd098eae39fb45ff72fb`.
- Pin-checked `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Exact new source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V2StandaloneSpin48PlaneFlipInvolutionProbe.lean`, Git blob `7a8c80dd7ef8a8772d4ffb9b2611a7bd31096d50`; exact workflow `.github/workflows/bfss-s1v1-standalone-spin48-cold-mathlib.yml`, blob `83a81786578b370e99446a865490ca9595bda8f5`.
- Recompiled S1V0 exact 48-vector geometry and S1V1 actual `spinGroup Q` inner conjugation from their accepted source blobs. All dependency strict steps **SUCCESS**, without relying on PR #25 cross-branch caches.
- Four exact `#print axioms` roots:
  - `FCP.BFSSS1V2.sourcePlaneFlip_ortho_coefficient_first`;
  - `FCP.BFSSS1V2.sourcePlaneFlip_ortho_coefficient_second`;
  - `FCP.BFSSS1V2.sourcePlaneFlip_complement_fixed`;
  - `FCP.BFSSS1V2.sourcePlaneFlip_involution`.
- Every source-root report was **only** `[propext, Classical.choice, Quot.sound]`, without `sorryAx` or errors. Fresh `.olean` was written and checked. The strict job printed `S1V2_SOURCE48_SPIN_PLANE_FLIP_INVOLUTION_4_ROOTS_KERNEL_PASS`.

## Mathematical result

The original-sized 48-real Majorana label vector space is `V=(Fin 24 × Fin 2)→ℝ`, with exactly the original source quadratic formula `Q(v)=Σ_i v_i²`. For any two orthogonal Q-unit vectors `a,b` the accepted S1V1 rotor gives an explicit conjugation action on all Clifford generators, `ι(v)↦ι(F(v))`, where

```
B = QuadraticMap.associated Q
c(v) = v - B(a,v) • a - B(b,v) • b
F(v) = -B(a,v) • a - B(b,v) • b + c(v).
```

S1V2 **now additionally kernel-proves** the source-exact coefficient reversals `B(a,F(v))=-B(a,v)` and `B(b,F(v))=-B(b,v)`, fixed complement `c(F(v))=c(v)`, and hence

```
F(F(v)) = v
```

for EVERY `v`, not only those given in an externally supplied orthogonal decomposition. This is the actual local Spin rotor's defined vector action, not the assertion of an abstract Spin48→SO48 covering, and not a substitute representation.

## Active exact original-source integration candidate: UNQUALIFIED

File `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V3ActualOriginalSourceSpin48BridgeProbe.lean`, blob `998bb5d5b1423683843b07eb153a240acc72a2dc`, was staged **without triggering CI**. It states explicit typed links from `FCP.BFSSSU2PhysicalDomainS1P0.Source48Vector` and `source48Quadratic` to the accepted standalone `FCP.BFSSS1V0` definitions, identifies the ORIGINAL `FCP.BFSSSU2PhysicalDomainS1S.sourceSpinPair` with the S1V1 Spin word as an equality of underlying Clifford elements, and transports the accepted all-vector conjugation theorem to the original S1S element.

**Important:** S1V3 imports the heavy original S1S closure and HAS NOT BEEN LEAN COMPILED or axiom audited. Any supposed `rfl` or typed interoperability theorem is a proof CANDIDATE until the identical source and original-import prerequisite closure pass strict CI. Do not list S1V3 as green. The previous isolated original-import S1V Gate #1 failed at `PINNED_LEAN_CACHE_MISSING` without compiling the theorem, so repeating that workflow unchanged would consume time without new mathematical evidence. Do not trigger PR #25's accumulated workflows to obtain a cache.

## Next research work

- Find a bounded **original-source qualified integration** path for S1V3, using existing accepted immutable modules without modifying the original PR. If impossible within an isolated gate, preserve S1V3 as unqualified and continue independent block Spin3 construction.
- Source-exact SU(2) normalized +i Pauli color half-turn and S1L's color-first label bridge remain crucial. Prove actual 16 orthogonal even Clifford block embeddings, cross-block commutation, group law, center signs and continuity; these have not yet been checked.
- Independent manuscript complex Clifford module, physical charge/Hamiltonian domains and global Spin9/spectral claims remain OPEN. A local 48-label involution does not justify a positive point-spectrum or mass-gap claim.

## CI and governance

Exactly one **intentional** new workflow run was launched for S1V2, using the isolated branch and a workflow-file-only push trigger; source-only S1V2 and S1V3 commits triggered none. Research active draft PR #25 and canonical main were left unchanged; no merge or PR creation was performed. Preserve source hashes, first causal error diagnostics and future reviewer succession instructions.
