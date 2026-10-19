import SU2BFSSG4MOriginalPairedSourceZExponentialQuarterProbe
import SU2BFSSPhysicalDomainL6G6XOriginalSU2GaugeCurveProbe

/-!
S1V23 — the precise OPEN source-curve identification with the exact
historical ORIGINAL L6G6X sourcePlusIGaugeCurve definition.

All earlier G4J/G4K/G4L/G4M facts refer to the actual original SU2
AlgebraData and native GaugeGroup 2. The new task is to connect the
historically defined sourcePlusIGaugeCurve 2 t to exactly the
NormedSpace.exp of the original paired color-z basis.

The first theorem intentionally uses `rfl` on the underlying matrix:
both sides should reduce to the same positive-i exponent in the
original source. The second identifies the actual original group
element at original time with G4L's previously proved element.
The third transports the accepted original GaugeData fermion sign.

**UNCOMPILED CANDIDATE.** This file imports L6G6X's full original
physical-operator dependency closure (L6G6→L6G5→L6G4...), which
has NOT been restored or qualified in this isolated branch.
Do not declare these 3 roots proven until an immutable-pinned
CI compiles THIS file and audits its axiom output.

It does not assert the independent manuscript Spin48 lift or
intertwiner, unitary domains, spectral gap, or original Hamiltonian.
-/

set_option autoImplicit false
set_option maxHeartbeats 400000

namespace FCP.BFSSS1V23
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4J
open FCP.BFSSSU2GaugeG4L
open FCP.BFSSSU2GaugeG4M

/-- Original historical source's underlying matrix is exactly
G4M's own original paired Pauli-z exponential for all real times. -/
theorem original_sourcePlusIGaugeCurve_z_matrix_eq
    (t : ℝ) :
    (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
      (2 : Fin 3) t : ColorMatrix 2) =
      originalPairedZExponential t := by
  rfl

/-- The ACTUAL historical +i SU2 source curve, at the original
quarter parameter, is exactly G4L's actual source GaugeGroup element. -/
theorem original_sourcePlusIGaugeCurve_quarter_eq_actualGauge :
    FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
      (2 : Fin 3) originalZQuarterTime = actualQuarterGauge := by
  apply Subtype.ext
  exact (original_sourcePlusIGaugeCurve_z_matrix_eq _).trans
    originalPairedZExponential_quarter_eq_actualGauge

/-- Unconditional exact original G4J fermion theta signs when
the input element IS the historical original source +i z-quarter. -/
theorem original_sourcePlusIGaugeCurve_quarter_fermion_theta_sign
    (α : SpinIndex) (A : ColorIndex 2) (v : Fermion 2) :
    pairedGaugeData.fermion
        (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
          (2 : Fin 3) originalZQuarterTime)
        (pairedAlgebraData.theta α A v) =
      (if A = (2 : Fin 3) then (1 : ℂ) else -1) •
        pairedAlgebraData.theta α A
          (pairedGaugeData.fermion
            (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
              (2 : Fin 3) originalZQuarterTime) v) := by
  rw [original_sourcePlusIGaugeCurve_quarter_eq_actualGauge]
  exact actualQuarterGauge_fermion_theta_sign α A v

#print axioms original_sourcePlusIGaugeCurve_z_matrix_eq
#print axioms original_sourcePlusIGaugeCurve_quarter_eq_actualGauge
#print axioms original_sourcePlusIGaugeCurve_quarter_fermion_theta_sign

end
end FCP.BFSSS1V23
