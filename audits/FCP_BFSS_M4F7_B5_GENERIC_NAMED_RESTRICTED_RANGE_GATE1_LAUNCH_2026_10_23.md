# FCP BFSS — B5 Gate #3 confirmed genuine recursion; change proof architecture to abstract range inclusion

**Date:** 2026-10-23. **Status:** B5 Gate #3 **strictly red, zero roots**; one separate abstract restricted-product-range supporting proof Gate #1 launched, verdict pending. **Principal accepted ledger 302 unchanged.**

## B5 original evidence

[Actions #39917611368](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39917611368), job `120294708236`, `completed/failure`. Original entire job log and actual Lean diagnostics examined independently. Exact frozen mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact source hashes, qualified C1–C4, V1, A3 and B4 imported caches and full no-hole preflight all passed.

Actual source `FCPM4F7NamedRestrictedVerticalB5SubmoduleInclusion.lean`, Git blob `60c6c56889cc36395645f03aaa20ade56bd3734e`, retained B5's exact theorem proposition and corrected both earlier source namespace opens. Native A3 `≤` unrestricted graph closure replaced the failed Gate #2 local-`G` graph-membership conversion.

**Fresh actual Lean compiler** returned the first and sole error:

```text
FCPM4F7NamedRestrictedVerticalB5SubmoduleInclusion.lean:74:12:
  error: maximum recursion depth has been reached
```

The precise source:

```lean
rw [← FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut
  color gamma theta hCAR hHermitian]
exact hp
```

The accepted C2 theorem's large *concrete* literal Set closure/membership expression is again too expensive to match against a source `Submodule` range hypothesis after unfolding A3. This recurrence is a **conversion/elaboration failure**, not mathematical falsity. The failed root's axiom report includes `sorryAx`; there is no qualified B5 cache and no accepted theorem. Fresh compilation `29.40s`, maximum RSS `7102620 KB`.

The complete forensic record is `audits/FCP_BFSS_M4F7_B5_GATE3_C2_CONCRETE_RANGE_MEMBERSHIP_RECURSION_RED_2026_10_23.md` committed `03ea01d9f34a1a5a28d977b2bc6249f574355e0f`.

## Revised proof architecture, not another cosmetic tactic attempt

The stopped pattern is using the C2 **full concrete set equality** merely to conclude the restricted raw graph is contained in the unrestricted raw graph. We do not need that powerful theorem for this small inclusion: it is an elementary generic property of restricting the domain of *any* pair of complex-linear maps, regardless of the physical-input predicate.

Staged genuinely abstract `experiments/openai-math-su2-physical-domain/FCPM4F7GenericRestrictedProductRangeInclusion.lean`, Git blob `8329a1f0d77c1a9d1639c8bfc0d1fd1c5206fa70`, source commit `73682a4ac7513fa3875fd12db3447661a9dd995b`. The source imports **only pinned Mathlib**; contains no BFSS `Lp`, `theta`, physical space, gamma, J or charge graph.

Two generic **supporting** declarations:

1. `FCP.M4F7GenericRestrictedProductRangeInclusion.restricted_product_range_le_named`: for abstract complex modules `X,Y,Z`, maps `a:X→ₗY, b:X→ₗZ`, opaque input submodule `S`, and opaque named graph `G` with *separately supplied* `hG:G=range(a.prod b)`, establish
```text
range ((a.comp S.subtype).prod(b.comp S.subtype)) ≤ G
```
by lifting the restricted graph witness `x:S` to an unrestricted witness `(x:X)`. No physical predicate, no C2 full Set equality and no source-level BFSS elaboration are involved in this proof.
2. `restricted_product_closure_le_named`: use Mathlib `Submodule.topologicalClosure_mono` on the first generic inclusion.

These statements are mathematically stronger for future operator architecture as opaque native-submodule interfaces, **not BFSS principal roots**.

The next concrete intended specialization, **not yet compiled**, will pass the strictly accepted `FCP.M4F6IndependentLiteralAliasBoundary.independentFullCoreGraph_eq_actualRange` (A1) to its abstract `hG`, and use actual `independentCoreToL2, independentChargeVector, independentInvariantCore` as named arguments. This does not reuse or rewrite the large C2 Set equality, so it tests a genuinely different elaboration boundary. If the concrete instantiation fails, preserve that exact first error; no loops of `exact/rfl/simpa` on raw BFSS membership.

## Narrow new gate and acceptance constraints

Path-only workflow `.github/workflows/bfss-m4f7-generic-restricted-product-range-strict-gate1.yml`, commit `0437ff8dec0dd3f7da4e7d4bf2f945b06985e0b1`, launched [Actions #39919002146](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39919002146), initially in progress. Adapted from actually accepted B2 Gate #3 workflow, including proven `mkdir -p .lake/build/lib/lean` output-directory guard, original BFSS provenance pin, pinned Lean 4.34.1 and Mathlib SHA. No BFSS dependency cache is needed, because generic source imports only Mathlib. Source SHA preflight checks exact source names, full absence of executable holes and BFSS concrete dependencies, no recursion-depth override, two correct `#print axioms` declarations. Fresh Lean `lake env lean -DwarningAsError=true`, 105-second compiler cutoff, exact two reports with whitelist only `propext, Classical.choice, Quot.sound`; no `sorryAx`, source errors or unexpected warnings; actual `.olean` saved under unique qualified cache only after whole-gate green `bfss-fcp-m4f7-generic-restricted-product-range-8329a1f0-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Original compiler and resource log archived regardless of outcome. Workflow source pins, self-trigger, output path/stem and YAML indentation statically verified before launch.

**Green** permits acceptance of two generic supporting interfaces only, ledger stays 302. **Red** requires first original actual Lean/compiler/runner error diagnosis before a corrective proof. No BFSS operator proof, physical Hilbert density, output physical invariance, Hamiltonian/domain equality, spectral comparison or mass gap is implied by generic theorem success.

Canonical `main`, unmerged PR #25 and original pinned BFSS math remain unchanged; preserve the entire negative-knowledge chain without maximizing superficially green CI.
