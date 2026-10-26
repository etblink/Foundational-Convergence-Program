import SU2BFSSPhysicalDomainS4B12OriginalGammaTwoContractionProbe

/-!
S4B13: exact nine-direction Spin(9) multiplicity in source-original
gammaTwo Clifford contraction. The source gamma algebra, source bosonic
nine-space and existing fixed-index Gate100 theorem are unchanged.
No manuscript B(x) or spectral-existence claim.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B13
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B12

/-- Combinatorial sum over the actual original nine spatial directions,
excluding exactly one direction. No Clifford identities needed here. -/
theorem originalSpin9_excluding_one_matrix_sum
    (T : GammaMatrix) (j : SpaceIndex) :
    (∑ k : SpaceIndex, if k = j then (0 : GammaMatrix) else T) =
      (8 : ℕ) • T := by
  classical
  have hsum :
      (∑ k : SpaceIndex, if k = j then (0 : GammaMatrix) else T) =
      ∑ k ∈ (Finset.univ.filter (fun k : SpaceIndex => k ≠ j)), T := by
    rw [Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro k _hk
    by_cases hkj : k = j
    · simp [hkj]
    · simp [hkj]
  have hfilter :
      (Finset.univ.filter (fun k : SpaceIndex => k ≠ j)) =
        (Finset.univ.erase j) := by
    ext k
    simp
  have hcard : (Finset.univ.erase j).card = 8 := by
    rw [Finset.card_erase_of_mem (Finset.mem_univ j)]
    norm_num [Fintype.card_fin]
  rw [hsum, hfilter]
  simp only [Finset.sum_const, hcard]

/-- Exact original nine-direction contraction: its coefficient is EIGHT,
not a guessed gamma/color factor and not the manuscript B(x) formula. -/
theorem originalSourceGammaTwo_nine_direction_sum
    {N : ℕ} (M : AlgebraData N) (j : SpaceIndex) :
    (∑ k : SpaceIndex, M.gamma k * M.gammaTwo k j) =
      (8 : ℕ) • M.gamma j := by
  calc
    _ = (∑ k : SpaceIndex,
          if k = j then (0 : GammaMatrix) else M.gamma j) := by
          apply Finset.sum_congr rfl
          intro k _hk
          exact originalSourceGammaTwo_left_contraction M k j
    _ = (8 : ℕ) • M.gamma j :=
          originalSpin9_excluding_one_matrix_sum (M.gamma j) j

#print axioms originalSpin9_excluding_one_matrix_sum
#print axioms originalSourceGammaTwo_nine_direction_sum

end
end FCP.BFSSSU2PhysicalDomainS4B13
