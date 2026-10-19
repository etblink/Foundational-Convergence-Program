import SU2BFSSPhysicalDomainS1GExactSourceRelativeCharacterTrivialityProbe
import SU2BFSSPhysicalDomainS1LOriginalManuscript48ColorLabelBridgeProbe
import SU2BFSSPhysicalDomainS1V18QuarterFlipRealMajoranaDiagonalMatrixProbe
import SU2BFSSPhysicalDomainS1V21OriginalUpstreamAdjointQuarterConditionalProbe

/-!
BFSS S1V19 — ORIGINAL SOURCE-NAMED SU(2) z-quarter-turn real Majorana
matrix versus the fully qualified concrete Spin48 source quarter map.

This file imports all original G1A/G3A/G3B/S1G/S1J data; it does NOT
replace the upstream SU2 algebra or introduce a surrogate group.
The colored input/output order remains that in the accepted original
G3A theorem: rows = OUTPUT B, columns = INPUT A.

The first group of lemmas proves a typed equality between the actual
ORIGINAL sourceZ(sourceQuarterTurnTime) normalized Pauli conjugation
and the previously qualified source-literal matrix. It then evaluates
the ORIGINAL pairedAlgebraData.adjointCoefficient via the ORIGINAL
trace formula, NOT by identifying an arbitrary 3×3 rotation.

The final source 48-matrix obligation still requires the original
Fock index bridge, no extra mathematical assumption is allowed.

STATUS: UNCOMPILED CANDIDATE. No gate or axiom-clean claim is made
until the FULL original Fock/OAI module closure compiles at the exact
pinned Lean + Mathlib source revision. A green standalone S1V12 or
S1V18 does not qualify this original-import source.
-/
set_option autoImplicit false
set_option maxHeartbeats 400000

namespace FCP.BFSSS1V19
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG3A
open FCP.BFSSSU2GaugeG3B
open FCP.BFSSSU2PhysicalDomainS1G
open FCP.BFSSSU2PhysicalDomainS1J
open FCP.BFSSS1V5
open FCP.BFSSS1V12
open FCP.BFSSS1V18
open FCP.BFSSS1V21

/-- Exact matrix identity for the ORIGINAL +i gauge source curve;
the RHS is the same source-literal S1V12 2×2 complex matrix. -/
theorem original_zquarter_eq_source_literal :
    (sourceZ sourceQuarterTurnTime : ColorMatrix 2) =
      sourceQuarterZLiteral := by
  simpa only [sourceQuarterZLiteral] using source_quarter_z_matrix

/-- Equality of the actual paired ORIGINAL SU2 algebra color basis
to the source-literal previously kernel-qualified normalized Pauli. -/
theorem original_paired_color_eq_literal (A : Fin 3) :
    pairedAlgebraData.color A = sourceNormalizedPauliLiteral A := by
  fin_cases A <;> rfl

/-- Original +i z-quarter conjugates the actual paired SU2 algebra
color matrices by exact (−,−,+) in the pinned PAULI basis. -/
theorem original_zquarter_conjugates_paired_color (A : Fin 3) :
    (sourceZ sourceQuarterTurnTime : ColorMatrix 2) *
      pairedAlgebraData.color A *
      (sourceZ sourceQuarterTurnTime : ColorMatrix 2).conjTranspose =
        (if A = (2 : Fin 3)
          then pairedAlgebraData.color A
          else -pairedAlgebraData.color A) := by
  rw [original_zquarter_eq_source_literal]
  simpa only [original_paired_color_eq_literal] using
    sourceQuarterZLiteral_conjugates_normalized A

/-- Compute the ORIGINAL G3A coefficients, with columns A=input,
rows B=output. No extra group-action/Pauli convention assumed. -/
theorem original_zquarter_adjoint_coefficient (A B : Fin 3) :
    pairedAlgebraData.adjointCoefficient
      (sourceZ sourceQuarterTurnTime) A B =
        if B = A then
          (if A = (2 : Fin 3) then (1 : ℝ) else -1)
        else 0 := by
  have hcolor : ∀ C : ColorIndex 2,
      pairedAlgebraData.color C = FCP.BFSSSU2.normalizedPauli C := by
    intro C
    rw [pairedAlgebraData_color,
      FCP.BFSSSU2Full.concreteAlgebraData_color]
  exact original_upstream_adjointCoefficient_of_pinned_quarter
    pairedAlgebraData hcolor (sourceZ sourceQuarterTurnTime)
    original_zquarter_eq_source_literal A B

/-- Exact ORIGINAL G3A color matrix at the ORIGINAL source quarter
turn, B is output row and A is input column. -/
theorem original_zquarter_adjoint_matrix (B A : Fin 3) :
    adjointColorMatrix (sourceZ sourceQuarterTurnTime) B A =
      if B = A then
        (if A = (2 : Fin 3) then (1 : ℝ) else -1)
      else 0 :=
  original_zquarter_adjoint_coefficient A B

#print axioms original_zquarter_eq_source_literal
#print axioms original_paired_color_eq_literal
#print axioms original_zquarter_conjugates_paired_color
#print axioms original_zquarter_adjoint_coefficient
#print axioms original_zquarter_adjoint_matrix

end
end FCP.BFSSS1V19
