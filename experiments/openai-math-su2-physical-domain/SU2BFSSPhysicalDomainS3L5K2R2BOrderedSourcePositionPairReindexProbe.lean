import SU2BFSSPhysicalDomainS3L5K2R2AOriginalDoubleSpatialSumReindexProbe

/-!
# K2R2B — original SourceEnd ordered two-position spatial response

The accepted R2A index theorem is lifted onto ORIGINAL source
SmoothCore endomorphism composition. Keep a source fermion factor F,
first-coordinate family X, and second-coordinate family Y abstract.
That protects the original noncommutative ordered F ∘ X ∘ Y from
compiler blowup, without postulating any operator equality.

This theorem uses only the actual SourceEnd operator operations and
the two conditional branches of sourcePositionVariation. Substituting
the actual fermionAction / original positions into F,X,Y is a later,
separately qualified obligation, not silently assumed here.
-/
namespace FCP.BFSSSU2PhysicalDomainS3L5K2R2B
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5J1
open FCP.BFSSSU2PhysicalDomainS3L5K2R2A

/-- The original first-position variation preserves F ∘ X ∘ Y order. -/
theorem sourceOrderedFirstPosition_cases
    (F : SourceEnd) (X Y : SpaceIndex → SourceEnd)
    (i j k l : SpaceIndex) :
    F.comp
      ((if k = j then X i else if k = i then -(X j) else 0).comp (Y l)) =
    (if k = j then F.comp ((X i).comp (Y l))
     else if k = i then -(F.comp ((X j).comp (Y l))) else 0) := by
  by_cases hkj : k = j
  · simp [hkj]
  · by_cases hki : k = i
    · simp only [if_neg hkj, if_pos hki]
      apply LinearMap.ext
      intro f
      simp [LinearMap.comp_apply]
    · simp only [if_neg hkj, if_neg hki]
      apply LinearMap.ext
      intro f
      simp [LinearMap.comp_apply]

/-- The second-position variation acts on Y without reordering F or X. -/
theorem sourceOrderedSecondPosition_cases
    (F : SourceEnd) (X Y : SpaceIndex → SourceEnd)
    (i j k l : SpaceIndex) :
    F.comp
      ((X k).comp
        (if l = j then Y i else if l = i then -(Y j) else 0)) =
    (if l = j then F.comp ((X k).comp (Y i))
     else if l = i then -(F.comp ((X k).comp (Y j))) else 0) := by
  by_cases hlj : l = j
  · simp [hlj]
  · by_cases hli : l = i
    · simp only [if_neg hlj, if_pos hli]
      apply LinearMap.ext
      intro f
      simp [LinearMap.comp_apply]
    · simp only [if_neg hlj, if_neg hli]
      apply LinearMap.ext
      intro f
      simp [LinearMap.comp_apply]

/-- Two independently reindexed variations of the exact ordered
source cubic product F ∘ (X_k ∘ Y_l), for arbitrary complex c.
No oscillator/Fock expansion, position commutation or altered factors. -/
theorem sourceOrderedCubicDoubleSpatial_reindex
    (i j : SpaceIndex) (hij : i ≠ j)
    (F : SourceEnd) (X Y : SpaceIndex → SourceEnd)
    (c : SpaceIndex → SpaceIndex → ℂ) :
    (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      c k l •
        (F.comp ((if k = j then X i else if k = i then -(X j) else 0).comp (Y l)) +
         F.comp ((X k).comp
           (if l = j then Y i else if l = i then -(Y j) else 0)))) =
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ((if k = i then c j l else if k = j then -(c i l) else 0) +
       (if l = i then c k j else if l = j then -(c k i) else 0)) •
         F.comp ((X k).comp (Y l)) := by
  calc
    _ = ∑ k : SpaceIndex, ∑ l : SpaceIndex,
          c k l •
            ((if k = j then F.comp ((X i).comp (Y l))
              else if k = i then -(F.comp ((X j).comp (Y l))) else 0) +
             (if l = j then F.comp ((X k).comp (Y i))
              else if l = i then -(F.comp ((X k).comp (Y j))) else 0)) := by
            apply Finset.sum_congr rfl
            intro k _
            apply Finset.sum_congr rfl
            intro l _
            rw [sourceOrderedFirstPosition_cases F X Y i j k l,
                sourceOrderedSecondPosition_cases F X Y i j k l]
    _ = _ := sourceDoubleSpatialCombined_reindex i j hij c
      (fun k l => F.comp ((X k).comp (Y l)))

#print axioms sourceOrderedFirstPosition_cases
#print axioms sourceOrderedSecondPosition_cases
#print axioms sourceOrderedCubicDoubleSpatial_reindex
end
end FCP.BFSSSU2PhysicalDomainS3L5K2R2B
