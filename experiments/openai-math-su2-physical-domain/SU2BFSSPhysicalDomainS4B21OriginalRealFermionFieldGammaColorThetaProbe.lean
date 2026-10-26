import SU2BFSSPhysicalDomainS4B20OriginalComplexGammaColorThetaOperatorProbe

/-!
S4B21: exact restricted-real-linear identification of the ACTUAL
original M.deformedFermionField 1 0 x with the newly accepted source
complex gamma/color/theta contraction. This retains original operators,
original kinetic-before-potential order, -Complex.I, and 1/16.
No manuscript B(x) or CAR simplification is claimed.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B21
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B10
open FCP.BFSSSU2PhysicalDomainS4B20

/-- Original real-linear massless fermionic remainder, with the genuine
source gamma/color/theta finite sums kept in their ordered complex
continuous-linear endomorphism carrier until restrictScalars to ℝ. -/
theorem originalMasslessRealFermionField_gammaColorTheta
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    M.deformedFermionField 1 0 x =
      (((1 / 16 : ℂ) •
        (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
          ((-Complex.I) •
            (∑ β : SpinIndex, (M.gamma p.1 α β : ℂ) • M.theta β p.2)) *
          (∑ q : FermionIndex N,
            (((∑ j : SpaceIndex, ∑ C : ColorIndex N,
              M.structureConstant q.2 p.2 C * x (j,C) *
                M.gammaTwo p.1 j α q.1 : ℝ) : ℂ)) • M.theta q.1 q.2)))
        : Fermion N →L[ℂ] Fermion N).restrictScalars ℝ := by
  calc
    M.deformedFermionField 1 0 x =
        (sourceMasslessComplexFermionContraction M x).restrictScalars ℝ :=
          originalMasslessFermionField_complexRestriction M x
    _ = _ := congrArg
      (fun T : Fermion N →L[ℂ] Fermion N => T.restrictScalars ℝ)
      (originalComplexFermionContraction_gammaColorTheta M x)

#print axioms originalMasslessRealFermionField_gammaColorTheta

end
end FCP.BFSSSU2PhysicalDomainS4B21
