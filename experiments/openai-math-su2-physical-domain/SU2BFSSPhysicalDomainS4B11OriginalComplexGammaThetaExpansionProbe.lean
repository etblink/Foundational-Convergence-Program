import SU2BFSSPhysicalDomainS4B10OriginalComplexFockRestrictionProbe

/-!
S4B11: the actual source complex Fock remainder contraction expanded to
original gamma matrix, structure-constant and ordered Majorana theta sums.
No Spin9 identification, manuscript B(x) reduction, or spectrum statement.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B11
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B10

/-- The exact real coefficient of the previously accepted complex Fock
field variation, keeping source gammaTwo and color structure constants. -/
def sourceMasslessComplexVariationCoefficient
    {N : ℕ} (M : AlgebraData N) (x v : Boson N)
    (α : SpinIndex) (q : FermionIndex N) : ℝ :=
  (1 / 2 : ℝ) *
    (∑ i : SpaceIndex, ∑ j : SpaceIndex,
      (∑ B : ColorIndex N, ∑ C : ColorIndex N,
        M.structureConstant q.2 B C *
          (v (i,B) * x (j,C) + x (i,B) * v (j,C))) *
        M.gammaTwo i j α q.1)

/-- Genuine source kinetic complex CLM is the gamma-theta finite sum,
without treating it as a fictitious scalar or surrogate representation. -/
theorem originalKineticComplexSymbol_gammaTheta
    {N : ℕ} (M : AlgebraData N) (α : SpinIndex)
    (p : SpaceIndex × ColorIndex N) :
    M.kineticComplexSymbol α p =
      ∑ β : SpinIndex, (M.gamma p.1 α β : ℂ) • M.theta β p.2 := by
  rcases p with ⟨i, A⟩
  apply ContinuousLinearMap.ext
  intro z
  rw [M.kineticComplexSymbol_apply α (i, A) z]
  simpa only [_root_.sum_apply, _root_.smul_apply] using
    (M.kineticSymbol_apply α i A z)

/-- Exact original complex Fock variation is a finite theta sum with
the source coefficient; no hidden private polynomial coefficient. -/
theorem originalComplexFieldVariation_theta
    {N : ℕ} (M : AlgebraData N) (x v : Boson N) (α : SpinIndex) :
    sourceMasslessComplexFieldVariation M x v α =
      ∑ q : FermionIndex N,
        ((sourceMasslessComplexVariationCoefficient M x v α q : ℝ) : ℂ) •
          M.theta q.1 q.2 := by
  rfl

/-- Both genuine Clifford factors are now exposed in the complex operator
product in EXACT original kinetic-before-potential order. This is the
boundary before nontrivial gamma contraction and color antisymmetry. -/
theorem originalComplexFermionContraction_gammaTheta
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    sourceMasslessComplexFermionContraction M x =
      (1 / 16 : ℂ) •
        (∑ α : SpinIndex, ∑ p : SpaceIndex × ColorIndex N,
          ((-Complex.I) •
            (∑ β : SpinIndex, (M.gamma p.1 α β : ℂ) • M.theta β p.2)) *
          (∑ q : FermionIndex N,
            ((sourceMasslessComplexVariationCoefficient M x
              (EuclideanSpace.single p 1) α q : ℝ) : ℂ) •
              M.theta q.1 q.2)) := by
  unfold sourceMasslessComplexFermionContraction
  simp only [originalKineticComplexSymbol_gammaTheta,
    originalComplexFieldVariation_theta]

#print axioms originalKineticComplexSymbol_gammaTheta
#print axioms originalComplexFieldVariation_theta
#print axioms originalComplexFermionContraction_gammaTheta

end
end FCP.BFSSSU2PhysicalDomainS4B11
