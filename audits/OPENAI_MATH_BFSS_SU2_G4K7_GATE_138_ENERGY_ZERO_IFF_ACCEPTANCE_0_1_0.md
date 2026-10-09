# BFSS SU(2) G4-K7 — Gate #138 energy positivity and zero-mode criterion acceptance 0.1.0

**Date:** October 9, 2026.
**Disposition:** `PASS__UNIVERSAL_DEFORMED_CORE_ENERGY_NONNEG_AND_ZERO_IFF`.

## Independently verified frozen evidence

- Research branch `research/openai-math-su2-concrete-potential`.
- Accepted commit `30a896b4a5e97e9729efcaac3efcd01602f16171`, parent `b26c9f2e9f61d90524c83a2d0b2c60917887bccb`.
- Qualified exact source `experiments/openai-math-su2-concrete-potential/SU2BFSSG4K7EnergySumOfSquaresCorrectionProbe.lean`, blob `0a78ee7901d25672a39e2f44135a316d0f2e0a0b`.
- Workflow `.github/workflows/openai-math-su2-concrete-potential.yml`, blob `cc5996238383dbb89eabc6604c5b498849b8267d`.
- [BFSS SU2 Concrete Color Gate #138](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/37930122964), run `37930122964`, color-cross job `113818505860`: SUCCESS at exact accepted commit.
- Actual `lake env lean SU2BFSSG4K7EnergySumOfSquaresCorrectionProbe.lean` succeeded.
- Seven declaration `#print axioms` reports exactly `[propext, Classical.choice, Quot.sound]` with no `sorryAx` or custom axiom.
- Source-compilation warning: deprecated `push_neg`; this is cosmetic, not a failure.
- Lean 4.34.1, upstream OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` were pinned.

## Real mathematical statements

For the literal pinned `AlgebraData 2` and any `f : SmoothCore 2` and `h,m : ℝ`, `0 ≤ pairedAlgebraData.deformedCoreEnergy h m f`, directly from the source sum of 16 squared supercharge norms. Zero energy is logically equivalent to every source-defined deformed supercharge image `coreToL2 (pairedAlgebraData.deformedCoreCharge h m α f)` vanishing. For the **exact previously proven nonzero smooth Gauss-invariant** `radialBumpSmoothCore`, the energy is strictly positive iff some exact deformed supercharge component has nonzero L² image. The actual normalized trial energy is nonnegative for all real h, not only `0<h≤1`.

## Scientific correction and boundary

This nonnegative result is **an immediate consequence of the pinned upstream sum-of-squares definition**. Neither numerical strict positivity nor a nonzero deformed charge has been proved. The source result is a quadratic-form trial statement, **not a BFSS spectral gap, energy eigenstate, unique supersymmetric vacuum, self-adjoint Hamiltonian spectral bound or empirical validation**. The earlier Gate #136 existence of a negative-constant lower bound remains true but is weaker than this transparent K=0 bound.

## Next bounded actual mathematical test

G4-K8A seeks a source-bound necessary analytical ingredient for nonzero charge. Prove the accepted nonzero radial test state is 0 at an explicit bosonic configuration of norm 2 but nonzero at the origin; then use pinned Mathlib `is_const_of_fderiv_eq_zero` to deduce some actual real Frechet derivative of this state is nonzero. Do not silently infer any coordinate-derivative L² image, specific supercharge image or strictly positive source energy. These remain genuinely open.

The next G4-K8A source is UNCOMPILED until its own Actions gate and axiom reports succeed. No main merge, public upstream PR, extra axiom or model substitution authorized.
