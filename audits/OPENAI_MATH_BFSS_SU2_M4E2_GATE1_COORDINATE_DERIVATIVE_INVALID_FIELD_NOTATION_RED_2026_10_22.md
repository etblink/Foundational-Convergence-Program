# FCP BFSS SU(2) — M4E2 Gate #1 RED: original coordinateDerivative mistaken field notation

**Date:** October 22, 2026 PDT.  
**Disposition:** `M4E2_GATE1_RED__SOURCE_COORDINATE_DERIVATIVE_IS_NAMESPACE_DEF_NOT_ALGEBRADATA_FIELD__ZERO_ROOTS__282_ACCEPTED_UNCHANGED`.

## Exact original source/compiler evidence

- GitHub Actions [strict run #39803053288](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39803053288), job `119908861819`, first attempt, **overall completed/failure**.
- Source+workflow commit `aa06321a468f4ef6a3b79a3fe832b70f1177fad0`, research branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Candidate `experiments/openai-math-su2-physical-domain/FCPIndependentCoordinateDerivative.lean`, original blob `50585a60721c6ec86f3f85a6f5fda9a8b2288d6f`.
- Original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Frozen original/candidate/accepted predecessor pins passed; qualified M4E1 cache `bfss-fcp-m4e1-fermion-core-action-v2-adc7f124-lean4341-d13f23b-Linux-X64` restored; original BFSS and accepted M4E1 `.olean` closure passed.
- Strict fresh Lean failed at exactly `FCPIndependentCoordinateDerivative.lean:57:6`:
  ```text
  Invalid field notation: Function `DFunLike.coe` (coerced from `coordinateDerivative`)
  does not have a usable parameter of type `AlgebraData ...` for which to substitute `pairedAlgebraData`.
  Note: Such a parameter must be explicit, or implicit with a unique name, to be used by field notation.
  ```
- Two supporting roots `independentCoordinateDerivative` and `independentCoordinateDerivative_apply` compiled with the *three permitted axioms only*: `propext`, `Classical.choice`, `Quot.sound`. The final root `independentCoordinateDerivative_intertwining` reported `sorryAx` solely due to the invalid expression in the theorem **type**. No successful M4E2 acceptance marker or qualified cache. One root target stays **0/1**; cumulative count **282**.
- Original diagnostic artifact `bfss-m4e2-gate1-39803053288` uploaded by workflow.

## Source-exact reason and bounded repair

Pinned original `etblink/math/lean/OAI/MathematicalPhysics/BFSS/Core.lean` defines, inside `namespace OAI.BFSSQuantum.AlgebraData`:
```lean
def coordinateDerivative (i : SpaceIndex) (A : ColorIndex N) :
    SmoothCore N →ₗ[ℂ] SmoothCore N :=
  (TestFunction.lineDerivCLM ℂ (EuclideanSpace.single (i, A) 1)).toLinearMap
```
Here `N` is inferred from the other arguments; unlike `M.fermionAction`, this definition **does not receive the AlgebraData object `M`**. The failing candidate wrote
```lean
pairedAlgebraData.coordinateDerivative i A (independentSmoothTransport J f)
```
as if `coordinateDerivative` were a field receiving `pairedAlgebraData`. Replace only that expression by the literal original namespace function
```lean
coordinateDerivative i A (independentSmoothTransport J f)
```
while preserving all independent test-function definitions, real Fréchet chain-rule tactic proof, theorem hypotheses, original source pins, the whitelist, and strict `#print axioms` checks.

The resulting proof might reveal new elaboration obligations. A Gate #2 must compile fresh and provide original error logs rather than presuming the mathematical theorem is accepted.

## Scientific scope, boundary and governance

The exact target is `independentSmoothTransport J (independentCoordinateDerivative i A f) = coordinateDerivative i A (independentSmoothTransport J f)`, where the independent operator was **defined before J** using pinned `TestFunction.lineDerivCLM ℂ` on original `EuclideanSpace.single` coordinate axes. Acceptance would establish only the derivative factor for future kinetic 16-charge assembly, **not** the kinetic gamma-theta sum, cubic term, complete charges, closure domains, Hamiltonian or point spectrum.

Preserve failure history and source-exact API distinction. No changes to immutable upstream sources, already-accepted proof blobs, canonical `main`, draft PR #25, or Issue #28. Do not rerun unchanged Gate #1 source.
