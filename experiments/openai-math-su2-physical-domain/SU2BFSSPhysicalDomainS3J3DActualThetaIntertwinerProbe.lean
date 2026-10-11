import SU2BFSSPhysicalDomainS3IActualFockPlaneFlowGaugeCommutationProbe
import SU2BFSSPhysicalDomainS3J3CAbstractExponentialIntertwinerProbe
import OAI.Analysis.KadisonKastler.ExponentialCommutator

/-!
# S3J3D — source Majorana span intertwining, actual Fock representation

The input operators are the exact accepted SU(2) 48-Majorana Fock
representation, source gamma-plane spin generator, and one-parameter
fermionic unitary flow. No proxy Fock space and no added covariance
assumption. Prospective until the pinned compiler gate succeeds.
-/

namespace FCP.BFSSSU2PhysicalDomainS3J3D
noncomputable section

set_option maxHeartbeats 1600000
set_option synthInstance.maxHeartbeats 400000

open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3E
open FCP.BFSSSU2PhysicalDomainS3H
open FCP.BFSSSU2PhysicalDomainS3J3C

private abbrev FermionOp := Fermion 2 →L[ℂ] Fermion 2
private abbrev SpinCoeffs := SpinIndex → ℂ

/-- The genuine 16-source-Majorana span at one color. -/
noncomputable def pairedThetaComboLin (C : ColorIndex 2) :
    SpinCoeffs →ₗ[ℂ] FermionOp where
  toFun v := ∑ α : SpinIndex, v α • pairedTheta α C
  map_add' v w := by
    simp only [Pi.add_apply, add_smul, Finset.sum_add_distrib]
  map_smul' c v := by
    simp only [Pi.smul_apply, smul_smul, Finset.smul_sum]

noncomputable def pairedThetaCombo (C : ColorIndex 2) :
    SpinCoeffs →L[ℂ] FermionOp :=
  (pairedThetaComboLin C).toContinuousLinearMap

/-- Complexification of the accepted real 16-by-16 gamma-plane matrix. -/
noncomputable def pairedSourceSpinMatrix (i j : SpaceIndex) :
    Matrix SpinIndex SpinIndex ℂ :=
  fun α β => ((pairedPlaneSpinGenerator i j α β : ℝ) : ℂ)

noncomputable def pairedSourceSpinOp (i j : SpaceIndex) :
    SpinCoeffs →L[ℂ] SpinCoeffs :=
  (pairedSourceSpinMatrix i j).mulVecLin.toContinuousLinearMap

/-- Infinitesimal source intertwining, directly from accepted S3E. -/
theorem pairedSourceThetaCombo_intertwines
    (i j : SpaceIndex) (C : ColorIndex 2) (v : SpinCoeffs) :
    OAI.KadisonKastler.boundedCommutator
        (pairedFermionPlaneSpinGenerator i j)
        (pairedThetaCombo C v) =
      pairedThetaCombo C (pairedSourceSpinOp i j v) := by
  let K := pairedFermionPlaneSpinGenerator i j
  change K * (∑ γ : SpinIndex, v γ • pairedTheta γ C) -
      (∑ γ : SpinIndex, v γ • pairedTheta γ C) * K =
    ∑ α : SpinIndex,
      (∑ γ : SpinIndex,
          ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) * v γ) •
        pairedTheta α C
  calc
    _ = ∑ γ : SpinIndex, v γ •
          (K * pairedTheta γ C - pairedTheta γ C * K) := by
          simp only [Finset.mul_sum, Finset.sum_mul, Finset.sum_sub_distrib,
            smul_mul_assoc, mul_smul_comm, smul_sub]
    _ = ∑ γ : SpinIndex, v γ •
          (∑ α : SpinIndex,
            ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) •
              pairedTheta α C) := by
          apply Finset.sum_congr rfl
          intro γ _
          rw [pairedFermionPlaneSpinGenerator_comm_theta]
    _ = _ := by
          simp only [Finset.smul_sum, smul_smul]
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro α _
          rw [← Finset.sum_smul]
          apply Finset.sum_congr rfl
          intro γ _
          rw [mul_comm (v γ)]

/-- Finite-time covariance of the actual Majorana span. -/
theorem pairedSourceSpinFlow_covariance
    (i j : SpaceIndex) (C : ColorIndex 2)
    (t : ℝ) (v : SpinCoeffs) :
    pairedFermionPlaneSpinFlow i j t * pairedThetaCombo C v *
        NormedSpace.exp
          (-(((t : ℝ) : ℂ) • pairedFermionPlaneSpinGenerator i j)) =
      pairedThetaCombo C
        ((NormedSpace.exp
           (((t : ℝ) : ℂ) • pairedSourceSpinOp i j)) v) := by
  letI : NormedAlgebra ℚ FermionOp :=
    NormedAlgebra.restrictScalars ℚ ℂ FermionOp
  let K := pairedFermionPlaneSpinGenerator i j
  let T := pairedThetaCombo C
  let J := pairedSourceSpinOp i j
  let A := ((t : ℝ) : ℂ) • J
  let B := OAI.KadisonKastler.boundedCommutator (((t : ℝ) : ℂ) • K)
  have hintertwine (w : SpinCoeffs) : B (T w) = T (A w) := by
    have h0 := pairedSourceThetaCombo_intertwines i j C w
    change K * T w - T w * K = T (J w) at h0
    change (((t : ℝ) : ℂ) • K) * T w -
      T w * (((t : ℝ) : ℂ) • K) =
      T ((((t : ℝ) : ℂ) • J) w)
    rw [ContinuousLinearMap.smul_apply, ← map_smul T]
    rw [← h0]
    simp only [smul_mul_assoc, mul_smul_comm, smul_sub]
  have hexp := exp_intertwines_on_vector A B T hintertwine v
  have hconj := OAI.KadisonKastler.exp_boundedCommutator_apply
    (((t : ℝ) : ℂ) • K) (T v)
  change NormedSpace.exp B (T v) =
    pairedFermionPlaneSpinFlow i j t * T v *
      NormedSpace.exp (-(((t : ℝ) : ℂ) • K)) at hconj
  exact hconj.symm.trans hexp

#print axioms pairedSourceThetaCombo_intertwines
#print axioms pairedSourceSpinFlow_covariance

end
end FCP.BFSSSU2PhysicalDomainS3J3D
