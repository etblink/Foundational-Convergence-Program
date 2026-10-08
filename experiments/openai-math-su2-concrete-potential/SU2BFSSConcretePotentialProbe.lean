import SU2BFSSFullAlgebraDataProbe

/-!
# BFSS SU(2) F5-G1 — unconditional physical-facing color/potential identities

The compiled F4 construction removes the previously conditional
`M : AlgebraData 2` and `hcolor` requirements from the exact upstream
coordinate bracket and deformed bosonic potential calculations.
Nonnegativity is only for the (h,m)=(1,0) *bosonic potential*.
No Hamiltonian mass gap or spectral assertion is made.
-/

namespace FCP.BFSSSU2Potential
noncomputable section

open OAI.BFSSQuantum FCP.BFSSSU2Full

/-- The exact structure constants of the assembled upstream AlgebraData 2,
with the same normalization and orientation as the genuine Pauli basis. -/
theorem concrete_structureConstant
    (a b c : ColorIndex 2) :
    concreteAlgebraData.structureConstant a b c =
      Real.sqrt 2 * FCP.BFSSSU2.epsilon3 a b c := by
  exact FCP.BFSSSU2.algebraData_structureConstant_of_pauli_color
    concreteAlgebraData concreteAlgebraData_color a b c

/-- The exact upstream coordinate bracket is the normalized cross product
for every bosonic coordinate configuration and spatial pair. -/
theorem concrete_coordinateBracket
    (x : Boson 2) (p : OAI.BFSSGamma.SpatialPair)
    (a : ColorIndex 2) :
    concreteAlgebraData.coordinateBracket x p a =
      Real.sqrt 2 * FCP.BFSSSU2.colorCross
        (fun b : Fin 3 => x (p.1.1,b))
        (fun c : Fin 3 => x (p.1.2,c)) a := by
  exact FCP.BFSSSU2.coordinateBracket_of_pauli_color
    concreteAlgebraData concreteAlgebraData_color x p a

/-- No conditional AlgebraData existence premise remains: the genuine pinned
upstream bosonic potential at (1,0) is the sum of squared color minors. -/
theorem concrete_potential_one_zero_eq_wedge
    (x : Boson 2) :
    concreteAlgebraData.deformedBosonicPotential 1 0 x =
      ∑ p : OAI.BFSSGamma.SpatialPair,
        FCP.BFSSSU2.colorWedgeSquared
          (fun a : Fin 3 => x (p.1.1,a))
          (fun a : Fin 3 => x (p.1.2,a)) := by
  exact FCP.BFSSSU2.deformedBosonicPotential_one_zero_eq_wedge
    concreteAlgebraData concreteAlgebraData_color x

/-- Exact pointwise nonnegativity of this bosonic potential, from its
verified sum-of-squares representation; not Hamiltonian positivity. -/
theorem concrete_potential_one_zero_nonneg (x : Boson 2) :
    0 ≤ concreteAlgebraData.deformedBosonicPotential 1 0 x := by
  rw [concrete_potential_one_zero_eq_wedge]
  apply Finset.sum_nonneg
  intro p hp
  dsimp [FCP.BFSSSU2.colorWedgeSquared]
  positivity

#print axioms concrete_structureConstant
#print axioms concrete_coordinateBracket
#print axioms concrete_potential_one_zero_eq_wedge
#print axioms concrete_potential_one_zero_nonneg

end
end FCP.BFSSSU2Potential
