import SU2BFSSPhysicalDomainS3DActualFermionSpinQuadraticGeneratorProbe

/-!
# BFSS SU(2) S3E1 — genuine same-color quadratic spinor response, before contraction

This is the source-defined 48-Majorana Fermion 2 Clifford representation,
not a proxy spin module. The delta-one source CAR in S3C supplies
the quadratic commutator with one source Majorana. The original S3D
quadratic generator uses precisely the actual double finite sum and source
complex coefficient operators.

This source-exact intermediate leaves the two delta-selector sums
uncontracted. The correct skew-matrix index orientation and the factor
one-half for the full 3-color plane rotation are *separate* next proofs.
No global Spin(9) action, closed physical q symmetry, or eigenvalue
existence is claimed by this declaration.
-/

namespace FCP.BFSSSU2PhysicalDomainS3E1
noncomputable section

open scoped BigOperators
open Finset
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3C
open FCP.BFSSSU2PhysicalDomainS3D

/-- The literal original source fermionic bilinear commutator with
one same-color Majorana, expressed with BOTH delta selectors of the
genuine CAR; no gamma transpose or 1/2 sign has yet been assumed. -/
theorem pairedFermionSpinQuadraticColor_comm_same_color_raw
    (J : Matrix SpinIndex SpinIndex ℝ)
    (A : ColorIndex 2) (γ : SpinIndex) :
    pairedFermionSpinQuadraticColor J A * pairedTheta γ A -
      pairedTheta γ A * pairedFermionSpinQuadraticColor J A =
    ∑ α : SpinIndex, ∑ β : SpinIndex,
      ((J α β : ℝ) : ℂ) •
        ((if β = γ then pairedTheta α A else 0) -
         (if α = γ then pairedTheta β A else 0)) := by
  unfold pairedFermionSpinQuadraticColor
  calc
    (∑ α : SpinIndex, ∑ β : SpinIndex,
      ((J α β : ℝ) : ℂ) • (pairedTheta α A * pairedTheta β A)) *
      pairedTheta γ A -
      pairedTheta γ A *
        (∑ α : SpinIndex, ∑ β : SpinIndex,
          ((J α β : ℝ) : ℂ) • (pairedTheta α A * pairedTheta β A)) =
      ∑ α : SpinIndex, ∑ β : SpinIndex,
        ((J α β : ℝ) : ℂ) •
          ((pairedTheta α A * pairedTheta β A) * pairedTheta γ A -
           pairedTheta γ A * (pairedTheta α A * pairedTheta β A)) := by
            simp only [Finset.sum_mul, Finset.mul_sum,
              smul_mul_assoc, mul_smul_comm,
              ← Finset.sum_sub_distrib, smul_sub]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro α _
      apply Finset.sum_congr rfl
      intro β _
      rw [pairedTheta_quadratic_commutator_same_color α β γ A]

#print axioms pairedFermionSpinQuadraticColor_comm_same_color_raw

end
end FCP.BFSSSU2PhysicalDomainS3E1
