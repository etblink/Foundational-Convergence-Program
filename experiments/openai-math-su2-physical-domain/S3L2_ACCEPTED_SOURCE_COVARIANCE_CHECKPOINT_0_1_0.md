# BFSS SU(2) S3L2 qualified source-covariance checkpoint 0.1.0

**Status:** S3L0, S3L1, S3L2 QUALIFIED; S3L3 AND FULL-SUPERCHARGE COVARIANCE UNPROVED.  
**Qualified compiled source commit:** `6256072e018d239222e9b84ee0d71b3df9003a6f`  
**Pinned Lean gate:** https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38116317720 — **S3L Source Rotation Coefficients #10 SUCCESS**, including exact source-object verification, fresh S3L0/S3L1/S3L2 compilation, axiom checks and no `sorryAx`.  
**Pins:** `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.  
**Lineage:** green S3K #212, rechecked bridge #213; accepted S3L0 gate #3 and S3L1 gate #8. PR #25 is stacked on S3K PR #24; neither is merged. Main unchanged.

## Precisely accepted claims

**S3L0:** `pairedKineticSpinorCoefficient_exact` establishes the actual `gamma k` spinor-index coefficient after the proposed orbital rotation correction, using the source `pairedPlaneSpinGenerator i j` and skewness.

**S3L1:** `pairedSourceOrbitalPlaneGenerator_apply` constructs the genuine upstream `SmoothCore 2` operator
```text
L_ij = sum_A (position i A ∘ coordinateDerivative j A
           - position j A ∘ coordinateDerivative i A)
```
and proves its evaluation is `sum_A (x_i^A ∂_(j,A)f - x_j^A ∂_(i,A)f)`. This is source-faithful and finite on the true original compactly supported smooth core.

**S3L2:** `pairedGammaTwo_source_spatial_commutator` and `pairedGammaTwo_potential_spinor_coefficient_exact` are now compiled with the exact literal source `pairedAlgebraData.gammaTwo k l`, not a surrogate tensor:
```text
deltaGamma(k) = [J_ij, gamma(k)]
[J_ij, gammaTwo(k,l)]
  = (1/2) * (deltaGamma(k)*gamma(l) + gamma(k)*deltaGamma(l)
             - deltaGamma(l)*gamma(k) - gamma(l)*deltaGamma(k)).
gammaTwo(k,l) * transpose(J_ij) - spatialVariation(k,l)
  = -J_ij * gammaTwo(k,l).
```
Source axioms limited to `propext`, `Classical.choice`, `Quot.sound`. Gate #9 failed on the `module` normalization of ordered triple matrix products; a *mathematically unchanged* expansion through `mul_sub`, `sub_mul`, `mul_add`, `add_mul`, `smul_mul_assoc`, `mul_smul_comm`, `Matrix.mul_assoc` corrected that elaboration. Gate #10 passed. The proof is the ordinary noncommutative derivation law, specialized to the pinned BFSS Cl(9) matrices.

## Next gate: S3L3, exact source orbital commutators

Construct real, source-faithful commutators with `position k B` and `coordinateDerivative k B` **on the original `SmoothCore 2`**, preserving operator composition order. For distinct i,j and every k, B, independently check exact statements corresponding to
```text
[L_ij, x_k^B] f = (1_(k=j) x_i^B - 1_(k=i) x_j^B) f,
[L_ij, ∂_(k,B)] f = -1_(k=i) ∂_(j,B)f + 1_(k=j) ∂_(i,B)f.
```
The signs are proposed from ordinary product/differentiation rules and MUST be checked against the literal `AlgebraData.position` and `coordinateDerivative` definitions, not stipulated by hypotheses. The derivative commutator needs equality of mixed second partials and preservation of the smooth core; use upstream `TestFunction` and `fderiv` APIs, not arbitrary representatives of L² classes.

Only after S3L3 qualifies, transport accepted S3E fermionic `theta` commutators to a source `SmoothCore` pointwise action and assemble the exact original `AlgebraData.charge alpha` finite sum. Verify the full mixed kinetic/cubic identity, then physical form, closed Hamiltonian domain, and spectral reduction separately.

## Negative knowledge and scientific limits

- S3L2 is **a necessary two-form source coefficient identity**, not the entire cubic supercharge covariance and not a Hamiltonian symmetry.
- Gauge compatibility of S3K does not establish `[H,K]=0` for fermionic-only `K`; orbital rotation is essential.
- Avoid rerunning stalled weighted-Majorana generic-sum elaborations unless they become load-bearing.
- Avoid proving semantically weaker replacements under an unchanged milestone name.
- There is still no verified conclusion of a global Spin(9) action, invariant closed form, closed-Hamiltonian commutator, compact resolvent in a sector, or any positive BFSS eigenvalues.
- The project seeks the truth of the spectral claim; fail an actual sign or structural discrepancy openly.
