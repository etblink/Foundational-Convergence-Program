# FCP BFSS S4B6 — Gate94 original complex Fock massless potential multiplier

**Date:** October 26, 2026.  
**State:** strict Gate94 initially pending, **0 new S4B6 roots admitted until terminal strict success**. Source and accepted-parent provenance must be checked at exact Git blobs.

## Why this is a new scientific boundary

Accepted [Gate93 #1](FCP_BFSS_S4B5_GATE93_ACTUAL_MASSLESS_COEFFICIENT_POLYNOMIAL_2026_10_26.md) proves the precise source polynomial of `M.deformedPotentialCoefficients 1 0`; it does **not** lift coefficient identities into the actual Fermion continuous-linear operator space. This step checks that real-scalar linearity and finite Majorana Clifford summation preserve the complete source polynomial.

Frozen original source:
- `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` (original `CliffordSymbols.lean`, `PotentialBasis.lean`, `DeformedCharge.lean` and all imported BFSS code);
- Lean4 `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`;
- The **original** `M.cliffordLinear a : Fermion N →L[ℂ] Fermion N` is `Σ_{p:FermionIndex N} (a(p):ℂ) • M.theta p.1 p.2`, with source CAR Majorana `M.theta`.
- The **original** massless multiplier `M.deformedPotentialMultiplier 1 0 x α` is `M.cliffordLinear (M.deformedPotentialCoefficients 1 0 x α)` in `PotentialBasis.lean`.
- The genuine real-linear `M.deformedRealField 1 0 α x` is the *restriction of scalars* of that source complex-linear operator, in `DeformedCharge.lean`. This fact is contextual, **not yet formalized as a Gate94 equality of real-continuous-linear functions.**

## Exact four theorem targets

[Source candidate](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B6OriginalMasslessPotentialMultiplierPolynomialProbe.lean) at exact source Git blob `089fd924cab82eadb17660a801a4512b0c1b4702`.

- `sourceCliffordLinear_add`: `M.cliffordLinear (a+b) = M.cliffordLinear a + M.cliffordLinear b` for original real-valued Fermion coefficient functions.
- `sourceCliffordLinear_real_smul`: `M.cliffordLinear (t • a) = (t:ℂ) • M.cliffordLinear a` for original real t, preserving the actual complex scalar action on complex-linear Fock operator.
- `originalMasslessPotentialMultiplier_affine_polynomial`: for all original `M, x, v, t, α`,
```text
M.deformedPotentialMultiplier 1 0 (x+t•v) α
  = M.deformedPotentialMultiplier 1 0 x α
  + (t:ℂ) • M.cliffordLinear (sourceMasslessPotentialVariation M x v α)
  + ((t²:ℝ):ℂ) • M.deformedPotentialMultiplier 1 0 v α.
```
Here `sourceMasslessPotentialVariation` is an **explicit original color/gamma coefficient** based on exactly the Gate93 linear coefficient, with no assumed derivative. It is initially declared private to avoid claiming a certified independently named physical field; if the formal theorem succeeds, assess public interface accessibility separately.
- `originalMasslessPotentialMultiplier_single_coordinate_polynomial`: same actual complex-linear operator identity at source `EuclideanSpace.single (k,D) 1`.

All source spin/color and bosonic directions genuine; no mathematical substitution or unproved bridge assumed.

## Strict workflow contract

[Gate94 workflow](../.github/workflows/bfss-form-original-potential-multiplier-strict-gate94.yml) source+workflow research commit `b9d6e522e73514357856db2276ba7fc27fa62029`, workflow blob `af45b6a3b35db7b6e1b0c4dc5cd8e0f72a5b9fbe`. [GitHub Actions run #40292651664](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40292651664) launched; terminal verdict not available at initial audit.

- Strict source/immutable SHA pair checks: candidate `089fd924cab82eadb17660a801a4512b0c1b4702`, accepted S4B5 parent `f2701b1e07f3d3bcae69a3e81a5bfa015c28a68d`, accepted S4B4 parent `2ed79184d19ba0ddc024952f91871ee8c4fc3ea9`, S4B3 parent `c80d85164247e6631fb1b0d7e4da2aca48c6af32`, historical G4K9A/B/C exact source blobs. Original `Core`, `MassiveCoercivity`, `ColorMatrices` source blobs unchanged.
- Frozen toolchain and Mathlib verified, plus self-tested YAML preflight.
- Fail-closed historical G4K9A/B/C cache provenance using the original DE3B save-path and exact cache key. Fresh original `Core/MassiveCoercivity/ColorMatrices` compilation.
- Fresh S4B3, S4B4, S4B5 accepted parent recompilation with all exact expected original axiom reports, including imported historic G4K9C original theorem.
- Candidate strict `lean -DwarningAsError=true`, new nonempty `.olean`, exactly four expected source declarations, no `sorryAx`, Lean errors or warnings except narrowly identified third-party Lake repository-state notices; only `{propext,Classical.choice,Quot.sound}` axioms.
- Accept **only** fully completed green workflow/job plus original compiler log. A red without compiler source diagnostics is infrastructure, not mathematical disproof.

## Successor priority and negative knowledge

The original S4 series strictly accepted **eight** roots before Gate94: S4B1 Gate89 +2; S4B3 Gate91 +2; S4B4 Gate92 +2; S4B5 Gate93 +2. Separate scoped S3L series 77 through Gate82; no all-FCP total silently inferred. The preserved Gate90 red calculus attempts and Gate92 two finite-sum reds prove that broad `simp`/ring and mismatched PiLp typeclass reconstruction are not good methods. Structure → specialize → source-identify → typed compose remains preferred per the [Evergreen guide](../handoffs/FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md).

If Gate94 qualifies, next source task is transporting this exact **complex-linear** source Fock operator polynomial through original `ContinuousLinearMap.restrictScalars ℝ` into `M.deformedRealField 1 0` and then showing the exact `fderiv` term in original `MixedEnergy.remainderField`. Do not promote `M.deformedFermionField 1 0 = B(x)`, source global Spin9 physical closed form, or positive normalizable eigenstate claims from this polynomial alone.
