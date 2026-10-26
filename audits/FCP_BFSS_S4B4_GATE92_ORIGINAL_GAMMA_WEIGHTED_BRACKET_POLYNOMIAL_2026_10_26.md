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


## Gate92 #1 actual outcome — strict RED / original source and S4B3 ancestry passed

[Run #40286673274](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40286673274), job `121451852623`, **completed/failure**. Original `Core`, `MassiveCoercivity`, and `ColorMatrices` compiled FRESH and exact accepted original S4B3 parent compiled with allowed-axiom reports (`GATE92_ACCEPTED_S4B3_PARENT_FRESH_PASS 112336`). The candidate **failed Lean** at line 48:65, with both new theorem reports containing `sorryAx`; **0 new Gate92 roots accepted**. The freeze and source provenance were not responsible.

The **first mathematical proof-normal-form diagnostic** was an explicit unsolved real scalar equality after `simp only [add_mul,Finset.sum_add_distrib,Finset.mul_sum]` and `ring`. On the left, `t` had been expanded *inside* the original nested sum over color labels B,C before multiplication by `gammaTwo`; on the right, `t` remained factored *outside* the sum. `ring` treats opaque finite sums as independent atoms and cannot prove equality without first moving the scalar across the original finite sums. This does NOT disprove the coefficient identity or invalidate the accepted S4B3 parent.

**Bounded proof-only Gate92 #2** committed as `b9d8c1d8fbdbed59981d199dea0c16178f4bb59a`, candidate blob `7341c0ad541ce0b1cb82a65b57985586eed3e81a`, workflow blob `e243be18711fcf1e135030e3998700ebc9acf0ab`. Exact original source and both new theorem statements unchanged. The new proof pulls factors OUT of sums using `←Finset.mul_sum` rather than pushing them into nested sums, then applies `all_goals ring` to remaining real algebra. Both immutable candidate blob pins were updated atomically. [Gate92 #2 run #40287580010](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40287580010) launched; terminal strict evidence pending at this record.

**Stop rule:** If #2 does not discharge the concrete finite-sum factoring mismatch, examine the first exact remaining goal and adopt one explicit typed `Finset.sum_congr` interface for source `(i,j)` terms, rather than indefinitely alternating broad `simp`/ring rewrites. No increase to recursion, heartbeat, unchecked axioms, or untracked source substitution. Keep Gate92 #1 historically red after any later green.


## Gate92 #2 strict RED, and #3 structural rather than heuristic repair

[Run #40287580010](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40287580010), job `121454783136`, **completed/failure**. All three original Lean ancestors freshly compiled; the exact S4B3 parent theorem module compiled with accepted axiom reports `GATE92_ACCEPTED_S4B3_PARENT_FRESH_PASS`. Gate92 #2 candidate exit 1, both new declarations `sorryAx`, **0 roots**. The attempted `←Finset.mul_sum` simplifier explicitly reported `This simp argument is unused`, and `ring` failed on a residual expression differing only by where `t` and `t²` sit relative to the original double spatial finite sums. The red is a proof-normal-form failure, not a mathematical counterexample. Previous #1 RED remains independent.

**Stop the unproductive architecture:** no further permutations of broad `simp only`, `ring`, `ring_nf`, or arbitrary increased heartbeats on the whole nested source finite sum.

**Gate92 #3 changes the proof interface itself** in commit `fb4276e44b2db57954a75c1255c0bbabd1b4c64a`, candidate blob `2ed79184d19ba0ddc024952f91871ee8c4fc3ea9`, workflow blob `abbbb2f91e9ada61b5616909f014de481733bd8e`, both original theorem statements unchanged. It first applies accepted S4B3 **at one fixed spatial pair `(i,j)`** and proves by real `ring` the gamma-weighted polynomial for that one original scalar. It then assembles this original finite family using nested typed `Finset.sum_congr`, explicitly `Finset.sum_add_distrib` and factoring with `←Finset.mul_sum` only on source terms where the factor has already been placed outside gamma entry. Finally one ordinary real polynomial identity composes the exact source `1/2` multiplier. This is the tested `structure → specialization → composition` architecture from the [Evergreen guidance](../handoffs/FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md), not a retry with the same proof term.

[Gate92 #3 Actions run #40288496769](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40288496769) launched. Strict accepted-root count **remains 0 for S4B4** until terminal success and clean axiom reports. If the typed `hsum` step still fails, preserve its first compiler goal and assess whether the original finite index simplification is worth another gate versus direct use of the already accepted G4K9C interface.
