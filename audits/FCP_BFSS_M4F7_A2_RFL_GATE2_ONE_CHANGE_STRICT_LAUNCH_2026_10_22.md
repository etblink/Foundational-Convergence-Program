# FCP BFSS M4F7 — A2 literal J-free graph closure alias Gate #2: one-change definitional `rfl` strict test

**Research date:** October 22, 2026 PDT / October 23 UTC. **Status:** Gate #2 launched; Lean theorem verdict pending. **Strictly accepted principal roots: 301**, no change.

## A2 Gate #1 original red is retained

[Actions #39906130902](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39906130902), job `120258397527`: pinned original BFSS and Mathlib hashes, all accepted source proofs and V1 qualified cache passed. New source compiled, but `FCPM4F7IndependentClosedGraphAliasA2.lean:66:8` failed **in Lean** at `exact Submodule.topologicalClosure_coe _` after `unfold independentRestrictedClosedGraph`, maximum recursion depth. Actual literal alias theorem's axiom report includes `sorryAx`. The independent closed graph *definition* and its **named graph isClosed supporting theorem** printed only `propext, Classical.choice, Quot.sound`, but are unqualified because whole strict gate failed, and no A2 cache was saved. Original compiler `25.29 s`, `7129076 KB` max RSS.

This is a concrete conversion/elaboration bottleneck, **not** proof that the Mathlib closure equality is false or a failure in the source math. Full original failure preserved in [Gate #1 audit](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/audits/FCP_BFSS_M4F7_A2_GATE1_LITERAL_SET_EQUALITY_RECURSION_RED_2026_10_22.md).

## Precisely bounded alternative

Candidate `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentClosedGraphAliasA2Rfl.lean`, frozen blob `0b716a515998b70467c56ac22e162a33a7e4e537`. Compared against Gate #1 blob `87c3804ed5602bc2e3365489d556bb8314138780`, its only *Lean math* change (after `set_option autoImplicit false`) is:

```diff
 theorem independentRestrictedClosedGraph_set_eq_literal ... := by
-  unfold independentRestrictedClosedGraph
-  exact Submodule.topologicalClosure_coe _
+  rfl
```

The equality's **entire exact mathematical proposition**, J-free true independent `color,gamma,theta,hCAR,hHermitian` graph definition, pinned source, and already-clean `independentRestrictedClosedGraph_isClosed` theorem and proof are byte-identical. The source preflight enforces that sole proof replacement. The pinned generic Mathlib theorem `Submodule.topologicalClosure_coe` itself has proof `rfl`, which specifically justifies testing the definitional equality. However, no success is presumed: in a huge concrete BFSS instance even an `rfl` check can encounter the same recursive conversion. If it fails, STOP direct concrete equality tactics rather than iterating `exact/simpa/rfl` or raising `maxRecDepth`.

## Gate and invariant strictness

Path-only workflow `.github/workflows/bfss-m4f7-closed-graph-alias-a2-rfl-strict-gate2.yml` at commit `dc427180564ce6b96bae9e4b58255ddb755ff978`, [Actions #39907200856](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39907200856), launched single strict gate, no competing V2 workflow.

Frozen original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original A2 and new A2Rfl candidate source hashes, exact accepted V1 cache `bfss-fcp-m4f7-independent-vertical-v1-c1cut-71a0b111-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` and earlier original-qualified proof parents. Full static checks passed (run block indentation, path block indentation, new self trigger, J-free original CAR source statement and header equality, exact allowable one-body change, no executable holes or new recursion-depth override). Fresh 105s `lake env lean -DwarningAsError=true`, exact declaration and 3 `#print axioms` reports, only `propext`, `Classical.choice`, `Quot.sound`; no `sorryAx` or error; new cache saved only on fully green. Full original diagnostics preserved on any outcome.

**Green:** qualify A2's two **supporting** certificates, keep principal root count **301**, then use named graph *without* inserting J witnesses into the operator definition; V2 must pass an independent strict mathematical gate before principal credit. **Red:** archive exact Lean first error; no repeat concrete A2 equality tactics; isolate generic/opaque submodule-membership interface and use the already proven closedness insight. In neither case assert physical domain density, Hamiltonian equivalence or spectral conclusions.

Canonical `main`, draft PR #25 and all original BFSS math untouched.
