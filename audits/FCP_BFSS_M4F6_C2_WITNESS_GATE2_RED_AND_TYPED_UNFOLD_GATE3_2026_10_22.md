# FCP BFSS M4F6 C2 — Witness Gate #2 strict RED; explicit alias-boundary Gate #3

**Research date:** 2026-10-22 PDT (workflow runs complete on 2026-10-23 UTC). **Accepted principal ledger:** 297, unchanged. **C2 accepted roots:** 0. Original BFSS mathematical source, canonical `main`, draft PR #25 all unchanged.

## Immutable negative evidence — Gate #2

- [Actions #39890728887](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39890728887), job `120209587836`, run `completed/failure`, research workflow commit `e4ab3bfbb09c5bb4296a7bf563f4b1426274b6f0`.
- All original source and exact one-proof-diff candidate checks passed: `M4F6_C2_GATE2_EXACT_ONE_BODY_WITNESS_PROOF_DIFF_PASS`. Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`. Exact accepted M4F5 cache and C1 input-cut proof cache both restored and source import closure verified.
- One genuine C2 declaration failed while compiling the direct *witness-level* proof, not the original generic theorem application:

```
FCPM4F6IndependentGraphInputCutWitness.lean:56:19:
  error: maximum recursion depth has been reached
FCPM4F6IndependentGraphInputCutWitness.lean:58:20:
  error: maximum recursion depth has been reached
'FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut'
  depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
DIAG_RESOURCE_TIME 31.18 CPU 99% MAX_RSS_KB 7231532
```

The two positions are the `exact ⟨⟨x.val,rfl⟩,x.property⟩` and `exact ⟨⟨x,hx⟩,rfl⟩` constructors after `unfold independentFullCoreGraph independentInvariantCore`, `ext p`, and `rintro` witness destructuring. The entire Gate #2 was strictly RED, 0 roots accepted, no C2 cache save.

## Evolved diagnosis — *not* a mathematical counterexample

C2 Gate #1 failed at `exact core_graph_input_cut independentCoreToL2 ...` **without** explicit alias unfolding. C2 Gate #2 avoided applying the generic theorem and unfolded aliases, but the goal constructors then required Lean to infer reduction/definitional equality of expanded concrete L² graph-map expressions, again exceeding recursion depth.

These two independently grounded failures are consistent with a *conversion/elaboration boundary* involving large concrete `LinearMap.range`, `Submodule.comap`, independent physical-space and 16-charge maps. C1 original source specialization *did* pass, so do not declare all graph specializations impossible. There is no demonstrated missing mathematical premise nor theorem falsehood, but no strict proof of C2 exists yet.

The accepted generic lemma was proved by exactly this finite witness argument on abstract `a,b,P`. Do **not** spend successive CI runs merely trying equivalent destructuring tactics, unbounded `simp`, `dsimp`, unfolding the physical Hilbert-space definition or increasing `maxRecDepth`. Preserve this negative knowledge.

## Single discriminating architecture test — typed alias-boundary Gate #3

Staged `experiments/openai-math-su2-physical-domain/FCPM4F6IndependentGraphInputCutTypedUnfold.lean`, blob `7c33b8694c74bfff93efff1a445090f41c0a8fa5`, research commit `3d87be19471bc85c220a01c43bffcc56fedfcb7d`. The theorem statement (literal, J-free independently defined restricted sixteen-charge core graph equals independent unrestricted smooth graph with genuine physical input condition) and all hypotheses are byte-for-byte identical to frozen C2 Gate #1 blob `4db1bbd1685555a3c00efd836577186782ff08bb`; only this proof body changes:

```lean
  unfold independentFullCoreGraph independentInvariantCore
  exact core_graph_input_cut
    (X := IndependentTestCore E)
    (Y := Lp E 2 μ)
    (Z := SpinIndex → Lp E 2 μ)
    independentCoreToL2
    (independentChargeVector color gamma theta)
    (independentPhysicalSpace theta hCAR hHermitian)
```

**Scientific discriminator:** Gate #1 used generic application against concrete aliases; Gate #2 used concrete witness proofs against already unfolded aliases. Gate #3 explicitly unfolds **only two named mathematical aliases**, then applies accepted generic theorem with **all three structural types pinned**, seeking a syntactically aligned theorem target while avoiding elaboration of element witnesses. No original BFSS charge, physical-space or gauge action definitions are unfolded, no recursion-depth limit changes, no extra axioms or weakened target.

Exact 1-body diff is validated before toolchain setup. The self-triggered isolated strict CI is [Actions #39891517647](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39891517647), research workflow commit `b4858982e21bef441adc74dea6dd9010f616a807`, launched queued. It checks immutable BFSS original source and pinned Lean/Mathlib, accepted M4F5 and C1 caches, exact `-DwarningAsError=true` fresh compilation, *single* original C2 theorem name, `#print axioms` in `{propext,Classical.choice,Quot.sound}`, zero `sorryAx` and warnings/errors, and cache saved only on strict success. Original diagnostics archived on any outcome.

## Stopping criteria

- **Green**, once independently verified against completed original job, compiled theorem root, exact allowed axioms and saved cache: +1 principal root, cumulative **298**. Then compose paired source C1 + independent C2 with accepted M4F4/M4F5 unrestricted graph image and closure in separately qualified steps.
- **Red**, particularly another recursion at `exact` after explicit alias unfolding and typed application: **STOP tactical variants**. Escalate to the accepted inferred-type generic application artifact / intermediate *named theorem over opaque graphs*, inspect exact `show/pp.all` goal, and reassess whether any reduction is being forced by P's instantiated `Submodule.comap` or the graph-map codomain. Consider independent adversarial collaborator review with original source and full logs. Do not blindly launch Gate #4 or count any root.
- No conclusions about graph closability, operator physical domains, Hamiltonian correspondence or spectrum follow from C2 alone.

**Operational lesson:** The method of named narrowly scoped interfaces is already documented in program history. Preserve and follow it; do not misrepresent rediscovery as novelty.
