import SU2BFSSPhysicalDomainS4B9OriginalFermionRemainderContractionProbe

/-!
S4B10: bridge the accepted literal BFSS massless fermionic remainder from
real-linear Fock operators back to the genuine complex-linear Clifford
operator carrier. No gamma/color reduction to manuscript B(x) is asserted.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B10
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B7
open FCP.BFSSSU2PhysicalDomainS4B9

/-- Exact compatibility of multiplication/composition under the original
complex-to-real restriction of continuous Fock endomorphisms. -/
theorem originalComplexFockRestriction_mul
    {N : ℕ} (A B : Fermion N →L[ℂ] Fermion N) :
    (A * B).restrictScalars ℝ =
      A.restrictScalars ℝ * B.restrictScalars ℝ := by
  apply ContinuousLinearMap.ext
  intro z
  rfl

/-- Finite sums of original complex Fock endomorphisms restrict to the
identical finite sum in the genuine real Fock endomorphism space. -/
theorem originalComplexFockRestriction_sum
    {N : ℕ} {ι : Type*} [Fintype ι]
    (F : ι → Fermion N →L[ℂ] Fermion N) :
    ((∑ i : ι, F i) : Fermion N →L[ℂ] Fermion N).restrictScalars ℝ =
      ∑ i : ι, (F i).restrictScalars ℝ := by
  classical
  apply ContinuousLinearMap.ext
  intro z
  change (∑ i : ι, F i) z = ∑ i : ι, (F i) z
  simp only [Finset.sum_apply]

/-- Source gamma/color variation with the original Clifford theta action,
before changing from complex-linear to real-linear Fock operators. -/
def sourceMasslessComplexFieldVariation
    {N : ℕ} (M : AlgebraData N) (x v : Boson N)
    (α : SpinIndex) : Fermion N →L[ℂ] Fermion N :=
  M.cliffordLinear (fun p : FermionIndex N =>
    (1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        (∑ B : ColorIndex N, ∑ C : ColorIndex N,
          M.structureConstant p.2 B C *
            (v (i,B) * x (j,C) + x (i,B) * v (j,C))) *
          M.gammaTwo i j α p.1))

/-- Exact complex-linear original kinetic-symbol contraction, retaining
minus-i, original gamma/color source definitions and complex scalar 1/16. -/
def sourceMasslessComplexFermionContraction
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    Fermion N →L[ℂ] Fermion N :=
  (1 / 16 : ℂ) •
    (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
      ((-Complex.I) • M.kineticComplexSymbol α p) *
        sourceMasslessComplexFieldVariation M x
          (EuclideanSpace.single p 1) α)

/-- Original massless deformed fermionic remainder, exactly represented
as a restriction of the original complex-linear Fock contraction. -/
theorem originalMasslessFermionField_complexRestriction
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    M.deformedFermionField 1 0 x =
      (sourceMasslessComplexFermionContraction M x).restrictScalars ℝ := by
  have hterm (α : SpinIndex) (p : SpaceIndex × ColorIndex N) :
      M.kineticSkewSymbol α p *
        sourceMasslessRealFieldVariation M x (EuclideanSpace.single p 1) α =
      (((-Complex.I) • M.kineticComplexSymbol α p) *
        sourceMasslessComplexFieldVariation M x
          (EuclideanSpace.single p 1) α).restrictScalars ℝ := by
    change (((-Complex.I) • M.kineticComplexSymbol α p).restrictScalars ℝ *
      (sourceMasslessComplexFieldVariation M x
        (EuclideanSpace.single p 1) α).restrictScalars ℝ) = _
    exact (originalComplexFockRestriction_mul _ _).symm
  have hsum :
      (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
        M.kineticSkewSymbol α p *
          sourceMasslessRealFieldVariation M x (EuclideanSpace.single p 1) α) =
      ((∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
        ((-Complex.I) • M.kineticComplexSymbol α p) *
          sourceMasslessComplexFieldVariation M x
            (EuclideanSpace.single p 1) α) :
        Fermion N →L[ℂ] Fermion N).restrictScalars ℝ := by
    calc
      _ = ∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
            (((-Complex.I) • M.kineticComplexSymbol α p) *
              sourceMasslessComplexFieldVariation M x
                (EuclideanSpace.single p 1) α).restrictScalars ℝ := by
              apply Finset.sum_congr rfl
              intro α _ha
              apply Finset.sum_congr rfl
              intro p _hp
              exact hterm α p
      _ = _ := by
        simp only [originalComplexFockRestriction_sum]
  rw [originalMasslessDeformedFermionField_contraction M x]
  change (1 / 16 : ℝ) •
      (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
        M.kineticSkewSymbol α p *
          sourceMasslessRealFieldVariation M x (EuclideanSpace.single p 1) α) =
      (((1 / 16 : ℂ) •
        (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
          ((-Complex.I) • M.kineticComplexSymbol α p) *
            sourceMasslessComplexFieldVariation M x
              (EuclideanSpace.single p 1) α)) :
        Fermion N →L[ℂ] Fermion N).restrictScalars ℝ
  rw [hsum]
  exact (originalFockRestrictScalars_real_smul _ (1 / 16 : ℝ)).symm

#print axioms originalComplexFockRestriction_mul
#print axioms originalComplexFockRestriction_sum
#print axioms originalMasslessFermionField_complexRestriction

end
end FCP.BFSSSU2PhysicalDomainS4B10
