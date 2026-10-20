# S1V52C2 — Exact native GaugeGroup 2 quaternion multiplication bridge: proof plan

**Status:** Research plan ONLY; no C2 theorem has been kernel-verified. S1V52C1's third root is under Gate #2 verification after the `open Matrix` syntax-scope fix. No acceptance of C1 until green.

## Mathematical objects and strictly accepted interfaces

- Native original source: `OAI.BFSSQuantum.GaugeGroup 2`, definitionally original `Matrix.specialUnitaryGroup (Fin 2) ℂ` from pinned upstream `OAI/MathematicalPhysics/BFSS/Core.lean` (source blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`).
- `FCP.BFSSS1V52B1.SourceQuaternionCoords` and `sourceQuaternionColorMatrix`: literal matrix `!![a+i*b, c+i*d; -c+i*d, a-i*b]` and accepted `sourceQuaternionColorMatrix_compose`.
- `FCP.BFSSS1V52C1.originalNativeQuaternionCoords g` reads native `(g : ColorMatrix 2) 0 0` real and imaginary parts as `a,b`, `0 1` as `c,d`. Its first row is definitionally reassembled by `Complex.re_add_im`.
- The earlier qualified L6H5E8P [original `SU2` adjugate equality, bottom-left and bottom-right matrix entries] and L6H5E8Q [`originalSU2_quaternion_matrix`] are exact proven source precedents. Reuse their exact statements/proof pattern **without** assuming their heavy historical import closure is present in the small S1V52 branch cache. If practical, import accepted modules; otherwise re-prove a small direct Core+Mathlib adjugate lemma.

## Proposed finite proof obligations in order

1. **Native whole-matrix reconstruction**:
   `sourceQuaternionColorMatrix (originalNativeQuaternionCoords g) = (g : ColorMatrix 2)`.
   Use source determinant-one and unitarity to obtain `adjugate g = gᴴ` as in qualified L6H5E8P; deduce `g 1 0 = -star (g 0 1)` and `g 1 1 = star (g 0 0)`; resolve fixed `Fin 2` entries with `Matrix.adjugate_fin_two`, `Matrix.mul_apply`, and the pinned matrix literal notation. Use existing first-row C1 lemmas. Avoid a replacement group and preserve the original positive-i orientation.
2. **Coordinate reconstruction/injectivity for the finite matrix map**:
   For real quadruples p, show
   `originalNative-like firstRowCoords (sourceQuaternionColorMatrix p) = p`,
   or directly `Function.Injective sourceQuaternionColorMatrix`. Compare entries (0,0) and (0,1), and apply `Complex.re_add_im`, `Complex.add_re/im`, and `Complex.I` normalization to recover four real fields. This is independent of being unit norm.
3. **Native multiplication**:
   `originalNativeQuaternionCoords (g*h) = sourceQuaternionCompose (originalNativeQuaternionCoords g) (originalNativeQuaternionCoords h)`.
   Prove after applying injectivity by the chain:
   ```text
   M(p(g*h)) = nativeMatrix(g*h) = nativeMatrix(g)*nativeMatrix(h)
             = M(p(g))*M(p(h)) = M(p(g) ∗ p(h)).
   ```
   The accepted B1 theorem supplies the final equality; the native gauge multiplication is inherited from original Matrix.specialUnitaryGroup, **not postulated**.
4. **Optional source ambient unit homomorphism**:
   Combine C1 norm (if qualified) and C2 product with accepted B2 Clifford polynomial multiplication and B3 norm-one Clifford units to construct a genuine `GaugeGroup 2 →* (CliffordAlgebra source48Quadratic)ˣ`, one block at a time. This still does NOT prove `GaugeGroup 2 →* spinGroup source48Quadratic`.

## CI and scientific discipline

- One isolated, source-hash checked C2 gate only after the exact Lean module is ready; reuse already accepted S1V52B3/C1 cache on the **same** research branch when available. Beware GitHub Actions cache scope across sibling branches.
- Pin original upstream, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; compile genuine upstream `BFSS/Core.lean` from source, not a substitute or incomplete `.olean`.
- `open Matrix` explicitly before the Unicode Hermitian adjoint notation `ᴴ`. This preserves negative knowledge from S1V52C1 Gate #1.
- All exact theorem roots must compile and print only `propext, Classical.choice, Quot.sound`; fail on `sorryAx`, errors, wrong source SHA, missing dependencies. Do not equate mathematical consistency with Lean qualification.
- True Lipschitz/Pin/Spin membership, all 16 mutually commuting even-Clifford blocks, exact original gauge action and continuity remain **separate** proof obligations.

No changes to canonical main, the pinned upstream fork, or draft PR #25.
