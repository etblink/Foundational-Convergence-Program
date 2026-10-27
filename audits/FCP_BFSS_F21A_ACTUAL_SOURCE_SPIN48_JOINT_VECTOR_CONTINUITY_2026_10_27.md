# FCP BFSS F21A — actual Spin48 source vector joint continuity

Candidate status: not accepted until native strict CI; S4 tally remains 63.

Original mathematical source etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a, Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Exact experimental source experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5F21AOriginalSpin48SourceVectorActionJointContinuityProbe.lean blob b029b35a827e099d000d6966c69a7bb7fc84b2a6.
Proposes (1) originalSourceCliffordGenerator_closedEmbedding: genuine source Clifford degree-one injection is a closed embedding in accepted PBW coordinate topology, using the proven native S1V30 injectivity and finite-dimensionality;
(2) originalSourceSpin48VectorAction_joint_continuous: the canonical native actual Spin48 Clifford-conjugation 48-real source vector action is jointly continuous by product/star continuity and the original closed embedding.

All group definitions are the accepted F20F original Clifford-subtype Spin48, no new group/topology and no alternate gamma basis. Strict workflow .github/workflows/bfss-s1v52l9e5f21a-source-spin48-action-continuity-strict.yml requires both qualified F20F and S1V35 parents, restores source exact Lean and Mathlib, imports original parents, checks both exact theorem names and permitted axioms, refuses warnings and sorry. The prior source-indexing Gate40478381697 is finite green, not a Lean result.

Scientific stop: this continuity alone is NOT a two-sheeted covering Spin48→SO48; must separately prove kernel {±1}, full SO48 image, and covering local structure. No continuous Spin9→Spin48 homomorphism and no physical spectral eigenstates are established. A red original CI is evidence; do not rewrite accepted ancestors or widen axioms.

## Gate 1 CI #40480060868 — rejected due absent unnecessary S1V35 binary cache

Source commit 928562b92ab5514d051922b84594bbad7635eb47, job 122107833125, red. Source/blob/toolchain/Mathlib preflight passed; pinned toolchain restored. F20F genuine original Spin48 PBW topological group v2 cache restored with a proven exact hit. The second S1V35 real-linear-group-hom cache key was not found (specific log: F21A_S1V35_QUALIFIED_CACHE_MISSING). No native candidate Lean source was compiled; zero F21A theorems admitted. Not a counterexample to continuity.

Source analysis: F21A imports S1V31 canonical real source vector action, not S1V35 real GL group hom. The already independently qualified S1V34 original Spin48 quadratic IsometryEquiv cache contains S1V31 and was itself restored successfully by S1V35's historical qualified gate. Correct dependent restore is S1V34 exact cache key bfss-s1v34-isolated-spin48-quadratic-isometry-equiv-v1-adc7f124-lean4341-d13f23b-Linux-X64. Switch only that second cache key, step ID and associated error report; retain F20F, exact original theorem blob b029b35a827e099d000d6966c69a7bb7fc84b2a6 and entire mathematical code unchanged.

Gate 2 must independently verify S1V34 cache availability and original S1V31 native imports, then strict compilation and original axiom reports. Do not infer theorem correctness from cache restoration. Existing accepted S4 count 63 unchanged.

## Gate #2 — CI run #40480945949, second qualified cache miss (zero roots)

[Completed GitHub Actions run #40480945949](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40480945949), job `122110800482`, source commit `bca4d789aa25160154610ac453e564373e46fac8` and current branch `eb1ead78230370f28c0e230fad65b5e3b041490e`, completed red. Exact source pins and two-root preflight, Lean 4.34.1/Mathlib `d13f23b`, and genuine F20F Clifford PBW TopologicalGroup v2 parent cache all succeeded. Historical S1V34 quadratic isometry ancestor cache **was not found**; exact original log:

```
Cache restored from key: bfss-s1v52l9e5f20f-original-spin48-topological-group-v2-adc7f124-lean4341-d13f23b-Linux-X64
Cache not found for input keys: bfss-s1v34-isolated-spin48-quadratic-isometry-equiv-v1-adc7f124-lean4341-d13f23b-Linux-X64
F21A_S1V34_QUALIFIED_CACHE_MISSING
```

As with Gate #1, not a mathematical counterexample: native parent import and F21A theorem compilation were never reached; no additional axiom reports. **+0 roots** and the independent S4 family count remains **63**. Do not attribute this to Lean elaboration or introduce unqualified surrogate vector actions.

### Correction for Gate #3 — source-targeted native projection cache, early validation

The existing strict L9D9 source-genuine native universal Spin48 projection workflow `.github/workflows/bfss-s1v52l9d9-original-native-spin48-universal-projection-strict-gate2.yml` itself requires `SU2BFSSPhysicalDomainS1V30...olean`, `S1V31...olean` and `S1V32...olean` after original-source Lean compilation and saves the completed original `SU2*.olean` binary ancestry with cache key:

```
bfss-s1v52l9d9-native-universal-spin48-projection-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

That dependency chain is closer to F21A's **actual imported native real vector action** than S1V34. Gate #3 replaces the unavailable S1V34 restore with the L9D9 accepted-source restore, retains the independently green F20F v2 restore, and moves both cache restore and fail-closed `.olean` existence checks ahead of disk removal and Lean/Mathlib installation. The expensive toolchain may start **only if both cache hits and all three actual source ancestor modules exist**. If L9D9 cache has expired or modules are absent, this will be an early and precisely attributed infrastructure failure, not a theory rejection. If source ancestry is present, the existing native parent consumer and exact fresh F21A Lean compilation (two allowed-axiom roots, no warnings, `sorryAx` rejection) remain unchanged. Workflow-only change: candidate Lean proof blob `b029b35a827e099d000d6966c69a7bb7fc84b2a6` remains exact.

Do not claim the source Spin48→SO48 2-sheeted covering or source Spin9 lift even on successful F21A continuity; those are later separate obligations.
