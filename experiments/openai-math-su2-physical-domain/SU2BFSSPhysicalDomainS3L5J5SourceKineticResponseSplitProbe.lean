import SU2BFSSPhysicalDomainS3L5J4SourceFermionSumCompositionProbe

/-!
# S3L5J5 — split the original source kinetic response into named pieces

Qualified J4 (#68) identifies the exact paired fixed-spatial/color
fermion response. This gate isolates the additive structure of the
source-defined kineticWeightedResponse, without unfolding the 48
Majorana Fock representation or the full source supercharge.

No -J free-spinor kinetic covariance is claimed by this split alone.
The orbital and fiber pieces must still be independently contracted
using accepted J1/J2/J4.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5J5
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5I2A
open FCP.BFSSSU2PhysicalDomainS3L5J4

/-- Original fermionAction composed with the source plane's orbital
derivative variation. -/
noncomputable def kineticOrbitalPiece
    (M : AlgebraData 2) (i j k : SpaceIndex)
    (A : ColorIndex 2) (γ : SpinIndex) : SourceEnd :=
  (M.fermionAction γ A).comp
    (if k = j then coordinateDerivative (N := 2) i A
     else if k = i then -(coordinateDerivative (N := 2) j A)
     else 0)

/-- Original spin-generator-weighted fermionAction sum composed with
the unchanged coordinate derivative. -/
noncomputable def kineticFiberPiece
    (M : AlgebraData 2) (d : SpinIndex → SpinIndex → ℂ)
    (k : SpaceIndex) (A : ColorIndex 2) (γ : SpinIndex) : SourceEnd :=
  (∑ β : SpinIndex, d γ β • M.fermionAction β A).comp
    (coordinateDerivative (N := 2) k A)

/-- This is the literal source definition of kineticResponseTerm,
factored into two named genuine SmoothCore 2 endomorphisms. -/
theorem kineticResponseTerm_eq_parts
    (M : AlgebraData 2) (d : SpinIndex → SpinIndex → ℂ)
    (i j k : SpaceIndex) (A : ColorIndex 2) (γ : SpinIndex) :
    kineticResponseTerm M d i j k A γ =
      kineticOrbitalPiece M i j k A γ +
        kineticFiberPiece M d k A γ := by
  rfl

/-- Complex scalar distributivity through all 9×3×16 source indexed
finite sums, without expanding the source operator representation. -/
theorem sourceWeightedThreeSum_add
    (c : SpaceIndex → ColorIndex 2 → SpinIndex → ℂ)
    (U V : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd) :
    (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      c k A γ • (U k A γ + V k A γ)) =
      (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • U k A γ) +
      (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • V k A γ) := by
  simp_rw [smul_add, Finset.sum_add_distrib]

/-- The ACTUAL source-parametric response of accepted Gate #55 is the
sum of original orbital and original fiber variations with every
Complex.I gamma weight retained, no extra premises. -/
theorem sourceKineticWeightedResponse_split
    (M : AlgebraData 2) (d : SpinIndex → SpinIndex → ℂ)
    (i j : SpaceIndex) (α : SpinIndex) :
    kineticWeightedResponse M d i j α =
      (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        kineticWeight M α k A γ • kineticOrbitalPiece M i j k A γ) +
      (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        kineticWeight M α k A γ • kineticFiberPiece M d k A γ) := by
  calc
    _ = ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      kineticWeight M α k A γ •
        (kineticOrbitalPiece M i j k A γ +
         kineticFiberPiece M d k A γ) := by
          unfold kineticWeightedResponse
          apply Finset.sum_congr rfl
          intro k _
          apply Finset.sum_congr rfl
          intro A _
          apply Finset.sum_congr rfl
          intro γ _
          rw [kineticResponseTerm_eq_parts]
    _ = _ := sourceWeightedThreeSum_add
      (kineticWeight M α)
      (kineticOrbitalPiece M i j)
      (kineticFiberPiece M d)

#print axioms kineticResponseTerm_eq_parts
#print axioms sourceWeightedThreeSum_add
#print axioms sourceKineticWeightedResponse_split

end
end FCP.BFSSSU2PhysicalDomainS3L5J5
