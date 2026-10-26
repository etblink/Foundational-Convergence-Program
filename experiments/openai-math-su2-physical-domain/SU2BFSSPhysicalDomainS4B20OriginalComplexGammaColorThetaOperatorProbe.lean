import SU2BFSSPhysicalDomainS4B19OriginalMasslessVariationCoefficientProbe

/-!
S4B20: insert strictly accepted Gate107 REAL ORIGINAL field variation
coefficient into (1) the real-direction complex Fock field variation
and (2) the actual source fermionic remainder contraction, without any
CAR/Spin9 reordering, invented gamma factor or manuscript B(x) claim.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B20
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B10
open FCP.BFSSSU2PhysicalDomainS4B11
open FCP.BFSSSU2PhysicalDomainS4B19

/-- Exact ORIGINAL complex fermionic field derivative at a true Boson
coordinate, with the Gate107 proven gamma/color coefficient and
the unchanged original Majorana operators in their source order. -/
theorem originalComplexFieldVariation_gammaColorTheta
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (k : SpaceIndex) (A : ColorIndex N) (α : SpinIndex) :
    sourceMasslessComplexFieldVariation M x
      (EuclideanSpace.single (k,A) (1 : ℝ)) α =
      ∑ q : FermionIndex N,
        (((∑ j : SpaceIndex, ∑ C : ColorIndex N,
           M.structureConstant q.2 A C * x (j,C) *
             M.gammaTwo k j α q.1 : ℝ) : ℂ)) • M.theta q.1 q.2 := by
  -- The source coefficient theorem is indexed by the explicit
  -- original pair (β,D); give the simplifier a genuine FermionIndex map.
  have hcoef (q : FermionIndex N) :
      sourceMasslessComplexVariationCoefficient M x
        (EuclideanSpace.single (k,A) (1 : ℝ)) α q =
        (∑ j : SpaceIndex, ∑ C : ColorIndex N,
          M.structureConstant q.2 A C * x (j,C) *
            M.gammaTwo k j α q.1) := by
    rcases q with ⟨β,D⟩
    exact originalSourceMasslessVariation_actual_reduced M x k A D α β
  simp only [originalComplexFieldVariation_theta, hcoef]

/-- Entire genuine source fermionic contraction in the exact original
kinetic-before-potential ordered theta products, retaining -i and 1/16.
The new source field coefficients are strictly verified Gate107 values. -/
theorem originalComplexFermionContraction_gammaColorTheta
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    sourceMasslessComplexFermionContraction M x =
      (1 / 16 : ℂ) •
        (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
          ((-Complex.I) •
            (∑ β : SpinIndex, (M.gamma p.1 α β : ℂ) • M.theta β p.2)) *
          (∑ q : FermionIndex N,
            (((∑ j : SpaceIndex, ∑ C : ColorIndex N,
              M.structureConstant q.2 p.2 C * x (j,C) *
                M.gammaTwo p.1 j α q.1 : ℝ) : ℂ)) • M.theta q.1 q.2)) := by
  -- Expose BOTH original source pairs, p=(k,A) and q=(β,D).
  -- This remains the exact kinetic-before-potential operator, not CAR.
  have hcoef (α : SpinIndex) (p : SpaceIndex × ColorIndex N)
      (q : FermionIndex N) :
      sourceMasslessComplexVariationCoefficient M x
        (EuclideanSpace.single p (1 : ℝ)) α q =
        (∑ j : SpaceIndex, ∑ C : ColorIndex N,
          M.structureConstant q.2 p.2 C * x (j,C) *
            M.gammaTwo p.1 j α q.1) := by
    rcases p with ⟨k,A⟩
    rcases q with ⟨β,D⟩
    exact originalSourceMasslessVariation_actual_reduced M x k A D α β
  simp only [originalComplexFermionContraction_gammaTheta, hcoef]

#print axioms originalComplexFieldVariation_gammaColorTheta
#print axioms originalComplexFermionContraction_gammaColorTheta

end
end FCP.BFSSSU2PhysicalDomainS4B20
