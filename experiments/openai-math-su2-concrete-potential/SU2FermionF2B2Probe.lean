import SU2FermionF2BProbe

/-!
# BFSS fermions F2-B2a — real Majorana all-mode CAR

First bounded portion of F2-B2. Extends the individually normalized
real Majorana (F1) using the all-mode creator/annihilator CAR (F2-A).
The imaginary-imaginary and mixed Majorana relations, and the exact
48-theta CAR, remain unproved here.
-/

namespace FCP.BFSSFermionF2B2
noncomputable section

open FCP.BFSSFermionF1 FCP.BFSSFermionF2

private abbrev BFSSOp :=
  OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2

/-- All 24 real Majoranas satisfy delta-one pairwise CAR,
including distinct-mode anticommutation. -/
theorem majorana0_car_all (i j : Fin 24) :
    majorana0 i * majorana0 j + majorana0 j * majorana0 i =
      (if i = j then (1 : ℂ) else 0) • (1 : BFSSOp) := by
  by_cases hij : i = j
  · subst j
    simpa only [eq_self, ite_true, one_smul] using (majorana0_car i)
  · have hji : j ≠ i := Ne.symm hij
    have hcc : creator i * creator j + creator j * creator i = (0 : BFSSOp) :=
      creator_creator_car i j
    have haa : annihilator i * annihilator j + annihilator j * annihilator i =
        (0 : BFSSOp) := annihilator_annihilator_car i j
    have hac : annihilator i * creator j + creator j * annihilator i =
        (0 : BFSSOp) := by
      calc
        _ = (0 : ℂ) • (1 : BFSSOp) := by
          simpa only [hij, ite_false] using (annihilator_creator_car i j)
        _ = 0 := by
          ext x
          simp
    have hca : annihilator j * creator i + creator i * annihilator j =
        (0 : BFSSOp) := by
      calc
        _ = (0 : ℂ) • (1 : BFSSOp) := by
          simpa only [hji, ite_false] using (annihilator_creator_car j i)
        _ = 0 := by
          ext x
          simp
    have hsum :
        (creator i + annihilator i) * (creator j + annihilator j) +
          (creator j + annihilator j) * (creator i + annihilator i) =
            (0 : BFSSOp) := by
      calc
        _ = (creator i * creator j + creator j * creator i) +
              (annihilator i * annihilator j + annihilator j * annihilator i) +
              (annihilator i * creator j + creator j * annihilator i) +
              (annihilator j * creator i + creator i * annihilator j) := by
                noncomm_ring
        _ = 0 := by rw [hcc, haa, hac, hca]; simp
    simp only [hij, ite_false]
    unfold majorana0
    rw [smul_mul_smul, smul_mul_smul, ← smul_add, hsum]
    ext x
    simp

#print axioms majorana0_car_all

end
end FCP.BFSSFermionF2B2
