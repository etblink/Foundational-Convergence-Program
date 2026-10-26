import SU2BFSSPhysicalDomainS4B3OriginalBracketPolynomialExpansionProbe

/-!
S4B4 — source gamma-weighted color-bracket finite polynomial.

Composition of accepted S4B3 exact original coordinateBracketAll identity
with the ACTUAL original AlgebraData.gammaTwo matrix entry and the
original 1/2 ordered-pair coefficient. The resulting scalar expression is
exactly the *real* coefficient that G4K9C identifies with
deformedPotentialCoefficients 1 0 x α (β,A). This module does NOT silently
assume or import the expensive qualified G4K9C ancestry and does not
claim its source identification anew.

No surrogate color algebra, no extra axioms, no fderiv or Fock operator
claim, no spectral inference. Strict CI acceptance required separately.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainS4B4
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B3

/-- Exact quadratic polynomial of the genuinely source-defined
gamma-weighted original color bracket, including original 1/2
charge coefficient. This is the source scalar form that G4K9C
connects to deformedPotentialCoefficients 1 0. -/
theorem originalGammaWeightedBracket_affine_polynomial
    {N : ℕ} (M : AlgebraData N) (x v : Boson N) (t : ℝ)
    (α β : SpinIndex) (A : ColorIndex N) :
    (1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        M.coordinateBracketAll (x + t • v) i j A * M.gammaTwo i j α β) =
    (1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        M.coordinateBracketAll x i j A * M.gammaTwo i j α β) +
    t * ((1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        (∑ B : ColorIndex N, ∑ C : ColorIndex N,
          M.structureConstant A B C *
            (v (i,B) * x (j,C) + x (i,B) * v (j,C))) *
          M.gammaTwo i j α β)) +
    t^2 * ((1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        M.coordinateBracketAll v i j A * M.gammaTwo i j α β)) := by
  simp_rw [originalCoordinateBracketAll_affine_polynomial M x v t]
  -- Keep the real scalar t OUTSIDE the original nested finite sums;
  -- Gate92 #1 expanded it under the color indices before ring.
  simp only [add_mul, Finset.sum_add_distrib, ← Finset.mul_sum]
  all_goals ring

/-- The original EuclideanSpace.single specialization, retaining the
true source Spin/Color indices, ordered-pair 1/2, and exact quadratic
remainder rather than claiming the unproved CLM derivative. -/
theorem originalGammaWeightedBracket_single_coordinate_polynomial
    {N : ℕ} (M : AlgebraData N) (x : Boson N) (t : ℝ)
    (α β : SpinIndex) (A : ColorIndex N)
    (k : SpaceIndex) (D : ColorIndex N) :
    (1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        M.coordinateBracketAll
          (x + t • EuclideanSpace.single (k,D) (1 : ℝ)) i j A *
            M.gammaTwo i j α β) =
    (1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        M.coordinateBracketAll x i j A * M.gammaTwo i j α β) +
    t * ((1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        (∑ B : ColorIndex N, ∑ C : ColorIndex N,
          M.structureConstant A B C *
            ((EuclideanSpace.single (k,D) (1 : ℝ)) (i,B) * x (j,C) +
             x (i,B) * (EuclideanSpace.single (k,D) (1 : ℝ)) (j,C))) *
          M.gammaTwo i j α β)) +
    t^2 * ((1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        M.coordinateBracketAll
          (EuclideanSpace.single (k,D) (1 : ℝ)) i j A *
          M.gammaTwo i j α β)) := by
  exact originalGammaWeightedBracket_affine_polynomial
    M x (EuclideanSpace.single (k,D) (1 : ℝ)) t α β A

#print axioms originalGammaWeightedBracket_affine_polynomial
#print axioms originalGammaWeightedBracket_single_coordinate_polynomial

end
end FCP.BFSSSU2PhysicalDomainS4B4
