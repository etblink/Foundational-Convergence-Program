import SU2BFSSPotentialAverageFlatProbe

/-!
# BFSS SU(2) F5-G3 — zero Clifford potential multipliers on single-color configurations

Use the exact pinned upstream 1/16 average identity and the already
verified vanishing sum of nonnegative squared norms (Gate #85).
This is NOT a result about the Hamiltonian fermionic linear term B(x),
gauge-sector confinement or the spectrum.
-/

namespace FCP.BFSSSU2PotentialF5G3
noncomputable section

open OAI.BFSSQuantum FCP.BFSSSU2Full
open FCP.BFSSSU2PotentialF5G2
open scoped BigOperators

/-- Each individual pinned Clifford potential multiplier annihilates
each fermion vector on the same single-color flat sector. -/
theorem concrete_multiplier_apply_zero_of_single_color
    (x : Boson 2) (z : Fermion 2)
    (hx : ∀ i : SpaceIndex, ∀ a : ColorIndex 2,
      a ≠ (0 : Fin 3) → x (i, a) = 0)
    (α : SpinIndex) :
    concreteAlgebraData.deformedPotentialMultiplier 1 0 x α z = 0 := by
  have haverage :=
    concrete_potential_average_zero_of_single_color x z hx
  have hfactor : (1 / 16 : ℝ) ≠ 0 := by norm_num
  have hsum :
      (∑ β : SpinIndex,
        ‖concreteAlgebraData.deformedPotentialMultiplier 1 0 x β z‖ ^ 2) = 0 :=
    (mul_eq_zero.mp haverage).resolve_left hfactor
  have hterm :
      ‖concreteAlgebraData.deformedPotentialMultiplier 1 0 x α z‖ ^ 2 = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun β (_ : β ∈ Finset.univ) =>
        sq_nonneg ‖concreteAlgebraData.deformedPotentialMultiplier 1 0 x β z‖)).mp
        hsum α (Finset.mem_univ α)
  have hnorm :
      ‖concreteAlgebraData.deformedPotentialMultiplier 1 0 x α z‖ = 0 := by
    nlinarith [norm_nonneg
      (concreteAlgebraData.deformedPotentialMultiplier 1 0 x α z)]
  exact norm_eq_zero.mp hnorm

/-- The actual pinned Clifford potential multiplier is the zero complex
continuous linear operator on the single-color flat sector. -/
theorem concrete_multiplier_zero_of_single_color
    (x : Boson 2)
    (hx : ∀ i : SpaceIndex, ∀ a : ColorIndex 2,
      a ≠ (0 : Fin 3) → x (i, a) = 0)
    (α : SpinIndex) :
    concreteAlgebraData.deformedPotentialMultiplier 1 0 x α = 0 := by
  apply ContinuousLinearMap.ext
  intro z
  simpa using concrete_multiplier_apply_zero_of_single_color x z hx α

#print axioms concrete_multiplier_apply_zero_of_single_color
#print axioms concrete_multiplier_zero_of_single_color

end
end FCP.BFSSSU2PotentialF5G3
