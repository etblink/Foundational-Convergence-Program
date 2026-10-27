import SU2BFSSPhysicalDomainS4B27OriginalSignedGammaContractionOrderedThetaLiftProbe

/-!
S4B28: actual original complex Fock fermionic remainder is the exact
full ordered theta-product finite sum, not a scalar surrogate.
The source -Complex.I phase and 1/16 normalization are retained.
This distributes the accepted S4B26 product throughout the original S4B11
source expression. No CAR permutation, signed color contraction, manuscript
B(x) equality, real restriction, or spectral existence is asserted.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B28
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B10
open FCP.BFSSSU2PhysicalDomainS4B11
open FCP.BFSSSU2PhysicalDomainS4B26

/-- The actual original source complex fermionic remainder, expanded into
ordered source Majorana products while preserving every physical prefactor.
The variation coefficient is the genuine source coefficient. -/
theorem originalComplexFermionContraction_full_orderedTheta_expansion
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    sourceMasslessComplexFermionContraction M x =
      (1 / 16 : ℂ) •
        (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
          (-Complex.I) •
            (∑ β : SpinIndex, ∑ q : FermionIndex N,
              ((M.gamma p.1 α β : ℂ) *
                ((sourceMasslessComplexVariationCoefficient M x
                  (EuclideanSpace.single p (1 : ℝ)) α q : ℝ) : ℂ)) •
                    (M.theta β p.2 * M.theta q.1 q.2))) := by
  calc
    _ = (1 / 16 : ℂ) •
          (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
            ((-Complex.I) •
              (∑ β : SpinIndex, (M.gamma p.1 α β : ℂ) • M.theta β p.2)) *
              (∑ q : FermionIndex N,
                ((sourceMasslessComplexVariationCoefficient M x
                  (EuclideanSpace.single p (1 : ℝ)) α q : ℝ) : ℂ) •
                    M.theta q.1 q.2)) :=
          originalComplexFermionContraction_gammaTheta M x
    _ = _ := by
      exact congrArg
        (fun T : Fermion N →L[ℂ] Fermion N => (1 / 16 : ℂ) • T)
        (by
          apply Finset.sum_congr rfl
          intro α _hα
          apply Finset.sum_congr rfl
          intro p _hp
          rcases p with ⟨k, A⟩
          calc
            ((-Complex.I) •
              (∑ β : SpinIndex, (M.gamma k α β : ℂ) • M.theta β A)) *
                (∑ q : FermionIndex N,
                  ((sourceMasslessComplexVariationCoefficient M x
                    (EuclideanSpace.single (k, A) (1 : ℝ)) α q : ℝ) : ℂ) •
                      M.theta q.1 q.2) =
                (-Complex.I) •
                  ((∑ β : SpinIndex, (M.gamma k α β : ℂ) • M.theta β A) *
                    (∑ q : FermionIndex N,
                      ((sourceMasslessComplexVariationCoefficient M x
                        (EuclideanSpace.single (k, A) (1 : ℝ)) α q : ℝ) : ℂ) •
                          M.theta q.1 q.2)) := by
                    exact smul_mul_assoc _ _ _
            _ = _ :=
                congrArg
                  (fun T : Fermion N →L[ℂ] Fermion N => (-Complex.I) • T)
                  (originalGammaTheta_operator_product_distribution M x k A α))

#print axioms originalComplexFermionContraction_full_orderedTheta_expansion

end
end FCP.BFSSSU2PhysicalDomainS4B28
