# BFSS S4B18 / Gate106 — original i,j,B,C coefficient sum reordering

**2026-10-26 Project Lead candidate; UNACCEPTED.** Gate105 [run #40393174514](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40393174514) strictly accepted both first and second original bosonic selector half identities, scoped S4 cumulative **39**. Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; pinned Lean 4.34.1/Mathlib d13f23b; current source candidate Git blob `86069cb3b5faba32871eee755edd2c4d272e7c56`, workflow Git blob `0fdf1849ea365fd4728134bee6b70da4a1044be8`, accepted Gate105 S4B17 exact SHA `ea02a6497c5876c82132e874f388c6633f4a752b`.

**Scientific boundary**: Gate105 accepts selector halves under the convenient `∑ j C ∑ i B` and `∑ i B ∑ j C` nesting, but public Gate99 actual `sourceMasslessComplexVariationCoefficient` orders indices as `∑ i ∑ j ∑ B ∑ C`. It would be unjustified to leap to a full field identity without an exact source finite sum commutation. Gate106 exposes the *two original multiplied monomials* in that exact order, including original `M.structureConstant`, original `M.gammaTwo`, source `EuclideanSpace.single`, and real scalar product.

Two unaccepted candidate roots:
1. `originalFieldVariation_first_original_order_selector`: first source coefficient monomial `f_DBC*(v(i,B)*x(j,C))*gammaTwo(i,j)` in original quadruple order equals first Gate105 original reduced `∑ j C f_DAC*x(j,C)*gammaTwo(k,j)`. Uses explicit individual real commutative ring normalization, spatial then color finite sum swaps and strictly accepted S4B17 first selector.
2. `originalFieldVariation_second_original_order_selector`: similarly `f_DBC*(x(i,B)*v(j,C))*gammaTwo(i,j)` in original quadruple order equals second Gate105 reduced `∑ i B f_DBA*x(i,B)*gammaTwo(i,k)`, using a single finite-sum swap and the accepted second selector.

Full variation coefficient `(1/2) ∑ i j (∑ B C f_DBC*(v*x+x*v))*gammaTwo(i,j)` is not yet claimed equal to a signed reduction. This candidate must pass CI in a new .olean, no warnings, exact printed root names and only permitted `propext, Classical.choice, Quot.sound`, no sorryAx, all original source SHA, frozen toolchain, accepted G4K9C ancestry, fresh original BFSS Core, MassiveCoercivity, ColorMatrices, MixedEnergy, DeformedCharge, GammaWords and ColorLie and all S4B3–S4B17 accepted parents. **0 Gate106 accepted pending strict run**, scoped 39. Next target if qualified is exact whole source coefficient with half-factor and Gate103 signed-pair theorem. No original source mutation, no manuscript B(x) or spectral theorem, canonical main and draft PR #25 unchanged.

## Gate106 #1 FINAL STRICT ACCEPTANCE — original four-index source coefficient reordering

**Project Lead independently verified 2026-10-26:** [GitHub Actions run #40395880427](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40395880427), job `121828657305`, candidate commit `ea61f839d9b9a915b7e115a2c010ed33aab714a1`, completed/success, from the actual Lean compiler output. Source immutable `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original source Git blob/manifests, frozen Lean 4.34.1 and Mathlib d13f23b, qualified G4K9C original source ancestry, all qualified. Original BFSS Core, MassiveCoercivity, ColorMatrices, MixedEnergy, DeformedCharge, GammaWords and ColorLie and every accepted S4B3–S4B17 parent rebuilt afresh (accepted S4B17 .olean 32976 bytes). New candidate exact Git blob `86069cb3b5faba32871eee755edd2c4d272e7c56`, strict workflow Git blob `0fdf1849ea365fd4728134bee6b70da4a1044be8`. Fresh nonempty candidate .olean, strict warnings-as-errors and exact axiom report acceptance all passed.

Actual compiler evidence:
```text
GATE106_CANDIDATE_SOURCE_WARNINGS []
GATE106_COMPILER_EXIT 0 AXIOM_REPORTS [
 ('FCP.BFSSSU2PhysicalDomainS4B18.originalFieldVariation_first_original_order_selector', {'propext', 'Classical.choice', 'Quot.sound'}),
 ('FCP.BFSSSU2PhysicalDomainS4B18.originalFieldVariation_second_original_order_selector', {'propext', 'Classical.choice', 'Quot.sound'})]
GATE106_ORIGINAL_SOURCE_FIELD_COEFFICIENT_REORDER_TWO_ROOTS_STRICT_PASS
```

**Gate106 +2/2 strictly accepted. Scoped S4 accepted total 39 → 41.** The full original `i,j,B,C` quadruple finite-index order now reduces termwise to each of the *separate* source coordinate-selector halves. Strict accepted Gate105 plus exact `Finset.sum_comm` and scalar real ring normalization: no fake delta or surrogate gamma/color symbols. Does not itself yet identify full `sourceMasslessComplexVariationCoefficient` (its factor `1/2`, field bilinear sum and skew signs still need assembly) and no manuscript `B(x)` equality, physical Spin9 or spectral-existence assertion. Count scoped, not conflated with old whole-program accepted roots. No canonical main/immutable original mathematics/draft PR #25 change.

**Next planned bounded Gate107**: rewrite the actual source coefficient with `v=EuclideanSpace.single (k,A) 1` into two real signed sums, then use accepted Gate103 original color+gamma skew to combine them. Keep the real scalar half, exact source `GammaMatrix` and color structure constants, and do not assume final signed manuscript coefficient.
