# FCP BFSS SU(2) — M4E2 Gate #2 RED: fderiv_comp rewrite/elaboration failure

**Date:** October 22, 2026 PDT.  
**Disposition:** `M4E2_GATE2_RED__SOURCE_DECLARATION_SCOPE_REPAIRED__REAL_FDERIV_COMP_TACTIC_APPLICATION_MISMATCH__ZERO_ROOTS__282_UNCHANGED`.

## Original strict CI evidence

- GitHub Actions [Gate #2 run #39804460414](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39804460414), job `119913837003`: **completed/failure**, new workflow at `4ceae913c8ce6d0bef34a9ce510d17d70a1dd8a3`.
- Candidate source `experiments/openai-math-su2-physical-domain/FCPIndependentCoordinateDerivative.lean`, Git blob `efdc37a7bb99a25f17d9ec086f1a379382510cd8`.
- Frozen upstream pin `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; source and candidate hashes passed, and accepted M4E1 v2 cache `bfss-fcp-m4e1-fermion-core-action-v2-adc7f124-lean4341-d13f23b-Linux-X64` restored with all required original and prior `.olean` dependencies.
- Lean successfully elaborated the two independent supporting declarations and **the entire final theorem statement**, including the original namespace-level `coordinateDerivative` fixed from Gate #1. It reached the last chain-rule proof at line 83.
- Original compiler errors:
  ```text
  FCPIndependentCoordinateDerivative.lean:83:8: error:
    Tactic `rewrite` failed: Did not find an occurrence of the pattern
      fderiv ?m.393 (?m.417 ∘ ?m.404) ?m.416
    in the target expression
      fderiv ℝ (⇑L ∘ ⇑f) x = L ∘SL fderiv ℝ (⇑f) x

  FCPIndependentCoordinateDerivative.lean:83:39: error:
    Application type mismatch: argument `hf` has type
      DifferentiableAt ℝ (⇑f) x
    but is expected to have type
      DifferentiableAt ?m.393 ?m.417 (?m.404 ?m.416)
    in the application `fderiv_comp ?m.416 hf`.
  ```
- Both `independentCoordinateDerivative` and `independentCoordinateDerivative_apply` printed only `propext`, `Classical.choice`, `Quot.sound`. The final dependent `independentCoordinateDerivative_intertwining` printed `sorryAx` because the tactic failed. No strict acceptance marker and no qualified M4E2 cache saved; **0/1 roots**, cumulative **282**.
- Original diagnostic artifact `bfss-m4e2-gate2-39804460414` uploaded.

## Root cause and next repair

The original Gate #1 `pairedAlgebraData.coordinateDerivative` misuse was fixed: `coordinateDerivative` is an AlgebraData *namespace definition*, not an AlgebraData field. Gate #2 now proves source identification far enough to expose a separate tactic interface obstacle in the final real Fréchet derivative composition equation.

Pinned Mathlib `Analysis/Calculus/FDeriv/Linear.lean` supplies `ContinuousLinearMap.hasFDerivAt` for the genuine real-linear `L : E →L[ℝ] Fermion 2`. Pinned `Analysis/Calculus/FDeriv/Comp.lean` supplies `HasFDerivAt.comp` for an exact pointwise chain rule. Instead of invoking `rw [fderiv_comp L.differentiableAt hf, ContinuousLinearMap.fderiv]`, Gate #3 should use the direct expression:
```lean
exact ((L.hasFDerivAt).comp x hf.hasFDerivAt).fderiv
```
under the already established `hf : DifferentiableAt ℝ (f : Boson 2 → E) x`. This should target the same `fderiv ℝ (L ∘ f) x = L.comp (fderiv ℝ f x)` goal without a tactic-driven theorem-argument mismatch. Typecheck this precise replacement in new strict gate, and investigate any newly exposed coercion/definitional-equality mismatch rather than presuming success.

This repair **does not alter any mathematical statement**, independently defined derivative, original source gamma/Majorana conventions, or whitelist. It changes only the local proof tactic.

## Governance and scope

No additional theorem root is accepted from either Gate #1 or #2. The next bound remains the exact independently specified coordinate-derivative intertwiner, not a complete kinetic term, cubic term, 16 supercharges, closed domains, or spectrum. Preserve all failed CI logs and avoid reruns of unchanged sources. `main`, original mathematics, previously accepted source blobs and caches, PR #25, and Issue #28 remain unchanged.
