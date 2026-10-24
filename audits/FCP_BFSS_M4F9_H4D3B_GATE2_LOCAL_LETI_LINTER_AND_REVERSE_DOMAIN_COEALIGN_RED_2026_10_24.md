# BFSS M4F9 H4D3B — Gate #2 RED: scoped completeness succeeds; two linter errors and one reverse-domain abbreviation mismatch

**Disposition:** `M4F9_H4D3B_GATE2_RED__QUALIFIED_H4D3A_CACHE_HIT__STATEMENT_COMPLETENESS_REPAIRED__PROOF_LOCAL_LETI_LINTER_2_ERRORS__REVERSE_DOMAIN_UNITARY_COEALIGN_TYPE_MISMATCH__SORRYAX__NO_NEW_ROOTS__GATE3_TYPED_GOAL_AND_HAVEI`.

## Exact source/provenance

Original [GitHub Actions run #40111513378](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40111513378), job **120924042935**, `completed/failure`, event commit **c985e88d69e49f597a12f78226f2dd5fd11a21ad**. Source `experiments/openai-math-su2-physical-domain/FCPM4F9H4D3BActualNativeAdjointForward.lean` Git blob **37972f1cc2bafcc6e86225554cc2648e8c59ed2d**, workflow `.github/workflows/bfss-m4f9-h4d3b-actual-native-adjoint-forward-strict-gate2.yml` blob **2b4dde743fbffd594029f99f3a02765343776c8d**.

Frozen original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Strict source hash and single-root preflight passed. Full qualified H4D3A physical Hilbert completeness ancestry cache **exact HIT**:
```
bfss-fcp-m4f9-h4d3a-independent-complete-227b5cc1-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

## Fresh Lean compiler and validator failure — zero accepted roots

```
FCPM4F9H4D3BActualNativeAdjointForward.lean:64:2: error: Try this:
  letI̵
  The goal is a proposition, so `let` is preferred over `letI`.
  The difference between `let` and `letI` is that `letI` inlines the value.
  But this is not relevant for proofs because of proof irrelevance.
FCPM4F9H4D3BActualNativeAdjointForward.lean:67:2: error: Try this:
  letI̵
  [same style-linter complaint]
FCPM4F9H4D3BActualNativeAdjointForward.lean:94:4: error:
  Type mismatch: After simplification, term `hz` has type
    z ∈ g.domain
  but expected:
    (independentPhysicalUnitary theta hCAR hHermitian J hJ) (U.symm z) ∈
      pairedOriginalNativePhysicalHilbertChargeColumn.domain
```
The first two are **Lean style-linter errors promoted by `-DwarningAsError=true`**, not absent completeness results. The third is a proof goal elaboration/transparency mismatch: H4C2C returns a concrete original source-unitary expression, but the proof tries `simpa only [U.apply_symm_apply z] using hz` with a locally abbreviated `U`, so the expected goal never reduces to `U (U.symm z) ∈ g.domain` at the simplifier's transparency. No source/independent domain inequality is demonstrated.

After these errors `#print axioms` includes `sorryAx`. Gate2 is **RED; 0/1 accepted**. Original unfiltered diagnostics [artifact #12567355111](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40111513378/artifacts/12567355111), SHA256 **3cdbcab6ca04501bba8e9184962256603884e1786c18dcec8984273ca3a1b932**. No H4D3B qualified cache.

## Lessons and next Gate3

- Gate1 statement completeness errors are absent: scoping the **already proved** H4D3A independent completeness and original AY completeness in the proposition succeeded. Gate2 is distinct and must not be misclassified as the same problem.
- Replace only the two proof-local `letI` declarations with `haveI` to retain local typeclass instances while avoiding the `haveILetI` style warning. Keep the proposition's `letI` bindings, because those introduce instances during adjoint statement elaboration. No unproved `CompleteSpace` hypotheses.
- In `hRev`, add explicit `change U (U.symm z) ∈ g.domain` before `simpa only [U.apply_symm_apply z] using hz`; this makes the equation Lean is supposed to simplify explicit while keeping the genuine original source Hilbert unitary and actual g domain.
- Preserve exact original operators, accepted density hypotheses, H4C2C/H4C2D correspondence and H4D2A forward generic adjoint. New source SHA, unique Gate3 path, independent child cache; insist on single-root Lean compilation and the three-axiom whitelist. If further issues appear, record actual diagnostic rather than guessing.
- No actual BFSS native adjoint theorem, square operator, historical ambient-source Hamiltonian identification or spectral gap accepted from Gate2. Working historic principal count **309** unchanged; main, source pins and draft PR #25 untouched.

Earlier Gate1 RED (completeness instance not available during statement elaboration) remains separately preserved. Negative knowledge is cumulative, not overwritten.
