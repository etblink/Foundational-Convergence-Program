import SU2BFSSPhysicalDomainS3EActualFermionSpinRotationLawProbe

/-!
# BFSS SU(2) S3F — actual finite Fock-plane generator skew-adjointness

Use the pinned self-adjointness of each of the true 48 Majorana
operators and the already proven source spinor-plane matrix
transpose-skewness. No new unitary, gauge, or spectral assumption.
-/

namespace FCP.BFSSSU2PhysicalDomainS3F
noncomputable section

open scoped BigOperators
open Finset
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D

/-- The star of a product of actual self-adjoint Majoranas reverses
the spin-label order. -/
theorem pairedTheta_pair_star
    (α β : SpinIndex) (A : ColorIndex 2) :
    star (pairedTheta α A * pairedTheta β A) =
      pairedTheta β A * pairedTheta α A := by
  rw [star_mul, (pairedTheta_selfAdjoint β A).star_eq,
    (pairedTheta_selfAdjoint α A).star_eq]

/-- The source quadratic operator is skew-adjoint for every
real skew 16x16 spinor matrix, on the actual Fock Hilbert space. -/
theorem pairedFermionSpinQuadraticColor_star_eq_neg
    (J : Matrix SpinIndex SpinIndex ℝ)
    (hJ : J.transpose = -J) (A : ColorIndex 2) :
    star (pairedFermionSpinQuadraticColor J A) =
      -(pairedFermionSpinQuadraticColor J A) := by
  have hsk (α β : SpinIndex) : J β α = -J α β := by
    have h := congrArg
      (fun M : Matrix SpinIndex SpinIndex ℝ => M α β) hJ
    simpa only [Matrix.transpose_apply, Matrix.neg_apply] using h
  unfold pairedFermionSpinQuadraticColor
  calc
    star (∑ α : SpinIndex, ∑ β : SpinIndex,
      ((J α β : ℝ) : ℂ) • (pairedTheta α A * pairedTheta β A)) =
        ∑ α : SpinIndex, ∑ β : SpinIndex,
          ((J α β : ℝ) : ℂ) • (pairedTheta β A * pairedTheta α A) := by
      simp only [star_sum, star_smul, pairedTheta_pair_star]
      simp
    _ = ∑ α : SpinIndex, ∑ β : SpinIndex,
      ((J β α : ℝ) : ℂ) • (pairedTheta α A * pairedTheta β A) := by
      rw [Finset.sum_comm]
    _ = -(∑ α : SpinIndex, ∑ β : SpinIndex,
      ((J α β : ℝ) : ℂ) • (pairedTheta α A * pairedTheta β A)) := by
      simp only [hsk, Complex.ofReal_neg, neg_smul,
        Finset.sum_neg_distrib]

/-- The exact S3D three-color spin-plane generator is skew-adjoint.
In finite dimension this is the bounded generator of unitary
one-parameter rotations, but no global Spin(9) action is constructed. -/
theorem pairedFermionPlaneSpinGenerator_star_eq_neg
    (i j : SpaceIndex) :
    star (pairedFermionPlaneSpinGenerator i j) =
      -(pairedFermionPlaneSpinGenerator i j) := by
  have hs := pairedPlaneSpinGenerator_skew i j
  unfold pairedFermionPlaneSpinGenerator
  simp only [star_smul, star_sum, pairedFermionSpinQuadraticColor_star_eq_neg
    (pairedPlaneSpinGenerator i j) hs, star_one, star_natCast, star_inv,
    Finset.sum_neg_distrib]
  module

#print axioms pairedTheta_pair_star
#print axioms pairedFermionSpinQuadraticColor_star_eq_neg
#print axioms pairedFermionPlaneSpinGenerator_star_eq_neg

end
end FCP.BFSSSU2PhysicalDomainS3F
