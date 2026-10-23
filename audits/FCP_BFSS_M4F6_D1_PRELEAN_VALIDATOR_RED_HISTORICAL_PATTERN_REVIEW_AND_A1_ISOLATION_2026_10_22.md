# Project Lead — M4F6 D1 real pre-Lean cause, cross-generation negative knowledge, and alias-boundary A1

**Observed:** October 22, 2026 PDT / Actions UTC October 23. **Accepted principal roots:** **297**, unchanged. **C2 actual independent restricted graph:** **unproved**. The source C1 specialization remains strictly accepted. Original BFSS source, toolchain, Mathlib, canonical `main` and draft PR #25 unchanged.

## 1. D1 Gate #1 was a validator false-positive, not a Lean failure

Original [Actions run #39894095177](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39894095177), job `120220364818`, `completed/failure`, commit `8d970b98970874bcf6280b0d754ea73dc0d71fc4`.

The exact source preflight, original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, qualified M4F5 parent and strictly accepted C1 caches all passed. The **next step, a custom Python source preflight, failed**:

```
Traceback (most recent call last):
  File "<stdin>", line 6, in <module>
AssertionError
```

Line 6 is exactly:
```python
assert "set_option linter.defProp false in" not in src
```

The actual candidate `FCPM4F6IndependentInferredInputCutCertificate.lean`, blob `27685407af784f608f40891d813618255cf0e81c`, contains this forbidden historical token sequence **inside its multiline documentation comment** explaining the previous parser failure. There is **no executable malformed `set_option ... in` declaration**. Static independent check:

- Plain substring check: **false positive**.
- Anchored executable-command check `^[ \t]*set_option[ \t]+linter\.defProp[ \t]+false[ \t]+in[ \t]*$`: **no match**.
- Actual correct command `set_option linter.defProp false` at file scope: **present**.
- Historical first-error lessons contained in documentation must not be suppressed simply to appease a naive validator.

The exact **D1 Lean compile never ran**; D1 proof-type existence, C2 theorem, new `.olean` and cache were **not tested/saved**. Do not describe D1 as recursion, math error, linter problem or a failed certificate theorem. This red is solely a workflow checker defect.

## 2. Historic lessons directly relevant (source-provenance-backed)

1. **M4F6 historical inferred application probes, three wrapper reds:** [the October 22 M4F6 diagnostic-policy audit](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/audits/FCP_BFSS_M4F6_INPUT_CUT_DIAGNOSTIC_GATE3_AND_STRICTNESS_POLICY_REVIEW_2026_10_22.md). Original failures: `defProp` style linter, invalid syntax for an inferred `theorem :=`, and `set_option ... in` mislocated between a doc comment and its declaration. The previously archived full compiler output of [#39877727582](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39877727582) **did print the inferred independent application type and only three permitted axioms**, even though the whole gate was red because of two parser errors. *Action:* D1's redundant inferred wrapper has limited incremental scientific value. **Do not relaunch D1 just to fix a comment-sensitive assertion.**
2. **M4C1 doc-comment/parser:** [Gate #6](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/audits/OPENAI_MATH_BFSS_SU2_M4C1_GATE6_LEAN_DOC_OMIT_PARSER_RED_GROK_HANDOFF_2026_10_21.md) emitted `unexpected token 'omit'; expected 'lemma'` because a declaration modifier followed the doc comment. It was neither a theorem counterexample nor a math-library gap. *Action:* structurally distinguish parser-level commands, documentation and actual math.
3. **S1V19 G4F–G4H private theorem validator:** [audit](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/audits/OPENAI_MATH_BFSS_SU2_S1V19_ORIGINAL_G4F_G4H_STRICT_GATE1_VALIDATOR_PRIVATE_ROOT_DIAGNOSIS_2026_10_19.md). Three source modules compiled and all 15 axiom sets clean; validator rejected the legitimate generated `_private.<module>.<n>.` qualified name. First correction over-escaped regex. *Action:* simulate anchored regexes across tool/JS/YAML/bash/Python escaping levels before triggering CI.
4. **M4F2 wrong validator stem:** [Gate #2 audit](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/audits/OPENAI_MATH_BFSS_SU2_M4F2_GATE2_POST_COMPILE_WRONG_VALIDATOR_STEM_RED_2026_10_22.md). Actual Lean compiled and saved `.olean` locally; stale Python `stem` caused post-compile failure. *Action:* ensure all source stems, reported root counts and expected cache save paths match; never count whole-gate green on compiler-only evidence.
5. **M4E5 named-transport success after two real recursion reds:** [Diagnostic #5 accepted audit](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/audits/OPENAI_MATH_BFSS_SU2_M4E5_NAMED_TRANSPORT_DIAG5_TWO_ROOT_STRICT_ACCEPTANCE_2026_10_22.md). `simpa` and `exact` each recursed across large source sums; the accepted approach first strictly compiled abstract source raw-to-named equalities (`rfl`) separately, then used `Eq.trans` + `congrArg` on opaque maps. *Action:* prove actual alias equalities before comparing huge instantiated goals; avoid direct full-term defeq.
6. **Original source generator WHNF timeout H5E8G:** [negative knowledge plus #324 strict green](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/experiments/openai-math-su2-physical-domain/L6H5E8G_GATE_323_HEARTBEAT_WHNF_NEGATIVE_KNOWLEDGE_2026_10_16.md). `congr 1` reduced heavy source action; named scalar `ht` + `congrArg (fun q => U q v)` succeeded without enlarging heartbeat limit. *Action:* keep heavy maps opaque and transport only small named equalities.
7. **S1O Clifford algebra action:** [Gate #2 negative audit](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/audits/OPENAI_MATH_BFSS_SU2_S1O_GATE2_QUADRATIC_ISOMETRY_RECURSION_RED_2026_10_18.md) stopped repeatedly trying to bundle `QuadraticMap.IsometryEquiv` when five source lemmas were already clean; shifted to directly using `CliffordAlgebra.lift`, a **genuinely different interface**. *Action:* isolate the minimal interface with independent mathematical meaning before choosing a giant bundled type.

## 3. Decision: do not repeat D1; test the two *literal* conversion interfaces instead

Grok's research memorandum correctly notes that the inferred generic application need not typecheck against the separately elaborated original C2 expected proposition. It proposed a named certificate but also included an inert `unfold independentInvariantCore independentFullCoreGraph at h` on a certificate type that contains neither alias. Do not claim that solves C2. The older M4F6 audit had **already warned** against rerunning the inferred wrapper: the printed proposition was available, so this is not where a new gate should be spent.

**Different actual mathematics-to-Lean interface:** staged file `experiments/openai-math-su2-physical-domain/FCPM4F6IndependentLiteralAliasBoundary.lean`, Git blob `88a0cfdf5c5a4e407906462a56f62b9df9281ea0`. It separately proposes exact source-definitional equalities as **small theorems of submodules**, rather than a giant `Set` C2 equality:

```lean
independentInvariantCore_eq_actualComap :
  independentInvariantCore theta hCAR hHermitian =
    (independentPhysicalSpace theta hCAR hHermitian).comap
      (independentCoreToL2 (E := E))

independentFullCoreGraph_eq_actualRange :
  independentFullCoreGraph color gamma theta =
    LinearMap.range
      ((independentCoreToL2 (E := E)).prod
        (independentChargeVector color gamma theta))
```

Both proposed proofs are `rfl`, **not yet independently compiled**. No new objects, J assumptions, altered source graph, operators or physical Hilbert-space substitutions. Unlike Gates C2 #1–#3, this module **does not** ask Lean to type-check the whole restricted graph equality, nor destruct its witnesses. It targets the two precise alias identities needed for an explicit `Eq.trans` / `congrArg` composition modeled on M4E5.

If both alias certificates strictly compile, the next step is not an automatic C2 proof: first design a proof with three explicit stages (a) rewrite the literal independent invariant core via the accepted exact submodule equality, (b) use the already accepted `core_graph_input_cut` on opaque maps/submodule, (c) rewrite the full independent graph via its accepted submodule equality. This retains C2's exact source statement/hypotheses; avoid `unfold` of the physical gauge kernel, TestFunction internals or charge sums. Any exact rewrite/defeq conversion still requires independent strict verification.

If either alias `rfl` itself triggers recursion, stop and inspect whether the failure is declaration-type elaboration, `rfl` kernel conversion, private `μ`, typeclass or coercion boundary. Do not launch C2 tactic variants.

## 4. Single isolated bounded gate and safeguards

One path-self-triggered isolated strict **alias-only** workflow `.github/workflows/bfss-m4f6-literal-alias-a1-isolation-gate1.yml` was submitted in commit `e3ff7736d59eaf25b8ffdaa3c6d4347274068c81`:

[Actions #39895484086](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39895484086)

- Exact unchanged upstream BFSS math pin `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, unchanged accepted M4F5/C1 caches and source import closure; two new exact source blobs and unmodified original CAR requirement.
- **Fixed the documented validator class in A1**: check malformed executable commands with anchored line-oriented regex, **not raw forbidden substrings that match a historical warning in a comment**. The preflight verifies exactly two named theorems, exactly two printed axiom queries, literal submodule targets, and no real Lean hole/postulate token at the beginning of a code declaration. Source and workflow static checks completed before workflow self-trigger.
- Fresh Lean compilation under `-DwarningAsError=true`, fixed finite timeout; strict declaration/axiom whitelist `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`. Qualified alias cache saved *only* if the whole gate passes; original compiler/resources archived on red.
- **No principal root credit for supporting alias certificates**, even on green: cumulative accepted principal tally remains **297** until the exact original J-free independent C2 input-cut theorem itself is strictly proved. This A1 check is not a gauge-restricted graph-image equality, closure, physical Hamiltonian equivalence or spectral result.

**Governance:** The original failed D1 source and workflow remain unchanged; the false-positive error is intentionally retained as negative knowledge. No D1 rerun, no full C2 retry, no `maxRecDepth` bump, no source redefinition, no main or PR #25 changes. Revisit the actual A1 verdict before authorizing further costly CI.
