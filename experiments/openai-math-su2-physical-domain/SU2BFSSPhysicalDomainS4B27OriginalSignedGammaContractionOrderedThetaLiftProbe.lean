import SU2BFSSPhysicalDomainS4B26OriginalGammaThetaOperatorProductDistributionProbe

/-!
S4B27: insert the strictly accepted S4B25 original signed gamma-coefficient
contraction into a GENUINE complex-linear Fock endomorphism, keeping the
source theta factors in their kinetic-before-variation order. Unlike a
scalar proxy, both sides live in Fermion N →L[ℂ] Fermion N.
No full B(x), CAR exchange, gauge reduction or spectral claim is made.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B27
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B11
open FCP.BFSSSU2PhysicalDomainS4B25

/-- Source-exact signed gamma contraction lifted over the ACTUAL ordered
original theta product. The coefficient is still the original source
field-variation coefficient, and the color sign is source-verified. -/
theorem originalSourceVariation_signed_orderedTheta_lift
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (A D : ColorIndex N) (β δ : SpinIndex) :
    (∑ k : SpaceIndex, ∑ α : SpinIndex,
      (((M.gamma k α β *
        sourceMasslessComplexVariationCoefficient M x
          (EuclideanSpace.single (k,A) (1 : ℝ)) α (δ,D)) : ℝ) : ℂ) •
        (M.theta β A * M.theta δ D)) =
      ((((-8 : ℝ) *
        (∑ j : SpaceIndex, ∑ C : ColorIndex N,
          M.structureConstant C A D * x (j,C) * M.gamma j β δ)) : ℝ) : ℂ) •
        (M.theta β A * M.theta δ D) := by
  calc
    _ = (((∑ k : SpaceIndex, ∑ α : SpinIndex,
          M.gamma k α β *
            sourceMasslessComplexVariationCoefficient M x
              (EuclideanSpace.single (k,A) (1 : ℝ)) α (δ,D)) : ℝ) : ℂ) •
          (M.theta β A * M.theta δ D) := by
        simp only [map_sum, Finset.sum_smul]
    _ = _ :=
      congrArg
        (fun r : ℝ =>
          (r : ℂ) • ((M.theta β A * M.theta δ D) :
            Fermion N →L[ℂ] Fermion N))
        (originalSourceVariationCoefficient_manuscript_signed M x A D β δ)

#print axioms originalSourceVariation_signed_orderedTheta_lift

end
end FCP.BFSSSU2PhysicalDomainS4B27
