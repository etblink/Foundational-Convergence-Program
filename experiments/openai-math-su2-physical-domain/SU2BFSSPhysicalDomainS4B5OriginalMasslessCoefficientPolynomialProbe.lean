import SU2BFSSPhysicalDomainS4B4OriginalGammaWeightedBracketPolynomialProbe
import SU2BFSSG4K9COrderedPairCoefficientProbe

/-!
S4B5 — exact polynomial of the ACTUAL ORIGINAL SOURCE massless
deformed potential coefficient, not an invented coefficient alias.

Source fidelity:
  * The G4K9C theorem is the accepted source-identification lemma,
    including the precise original upper-pair normalization and the
    original coefficient sign;
  * S4B4 is the accepted source GammaTwo-weighted polynomial;
  * all source types are AlgebraData N, Boson N, SpinIndex, ColorIndex N.

No new fderiv, real-linear Fermion operator equality, spectral theorem
or surrogate physical realization is asserted. All exact imported
identities and new roots must be strictly qualified in CI.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainS4B5
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

/-- The literal source deformedPotentialCoefficients at undeformed
massless parameters is an exact quadratic polynomial along EVERY
source-original bosonic affine line. This closes a genuine coefficient
identification using accepted G4K9C, NOT an assumed equality. -/
theorem originalMasslessPotentialCoefficient_affine_polynomial
    {N : ℕ} (M : AlgebraData N) (x v : Boson N) (t : ℝ)
    (α β : SpinIndex) (A : ColorIndex N) :
    M.deformedPotentialCoefficients 1 0 (x + t • v) α (β,A) =
    M.deformedPotentialCoefficients 1 0 x α (β,A) +
    t * ((1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        (∑ B : ColorIndex N, ∑ C : ColorIndex N,
          M.structureConstant A B C *
            (v (i,B) * x (j,C) + x (i,B) * v (j,C))) *
          M.gammaTwo i j α β)) +
    t^2 * M.deformedPotentialCoefficients 1 0 v α (β,A) := by
  calc
    M.deformedPotentialCoefficients 1 0 (x + t • v) α (β,A) =
      (1 / 2 : ℝ) *
        (∑ i : SpaceIndex, ∑ j : SpaceIndex,
          M.coordinateBracketAll (x + t • v) i j A * M.gammaTwo i j α β) := by
            exact FCP.BFSSSU2GaugeG4K9C.sourceMasslessCoefficient_eq_halfOriginalOrdered
              M (x + t • v) α β A
    _ = (1 / 2 : ℝ) *
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
            exact FCP.BFSSSU2PhysicalDomainS4B4.originalGammaWeightedBracket_affine_polynomial
              M x v t α β A
    _ = _ := by
      rw [← FCP.BFSSSU2GaugeG4K9C.sourceMasslessCoefficient_eq_halfOriginalOrdered
        M x α β A,
        ← FCP.BFSSSU2GaugeG4K9C.sourceMasslessCoefficient_eq_halfOriginalOrdered
        M v α β A]

/-- Original source single-coordinate case: actual EuclideanSpace
basis, genuine spin/color indices, and exact quadratic remainder. -/
theorem originalMasslessPotentialCoefficient_single_coordinate_polynomial
    {N : ℕ} (M : AlgebraData N) (x : Boson N) (t : ℝ)
    (α β : SpinIndex) (A : ColorIndex N)
    (k : SpaceIndex) (D : ColorIndex N) :
    M.deformedPotentialCoefficients 1 0
      (x + t • EuclideanSpace.single (k,D) (1 : ℝ)) α (β,A) =
    M.deformedPotentialCoefficients 1 0 x α (β,A) +
    t * ((1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        (∑ B : ColorIndex N, ∑ C : ColorIndex N,
          M.structureConstant A B C *
            ((EuclideanSpace.single (k,D) (1 : ℝ)) (i,B) * x (j,C) +
             x (i,B) * (EuclideanSpace.single (k,D) (1 : ℝ)) (j,C))) *
          M.gammaTwo i j α β)) +
    t^2 * M.deformedPotentialCoefficients 1 0
      (EuclideanSpace.single (k,D) (1 : ℝ)) α (β,A) := by
  exact originalMasslessPotentialCoefficient_affine_polynomial
    M x (EuclideanSpace.single (k,D) (1 : ℝ)) t α β A

#print axioms FCP.BFSSSU2GaugeG4K9C.sourceMasslessCoefficient_eq_halfOriginalOrdered
#print axioms originalMasslessPotentialCoefficient_affine_polynomial
#print axioms originalMasslessPotentialCoefficient_single_coordinate_polynomial

end
end FCP.BFSSSU2PhysicalDomainS4B5
