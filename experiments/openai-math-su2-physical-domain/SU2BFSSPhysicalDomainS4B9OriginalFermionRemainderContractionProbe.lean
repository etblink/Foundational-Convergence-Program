import SU2BFSSPhysicalDomainS4B8OriginalRealFockFieldDirectionalDerivativeProbe

/-!
S4B9: the literal original BFSS massless fermionic remainder-field contraction,
formed from the actual kineticSkewSymbol and the strictly accepted S4B8
original real-Fock Fréchet derivative. This is not a manuscript B(x)
identification, global Spin(9) theorem, or spectral-existence assertion.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B9
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B7
open FCP.BFSSSU2PhysicalDomainS4B8

/-- Exact original massless fermionic field, preserving the original
MixedEnergy.remainderField ordering, real Fock CLMs and 1/16 factor. -/
theorem originalMasslessDeformedFermionField_contraction
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    M.deformedFermionField 1 0 x =
      (1 / 16 : ℝ) •
        (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
          M.kineticSkewSymbol α p *
            sourceMasslessRealFieldVariation M x (EuclideanSpace.single p 1) α) := by
  have hsum :
      (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
        M.kineticSkewSymbol α p *
          fderiv ℝ (M.deformedRealField 1 0 α) x (EuclideanSpace.single p 1)) =
      (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
        M.kineticSkewSymbol α p *
          sourceMasslessRealFieldVariation M x (EuclideanSpace.single p 1) α) := by
    apply Finset.sum_congr rfl
    intro α _ha
    apply Finset.sum_congr rfl
    intro p _hp
    exact congrArg
      (fun T : Fermion N →L[ℝ] Fermion N => M.kineticSkewSymbol α p * T)
      (originalMasslessRealField_single_coordinate_fderiv M x α p.1 p.2)
  -- This change unfolds only the two literal original source definitions,
  -- not the underlying gamma/color finite-sum calculations.
  change (1 / 16 : ℝ) •
    (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
      M.kineticSkewSymbol α p *
        fderiv ℝ (M.deformedRealField 1 0 α) x (EuclideanSpace.single p 1)) = _
  exact congrArg
    (fun T : Fermion N →L[ℝ] Fermion N => (1 / 16 : ℝ) • T) hsum

/-- Pointwise exact action of the original fermionic remainder on a true
source Fock vector, not a surrogate finite-dimensional matrix. -/
theorem originalMasslessDeformedFermionField_apply
    {N : ℕ} (M : AlgebraData N) (x : Boson N) (z : Fermion N) :
    M.deformedFermionField 1 0 x z =
      (1 / 16 : ℝ) •
        (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
          M.kineticSkewSymbol α p
            (sourceMasslessRealFieldVariation M x
              (EuclideanSpace.single p 1) α z)) := by
  have h := congrArg (fun T : Fermion N →L[ℝ] Fermion N => T z)
    (originalMasslessDeformedFermionField_contraction M x)
  simpa only [_root_.smul_apply, _root_.sum_apply, mul_apply_eq_comp] using h

#print axioms originalMasslessDeformedFermionField_contraction
#print axioms originalMasslessDeformedFermionField_apply

end
end FCP.BFSSSU2PhysicalDomainS4B9
