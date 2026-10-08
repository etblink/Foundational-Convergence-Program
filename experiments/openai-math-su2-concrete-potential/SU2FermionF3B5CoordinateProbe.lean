import SU2FermionF3B4SelectorProbe

/-!
# BFSS fermions F3-B5 — full-vector occupation-coordinate extraction

The existing pinned exterior Fock basis really spans all 24-mode finite
Fock vectors. Transport that basis decomposition through the accepted
coordinate and BFSS unitary equivalences, then use Gate #65's exact
basis-selector theorem on arbitrary BFSS vectors.

No irreducibility assumption, unproved completeness assumption, or
replacement CAR representation is introduced.
-/

namespace FCP.BFSSFermionF3B5
noncomputable section

open FCP.BFSSFermionF1 FCP.BFSSFermionF3B2 FCP.BFSSFermionF3B4
open OAI.Laughlin.Fock OAI.ContinuumCoulomb.HubbardGlobal
open scoped BigOperators

private abbrev BFSSFermion := OAI.BFSSQuantum.Fermion 2

/-- The exact pinned exterior Fock basis coordinate of a BFSS vector,
transported through the inverse of the already-accepted F1 equivalences. -/
noncomputable def occupationCoeff (x : BFSSFermion)
    (A : Finset (Fin 24)) : ℂ :=
  (fockBasis 23).repr
    ((fockCoordinates 23).symm (fockBFSSUnitary.symm x)) A

/-- Every vector of the exact BFSS Fermion 2 space is an honest finite
linear combination of the transported 24-mode occupation basis vectors. -/
theorem occupationExpansion (x : BFSSFermion) :
    x = ∑ B : Finset (Fin 24), occupationCoeff x B • occupationKet B := by
  let y : Space 23 :=
    (fockCoordinates 23).symm (fockBFSSUnitary.symm x)
  have hy : x = fockBFSSUnitary (fockCoordinates 23 y) := by
    dsimp [y]
    simp
  calc
    x = fockBFSSUnitary (fockCoordinates 23 y) := hy
    _ = fockBFSSUnitary
          (fockCoordinates 23
            (∑ B : Finset (Fin 24),
              (fockBasis 23).repr y B • fockBasis 23 B)) := by
        exact congrArg
          (fun z : Space 23 => fockBFSSUnitary (fockCoordinates 23 z))
          ((fockBasis 23).sum_repr y).symm
    _ = ∑ B : Finset (Fin 24), occupationCoeff x B • occupationKet B := by
        simp only [map_sum, map_smul]
        rfl

/-- The 24-mode ordered selector truly extracts exactly one canonical
occupation coordinate from an ARBITRARY BFSS fermion vector. -/
theorem occupationSelector_apply (A : Finset (Fin 24)) (x : BFSSFermion) :
    occupationSelector A x = occupationCoeff x A • occupationKet A := by
  calc
    occupationSelector A x =
        occupationSelector A
          (∑ B : Finset (Fin 24), occupationCoeff x B • occupationKet B) :=
      congrArg (occupationSelector A) (occupationExpansion x)
    _ = ∑ B : Finset (Fin 24),
          occupationCoeff x B • occupationSelector A (occupationKet B) := by
        simp only [map_sum, map_smul]
    _ = ∑ B : Finset (Fin 24),
          if A = B then occupationCoeff x B • occupationKet B else 0 := by
        apply Finset.sum_congr rfl
        intro B _
        rw [occupationSelector_occupationKet]
        split_ifs <;> simp
    _ = occupationCoeff x A • occupationKet A := by
        simp

#print axioms occupationExpansion
#print axioms occupationSelector_apply

end
end FCP.BFSSFermionF3B5
