import SU2BFSSPhysicalDomainS1V52L9E5F20BOriginalSource48CliffordPBWBasisFiniteDimensionalProbe
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Group.Basic

/-!
F20C: GENUINE original source 48-generator Clifford real coordinate norm,
and the exact native Clifford-valued SU2 quaternion continuity.

The topology comes from the explicit, accepted source PBW real basis
F20B by the standard finite-coordinate supremum norm. It is a genuine
Hausdorff normed real vector-space topology, NOT an arbitrary initial/
trivial topology chosen to force the lift continuous.

F20A already proved continuity of all four original SU2 real quaternion
coefficients. L7C7 already identified the ACTUAL source Spin48 block
as the exact quaternion polynomial in the REAL original Clifford
algebra, not a surrogate Clifford module.

This probe does not assume continuity of multiplication, construct
a Clifford normed algebra, or assert joint continuity of the
sixteen-block Spin(48)-valued group homomorphism.
-/

set_option autoImplicit false
set_option maxHeartbeats 360000

namespace FCP.BFSSS1V52L9E5F20C
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V52A
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52B2
open FCP.BFSSS1V52C1
open FCP.BFSSS1V52L7C7
open FCP.BFSSS1V52L9E5F20A
open FCP.BFSSS1V52L9E5F20B

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- The norm on the ACTUAL original source Clifford algebra is the
ordinary coordinate norm transported from its F20B PBW basis. -/
noncomputable instance originalSourceCliffordNormedGroup :
    NormedAddCommGroup C :=
  NormedAddCommGroup.induced C (Finset Source48Label → ℝ)
    originalSourceCliffordPBWBasis.equivFun
    originalSourceCliffordPBWBasis.equivFun.injective

/-- Exact compatible real normed-vector-space structure for that
coordinate norm, with no independent surrogate algebra. -/
noncomputable instance originalSourceCliffordNormedSpace :
    NormedSpace ℝ C :=
  NormedSpace.induced ℝ C (Finset Source48Label → ℝ)
    originalSourceCliffordPBWBasis.equivFun

/-- The genuine original 48-source Clifford quaternion polynomial
is continuous in the original BFSS source gauge element. -/
theorem originalSourceCliffordQuaternion_continuous
    (α : RealSpinBlock) :
    Continuous (fun g : GaugeGroup 2 =>
      sourceCliffordQuaternion α (originalNativeQuaternionCoords g)) := by
  obtain ⟨ha, hb, hc, hd⟩ :=
    originalNativeQuaternionCoefficients_continuous
  change Continuous (fun g : GaugeGroup 2 =>
    (originalNativeQuaternionCoords g).a • (1 : C) +
    (originalNativeQuaternionCoords g).b • sourceZBivector α +
    (originalNativeQuaternionCoords g).c • sourceYBivector α +
    (originalNativeQuaternionCoords g).d • sourceXBivector α)
  have h1 : Continuous (fun g : GaugeGroup 2 =>
      (originalNativeQuaternionCoords g).a • (1 : C)) :=
    ha.smul (continuous_const :
      Continuous (fun _ : GaugeGroup 2 => (1 : C)))
  have hZ : Continuous (fun g : GaugeGroup 2 =>
      (originalNativeQuaternionCoords g).b • sourceZBivector α) :=
    hb.smul (continuous_const :
      Continuous (fun _ : GaugeGroup 2 => (sourceZBivector α : C)))
  have hY : Continuous (fun g : GaugeGroup 2 =>
      (originalNativeQuaternionCoords g).c • sourceYBivector α) :=
    hc.smul (continuous_const :
      Continuous (fun _ : GaugeGroup 2 => (sourceYBivector α : C)))
  have hX : Continuous (fun g : GaugeGroup 2 =>
      (originalNativeQuaternionCoords g).d • sourceXBivector α) :=
    hd.smul (continuous_const :
      Continuous (fun _ : GaugeGroup 2 => (sourceXBivector α : C)))
  exact ((h1.add hZ).add hY).add hX

/-- The underlying actual ORIGINAL native Spin48 block's Clifford
element varies continuously in the explicit real PBW norm topology.
This is NOT a claim that Clifford multiplication is continuous. -/
theorem originalNativeGaugeSpinHom_clifford_coe_continuous
    (α : RealSpinBlock) :
    Continuous (fun g : GaugeGroup 2 =>
      ((originalNativeGaugeSpinHom α g : spinGroup Q) : C)) := by
  simpa only [originalNativeGaugeSpinHom_coe] using
    (originalSourceCliffordQuaternion_continuous α)

#print axioms originalSourceCliffordNormedGroup
#print axioms originalSourceCliffordNormedSpace
#print axioms originalSourceCliffordQuaternion_continuous
#print axioms originalNativeGaugeSpinHom_clifford_coe_continuous

end
end FCP.BFSSS1V52L9E5F20C
