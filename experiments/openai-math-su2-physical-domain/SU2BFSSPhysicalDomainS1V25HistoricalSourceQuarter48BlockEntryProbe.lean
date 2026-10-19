import SU2BFSSPhysicalDomainS1V23OriginalPlusICurveNativeQuarterBridgeProbe
import SU2BFSSPhysicalDomainS1JActual48RealMajoranaColorActionProbe

/-!
S1V25 — original historical positive-i source quarter gauge action on
the ACTUAL paired 48 REAL Majorana coordinate matrix, not a surrogate.

The historical curve has already been proved equal to actualQuarterGauge
in kernel-qualified S1V23. The genuine original G4K adjoint coefficient
and original S1J output-row/input-column Kronecker definition give the
exact 48x48 real source action, with no original S1G Euler imports.

This file is a NEW uncompiled research CANDIDATE. The first gate
will strictly qualify two source-typed roots against the accepted
S1V24 S1C/S1J cache once its pending run saves that cache.

This does NOT identify the separately constructed S1V18 Spin(48)
rotor's action; its independent Clifford `.olean` closure is absent
from the accepted S1V23 source cache. It also does not integrate a
continuous SU2-to-Spin48 map or construct the manuscript Hilbert
intertwiner, physical domain matching, or BFSS spectral gap.
-/

set_option autoImplicit false
set_option maxHeartbeats 350000

namespace FCP.BFSSS1V25
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG3A
open FCP.BFSSSU2GaugeG3B
open FCP.BFSSSU2GaugeG4K
open FCP.BFSSSU2GaugeG4L
open FCP.BFSSSU2GaugeG4M
open FCP.BFSSSU2PhysicalDomainS1J

/-- The ACTUAL original historical source SU(2) +i z quarter
has precisely the output-B/input-A adjoint color signs. -/
theorem actualHistoricalQuarter_adjointColorMatrix
    (B A : ColorIndex 2) :
    adjointColorMatrix
        (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
          (2 : Fin 3) originalZQuarterTime) B A =
      if B = A then
        (if A = (2 : Fin 3) then (1 : ℝ) else -1)
      else 0 := by
  rw [FCP.BFSSS1V23.original_sourcePlusIGaugeCurve_quarter_eq_actualGauge]
  exact original_adjointColorMatrix_of_quarter_matrix
    actualQuarterGauge actualQuarterGauge_coe B A

/-- At every Fock spin-pair (j,k), real Majorana bit (s,t), and
source color (B,A), the *historical* L6G6X group element has exactly
the source 48-real signed block entries. B is ROW/output, A COLUMN/input,
matching the exact original S1J matrix and G3B mode ordering. -/
theorem actualHistoricalQuarter_sourceRealMajoranaMatrix_entry
    (j k : Fin 8) (s t : Fin 2)
    (B A : ColorIndex 2) :
    sourceRealMajoranaMatrix
        (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
          (2 : Fin 3) originalZQuarterTime)
        (colorModeEquiv (j,B),s) (colorModeEquiv (k,A),t) =
      if s = t then
        (if j = k then
          (if B = A then
            (if A = (2 : Fin 3) then (1 : ℝ) else -1)
           else 0)
         else 0)
      else 0 := by
  rw [sourceRealMajoranaMatrix_entry, oneParticleMatrix_block,
    actualHistoricalQuarter_adjointColorMatrix]

#print axioms actualHistoricalQuarter_adjointColorMatrix
#print axioms actualHistoricalQuarter_sourceRealMajoranaMatrix_entry

end
end FCP.BFSSS1V25
