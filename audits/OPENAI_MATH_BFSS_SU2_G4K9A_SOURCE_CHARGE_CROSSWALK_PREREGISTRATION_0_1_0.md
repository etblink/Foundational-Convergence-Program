# BFSS SU2 G4-K9A — source charge/coefficient crosswalk preregistration 0.1.0

**Date:** 2026-10-09 (Pacific). **Status:** `AUTHORIZED_PROSPECTIVE_UNCOMPILED`. **Evidence class:** SOURCE_DERIVED_CANDIDATE. **Project Lead:** FCP research branch only.

## Authority / prior source register

Use canonical FCP `FCP_CHARTER.md`, `EPISTEMIC_RULES.md`, `SOURCE_REGISTER.md`, `CLAIM_LEDGER.md` and the FCP Family-270B T6 source-delta adjudication, not a reconstructed paper or conjectural spectral interpretation. The Source Register distinguishes `SRC-FCP24-NONPERT-BFSS-1997` (large-N conjectural physical context) and `SRC-OPENAI-MATH-F270B-BFSS-2026` (a particular rigorous relative SU(2) closed-form Hamiltonian positive-eigenvalue theorem, accepted at independent *informal* proof-audit scope). Existing `FCP24-STRING-002` stays `NONFORCED`, with no K1–K10 / recurrence / empirical promotion. The external de Wit–Lüscher–Nicolai 1989 continuous-spectrum theorem is not automatically identified with the pinned exact source operator or added retroactively to a frozen FCP corpus.

## Exact immutable qualification baseline

- FCP research branch `research/openai-math-su2-concrete-potential`; last qualified Gate #162: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38007096865; accepted exact Lean source commit `fea21e5433f66d3521b33885342b2ad5ba0ea10a`, tree `11644820c42839ad9479932775f8dc59cd2b47ad`, G4-K8E4 probe blob `474ba72c168e1d11d36ac8f80dfda748b33ae25e`, subsequent acceptance-only commit `ae171da0352696f8dd0e3f219ee883506c49fc5e`.
- Lean `4.34.1`, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Preserve accepted source and cached G4-K8E3 dependency object identities and independent G4-K8E3/G4-K8E4 final compilation.
- Primary source blobs at the OpenAI pin: `Core.lean` `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, `DeformedCharge.lean` `c27c913c44090100f0c714e3eb34e25205f4d2d3`, `PotentialBasis.lean` `bc9b526284166efcba5a8e296adc79ba88e6764d`. In addition `Kinetic.lean` has `M.charge_kinetic_plus_bracket`, `M.kineticDerivative_pointwise`, `M.bracketMultiplier` and `M.coordinateBracketAll_skew` is in `ColorMatrices.lean`. Reuse their source lemmas instead of expanding the 48-Majorana implementation.

## Source comparison and exact sign derivation to check

The literal `Core.lean` original charge is
```
M.charge α f = [(-i) gamma*theta*derivative] f
  + (sum_{i,j,A,B,C,beta} 1/2 * f_ABC
       * gammaTwo(i,j)[alpha,beta] * theta[beta,A] * x[i,B]*x[j,C]) f
```
where `gammaTwo i j = 1/2*(gamma_i gamma_j - gamma_j gamma_i)`.

The literal `DeformedCharge.lean` source uses
```
M.deformedCoreCharge 1 0 α f
  = (-i)*kineticDerivative(M.kineticSymbol α) f
    + deformedPotentialMultiplier(1,0,x,α) * f(x)
```
on evaluation. At `h=1,m=0`, `PotentialBasis.lean` defines `deformedPotentialMatrix = -∑_{p:i<j} coordinateBracket(x,p,A) • (gamma_i gamma_j)`. Its coefficient is read in the **reversed** spin entry `(β,α)`. Since original `pairGamma` is skew (`pairGammaᵀ=-pairGamma`) by original gamma symmetry/Clifford relations, the minus sign and transpose cancel: the deformed potential coefficient becomes `+∑_{i<j} coordinateBracket(x,i,j,A)*pairGamma(i,j)[α,β]`. The remaining full-vs-upper-triangular source color sum conversion requires `coordinateBracketAll_skew` and the original anti-symmetric `gammaTwo`. It has NOT been discharged or compiler-checked by this preregistration.

The kinetic match is already supported by source `M.kineticDerivative_pointwise` and `M.charge_kinetic_plus_bracket`. The proposed next equality after successful coefficient checks is `M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x`, genuinely source-typed on all `Fermion N`. Then `M.deformedCoreCharge 1 0 α f = M.charge α f` for **all** `SmoothCore 2` or all source `N` if derivable. That would imply `M.deformedCoreEnergy 1 0 f = M.coreForm f` on the same source core. **Do not claim this now.**

## This stage's exact Lean obligations

1. `sourceMasslessPotentialMatrix_eq_neg_pairSum` for arbitrary `M : AlgebraData N`; no hidden physical structure.
2. `sourceMasslessPotentialCoefficient_eq_pairSum` for all `α,β,A,x` on actual source types, using `BFSSGamma.pairGamma_skew` with `M.gamma_clifford` and `M.gamma_symmetric`.
3. Only `[propext, Classical.choice, Quot.sound]` permitted in both `#print axioms` output. No `sorry`, `admit`, substitute gamma/theta, changed source, or unexplained axioms. Exact color gate owner report required; any pushed candidate is `UNCOMPILED` until green.

## Scientific decision / next stage (not preauthorized as proved)

After the coefficient lemma compiles, address source `bracketMultiplier` vs `deformedPotentialMultiplier 1 0` using `coordinateBracketAll_skew`, pair sums, and the already proved kinetic pointwise formula. Then source all-core charge and form identities. Even **those** identities would not automatically prove equality of the manuscript's selected self-adjoint operators: explicitly discharge restriction to genuine invariant core, density, closed quadratic-form equality, representation matching, and uniqueness of the self-adjoint operator associated to the identical closed form; separately distinguish the upstream `deformedClosedGraph` from the closed quadratic-form domain. Stop if equivalence requires assumptions absent from pinned sources or source-registered evidence.

**Prohibitions:** no rewrite of `main`, no framework/empirical/mass-gap claim, no all-N spectrum inference, no new physical assumptions, no upstream PR, and no inspection of the next run before the owner reports gate color.
