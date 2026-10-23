# FCP BFSS — C5A raw independent graph range witness, strict Gate #1 controlled launch

**Date:** October 23, 2026 PDT. **Status:** C5 Gate #1 red formally diagnosed and audited; C5A Gate #1 in progress at last status check. **Principal accepted roots: 302 (unchanged).**

## Why the source-exact C5 closed-graph inclusion attempt stopped

[GitHub Actions C5 #39920173949](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39920173949), job `120303226667`, original Lean compiler output examined. All pinned source/toolchain `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact A3 and independently qualified generic range caches restored. The only concrete theorem failed at `FCPM4F7IndependentNamedClosedGraphRangeInclusionC5.lean:51:8`:

```
(deterministic) timeout at `whnf`, maximum number of heartbeats (600000)
```

The proof had unfolded only A3's named outer closed graph definition and then attempted `exact generic.restricted_product_closure_le_named independentCoreToL2 independentChargeVector independentInvariantCore independentFullCoreGraph A1.hG`. Lean expended 600k heartbeats normalizing concrete independent BFSS charge and graph expressions while elaborating that general closure theorem application. First failure, distinct from B5 Gate #3's C2 Set membership recursion. C5 axiom report had `sorryAx`, fresh 53.36 s/7048800 KB; no qualified cache or new root. Full forensic audit `audits/FCP_BFSS_M4F7_C5_GATE1_GENERIC_SPECIALIZATION_WHNF_HEARTBEAT_RED_2026_10_23.md`, commit `36c3a9cb69ca9bd7e9ef255d4cccafc1000770de`.

Do not retry the same giant `exact/simpa/change`, raise `maxHeartbeats` or `maxRecDepth` to hide this red, or treat the generic proof as a concrete theorem.

## A new mathematical cut — raw range witness before graph closure

New original-source-specific module `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentRawGraphRangeWitnessC5A.lean`, immutable blob `0aa2c2481e56673d2ba8cc104d85481d44c30784`, research commit `5c4247135c3fe4055d6c9788233bb59c5829c684`.

Exactly one theorem candidate:
```lean
FCP.M4F7IndependentRawGraphRangeWitnessC5A.independentRestrictedRawGraph_le_fullRawGraph
```

The theorem preserves exact CAR/Hermitian, original color/gamma/theta, and actual independent graph linear maps; it asserts only the **raw complex-linear submodule inclusion**:
```
range ((independentCoreToL2.comp invariantCore.subtype).prod
  (independentChargeVector.comp invariantCore.subtype))
≤ independentFullCoreGraph color gamma theta.
```

The proof takes `p` with a restricted raw graph witness `w : independentInvariantCore theta hCAR hHermitian`, applies already strictly accepted A1 `independentFullCoreGraph_eq_actualRange`, and exhibits its unrestricted witness `(w : _)`. Unlike C5 Gate #1, it does **not** import or specialize the generic closure theorem, and does not expand A3's closed graph or C2's set equality. Thus it probes a **different, smaller concrete elaboration boundary**. It is not a validated theorem yet.

## Controlled strict Gate #1

One isolated, self-path-only workflow `.github/workflows/bfss-m4f7-independent-raw-range-c5a-strict-gate1.yml`, commit `293ad33e1fea7a9c2bff9dccaccbc0773f1099b7`, [Actions #39921615306](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39921615306) in progress at first status check.

It inherits original pinned math/source integrity tests, Lean 4.34.1 and pinned Mathlib restoration, qualified predecessor C1–C4/V1 and source-A1 alias imports/cache closure. Source SHA-pinned actual C5A file and accepted A3 CAR hypothesis byte-match; requires the certified A1 actual full-graph range equality, an explicit actual restricted-core witness, zero topological closure inside the new theorem proof, zero C2 set equality or A2 closure alias, no holes or recursion overrides. Fresh `lake env lean -DwarningAsError=true` with 105s bound, exact one `#print axioms` qualified theorem containing only `propext, Classical.choice, Quot.sound`, no `sorryAx`, source errors/warnings; writes .olean and saves unique qualified cache only on all green:
```
bfss-fcp-m4f7-independent-raw-range-c5a-0aa2c248-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Original compiler/resource log artifacts uploaded on all outcomes. Static source SHA, original math pins, cache save key, exact theorem/report count and workflow indentation checked before launch.

**Next decision:** If C5A compiles with strict axioms and reusable cache, treat it as a supporting *raw graph inclusion only*. Then separately qualify `Submodule.topologicalClosure_mono` applied to the source-exact A3 named graph in a second minimal proof, before B4 vertical and a genuine independent J-free closed `LinearPMap`. If C5A red, inspect exact first compiler error; do not revive expensive literal membership conversion or chase green with arbitrary heartbeat increases.

Even a green C5A **does not raise the 302 principal theorem-root count**, does not prove a closed operator, physical-domain density, physical charge output invariance, Hamiltonian/source operator/domain identity, spectral equivalence or mass gap.

Canonical `main`, unmerged draft PR #25 and frozen original BFSS mathematics untouched. FCP governance: preserve truth and negative knowledge, not CI color.
