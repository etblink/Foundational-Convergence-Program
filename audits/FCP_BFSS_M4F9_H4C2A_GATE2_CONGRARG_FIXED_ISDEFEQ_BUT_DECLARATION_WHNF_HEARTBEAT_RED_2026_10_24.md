# BFSS M4F9 H4C2A Gate #2 — RED: output congruence resolved first timeout; enclosing graph theorem whnf remains

**Disposition:** `H4C2A_GATE2_RED__H4C1B_STRICT_PARENT_HIT__GATE1_OUTPUT_RW_ISDEFEQ_REMOVED__SINGLE_DECLARATION_WHNF_200000__NO_ACCEPTED_ROOTS__GENERIC_OPERATOR_GRAPH_LEMMA_NEXT`.

Original [GitHub Actions #40084477947](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40084477947), job **120844469271**, `completed/failure`, event commit **4bf560fe126ebd32736e22b083ab0d709ee7846a**. Exact candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H4C2ANativeSourceReverseChargeGraph.lean` blob **bc10215de14284194ece240e01de58fdcc645100**, exact Gate2 workflow `.github/workflows/bfss-m4f9-h4c2a-source-native-charge-graph-reverse-strict-gate2.yml` blob **eccb42e4114cee150541b47cdec0a6e5576ee937**.

Frozen original: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean **4.34.1**; Mathlib **d13f23b723b8a846827a245b89c10fc7d3f11612**. Exact candidate SHA and root preflight passed. Actual accepted H4C1B Gate1 native-domain cache restored with exact HIT:
```
bfss-fcp-m4f9-h4c1b-native-domain-8c0e1aa8-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
The complete accepted H4B1C source forward graph, H4C1B source-reverse domain, H2A PiLp physical output unitary and original H3B2 source-native AY partial operator imports were checked present. Leaf Lean compilation **FAILED**, with **one** error:
```
FCPM4F9H4C2ANativeSourceReverseChargeGraph.lean:43:0:
  error: (deterministic) timeout at `whnf`,
  maximum number of heartbeats (200000) has been reached
```
Gate1 had earlier failed at `rw [← hOutput]` inside inverse output unitary `hLift` (line 78) with `isDefEq` and a top-level `whnf`. Gate2 replaced this exactly by:
```
  have hLift : V.symm p.2 = v :=
    (congrArg V.symm hOutput).symm.trans (V.symm_apply_apply v)
```
The old `isDefEq` error is **absent**. The theorem declaration still exhausts `whnf` at 200000 heartbeats. This is a mathematical *proof engineering* barrier, not an established counterexample to reverse graph conjugacy. The subsequent `does not depend on any axioms` is not an accepted report because the declaration failed elaboration. Gate2 **RED / 0/1 accepted / NO qualified leaf cache**. Original unfiltered diagnostic [artifact #12556677256](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40084477947/artifacts/12556677256), ZIP SHA256 **7857b9eb3e649b297a87943fd602ba26e428341c0554dda4439098ab820dce92**.

**Mandatory next architectural change:** Isolate the small general theorem for two arbitrary actual `LinearPMap` graphs with a bijective input linear isometry and output linear isometry: an input reverse-domain inclusion plus full forward graph inclusion implies reverse graph membership, via `LinearPMap.mem_graph_snd_inj'`. Prove this on **generic types** without any source gamma, 48 fermion, source gauge, original AY or PiLp transported definitions. Then apply this proved generic lemma to the actual qualified BFSS H4B1C/H4C1B interfaces in a distinct exact theorem. Where necessary split source domain and forward graph premises by named local declarations; avoid a third repeated monolithic proof.

Do not increase `maxHeartbeats` as a substitute for factoring the theorem. Every additional gate requires fresh source and workflow hash, exact accepted-parent `.olean` cache, exact one-root axiom whitelist, and complete saved cache. Preserve H4C2A Gate1 and Gate2 reds even after a later success.

**Scientific boundary:** H4B1C true source forward native charge graph accepted; H4C1B true reverse native natural domain accepted; H4C2A reverse native output graph **UNACCEPTED**, hence H4C2B graph iff, full operator conjugacy, physical self-adjoint Hamiltonian equality and spectral claims **NOT proved**. Working principal tally 309 unchanged (unreconciled). Canonical `main`, pinned source math, PR #25 untouched.
