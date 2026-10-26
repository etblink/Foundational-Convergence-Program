# FCP BFSS S4B4 — original gamma-weighted color-bracket polynomial Gate92

**Date:** October 26, 2026.  
**Disposition:** 2 prospectively source-typed scalar roots; Gate92 terminal acceptance pending. Never count a prospective root or confuse a source scalar with the complex/real Fock operator.

## Foundation and source register

- Original mathematics pin: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Original `AlgebraData`, `SpaceIndex=Fin9`, `SpinIndex=Fin16`, `ColorIndex N`, `Boson N`, `gammaTwo`, and `structureConstant` from pinned original `Core.lean`, `MassiveCoercivity.lean`, `ColorMatrices.lean` (immutable blobs checked by Gate92).
- S4B3 accepted [Gate91 #2](FCP_BFSS_S4B3_GATE91_2_ORIGINAL_BRACKET_POLYNOMIAL_TWO_ROOTS_STRICT_ACCEPTANCE_2026_10_26.md), [original run #40285539487](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40285539487). Its two exact-polynomial theorems `originalCoordinateBracketAll_affine_polynomial` / `originalCoordinateBracketAll_single_coordinate_polynomial` were strictly accepted, source blob `c80d85164247e6631fb1b0d7e4da2aca48c6af32`. Gate92 MUST freshly compile and re-audit both named source ancestors at that exact blob.
- Historically accepted G4K9C `sourceMasslessCoefficient_eq_halfOriginalOrdered` proves source `deformedPotentialCoefficients 1 0 x α (β,A)` equals `(1/2)*ΣᵢΣⱼ coordinateBracketAll x i j A * gammaTwo i j αβ`, and G4K9D original potential multiplier identification is already accepted. These are existing evidence, **not imported or re-proved by Gate92**; their integration will be a separate source bridge.

## Gate92 precise new mathematical scope

Define the actual source gamma-weighted scalar expression, with no surrogate type:

```text
  C_M(x;α,β,A) = (1/2) * Σ_i:Fin9 Σ_j:Fin9
       M.coordinateBracketAll x i j A * M.gammaTwo i j α β.
```

The proposed S4B4 `originalGammaWeightedBracket_affine_polynomial` proves for original `M:AlgebraData N`, `x,v:Boson N`, `t:ℝ`:

```text
 C_M(x+t*v) =
   C_M(x)
 + t * (1/2)*Σ_iΣ_j [Σ_BΣ_C f_(A B C)
              (v_(iB)x_(jC)+x_(iB)v_(jC))] gammaTwo_(ij,αβ)
 + t² * C_M(v).
```

The companion `originalGammaWeightedBracket_single_coordinate_polynomial` specializes to `v=EuclideanSpace.single (k,D) 1` while retaining original coincident-index behavior. These are exact **real scalar** identities and follow by applying the accepted S4B3 source polynomial under original finite spin/color sums and real ring normalization. No `HasDerivAt` or `fderiv` typeclass is introduced.

Source path: [`SU2BFSSPhysicalDomainS4B4OriginalGammaWeightedBracketPolynomialProbe.lean`](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B4OriginalGammaWeightedBracketPolynomialProbe.lean), prospective blob `ed972d39980b53ab99ebd09714b48c97b7a62ae7`.

Strict workflow: [Gate92](../.github/workflows/bfss-form-original-gamma-weighted-polynomial-strict-gate92.yml), initial source+workflow commit `2f4f33570517866ce0ab1a52273c4f1d727ee61d`, workflow blob `5889d559399b615d81aaa2353a170480a899a6e8`; [Actions run #40286673274](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40286673274) launched.

The strict gate checks the pinned original three source blobs, toolchain/manifest SHA and both candidate and S4B3 accepted parent SHA twice, freshly compiles original `Core`, `MassiveCoercivity`, `ColorMatrices`, then freshly compiles S4B3 at the exact accepted source blob with BOTH allowed-axiom reports, only then compiles the new S4B4 candidate with its two expected named theorem axiom reports, strict `-DwarningAsError=true`, nonempty `.olean`, no `sorryAx` or unexpected Lean warnings. The Lake third-party package cache notice whitelist is scoped and regression-tested as at Gate89/91.

## Acceptance and next scientific boundary

Until the terminal job/axiom evidence is inspected, **0 accepted S4B4 roots**. Accepted predecessors remain independent S4B1 +2 and S4B3 +2; Gate91 #1 and Gate90 #1–#3 remain historically RED. Do not conflate this weighted scalar coefficient with the full `deformedRealField 1 0` operator, especially not a field derivative in continuous-linear map topology or the manuscript `B(x)`.

After a strict pass, import the already-accepted G4K9C scalar identification with exact parent provenance, specialize this identity to `deformedPotentialCoefficients 1 0`, and only then use G4K9D to transport to the genuine fermionic Fock operator; preserve source `1/2`, `-i`, gamma and color sign. Global source Spin9 and closed physical form/coercivity/positive-eigenvalue claims remain independently unproved.

**Evergreen governance:** source-first truth, finite proof boundaries, no CI-driven theorem count inflation, preserve red diagnostics in this scoped audit/handoff rather than stable evergreen guide.
