import SU2BFSSConcretePotentialProbe

/-!
# BFSS SU(2) F5-G2 — exact Clifford potential average and flat color sector

The genuine pinned BFSS Clifford-potential average at h=1,m=0 has
normalization 1/16 and equals the verified SU(2) wedge-squares potential
times fermion norm squared. Single-color configurations have a zero
quartic potential: pointwise nonnegativity is not strict positivity.

No gauge, Hamiltonian spectrum, confinement or mass gap is asserted.
-/

namespace FCP.BFSSSU2PotentialF5G2
noncomputable section

open OAI.BFSSQuantum FCP.BFSSSU2Full
open FCP.BFSSSU2Potential
open scoped BigOperators

/-- Exact upstream normalized Clifford-multiplier average on the
constructed AlgebraData 2, expressed as SU(2) color wedge squares. -/
theorem concrete_potential_average_wedge
    (x : Boson 2) (z : Fermion 2) :
    (1 / 16 : ℝ) * ∑ α : SpinIndex,
        ‖concreteAlgebraData.deformedPotentialMultiplier 1 0 x α z‖ ^ 2 =
      (∑ p : OAI.BFSSGamma.SpatialPair,
        FCP.BFSSSU2.colorWedgeSquared
          (fun a : Fin 3 => x (p.1.1, a))
          (fun a : Fin 3 => x (p.1.2, a))) * ‖z‖ ^ 2 := by
  calc
    _ = concreteAlgebraData.deformedBosonicPotential 1 0 x * ‖z‖ ^ 2 :=
      concreteAlgebraData.deformed_potential_average 1 0 x z
    _ = _ := by rw [concrete_potential_one_zero_eq_wedge]

/-- Every bosonic configuration supported entirely in one SU(2) color
direction has zero quartic potential. This is a classical flat-sector
criterion, not an operator spectral or coercivity theorem. -/
theorem concrete_potential_zero_of_single_color
    (x : Boson 2)
    (hx : ∀ i : SpaceIndex, ∀ a : ColorIndex 2,
      a ≠ 0 → x (i, a) = 0) :
    concreteAlgebraData.deformedBosonicPotential 1 0 x = 0 := by
  rw [concrete_potential_one_zero_eq_wedge]
  apply Finset.sum_eq_zero
  intro p hp
  have h1 (i : SpaceIndex) : x (i, (1 : Fin 3)) = 0 :=
    hx i (1 : ColorIndex 2) (by decide)
  have h2 (i : SpaceIndex) : x (i, (2 : Fin 3)) = 0 :=
    hx i (2 : ColorIndex 2) (by decide)
  simp [FCP.BFSSSU2.colorWedgeSquared, h1, h2]

/-- Consequently, the pinned mean squared Clifford-potential action
vanishes pointwise on the same single-color sector. -/
theorem concrete_potential_average_zero_of_single_color
    (x : Boson 2) (z : Fermion 2)
    (hx : ∀ i : SpaceIndex, ∀ a : ColorIndex 2,
      a ≠ 0 → x (i, a) = 0) :
    (1 / 16 : ℝ) * ∑ α : SpinIndex,
        ‖concreteAlgebraData.deformedPotentialMultiplier 1 0 x α z‖ ^ 2 = 0 := by
  rw [concreteAlgebraData.deformed_potential_average 1 0 x z]
  rw [concrete_potential_zero_of_single_color x hx]
  simp

#print axioms concrete_potential_average_wedge
#print axioms concrete_potential_zero_of_single_color
#print axioms concrete_potential_average_zero_of_single_color

end
end FCP.BFSSSU2PotentialF5G2
