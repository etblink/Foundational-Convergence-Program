# FCP BFSS SU(2) — M3J Gate #1 independently verified red (2026-10-21 PDT)

**Disposition:** `RED__ZERO_ROOTS_ACCEPTED__ORIGINAL_CLLM_TO_MODULE_END_COERCION_SIMPLIFIER_GAP__GENERIC_MODULES_STRICT_PASS`.

- GitHub Actions [run #39710589393](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39710589393), job `119600723971`, completed failure, head `148c47479ebd33ad63b2dfb3a98ae905e01498a8`.
- Exact source pins, Lean 4.34.1, pinned Mathlib, M3I qualified parent cache, and source-preflight passed. The genuine original S1A algebraic scalar commutant compiled fresh. All four generic independent rank-one/action/Hilbert/unitary modules compiled fresh with only `propext`, `Classical.choice`, and `Quot.sound`; the workflow reported `M3J_FIVE_PREREQUISITE_FRESH_LEAN_COMPILES_PASS`.
- The literal source-specific M3J theorem **did not compile**. Compiler error at original source line 97: `G (↑(pairedTheta α C) w)` vs. `G (pairedTheta α C w)` (and matching RHS), an endomorphism/continuous-linear coercion mismatch after insufficient `simpa only` normalization.
- Second error at original source line 130: the same mismatch for `U (↑(pairedTheta α C) (U.symm w))` versus direct `U (pairedTheta α C (U.symm w))`. No mathematical counterexample, incorrect source labels, or failed CAR hypotheses was reported.
- The candidate theorem axiom report included `sorryAx` as a consequence of compilation errors: **0/1 M3J roots accepted**, cumulative strict ledger **271**, M3J cache-save skipped. The separately defined `sourceToManuscriptLabel` had only permitted axioms but is not counted as a theorem root.

## Proposed limited correction and discriminating Gate #2

Use the pinned Mathlib simplifier lemma `ContinuousLinearMap.coe_coe`, independently located in `Mathlib/Analysis/InnerProductSpace/ConformalLinearMap.lean` at Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Add that lemma to exactly the two `simpa only` invocations at former source lines 97 and 130. Preserve the definitions, theorem statement, and all four generic modules unchanged. Publish a separately path-triggered Gate #2 with its revised SHA-256 preflight, distinct cache key and diagnostic artifact, leaving the failed Gate #1 workflow immutable.

**Acceptance rule:** success requires actual original-source Lean compilation, one theorem `independent_original_generator_unitary` with only permitted axioms, and qualified M3J cache save. Further coercion or normalization errors will require source-exact diagnosis. No manuscript Spin(48) gauge, 16 charges, closed Hamiltonian domains or spectral conclusions are claimed.
