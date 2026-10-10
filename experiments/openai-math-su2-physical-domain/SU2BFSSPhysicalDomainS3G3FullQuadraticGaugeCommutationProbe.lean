import SU2BFSSPhysicalDomainS3G2GaugeInvariantMajoranaPairsProbe

/-!
# BFSS SU(2) S3G3 — literal three-color fermionic Spin(9) generator
# commutes with exact source gauge action

Theorem applies to the real Gamma-defined quadratic K_ij of S3D
and the genuine 24-mode fermionGaugeUnitaryHom of G4E.
Uses G4H's 48-Majorana theta covariance, G3A row orthogonality
(proved in S3G), and the gauge-invariant color pair theorem S3G2.

No global Spin(9) group, bosonic extension, closed Hamiltonian
symmetry, angular level exclusion or positive spectrum is inferred.
-/

namespace FCP.BFSSSU2PhysicalDomainS3G3
noncomputable section

open scoped BigOperators
open Finset
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4E
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3G2

private theorem reindex_color_spin_sums
    (F : ColorIndex 2 → SpinIndex → SpinIndex → Fermion 2) :
    (∑ A : ColorIndex 2, ∑ α : SpinIndex, ∑ β : SpinIndex, F A α β) =
      ∑ α : SpinIndex, ∑ β : SpinIndex, ∑ A : ColorIndex 2, F A α β := by
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro α _
  rw [Finset.sum_comm]

/-- On the actual Fock Hilbert space, the color sum of the complete
quadratic fermionic operator with any real spinor matrix J commutes
with every source SU(2) fermion-gauge unitary. -/
theorem pairedFermionSpinQuadraticSum_gauge_commutes
    (g : GaugeGroup 2) (J : Matrix SpinIndex SpinIndex ℝ)
    (v : Fermion 2) :
    fermionGaugeUnitaryHom g
      ((∑ A : ColorIndex 2, pairedFermionSpinQuadraticColor J A) v) =
      (∑ A : ColorIndex 2, pairedFermionSpinQuadraticColor J A)
        (fermionGaugeUnitaryHom g v) := by
  let c : SpinIndex → SpinIndex → ℂ :=
    fun α β => ((J α β : ℝ) : ℂ)
  have hrearrange (w : ColorIndex 2 → Fermion 2) :
      fermionGaugeUnitaryHom g (∑ A : ColorIndex 2, w A) =
        ∑ A : ColorIndex 2, fermionGaugeUnitaryHom g (w A) := by
    rw [map_sum]
  unfold pairedFermionSpinQuadraticColor
  simp only [ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
    ContinuousLinearMap.mul_apply]
  calc
    fermionGaugeUnitaryHom g
      (∑ A : ColorIndex 2, ∑ α : SpinIndex, ∑ β : SpinIndex,
        (c α β) • (pairedTheta α A * pairedTheta β A) v) =
      ∑ A : ColorIndex 2, ∑ α : SpinIndex, ∑ β : SpinIndex,
        (c α β) •
          fermionGaugeUnitaryHom g ((pairedTheta α A * pairedTheta β A) v) := by
        simp only [map_sum, map_smul]
    _ = ∑ α : SpinIndex, ∑ β : SpinIndex,
          (c α β) •
            fermionGaugeUnitaryHom g
              (∑ A : ColorIndex 2,
                (pairedTheta α A * pairedTheta β A) v) := by
        rw [reindex_color_spin_sums]
        apply Finset.sum_congr rfl
        intro α _
        apply Finset.sum_congr rfl
        intro β _
        rw [← Finset.smul_sum]
        rw [← map_sum]
    _ = ∑ α : SpinIndex, ∑ β : SpinIndex,
          (c α β) •
            (∑ A : ColorIndex 2,
              (pairedTheta α A * pairedTheta β A)
                (fermionGaugeUnitaryHom g v)) := by
        apply Finset.sum_congr rfl
        intro α _
        apply Finset.sum_congr rfl
        intro β _
        rw [pairedTheta_colorPairSum_gauge_invariant]
        simp only [ContinuousLinearMap.sum_apply]
    _ = ∑ A : ColorIndex 2, ∑ α : SpinIndex, ∑ β : SpinIndex,
          (c α β) •
            (pairedTheta α A * pairedTheta β A)
              (fermionGaugeUnitaryHom g v) := by
        rw [reindex_color_spin_sums]
        simp only [Finset.smul_sum]
    _ = _ := by rfl

/-- The exact accepted S3D gamma-plane quadratic spin generator,
without a replacement implementation, commutes with G4E's genuine
SU(2) gauge representation, pointwise on the full Fermion 2. -/
theorem pairedFermionPlaneSpinGenerator_gauge_commutes
    (g : GaugeGroup 2) (i j : SpaceIndex) (v : Fermion 2) :
    fermionGaugeUnitaryHom g
      (pairedFermionPlaneSpinGenerator i j v) =
      pairedFermionPlaneSpinGenerator i j
        (fermionGaugeUnitaryHom g v) := by
  unfold pairedFermionPlaneSpinGenerator
  simp only [ContinuousLinearMap.smul_apply]
  rw [map_smul]
  congr 1
  exact pairedFermionSpinQuadraticSum_gauge_commutes g
    (pairedPlaneSpinGenerator i j) v

#print axioms pairedFermionSpinQuadraticSum_gauge_commutes
#print axioms pairedFermionPlaneSpinGenerator_gauge_commutes

end
end FCP.BFSSSU2PhysicalDomainS3G3
