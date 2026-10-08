import SU2FermionF2B2MixedAllProbe

/-!
# BFSS fermions F2-B2d1 — exact 48-Majorana pair-indexed CAR

Assembles the independently verified all-mode real/real,
imaginary/imaginary, and mixed Majorana anticommutators for
the exact Fin 24 × Fin 2 index used by majoranaCandidate.

The transport through thetaLabelEquiv into upstream AlgebraData.theta_CAR
and irreducibility remain separate unproved steps.
-/

namespace FCP.BFSSFermionF2B2Indexed
noncomputable section

open FCP.BFSSFermionF1 FCP.BFSSFermionF2
open FCP.BFSSFermionF2B2 FCP.BFSSFermionF2B2Imag
open FCP.BFSSFermionF2B2MixedAll

private abbrev BFSSOp :=
  OAI.BFSSQuantum.Fermion 2 →L[ℂ] OAI.BFSSQuantum.Fermion 2

/-- All forty-eight normalized, self-adjoint Majorana generators
obey the exact pair-indexed delta-one canonical anticommutation law. -/
theorem majoranaCandidate_car (p q : Fin 24 × Fin 2) :
    majoranaCandidate p * majoranaCandidate q +
      majoranaCandidate q * majoranaCandidate p =
        (if p = q then (1 : ℂ) else 0) • (1 : BFSSOp) := by
  have hzero : (0 : BFSSOp) = (0 : ℂ) • (1 : BFSSOp) := by
    ext x
    simp
  by_cases hp : p.2 = 0
  · by_cases hq : q.2 = 0
    · have heq : (p = q) ↔ (p.1 = q.1) := by
        constructor
        · intro h
          exact congrArg Prod.fst h
        · intro h
          exact Prod.ext h (hp.trans hq.symm)
      simpa only [majoranaCandidate, if_pos hp, if_pos hq, heq] using
        (majorana0_car_all p.1 q.1)
    · have hpq : p ≠ q := by
        intro h
        exact hq ((congrArg Prod.snd h).symm.trans hp)
      calc
        _ = (0 : BFSSOp) := by
          simpa only [majoranaCandidate, if_pos hp, if_neg hq] using
            (majorana01_car_all p.1 q.1)
        _ = (if p = q then (1 : ℂ) else 0) • (1 : BFSSOp) := by
          simp only [if_neg hpq]
          exact hzero
  · by_cases hq : q.2 = 0
    · have hpq : p ≠ q := by
        intro h
        exact hp ((congrArg Prod.snd h).trans hq)
      calc
        _ = majorana0 q.1 * majorana1 p.1 +
              majorana1 p.1 * majorana0 q.1 := by
          simp only [majoranaCandidate, if_neg hp, if_pos hq]
          exact add_comm _ _
        _ = (0 : BFSSOp) := majorana01_car_all q.1 p.1
        _ = (if p = q then (1 : ℂ) else 0) • (1 : BFSSOp) := by
          simp only [if_neg hpq]
          exact hzero
    · have hcomp : p.2 = q.2 := by omega
      have heq : (p = q) ↔ (p.1 = q.1) := by
        constructor
        · intro h
          exact congrArg Prod.fst h
        · intro h
          exact Prod.ext h hcomp
      simpa only [majoranaCandidate, if_neg hp, if_neg hq, heq] using
        (majorana1_car_all p.1 q.1)

#print axioms majoranaCandidate_car

end
end FCP.BFSSFermionF2B2Indexed
