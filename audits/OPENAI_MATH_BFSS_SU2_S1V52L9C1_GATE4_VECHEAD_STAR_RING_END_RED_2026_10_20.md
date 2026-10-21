# L9C1 Gate #4 — residual vecHead/vecTail and starRingEnd: RED, 0/1

**Verified disposition:** `L9C1_GATE4_RED__SOURCE_CACHE_DEPENDENCIES_PASS__VECMUL_DOTPRODUCT_EXPANSION_WORKED__VECHEAD_VECTAIL_STAR_RING_END_UNREDUCED__NO_NEW_KERNEL_ROOT`.

Evidence: [run #39520853793](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39520853793), job `118964057703`, strict gate FAILURE at the original nine-coefficient Pauli quaternion trace theorem, not at source pins/toolchain/qualified parent cache/original Pauli compilation. Trigger commit `4edf2a2c36035a56ef0f6547e7643d0f683cb391`, source blob `af87942bf696f23c1d7412febdeaf0373c2632ac`. Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib and exact original Pauli source unchanged.

The Gate #4 proof changed only the finite source polynomial tactic to explicitly unfold `Matrix.vecMul` and `Matrix.dotProduct`. That worked: the remaining unsolved goals no longer contain `ᵥ*`. The earliest actual error is `SU2BFSSPhysicalDomainS1V52L9C1OriginalPauliQuaternionTracePolynomialProbe.lean:47:67: error: unsolved goals`. The logged first real/imag goals still contain unevaluated entries like:

```lean
(vecHead (fun i => (starRingEnd ℂ) (![↑p.a + ↑p.b * Complex.I, Complex.I * ↑p.d + ↑p.c] i))).re
(vecHead (vecTail (fun i => (starRingEnd ℂ) (![Complex.I * ↑p.d - ↑p.c, ↑p.a - ↑p.b * Complex.I] i)))).im
```

These are first/second entries of literal original two-component row and conjugate transpose, not new mathematical variables. `ring` cannot eliminate them until vector access and star function application are made explicit.

Next proof correction: explicitly unfold `Matrix.vecHead` and `Matrix.vecTail` after `Matrix.vecMul`/`Matrix.dotProduct`, and rewrite `starRingEnd_apply` so `starRingEnd ℂ z = star z`, then use original `Complex.star_def`, `Complex.conj_re`/`conj_im`, `Complex.mul_re`/`mul_im`, real casts, and real polynomial `ring`. This preserves the exact original Pauli matrix, positive-i quaternion and input/output convention. If any residual indexed vector expressions survive, use the source `Matrix.vecCons` two-entry evaluator rather than inventing a surrogate basis. Separate two-dimensional entry lemmas are preferable to more undirected ring_nf.

No L9C1 theorem was kernel accepted; no new S1V52 root. Baseline **175**. Do not count the printed axiom dependency of an unclosed declaration. L9C2 normalized Pauli bridge and L9C3 original `adjointColorMatrix` equality remain staged and unqualified. Canonical `main`, upstream source, and draft PR #25 untouched.
