import SU2BFSSPhysicalDomainS1V52L9E5F20DOriginalRealCliffordMultiplicationContinuousProbe
import SU2BFSSPhysicalDomainS1V52L8EOriginalOrderedSixteenNativeSU2Spin48HomProbe
import Mathlib.Topology.Algebra.Monoid

/-!
S1V52-L9E5F20E — genuine original SOURCE continuous native
SU(2) → Spin(48) sixteen-block homomorphism, in the ACTUAL
Clifford-subtype topology.

F20B: the original Clifford algebra has a true real PBW basis
F20C: an actual PBW-coordinate real norm and each original
      native Spin(48) block has continuous Clifford-valued coercion
F20D: the genuine Clifford multiplication is jointly continuous
L8E: the exact original 16-block ordered product is a real source
     gauge-to-spinGroup group homomorphism

Here the original mathlib spinGroup Q is a Submonoid of the real
CliffordAlgebra Q. Its induced subtype topology is NOT invented,
nor replaced with a Fock/SO48 image topology. Submonoid.continuousMul
and continuous_list_prod are the pinned Mathlib interfaces.

Axiom-clean source continuity is distinct from Spin48 manifold /
covering equivalence, independent manuscript Clifford modules,
unbounded BFSS domains and spectral consequences.
-/

set_option autoImplicit false
set_option maxHeartbeats 360000

namespace FCP.BFSSS1V52L9E5F20E
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V52L7C7
open FCP.BFSSS1V52L8E
open FCP.BFSSS1V52L9E5F20C
open FCP.BFSSS1V52L9E5F20D

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Each genuine original native SU2→Spin48 block is continuous
in the exact inherited source Clifford subtype topology. -/
theorem originalNativeGaugeSpinHom_continuous
    (α : RealSpinBlock) :
    Continuous (fun g : GaugeGroup 2 =>
      (originalNativeGaugeSpinHom α g : spinGroup Q)) := by
  exact (originalNativeGaugeSpinHom_clifford_coe_continuous α).subtype_mk _

/-- The actual original source native gauge-to-Spin48 homomorphism,
defined as the noncommutative ordered product of the original
16 Spin48 block homomorphisms, is jointly continuous in the
Clifford-subtype topology. This is the genuine Spin48-valued lift,
not only its projection or Fock representation. -/
theorem originalNativeSixteenSpinHom_continuous :
    Continuous (fun g : GaugeGroup 2 =>
      (originalNativeSixteenSpinHom g : spinGroup Q)) := by
  simpa only [originalNativeSixteenSpinHom_apply] using
    (continuous_list_prod originalNativeSixteenSpinBlocks
      (fun α _ => originalNativeGaugeSpinHom_continuous α))

#print axioms originalNativeGaugeSpinHom_continuous
#print axioms originalNativeSixteenSpinHom_continuous

end
end FCP.BFSSS1V52L9E5F20E
