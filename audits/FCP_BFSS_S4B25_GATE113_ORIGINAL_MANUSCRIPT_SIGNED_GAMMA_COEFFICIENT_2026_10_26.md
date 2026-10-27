# BFSS S4B25 — exact source gamma/field variation in manuscript-signed color order

**October 26, 2026: unaccepted Gate113 candidate.** Gate112 already strictly accepted one new theorem in [run #40425991456](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40425991456), job `121931904190`, bringing scoped S4 unique accepted roots to **49**. This audit tracks the next bounded theorem and its strict workflow separately. A new run is **not** an accepted root until its completed compiler and axiom audit have been inspected.

## Exact target proposition

[Source S4B25](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B25OriginalManuscriptSignedGammaCoefficientProbe.lean), Git blob `75ad185023d7901f4ce932feb72e80c145fb9794` (created at `7ceeb2fec27cc1bccdcbf5c72dc542f3823cd9f6`). One theorem `FCP.BFSSSU2PhysicalDomainS4B25.originalSourceVariationCoefficient_manuscript_signed` states for **all** original `AlgebraData N`, real bosonic `x`, and color/spinor indices:

```text
sum_k sum_alpha M.gamma[k,alpha,beta] *
    sourceMasslessComplexVariationCoefficient(M,x,e_(k,A),alpha,(delta,D))
  = (-8) * sum_j sum_C f[C,A,D] * x[j,C] * M.gamma[j,beta,delta].
```

The proof must consume **both** accepted roots: S4B23 genuine gamma contraction `=8 sum_j,C f[D,A,C] x gamma`, and S4B24 true original `f[D,A,C]=-f[C,A,D]`. It uses explicit `Finset.mul_sum` and local finite sum congruence, not giant source unfolding, and is valid without imposing a positive oriented epsilon convention. No theta factors are exchanged, so no CAR/reordering assumption enters this statement.

## Strict verification candidate

[Gate113 run #40427649530](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40427649530) launched from workflow commit `b85dc8afaf3ee51af396f91e3aebb69cf6910c80`; status **in progress at this audit's creation**. New workflow [Gate113](../.github/workflows/bfss-form-original-manuscript-signed-gamma-coefficient-strict-gate113.yml) is derived from the previously qualified Gate112 pipeline but has a distinct filename and title; fixed original etblink/math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1 / pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; exact candidate commit+worktree SHA checks; required G4K9C source cache provenance; fresh original upstream dependencies, accepted S4B3–S4B24 including strict Gate111 and Gate112 parents; fresh S4B25 `.olean`; only the exact named theorem and allowed axioms `propext`, `Classical.choice`, `Quot.sound`, no `sorryAx`, compiler errors or unexpected candidate warnings. All prior accepted theorems are inherited prerequisites; none may be recounted.

**Acceptance criterion:** A completed strict success on the intended workflow, exact candidate root, original source and ancestor pins, compiler exit zero and whitelist-compliant axiom report earns **one** new root, updating scoped S4 **49 → 50**. Any failure requires first-causal-log diagnosis and an appended record; no proxy statement or partial Lean proof qualifies. An infrastructure/preflight red is not a mathematical contradiction.

## Scientific relevance and stop boundary

After source kinetic–variation scalar contraction, the original ordered complex fermionic remainder has an overall `(-i)/16` prefactor. The now-signed coefficient is `(-8) f[C,A,D] x gamma`, yielding the manuscript's proposed `+i/2` **once the actual continuous-linear operator finite sums are expanded and reassembled with original theta order**. Gate113 cannot by itself justify that distribution, real/complex scalar restriction, full physical (B(x)) identification, closed quadratic form or Spin(9) spectral existence. Those are the next scientific obligations, not implications of this candidate.

The October 5 source manuscript is frozen at Git blob `12c5fffb5f90b48856f60fb0e93c18e2490c5f1b`; its `B(x)` is specified at manuscript lines 236–250. Canonical `main`, original source, and draft PR #25 are unchanged.
