import SU2BFSSPhysicalDomainS4B15OriginalGammaColorSignedPairProbe

/-!
S4B16: exact source-original nine-by-color Boson coordinate selector under
finite sums. Necessary, but not sufficient, to connect the Gate103
signed gamma/color contraction to actual Gate99 field derivative.
No substitution of generic `if` symbols for original Boson carrier.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B16
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum

/-- A genuine original EuclideanSpace.single basis direction collapses
the full paired nine-space-and-color finite sum onto its true coordinate. -/
theorem originalBoson_single_coordinate_weighted
    {N : ℕ} (k : SpaceIndex) (A : ColorIndex N)
    (F : SpaceIndex × ColorIndex N → ℝ) :
    (∑ p : SpaceIndex × ColorIndex N,
      (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) p * F p) =
        F (k,A) := by
  classical
  calc
    _ = ∑ p : SpaceIndex × ColorIndex N,
          if p = (k,A) then F p else 0 := by
          apply Finset.sum_congr rfl
          intro p _hp
          by_cases h : p = (k,A)
          · subst p
            simp
          · simp [h]
    _ = F (k,A) := by simp

/-- Exact same source original selector, now in the nested spatial/color
sum format of sourceMasslessComplexVariationCoefficient. -/
theorem originalBoson_single_coordinate_nested
    {N : ℕ} (k : SpaceIndex) (A : ColorIndex N)
    (F : SpaceIndex → ColorIndex N → ℝ) :
    (∑ i : SpaceIndex, ∑ B : ColorIndex N,
      (EuclideanSpace.single (k,A) (1 : ℝ) : Boson N) (i,B) * F i B) =
        F k A := by
  simpa only [Fintype.sum_prod_type] using
    (originalBoson_single_coordinate_weighted k A
      (fun p : SpaceIndex × ColorIndex N => F p.1 p.2))

#print axioms originalBoson_single_coordinate_weighted
#print axioms originalBoson_single_coordinate_nested

end
end FCP.BFSSSU2PhysicalDomainS4B16
