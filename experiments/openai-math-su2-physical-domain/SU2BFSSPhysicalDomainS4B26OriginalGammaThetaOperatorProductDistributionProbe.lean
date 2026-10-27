import SU2BFSSPhysicalDomainS4B25OriginalManuscriptSignedGammaCoefficientProbe

/-!
S4B26: distribute the actual original kinetic gamma/theta continuous-linear
endomorphism sum against the original field-variation theta sum. This is
the typed Fock-algebra interface necessary to apply S4B25's source-exact
scalar contraction inside ordered theta products. No CAR, no interchange of
theta factors, no manuscript B(x) operator equality is claimed.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B26
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B11

/-- Distribute actual original complex continuous-linear theta operators,
retaining kinetic-theta-before-potential-theta multiplication and
the true original field-variation coefficient. -/
theorem originalGammaTheta_operator_product_distribution
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (k : SpaceIndex) (A : ColorIndex N) (α : SpinIndex) :
    (∑ β : SpinIndex,
        (M.gamma k α β : ℂ) • M.theta β A) *
      (∑ q : FermionIndex N,
        ((sourceMasslessComplexVariationCoefficient M x
          (EuclideanSpace.single (k,A) (1 : ℝ)) α q : ℝ) : ℂ) •
          M.theta q.1 q.2) =
    ∑ β : SpinIndex, ∑ q : FermionIndex N,
      ((M.gamma k α β : ℂ) *
        ((sourceMasslessComplexVariationCoefficient M x
          (EuclideanSpace.single (k,A) (1 : ℝ)) α q : ℝ) : ℂ)) •
          (M.theta β A * M.theta q.1 q.2) := by
  simp only [Finset.sum_mul, Finset.mul_sum,
    smul_mul_assoc, mul_smul_comm, smul_smul]

#print axioms originalGammaTheta_operator_product_distribution

end
end FCP.BFSSSU2PhysicalDomainS4B26
