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
  simp only [originalComplexFieldVariation_theta,
    originalSourceMasslessVariation_actual_reduced]

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
  simp only [originalComplexFermionContraction_gammaTheta,
    originalSourceMasslessVariation_actual_reduced]

#print axioms originalComplexFieldVariation_gammaColorTheta
#print axioms originalComplexFermionContraction_gammaColorTheta

end
end FCP.BFSSSU2PhysicalDomainS4B20
