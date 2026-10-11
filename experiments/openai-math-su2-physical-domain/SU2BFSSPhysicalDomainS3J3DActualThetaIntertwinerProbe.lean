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
set_option maxRecDepth 4000

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
    change (∑ α : SpinIndex, (v α + w α) • pairedTheta α C) =
      (∑ α : SpinIndex, v α • pairedTheta α C) +
        (∑ α : SpinIndex, w α • pairedTheta α C)
    calc
      _ = ∑ α : SpinIndex,
            (v α • pairedTheta α C + w α • pairedTheta α C) := by
            apply Finset.sum_congr rfl
            intro α _
            exact add_smul (v α) (w α) (pairedTheta α C)
      _ = _ := Finset.sum_add_distrib
  map_smul' c v := by
    change (∑ α : SpinIndex, (c * v α) • pairedTheta α C) =
      c • (∑ α : SpinIndex, v α • pairedTheta α C)
    calc
      _ = ∑ α : SpinIndex, c • (v α • pairedTheta α C) := by
            apply Finset.sum_congr rfl
            intro α _
            exact (smul_smul c (v α) (pairedTheta α C)).symm
      _ = _ := by
            simp only [Finset.smul_sum]

noncomputable def pairedThetaCombo (C : ColorIndex 2) :
    SpinCoeffs →L[ℂ] FermionOp :=
  (pairedThetaComboLin C).toContinuousLinearMap

private theorem pairedThetaCombo_apply (C : ColorIndex 2)
    (v : SpinCoeffs) :
    pairedThetaCombo C v =
      ∑ α : SpinIndex, v α • pairedTheta α C := rfl

/-- Complexification of the accepted real 16-by-16 gamma-plane matrix. -/
noncomputable def pairedSourceSpinMatrix (i j : SpaceIndex) :
    Matrix SpinIndex SpinIndex ℂ :=
  fun α β => ((pairedPlaneSpinGenerator i j α β : ℝ) : ℂ)

noncomputable def pairedSourceSpinOp (i j : SpaceIndex) :
    SpinCoeffs →L[ℂ] SpinCoeffs :=
  (pairedSourceSpinMatrix i j).mulVecLin.toContinuousLinearMap

private theorem pairedSourceSpinOp_apply (i j : SpaceIndex)
    (v : SpinCoeffs) (α : SpinIndex) :
    (pairedSourceSpinOp i j v) α =
      ∑ γ : SpinIndex,
        ((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ) * v γ := rfl

/-- Infinitesimal source intertwining, directly from accepted S3E. -/
theorem pairedSourceThetaCombo_intertwines
    (i j : SpaceIndex) (C : ColorIndex 2) (v : SpinCoeffs) :
    OAI.KadisonKastler.boundedCommutator
        (pairedFermionPlaneSpinGenerator i j)
        (pairedThetaCombo C v) =
      pairedThetaCombo C (pairedSourceSpinOp i j v) := by
  -- Only unfold the small source wrappers; keep the accepted, enormous
  -- concrete Majorana implementation opaque in this calculation.
  rw [OAI.KadisonKastler.boundedCommutator_apply,
    pairedThetaCombo_apply, pairedThetaCombo_apply]
  simp only [pairedSourceSpinOp_apply]
  calc
    _ = ∑ γ : SpinIndex, v γ •
          (pairedFermionPlaneSpinGenerator i j * pairedTheta γ C -
            pairedTheta γ C * pairedFermionPlaneSpinGenerator i j) := by
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
          apply congrArg (fun c : ℂ => c • pairedTheta α C)
          apply Finset.sum_congr rfl
          intro γ _
          exact mul_comm (v γ)
            (((pairedPlaneSpinGenerator i j α γ : ℝ) : ℂ))

/-- A scalar multiple of the actual spin-plane commutator transports
through the genuine source Majorana span, avoiding any concrete
Fock-space unfolding or definally huge local identifications. -/
private theorem pairedSourceThetaCombo_intertwines_scaled
    (i j : SpaceIndex) (C : ColorIndex 2)
    (t : ℝ) (v : SpinCoeffs) :
    OAI.KadisonKastler.boundedCommutator
        (((t : ℝ) : ℂ) • pairedFermionPlaneSpinGenerator i j)
        (pairedThetaCombo C v) =
      pairedThetaCombo C
        (((t : ℂ) • pairedSourceSpinOp i j) v) := by
  rw [OAI.KadisonKastler.boundedCommutator_apply]
  calc
    _ = ((t : ℂ) •
          OAI.KadisonKastler.boundedCommutator
            (pairedFermionPlaneSpinGenerator i j)
            (pairedThetaCombo C v)) := by
            rw [OAI.KadisonKastler.boundedCommutator_apply]
            simp only [smul_mul_assoc, mul_smul_comm, smul_sub]
    _ = (t : ℂ) •
          pairedThetaCombo C (pairedSourceSpinOp i j v) := by
            exact congrArg (fun T : FermionOp => (t : ℂ) • T)
              (pairedSourceThetaCombo_intertwines i j C v)
    _ = pairedThetaCombo C
          (((t : ℂ) • pairedSourceSpinOp i j) v) := by
            rw [ContinuousLinearMap.smul_apply]
            exact (map_smul (pairedThetaCombo C) (t : ℂ)
              (pairedSourceSpinOp i j v)).symm

/-- Finite-time covariance of the 48 actual source Majoranas:
the 16 spinor coefficients at each of the three gauge colors are
transported by the exponential of the literal gamma-plane generator. -/
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
  have hexp :=
    exp_intertwines_on_vector
      (((t : ℝ) : ℂ) • pairedSourceSpinOp i j)
      (OAI.KadisonKastler.boundedCommutator
        (((t : ℝ) : ℂ) • pairedFermionPlaneSpinGenerator i j))
      (pairedThetaCombo C)
      (pairedSourceThetaCombo_intertwines_scaled i j C t) v
  have hconj :=
    OAI.KadisonKastler.exp_boundedCommutator_apply
      (((t : ℝ) : ℂ) • pairedFermionPlaneSpinGenerator i j)
      (pairedThetaCombo C v)
  calc
    _ = NormedSpace.exp
          (OAI.KadisonKastler.boundedCommutator
            (((t : ℝ) : ℂ) • pairedFermionPlaneSpinGenerator i j))
          (pairedThetaCombo C v) := by
            simpa only [pairedFermionPlaneSpinFlow] using hconj.symm
    _ = _ := hexp

#print axioms pairedSourceThetaCombo_intertwines
#print axioms pairedSourceSpinFlow_covariance

end
end FCP.BFSSSU2PhysicalDomainS3J3D
