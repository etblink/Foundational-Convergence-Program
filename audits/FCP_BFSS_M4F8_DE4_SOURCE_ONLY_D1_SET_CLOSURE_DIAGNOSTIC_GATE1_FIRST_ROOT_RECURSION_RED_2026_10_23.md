# BFSS M4F8 DE4 — source-only D1 Set closure diagnostic Gate #1 RED at first root

**Disposition:** `DE4_SOURCE_ONLY_D1_SET_CLOSURE_DIAG_GATE1_RED__FIRST_GENERIC_CLOSURE_LEMMA_ELABORATION_RECURSION__SECOND_DEPENDENT_SORRYAX__ZERO_ACCEPTED__PRINCIPAL_308_HELD`.

Independently inspected original [GitHub Actions run #40057400267](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40057400267), job `120763303902`, `completed/failure`, exact workflow triggering commit `0e7452bad066b4c4364de2d0e994a443fa36541b`. Original artifact [#12545968019](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40057400267/artifacts/12545968019), digest `sha256:bda4eb38d39e6c2109107d072fb20294d76d22804616a88623894bd89f36833d`.

Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact qualified E4, DE3, DE3C cache restores all succeeded; source preflight passed. Source diagnostic `FCPM4F8DE4SourceSetClosureDiagnostic.lean`, exact Git blob `cb07e59d73e4e779cc66e8a297f4466931aea1ac`. Fresh Lean reached the FIRST source-only diagnostic:
```
FCPM4F8DE4SourceSetClosureDiagnostic.lean:40:8:
error: maximum recursion depth has been reached
```
Line 39-40 are:
```lean
  unfold FCP.BFSSSU2PhysicalDomainD1.originalRestrictedClosedGraph
  exact Submodule.topologicalClosure_coe _
```
The underscore requires Lean to synthesize the original huge 17-slot BFSS source `LinearMap.range` submodule argument during the closure coercion. The first `#print axioms` includes `sorryAx`; the second `pairedSourceNamedGraph_eq_explicitRestrictedClosure` `#print axioms` also includes `sorryAx` **as a consequence of first-root failure**, not a separately demonstrated false statement or independently isolated second-root compiler issue. Resource 9.95s and 6,990,064 KB RSS. No accepted root; no cache save.

**Evidence-driven next fix:** Use precisely `simp only [FCP.BFSSSU2PhysicalDomainD1.originalRestrictedClosedGraph, Submodule.topologicalClosure_coe]` to rewrite the LHS syntactically without passing an inferred giant submodule `_` to an explicit `exact` call. This conversion already completed without compiler failure in the DE4 Gate #3 proof (that gate's failure was only on the subsequent full DE3 theorem `exact` application). Retain literally unchanged two diagnostic theorem statements, source original BFSS definitions and all 3 pinned exact-qualified caches. Strictly validate **both** fresh proofs before any acceptance; if first root passes but second fails, classify separately. Only after this source-only gate green can the staged DE4 source-transport transitivity proof be run and strictly accepted. No Hamiltonian or spectral extrapolation.

**Principal theorem ledger 308**; all E4/DE3/DE3C remain accepted, original main source untouched.
