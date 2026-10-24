# BFSS M4F9 H4B1 Gate #2 — RED: original AY graph rewrite produces isDefEq/whnf normalization exhaustion

**Disposition:** `M4F9_H4B1_GATE2_RED__H4A_EXACT_PARENT_HIT__MATCHING_WITNESSES_FIXED__SETLIKE_ALIGNMENT_FIXED__AY_GRAPH_REWRITE_ISDEFEQ_200000_HEARTBEATS__0_OF_1_ACCEPTED`.

**Original completed strict gate:** [run #40077994507](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40077994507), job **120825425157**, `completed/failure`, exact event commit **1a715951115b85cf632c12d4059d952800082f5e**. Candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H4B1NativeSourceIndependentGraphInclusion.lean` exact Git blob **03bd2a67ac7a2baab762d06cf3e21555e32ebbc3**. Workflow `.github/workflows/bfss-m4f9-h4b1-native-source-independent-graph-inclusion-strict-gate2.yml` blob **d7c899cf302f308452e97a2a12223d0d3dd0c78c**. Unfiltered diagnostics [artifact #12554077359](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40077994507/artifacts/12554077359), ZIP SHA256 **a3fa6712bd54b25e69933a7c50b919222595eb95b83dfe93e213fab88f99d29a**.

Original pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean **4.34.1**; Mathlib **d13f23b723b8a846827a245b89c10fc7d3f11612**. All source/provenance preflight PASS; exact accepted H4A Gate #1 parent cache `bfss-fcp-m4f9-h4a-native-physical-coordinates-7504f36e-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64` **restored HIT** and compiled ancestor inventory PASS.

## Original compiler diagnostic

```
FCPM4F9H4B1NativeSourceIndependentGraphInclusion.lean:123:8:
  error: (deterministic) timeout at `isDefEq`,
  maximum number of heartbeats (200000) has been reached
FCPM4F9H4B1NativeSourceIndependentGraphInclusion.lean:50:0:
  error: (deterministic) timeout at `whnf`,
  maximum number of heartbeats (200000) has been reached
```

**Line 123 is the source AY graph rewrite:**
```lean
rw [originalMinimalPhysicalHilbertChargeColumn_graph_eq]
```

Gate1 [run #40077329561](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40077329561) had source proof-only hColor/hGamma identifiers omitted and a source graph membership type mismatch at final `simpa`. In Gate2, explicit `include color gamma hColor hGamma` resolved missing parameter errors and an explicitly typed `change _ ∈ (pairedGaugeData.deformedModelGraph 1 0 : Set ...)` eliminated the previous terminal source SetLike membership mismatch. Their disappearance narrows the remaining problem to elaborating the huge AY graph rewrite itself. The second whnf timeout is consequent theorem elaboration. Neither represents a mathematical counterexample. The post-error `does not depend on any axioms` is **not** acceptance.

**Strict result: RED / 0 new roots accepted / no qualified H4B1 cache.** The working principal root tally remains **309** (independently unreconciled globally); H4A Gate1's three SUPPORT roots and earlier H3B2 support roots retain independent acceptance. Original source, main and older draft PR unchanged.

## Concrete architecture change required BEFORE another gate

Do not rerun the same `rw [originalMinimalPhysicalHilbertChargeColumn_graph_eq]` inside the huge native independent graph proof or merely increase heartbeats. Split off a **typed, source-only membership bridge** from H3B1 physical PiLp graph to the ACTUAL source `pairedGaugeData.deformedModelGraph 1 0`, using the already strictly qualified `FCP.BFSSSU2PhysicalDomainL6H5E8BF.originalMinimalPhysicalHilbertChargeColumn_graph_eq_sourceRebased` *with explicit `pairedAlgebraData pairedGaugeData` arguments* and H3B1 `pairedOriginalPhysicalHilbertChargeGraph_mem_iff`. Prove it as a small separately typechecked source identity, without unfolding the original AY graph or re-deriving the BF source equality.

In the full H4B1 theorem, retain proven H4A 17-slot equality and DE4 named source image, but close the original graph membership through this new **already typed** source helper. This parallels successful DE4 Gate5 composition via named `Eq.trans` and H3B2 Gate3 projection instead of global normalization.

**Stop criterion:** another deterministic `isDefEq/whnf` failure at the unchanged AY graph rewrite requires replacing the rewrite architecture, not a speculative timeout escalation. Any new gate must pin fresh source/workflow hashes, exact H4A parent, explicit all source matching hypotheses, strict one-root axiom inventory and saved cache; no implicit acceptance of a locally clean fragment. Preserve Gates1/2 as red after future green.

No independent–source native charge equivalence, full natural-domain conjugacy, associated adjoint/H equality, Spin(9) reduction, positive eigenvalues or mass gap has been proved by H4B1.