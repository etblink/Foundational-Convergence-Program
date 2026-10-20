import SU2BFSSPhysicalDomainS1V52L7A5COriginalPairedZColorExactCertificateProbe
import SU2BFSSPhysicalDomainL6G6XOriginalSU2GaugeCurveProbe

/-!
S1V52-L7A5D — STAGED / UNQUALIFIED actual native GaugeGroup 2
positive-i Z curve-to-source-quaternion matrix equality.

Use the independently qualified L7A4 generic AlgebraData theorem
only *after* L7A5C proves its hypothesis for the original source
pairedAlgebraData. No synthetic gauge curve or alternative SU2
parameter. The source's positive-i G6X curve and G1A AlgebraData
are imported literally.

G6X still imports its historical upstream G6V/W color-flow
construction and may include many expensive physical-Gauss .olean
prerequisites. Do NOT claim acceptance or run CI until that exact
import closure has a pinned, auditable cache/rebuild plan.
-/
set_option autoImplicit false
set_option maxHeartbeats 450000
namespace FCP.BFSSS1V52L7A5D
noncomputable section
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainL6G6X
open FCP.BFSSS1V52B1
open FCP.BFSSS1V52L7A4
open FCP.BFSSS1V52L7A5C

/-- Actual original native SU2 positive-i Z gauge curve,
and the exact source quaternion coordinate sign and angle. -/
theorem originalNativePositiveIZCurve_eq_quaternion (t : ℝ) :
    (sourcePlusIGaugeCurve (2 : Fin 3) t : ColorMatrix 2) =
    sourceQuaternionColorMatrix
      (⟨Real.cos (t * FCP.BFSSSU2.pauliScale),
        Real.sin (t * FCP.BFSSSU2.pauliScale), 0, 0⟩ :
        SourceQuaternionCoords) := by
  rw [sourcePlusIGaugeCurve_coe]
  change NormedSpace.exp
    (t • ((Complex.I : ℂ) • pairedAlgebraData.color (2 : Fin 3))) = _
  exact originalAlgebraDataZColor_exp_of_diagonal
    pairedAlgebraData t FCP.BFSSSU2.pauliScale
    originalPairedZColor_exact_diagonal

#print axioms originalNativePositiveIZCurve_eq_quaternion
end
end FCP.BFSSS1V52L7A5D
