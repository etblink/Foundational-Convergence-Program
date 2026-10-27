import SU2BFSSPhysicalDomainS4B24OriginalColorFirstLastSkewProbe

/-!
S4B25: exact original source variation gamma contraction in the color-index
order of the October 5 relative SU(2) BFSS manuscript's fermionic B(x).
Compose strictly accepted S4B23 and S4B24; do not assume a Pauli
orientation, permute theta factors, or assert the full operator B(x).
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B25
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B11
open FCP.BFSSSU2PhysicalDomainS4B23
open FCP.BFSSSU2PhysicalDomainS4B24

/-- The true source kinetic gamma contraction and original field variation,
now with f[C,A,D] in the manuscript's (bosonic, kinetic-theta,
potential-theta) color order. The minus sign follows from the actual source
matrix trace bracket and does not require a CAR exchange. -/
theorem originalSourceVariationCoefficient_manuscript_signed
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (A D : ColorIndex N) (β δ : SpinIndex) :
    (∑ k : SpaceIndex, ∑ α : SpinIndex,
      M.gamma k α β *
        sourceMasslessComplexVariationCoefficient M x
          (EuclideanSpace.single (k,A) (1 : ℝ)) α (δ,D)) =
      (-8 : ℝ) *
        (∑ j : SpaceIndex, ∑ C : ColorIndex N,
          M.structureConstant C A D * x (j,C) * M.gamma j β δ) := by
  rw [originalSourceVariationCoefficient_full_gamma_spinor_contraction M x A D β δ]
  simp only [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _hj
  apply Finset.sum_congr rfl
  intro C _hC
  rw [originalSourceStructureConstant_first_last_skew M D A C]
  ring

#print axioms originalSourceVariationCoefficient_manuscript_signed

end
end FCP.BFSSSU2PhysicalDomainS4B25
