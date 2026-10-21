# S1V52L9E5F20B — Gate #1 red: missing original Source48Label linear order

**Disposition:** `F20B_GATE1_RED__SINGLE_MISSING_LINEAR_ORDER_INSTANCE__ZERO_OF_ONE_NEW_ROOTS__246_ACCEPTED_S1V52_ROOTS`.

## Independently verified primary evidence

- [Original Source Clifford PBW Finite Dimensional Strict Gate #1, run #39661557718](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39661557718), job `119435583403`, workflow commit `fe20e2a6fba1f750437b1056dcefba3e0b46fa15`: **failure** at `Compile actual source Clifford PBW real basis and finite dimensionality`.
- Pinned immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original source SHA preflight, restored accepted F20A cache hit and real original OAI/source object checks all passed. Lean reached exactly the intended new source.
- Source candidate blob `3fb776dd563564f95346e376f2d312934a29bfa6` at `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5F20BOriginalSource48CliffordPBWBasisFiniteDimensionalProbe.lean`.
- First compiler failure at source line 42: ```text
error(lean.synthInstanceFailed): failed to synthesize instance of type class
  LinearOrder Source48Label
```
- The exact source `Source48Label := Fin 24 × Fin 2` has finite components but no automatically inferred `LinearOrder` on the product. Pinned Mathlib's `Module.Basis.ExteriorAlgebra` takes `[LinearOrder I]` for its coordinate basis `I`. Both F20B declarations subsequently printed `sorryAx`, because the basis definition failed. No fresh accepted F20B object cache saved; the cumulative ledger stays **246**.

## Proven source-conservative correction

The pinned `leanprover-community/mathlib4@d13f23b723b8a846827a245b89c10fc7d3f11612` `Mathlib/LinearAlgebra/ExteriorPower/Basis.lean` has an explicit accepted usage in its `instFree` proof:

```lean
  classical
  have ⟨I, b⟩ := Module.Free.exists_basis R M
  let : LinearOrder I := linearOrderOfSTO WellOrderingRel
  exact Module.Free.of_basis (b.exteriorPower n)
```

Use the same pinned theorem with **one local** `LinearOrder Source48Label` instance inside `originalSourceCliffordPBWBasis`. The chosen total order only fixes orientation/sign of the exterior wedge basis; it does not change the actual original Clifford module, quadratic form, underlying vector space, `CliffordAlgebra.equivExterior`, or the statement of `originalSourceClifford_finiteDimensional`.

Suggested code:

```lean
noncomputable def originalSourceCliffordPBWBasis :
    Module.Basis (Finset Source48Label) ℝ C := by
  classical
  letI : LinearOrder Source48Label := linearOrderOfSTO WellOrderingRel
  exact ((Pi.basisFun ℝ Source48Label).ExteriorAlgebra).map
    (CliffordAlgebra.equivExterior Q).symm
```

Source proof remains prospective until Gate #2 checks both declarations' axioms. A successful F20B theorem proves **real finite-dimensionality**, not Clifford multiplication continuity, Spin48 group topology or full lift continuity. Preserve original source pins and the cache fail-closed check. Avoid re-running the unchanged Gate #1.

No modification to `main`, upstream `etblink/math`, or draft PR #25.
