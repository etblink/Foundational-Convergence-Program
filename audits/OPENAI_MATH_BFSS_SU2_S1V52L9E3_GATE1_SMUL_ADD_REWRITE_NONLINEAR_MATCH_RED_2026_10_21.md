# S1V52L9E3 — Original Fock pairwise normalized Clifford CAR Gate #1 RED

**Independent verdict:** `L9E3_GATE1_RED__0_OF_1__L9E2_QUALIFIED_CACHE_HIT__ONE_SMUL_ADD_REVERSE_REWRITE_FAILURE__201_ACCEPTED_S1V52_ROOTS`.

## Immutable strict CI evidence

- [GitHub Actions run #39546318348](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39546318348), job `119045191746`, completed FAILURE at immutable workflow commit `eaf197a35a8cf78f3cbb35a335d1462249ba1771`.
- Exact original research candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E3OriginalFockNormalizedMajoranaPairwiseCliffordCARProbe.lean`, Git blob `f0372ff285ba351539288c651e750b7968796b4f`.
- Original immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Original Pauli/source dependency preflight and compiler closure succeeded.
- Parent L9E2 qualified cache HIT `bfss-s1v52l9e2-original-fock-normalized-gamma-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- **Sole** root compiler error at source line 79 column 36: `rw [smul_mul_smul, smul_mul_smul, ← smul_add, hsqrt, hcar]` fails on `← smul_add`: `Did not find an occurrence of ?a • ?b₁ + ?a • ?b₂`. Immediately preceding goal displays `(↑√2 * ↑√2) • (x * y) + (↑√2 * ↑√2) • (y * x) = (if α = β ∧ A = B then 2 else 0) • 1`.
- Accepted original `pairedTheta_CAR`, the `spinPairEquiv.symm` block-label equivalence and `Real.mul_self_sqrt` scalar identity elaborated without error. That does **not** qualify the full pairwise theorem: `#print axioms` reports `[propext, sorryAx, Classical.choice, Quot.sound]`; strict verifier did not accept root. **201 accepted roots, zero new.**
- Diagnostic artifact `bfss-s1v52l9e3-fock-pairwise-car-39546318348` ID `12322270154`.
- Local correction: avoid rewrite matching against an expression containing two elaborated `√2` scalar products, by introducing explicit scalar `c : ℂ := ↑(Real.sqrt 2)` and proving the aggregation of operator terms via the **fully specified** `smul_add` lemma in a short `calc`. Then substitute accepted `pairedTheta_CAR`, scalar square two, and simplify the exact original block/color delta. No new axioms, changed source labels, sign conventions, normalizations, or substituted Fock model.
- **NOT PROVED**: full original real Clifford representation on `Fermion 2`, arbitrary-source-vector quadratic identity, continuous Spin48 lift, original Fock Spin implementer, Hamiltonian-domain identity, spectral results.

Canonical `main`, pinned upstream math and draft PR #25 untouched.
