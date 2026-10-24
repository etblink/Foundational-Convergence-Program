# FCP BFSS M4F9 H4C2A Gate #1 — RED: output inverse-unitary rewrite isDefEq/whnf exhaustion

**Disposition:** `M4F9_H4C2A_GATE1_RED__H4C1B_QUALIFIED_PARENT_HIT__SRC_FORWARD_SINGLE_VALUED_TACTIC_REACHED__OUTPUT_UNITARY_RW_ISDEFEQ_200000__WHNF_200000__ZERO_ACCEPTED`.

**Original complete strict evidence:** [GitHub Actions run #40084035125](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40084035125), job **120843208882**, `completed/failure`. Original event commit **367a88846fe218d3c2983574ad1b94ac1e9db831**, original source `experiments/openai-math-su2-physical-domain/FCPM4F9H4C2ANativeSourceReverseChargeGraph.lean` exact source Git blob **7f1edfe01e13c2dc5106bbe7ef24cc1f06cd0290**. Gate1 workflow `.github/workflows/bfss-m4f9-h4c2a-source-native-charge-graph-reverse-strict-gate1.yml` exact blob **0fe700ff2610be10552471da34d0b76274c1b1fa**.

Source pins: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. All source SHA/root preflights and restoration passed; mandatory **H4C1B Gate1 exact parent cache HIT**:
```
bfss-fcp-m4f9-h4c1b-native-domain-8c0e1aa8-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
Accepted H4C1B source-native domain recovery, H4B1C forward native source graph, actual AY source graph and H2A output Hilbert unitary compiled ancestors verified present.

## Precise original errors

```
FCPM4F9H4C2ANativeSourceReverseChargeGraph.lean:78:8:
  error: (deterministic) timeout at `isDefEq`,
  maximum number of heartbeats (200000) has been reached

FCPM4F9H4C2ANativeSourceReverseChargeGraph.lean:43:0:
  error: (deterministic) timeout at `whnf`,
  maximum number of heartbeats (200000) has been reached
```

Exact first failing candidate line:
```lean
  have hLift : V.symm p.2 = v := by
    rw [← hOutput]    -- LINE 78, excessive inverse-unitary PiLp definitional equality
    exact V.symm_apply_apply v
```

The previously established `hOutput : V v = p.2` followed `LinearPMap.mem_graph_snd_inj'` on the actual source AY `LinearPMap` graph, with H4C1B source domain recovery and H4B1C forward source graph. Neither the DE4 original source image nor AY source graph was unfolded. The first isDefEq timeout occurs INSIDE **output inverse-unitary equality rewrite**, not the earlier accepted parent imports; subsequent whnf timeout is a consequence of enclosing theorem elaboration. A post-error `does not depend on any axioms` is invalid as a strict acceptance report. **Gate1 RED, 0/1 accepted, NO qualified H4C2A archive**.

Original diagnostic artifact [#12556187330](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40084035125/artifacts/12556187330), ZIP SHA256 **a4a0d349c0547b5ecb2efb79a5311307bcd23e9e2609807b5be4da47e0bebc47**.

## Mathematical classification and next proof change

Classification: Lean elaboration/normalization cost of rewriting a large genuine PiLp Hilbert output unitary expression. No physics counterexample or mathematical inconsistency is shown. Preserve the failure and do not increase heartbeats as a substitute for proof architecture. The next gate should replace line 78 with a **typed congruence / equality chain**, e.g.
```lean
  have hLift : V.symm p.2 = v :=
    (congrArg V.symm hOutput).symm.trans (V.symm_apply_apply v)
```
This creates an explicit equality at the output Hilbert type without a tactical global `rw` descent into V's definition. The original theorem statement, exact source operator, J-free independent charge, all representation matching witnesses and parent cache remain unchanged. Run a separate Gate2 with new exact source blob and uniquely keyed cache, and inspect any next compiler error; a full native graph equivalence has not yet been accepted.

Working principal accepted count 309 unchanged; H4C1B/H4B1C and H4B1A/B remain independently qualified. Canonical FCP main, original upstream math and draft PR #25 untouched.
