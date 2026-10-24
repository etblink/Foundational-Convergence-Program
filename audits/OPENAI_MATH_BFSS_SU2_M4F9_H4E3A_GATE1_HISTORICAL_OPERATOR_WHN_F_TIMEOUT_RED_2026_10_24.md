# BFSS M4F9 H4E3A Gate #1 — native-to-historical normalized weak-form red

**Date:** 2026-10-24 Pacific. **Disposition: STRICT RED; 0/2 newly accepted roots.**

- Research branch: `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- [GitHub Actions run #40128052652](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40128052652), job `120973615688`; exact triggering commit `40587ce725f8f56738d570a76ad9636d908e9e05`; `completed/failure`.
- Candidate `FCPM4F9H4E3AOriginalNativeHistoricalHamiltonianWeakForm.lean`, exact blob `cd14ff67681a384f7dcaea3af976bd0590dfa5e5`, H4E3A Gate #1.
- Original source pin `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` passed.
- Both exact saved-manifest caches **hit and restored**: `bfss-fcp-m4f9-h4e2b-full-form-799a3bc9-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` and `bfss-fcp-m4f9-h1-original-source-hamiltonian-ay-bh-05a54077-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Required H4E2B, H4E2A, H3B2, BF, BH and D2B28 `.olean` existence check passed with `BFSS_H4E3A_H4E2B_AND_H1_HISTORICAL_ACCEPTED_ANCESTRY_PASS`.
- Candidate Lean compilation did **not** succeed; no child cache saved.
- **Original first causal compiler error**:
```text
FCPM4F9H4E3AOriginalNativeHistoricalHamiltonianWeakForm.lean:98:0:
error: (deterministic) timeout at `whnf`,
maximum number of heartbeats (240000) has been reached
```
- The first root, `pairedOriginalNativeWeakForm_iff_ambient`, printed exactly `[propext, Classical.choice, Quot.sound]`; the second, `pairedOriginalNativeWeakForm_iff_historicalHamiltonian`, printed `does not depend on any axioms` only **because elaboration failed**. Treat neither as a newly accepted root; `#print axioms` is not a substitute for all-declarations/no-errors pass.
- Diagnostic artifact ID `12574070289`, `bfss-m4f9-h4e3a-gate1-40128052652`, zip SHA-256 `a8bcdf2ebd79650413f0af2ff831c890d7a233b211ecc980e2b642e58691c85c`.

## Targeted next experiment

The expensive expression is the second root's step `rw [← pairedOriginalPhysicalNormalizedHamiltonian_eq_historical]` at the very end of a weak-form equivalence proof. This rewrite can ask Lean to search a large dependent partial-operator expression by `whnf`. Do not simply expand both operators or increase heartbeat limit. Instead compose three **typed propositions**:

1. Native weak-form ↔ ambient AY weak-form (first root, already compiled).
2. Ambient AY weak-form ↔ existence of normalized BF source representing vector, via previously accepted `pairedOriginalPhysicalNormalizedHamiltonian_weakForm_iff`.
3. Existence of BF normalized Hamiltonian representing vector ↔ existence of actual D2B28 historical representing vector, using **typed `congrArg` on the exact accepted BH operator equality**.

The third equality is an ordinary proposition-level congruence `congrArg (fun T : H →ₗ.[ℂ] H => ∃ h : u ∈ T.domain, w = T ⟨u,h⟩) hEq` rather than an unbounded deep `rw`. This preserves the same theorem/assumptions and the unchanged genuine source H. H4E3A's two cache ancestral interfaces are now demonstrably accessible and should be reused with exact identical restore manifest; change no pinned math, only the H4E3A candidate and its Gate #2 strict source pins.

## Scientific scope

H4E2B Gate #2 remains strictly accepted (+2 **support** roots). H4E3A has 0 accepted. This Lean timeout is not a counterexample or proof that historical Hamiltonians differ. No independent source↔Hamiltonian global equivalence or Spin(9) spectral inference is licensed.