# BFSS concrete real gamma(9) — first Lean gate scope and acceptance 0.1.0

**Status:** `CANDIDATE_SUBMITTED__COMPILER_RESULT_PENDING`
**Date:** 2026-10-07
**Research branch:** `research/openai-math-su2-concrete-potential`
**Pinned upstream:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`
**Candidate source commit:** `643e612b2d740eeed6c379759bf0e63841cf153b`
**Workflow-qualified candidate commit:** `caad82acfaeb0c33fbd1e6f4210ee07abef725c9`
**Source:** `experiments/openai-math-su2-concrete-potential/SU2RealGammaProbe.lean`
**Workflow:** `.github/workflows/openai-math-su2-concrete-potential.yml`

## Exact target

The source implements explicit nine real `16×16` gamma matrices of the actual pinned `OAI.BFSSQuantum.GammaMatrix` type, and attempts the following kernel-checked existence statement:

```lean
∃ G : OAI.BFSSQuantum.SpaceIndex → OAI.BFSSQuantum.GammaMatrix,
  (∀ i, (G i).IsSymm) ∧
  (∀ i j, G i * G j + G j * G i =
    (if i = j then 2 else 0) • (1 : OAI.BFSSQuantum.GammaMatrix))
```

This is precisely the `gamma`, `gamma_symmetric`, and `gamma_clifford` slice of `AlgebraData 2` (one value and two proofs). It does not build `AlgebraData 2`.

Nine signed-permutation matrices are specified by their row permutations and integral sign coefficients, corresponding to four-factor tensors `JIIJ`, `JIJX`, `JXJZ`, `JZJZ`, `JJIZ`, `JJXX`, `JJZX`, `XIII`, `ZIII` with `J²=-I`, `X²=Z²=I` and pairwise Pauli anticommutation. The Lean proof attempts finite integer `decide` on sparse lookup identities, proving matrix multiplication via a one-nonzero-entry-per-row lemma, and then maps the integer matrices to real matrices by `Int.castRingHom ℝ`.

A separate exact deterministic JavaScript computation read the **committed lookup arrays**, confirming **2304/2304** symmetry entries and **20736/20736** ordered Clifford matrix entries. This cross-check is not a Lean-kernel verification.

## Acceptance gate

Require **both**:

1. The named GitHub Actions run for the precise workflow commit `caad82acfaeb0c33fbd1e6f4210ee07abef725c9` completes SUCCESS, compiling pinned `PotentialBasis`, pinned native Pauli source, the already-green SU2 color suite, and `SU2RealGammaProbe.lean`.
2. `#print axioms exists_gamma9` (as well as `gamma_symmetric` and `gamma_clifford`) reports no `sorryAx` or nonstandard proof axioms. The intended accepted list is `[propext, Classical.choice, Quot.sound]` or a subset thereof.

If it is red, inspect the exact compile logs and address only a specific source/Lean interface or proof-performance failure. Do not infer a mathematical inconsistency from a syntax or tactic error. Do not preemptively poll CI while the owner has not reported a gate outcome.

## Scope and interpretation

This is not a proof of the complete BFSS model. Missing areas include the complex 48-generator CAR representation on `2^24` dimensions, irreducibility, continuous compatible SU(2) gauge actions, and the positive eigenvalue spectral theorem. The independent Claude source-level review was favorable; the reviewer's scripts were subsequently rerun with numerical diagnostics reproduced, but that is separate evidence.

No public upstream issue/PR or modifications to FCP main are authorized. Stop after this bounded gamma gate until the owner reports green or red.
