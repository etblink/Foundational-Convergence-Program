# FCP BFSS M4F6 A1 — literal independent alias bridge Gate #3 formal acceptance

**Date:** October 22, 2026 PDT / October 23 UTC. **Disposition:** `A1_GATE3_STRICT_PASS__TWO_LITERAL_ALIAS_CERTIFICATES_QUALIFIED__C2_NOT_YET_PROVED__297_PRINCIPAL_ROOTS_UNCHANGED`.

## Frozen source, compiler, provenance and strict qualification

[GitHub Actions run #39896595231](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39896595231), job `120228372674`, research run HEAD `dbb57b2a555dff815e64fd43955c60f71c991038`, independently inspected: workflow and job `completed/success`, including source SHA enforcement, pinned Lean 4.34.1/Mathlib restoration, previously qualified M4F5 source-unrestricted graph cache, previously strictly accepted M4F6 C1 paired-source input-cut cache, all expected dependency `.olean` checks, exact candidate preflight, fresh candidate proof compilation with `lake env lean -DwarningAsError=true`, strict axiom report audit, new cache save and preserved log artifacts.

Original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact candidate source:

`experiments/openai-math-su2-physical-domain/FCPM4F6IndependentLiteralAliasBoundary.lean` at frozen Git blob `88a0cfdf5c5a4e407906462a56f62b9df9281ea0`, namespace `FCP.M4F6IndependentLiteralAliasBoundary`. Both originally declared `rfl` proofs compiled with exactly three allowed axioms, no compiler errors, unexpected warnings, `sorryAx`, `sorry`, `admit`, or new axiom. Original job evidence:

```
M4F6_ALIAS_A1_COMMENT_AWARE_EXACT_SOURCE_PASS
M4F6_ALIAS_A1_SAVED_GENERIC_AND_C1_SOURCE_PROOFS_VERIFIED
M4F6_ALIAS_A1_TWO_LITERAL_EQUALITIES_DOCUMENT_SAFE_PREFLIGHT_PASS
FCP.M4F6IndependentLiteralAliasBoundary.independentInvariantCore_eq_actualComap axioms: ['Classical.choice', 'Quot.sound', 'propext']
FCP.M4F6IndependentLiteralAliasBoundary.independentFullCoreGraph_eq_actualRange axioms: ['Classical.choice', 'Quot.sound', 'propext']
M4F6_ALIAS_A1_TWO_SOURCE_EXACT_ALIAS_CERTIFICATES_STRICT_PASS_NO_C2
DIAG_RESOURCE_TIME 11.97 CPU 98% MAX_RSS_KB 7025792
Cache saved with key: bfss-fcp-m4f6-literal-alias-a1-88a0cfdf-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

## What the two proofs say, and what they do NOT

**Supporting certificate A1a**: `independentInvariantCore_eq_actualComap` says the literal genuinely independent gauge-invariant smooth test core equals `(independentPhysicalSpace theta hCAR hHermitian).comap independentCoreToL2` as **the same complex submodule**, under precisely the original CAR and Hermiticity arguments. No hidden J, no transported physical space.

**Supporting certificate A1b**: `independentFullCoreGraph_eq_actualRange` says the literal independently defined unrestricted smooth-core sixteen-charge graph equals `LinearMap.range (independentCoreToL2.prod (independentChargeVector color gamma theta))`, as **the same complex submodule** of the genuine L² graph ambient space.

Neither certificate itself proves the missing **M4F6 C2 full restricted graph input-cut identity**; neither proves gauge-invariant OUTPUT membership, a closed operator or closability, a physical Hamiltonian, its domain, or any spectral theorem. Strictly accepted principal root ledger stays at **297**, not 299. Supporting declarations are reusable `.olean` proof objects and qualified dependencies, not newly counted principal roots.

## Preserved failures and why they matter

- Earlier C2 strict Gates #1, #2 and #3 failed in concrete Lean conversion/recursion when invoking `core_graph_input_cut` or constructing witnesses. These are genuine *elaboration* reds, not source-math refutations. They remain unaccepted.
- D1 inferred-certificate diagnostic failed before Lean because a validator matched historical invalid `set_option ... in` text in documentation. Prior archived inferred proof type had already printed without forbidden axioms, although its whole gate was red on syntax.
- A1 Gate #1 failed before Lean when inherited source-hash hole checker matched `\naxiom ` in documentation. A1 Gate #2 corrected that first check but independently failed on a second raw-regex `^\s*(sorry|admit|axiom)\b`, which matched a documentation comment. Gate #3 removed exactly that redundant second validator; the earlier **comment-aware executable-code** scan, all frozen source SHA/hypothesis pins and `#print axioms` checks remained. No original mathematics was altered.
- Older accepted M4E5 named-transport raw-source certificates/explicit `Eq.trans` and `congrArg` composition, H5E8G scalar-congruence normalization, and S1O use of a different interface over recursive bundling justify isolating exact alias equalities as named lemmas rather than trying another `simp/exact` permutation.

## Next exact research obligation and stop policy

Design a fully abstract **alias-aware graph-input-cut lemma**, in an independent small module, with arbitrary opaque `a,b,P` and *also opaque* `S,G` and explicit equality certificates `hS : S = P.comap a`, `hG : G = LinearMap.range (a.prod b)`. Prove it without touching independent BFSS definitions, using the accepted generic input cut and only rewriting equality certificates. This is the actual M4E5-style interface discipline, not a repeat of the failed concrete `exact`.

Then **only after the generic alias lemma passes as a separately qualified dependency**, specialize it with `S := independentInvariantCore ...`, `G := independentFullCoreGraph ...` and A1a/A1b. The consequent Lean proof must state the **literal original C2 proposition and original hypotheses exactly**; ensure no implicit unfolding or new J premise, and stop if the specialization still requires uncontrolled concrete reduction.

The next test should be genuinely about that new abstract proof interface, not another comment-vs-code preflight. Static-verify **every** inherited YAML preflight against the candidate before committing CI. Original source math, canonical `main`, draft PR #25 remain unchanged.
