# FCP BFSS SU(2) — M4E3 Gate #1 strict acceptance: independent kinetic supercharge component

**Date:** October 22, 2026 PDT.  
**Disposition:** `M4E3_GATE1_STRICT_PASS__INDEPENDENT_KINETIC_SOURCE_EXACT_FINITE_SUM_INTERTWINING__ONE_NEW_ROOT__284_CUMULATIVE`.

**Cumulative accepted roots: 284 = M4E2 accepted 283 + exactly one M4E3 principal root.**

## Original evidence, source provenance and qualified cache

- [GitHub Actions strict run #39807554613](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39807554613), job `119924720396`, attempt 1, **overall completed/success**, job completed successfully with no failed steps. Final workflow API updated `2026-10-22T15:49:14Z`.
- Triggering workflow+source commit `d19d2481e1c813782eae9f60ae8f180c49a6c380` on branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`; no main changes.
- New candidate `experiments/openai-math-su2-physical-domain/FCPIndependentKineticCharge.lean`, Git blob `175acf89e2f540927423d1776802f5bc673ccce2`.
- New unique workflow `.github/workflows/bfss-m4e3-independent-kinetic-charge-strict-gate1.yml`, triggers **only on push of this workflow path** on isolated research branch, preventing unintentional reexecution of previously accepted gates.
- Original mathematics immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Preflight `M4E3_FROZEN_SOURCE_PINS_PASS` and `M4E3_PINNED_TOOLCHAIN_PASS`.
- Qualified M4E2 derivative v3 cache restored `bfss-fcp-m4e2-coordinate-derivative-v3-adc7f124-lean4341-d13f23b-Linux-X64` and original-source plus accepted dependencies validated.
- Candidate compiled with `lake env lean -DwarningAsError=true` against the original `.olean` dependencies. Strict exact declaration-name, no-errors/warnings and permitted axiom checker passed, printing original Lean output:
  ```text
  'FCP.IndependentSmoothSupercharge.independentKineticCharge' depends on axioms:
      [propext, Classical.choice, Quot.sound]
  'FCP.IndependentSmoothSupercharge.independentKineticCharge_intertwining' depends on axioms:
      [propext, Classical.choice, Quot.sound]
  M4E3_INDEPENDENT_KINETIC_CHARGE_INTERTWINING_ONE_ROOT_STRICT_PASS
  ```
- No `sorryAx`, unqualified axiom, missing dependency or warning. Supporting operator definition separately axiom-checked but not counted as another theorem root.
- New qualified cache **`bfss-fcp-m4e3-kinetic-charge-v1-adc7f124-lean4341-d13f23b-Linux-X64`** saved.
- Original diagnostic artifact `bfss-m4e3-gate1-39807554613`, artifact ID `12439290653`, uploaded successfully.

## Genuine mathematical result

An independent kinetic differential-expression operator was constructed on the independently defined `E`-valued compactly supported smooth test functions by taking **input gamma matrices** `gamma : SpaceIndex → GammaMatrix`, **input independent Majorana maps** `theta : SpinIndex → ColorIndex 2 → Module.End ℂ E`, and the exact coordinate operators accepted in M4E2:
```lean
def independentKineticCharge gamma theta α :=
  ∑ i : SpaceIndex, ∑ A : ColorIndex 2, ∑ β : SpinIndex,
    (-Complex.I * (gamma i α β : ℂ)) •
      ((independentFermionCoreAction theta β A).comp
        (independentCoordinateDerivative i A))
```
This operator is **defined without any unitary `J` or source charge definition**. The signs, indices, `-i` coefficient and `fermionAction ∘ coordinateDerivative` order match the manuscript/source kinetic term.

New root `FCP.IndependentSmoothSupercharge.independentKineticCharge_intertwining` proves exactly:
```lean
independentSmoothTransport J (independentKineticCharge gamma theta α f) =
  (∑ i : SpaceIndex, ∑ A : ColorIndex 2, ∑ β : SpinIndex,
    (-Complex.I * (pairedAlgebraData.gamma i α β : ℂ)) •
      ((pairedAlgebraData.fermionAction β A).comp
        (coordinateDerivative i A))) (independentSmoothTransport J f)
```
for each spin index `α`, compactly supported smooth `f`, generator-intertwining `J`, and the exact gamma matching condition `gamma = pairedAlgebraData.gamma`. The proof applies independently accepted M4E1 smooth Majorana action and M4E2 smooth derivative transport to every individual finite-sum term; no whole charge is defined by transporting source `AlgebraData.charge`.

This identifies **only the kinetic summand** of the source `charge` on the smooth test-function domain; not the cubic contribution, entire sixteen supercharges, gauge-equivariant charge restrictions, closure of operator graphs, quadratic form/Hamiltonian equality or point spectrum.

## Important negative-knowledge inheritance

M4E2 Gate #1 identified `coordinateDerivative` as original `AlgebraData` **namespace definition**, not `pairedAlgebraData` field, and Gate #2 avoided incompatible `fderiv_comp` rewrite via `HasFDerivAt.comp`. Those strictly accepted improvements and M4E1 prior proof components made direct finite-sum assembly possible in M4E3 Gate #1 **without additional failed attempts**. Reuse qualified exact original source and parent caches, not broad definitional reduction.

## Next boundary — independent cubic term

Construct the independent coordinate/position smooth multiplier and prove its exact pointwise transport through `J`, preserving the original `AlgebraData.position` and `smoothMultiplier` APIs. The independent cubic term must use original exact `1/2`, real `structureConstant A B C`, `gammaTwo i j α β`, input independent `theta`, position order `position i B ∘ position j C`, and no `J` in its definition. Prove its term-by-term source exactness. Only then assemble the sixteen complete charges and move to gauge-core, closed graph/domain and Hamiltonian relations.

**Governance:** research-branch audit only. Preserve original mathematics and previously accepted proof blobs/cache; canonical main unchanged `cf06212a57db0ceffad74bd78280a8a240856a17`. No action on PR #25 or Issue #28.
