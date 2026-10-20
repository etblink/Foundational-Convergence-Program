import SU2BFSSPhysicalDomainS1V52L7A4NativeAlgebraDataZColorConditionalExpBridgeProbe
import SU2BFSSG1APairedThetaProbe

/-!
S1V52-L7A5C — STAGED AND UNQUALIFIED genuine paired BFSS Z-color
matrix certificate, separated from the much larger native G6X
one-parameter gauge curve closure.

This uses the actual source's `pairedAlgebraData : AlgebraData 2`
from G1A and `concreteAlgebraData_color` from F4, not a
surrogate AlgebraData. There is no new color-field definition,
no hypothesis, and no sign or time normalization change.

The historical G1A import transitively includes F3-C2 and
upstream Clifford/Fermion inputs. Every source .olean must be
rebuilt or restored under strict independent exact source hashes
before this source-only stage can be ACCEPTED. The statement
is not a claim of native curve or source Spin membership.
-/

set_option autoImplicit false
set_option maxHeartbeats 450000

namespace FCP.BFSSS1V52L7A5C
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2Full

/-- Genuine original paired BFSS source color index 2 is
precisely normalized +i Pauli-Z's real diagonal generator.
No `AlgebraData 2` arbitrary hypothesis survives here. -/
theorem originalPairedZColor_exact_diagonal :
    pairedAlgebraData.color (2 : Fin 3) =
      Matrix.diagonal
        (![ (FCP.BFSSSU2.pauliScale : ℂ),
            -(FCP.BFSSSU2.pauliScale : ℂ)] : Fin 2 → ℂ) := by
  rw [pairedAlgebraData_color, concreteAlgebraData_color]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [FCP.BFSSSU2.normalizedPauli, FCP.BFSSSU2.pauli,
      Matrix.diagonal_apply, Matrix.smul_apply, smul_eq_mul] <;>
    ring

#print axioms originalPairedZColor_exact_diagonal
end
end FCP.BFSSS1V52L7A5C
