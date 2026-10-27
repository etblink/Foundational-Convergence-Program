import SU2BFSSPhysicalDomainS4B31OriginalFockRemainderNormalizedIHalfProbe

/-!
S4B32: transfer the exactly normalized +Complex.I/2 original-source
complex Fock remainder into the GENUINE original deformed real-linear
fermionic field at g=1, m=0. This does not replace restrictScalars by a
fictional operator or assert the manuscript B(x) equality.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B32
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B10
open FCP.BFSSSU2PhysicalDomainS4B31

/-- Exact original real-linear fermion remainder as scalar restriction
of the source-normalized +i/2 genuine complex Majorana bilinear.
No source theta reordering and no added assumptions. -/
theorem originalMasslessRealFermionField_normalized_i_half
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    M.deformedFermionField 1 0 x =
      (((Complex.I / 2 : ℂ) •
        (∑ A : ColorIndex N, ∑ β : SpinIndex,
          ∑ q : FermionIndex N,
            (((∑ j : SpaceIndex, ∑ C : ColorIndex N,
                M.structureConstant C A q.2 *
                  x (j,C) * M.gamma j β q.1) : ℝ) : ℂ) •
              (M.theta β A * M.theta q.1 q.2)))
        : Fermion N →L[ℂ] Fermion N).restrictScalars ℝ := by
  calc
    M.deformedFermionField 1 0 x =
        (sourceMasslessComplexFermionContraction M x).restrictScalars ℝ :=
          originalMasslessFermionField_complexRestriction M x
    _ = _ :=
      congrArg
        (fun T : Fermion N →L[ℂ] Fermion N => T.restrictScalars ℝ)
        (originalComplexFermionContraction_normalized_i_half M x)

#print axioms originalMasslessRealFermionField_normalized_i_half

end
end FCP.BFSSSU2PhysicalDomainS4B32
