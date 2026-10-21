# S1V52L9E5F20F — Gate #1 red, star/reverse∘involute function composition normalization

**Status:** `F20F_GATE1_RED__ONE_SIMPA_FUNCTION_COMP_DEF_MISMATCH__NO_NEW_THEOREM_ROOTS__S1V52_STAYS_252`.

## Independently verified primary evidence

- [Original Spin48 Topological Group Inversion Strict Gate #1 — run #39672012853](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39672012853), job `119472044569`, source head `16d16143fdf8cf0a4fd1ae2d647d8764380f74a7`: red at new Lean source compilation.
- Original immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original source SHA preflight, exact qualified F20E cache restore, and presence of original BFSS/OAI and F20B/C/D/E/L8E `.olean` all passed.
- Candidate source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5F20FOriginalSpin48TopologicalGroupInverseContinuityProbe.lean` Git blob `ffd3fd5a65baa050d47f509166b0186ea30c3367` matched committed, filtered and raw hashes.
- At source line **52**, exactly one Lean compiler error. The proof `simpa only [CliffordAlgebra.star_def] using hr.comp hi` simplified Clifford `star x` to `reverse (involute x)` but left `Continuous.comp hr hi` with function shape `((fun x => reverse x) ∘ fun x => involute x)`. Both sides are extensionally equal, but this `simpa only` did not use `Function.comp_def` so the elaborated `Continuous` proposition did not normalize to the goal.
- Linter noted optional style improvement: `letI : FiniteDimensional ℝ C := ...` could be `let` since the instance is a proof of Prop; it did **not** cause the failure.
- All three F20F declarations `originalSourceClifford_star_continuous`, `originalSourceSpin48_inv_continuous` and `originalSourceSpin48IsTopologicalGroup` printed `sorryAx` as the first proof did not elaborate. No new roots or F20F cache accepted. Cumulative accepted S1V52 theorem roots **252**.

## Controlled correction and rationale

The pinned `Mathlib/LinearAlgebra/CliffordAlgebra/Star.lean` defines `star x = reverse (involute x)`; source `Mathlib/LinearAlgebra/CliffordAlgebra/Conjugation.lean` defines `reverse` as an actual ℝ-linear map and `involute` as an actual ℝ-algebra homomorphism. F20B/F20C supplied the genuinely original Clifford finite-dimensional Hausdorff norm, so both maps proved continuous by pinned `LinearMap.continuous_of_finiteDimensional`. The only needed change is to unfold composition in the extensional proposition:

```lean
  simpa only [CliffordAlgebra.star_def, Function.comp_def] using hr.comp hi
```

Do not change the original quadratic form, 48-generator Clifford algebra, PBW norm, Spin48 subtype/group inverse, or F20E accepted lift. Use a distinct Gate #2 workflow file and cache key, preserve exact immutable original source hashes and accepted F20E cache fail-closed and permitted `#print axioms` validator. This is a proof elaboration defect, **not evidence for a discontinuity of Spin inversion**. Gate2 outcome remains unknown until strict compilation.

**Mathematical boundary:** even an accepted `IsTopologicalGroup (spinGroup source48Quadratic)` does not identify a Lie group or canonical smooth/manifold Spin48 double cover and does not yield manuscript Clifford-module equivalence or BFSS spectrum.

Canonical `main`, immutable upstream `etblink/math`, draft PR #25 untouched.
