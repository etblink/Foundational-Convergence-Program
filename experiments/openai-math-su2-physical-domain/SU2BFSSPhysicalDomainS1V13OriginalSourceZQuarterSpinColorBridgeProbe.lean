import SU2BFSSPhysicalDomainS1GExactSourceRelativeCharacterTrivialityProbe
import SU2BFSSPhysicalDomainS1V12SourceLiteralPauliQuarterSpinSignProbe

/-!
S1V13 — literal original normalized-Pauli +i SU(2) z-quarter-turn
to the already qualified standalone Pauli/Spin color-action signs.

Unlike S1V12, this file IMPORTS THE ORIGINAL named source gauge curve
and original normalized Pauli declarations. It does not postulate
source label equality or gauge representation equivalence.

Original original-source prerequisite closure (S1G and G1A/F4) is
not currently present in the isolated cold-Mathlib accepted module
cache. Hence this file is an UNCOMPILED candidate until a strict
source-module CI gate accepts it, with no new assumptions/axioms.

S1V12 itself was qualified on the exact pinned original-sized geometry.
The continuous global SU2 → Spin48 lift remains OPEN.
-/

set_option autoImplicit false
set_option maxHeartbeats 350000

namespace FCP.BFSSS1V13
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainL6H5E8Y
open FCP.BFSSSU2PhysicalDomainS1G
open FCP.BFSSS1V12

/-- Typed identification with the ACTUAL original source +i
z-quarter-turn element. Uses its previously accepted source matrix
theorem; no new scale or sign change is introduced. -/
theorem original_sourceQuarterZ_eq_literal :
    (sourceZ sourceQuarterTurnTime : ColorMatrix 2) =
      sourceQuarterZLiteral := by
  simpa only [sourceQuarterZLiteral] using source_quarter_z_matrix

/-- Typed identification with the literal ORIGINAL normalized Pauli
color generator; both use the exact sqrt(2)/2 normalization. -/
theorem original_normalizedPauli_eq_literal (A : Fin 3) :
    FCP.BFSSSU2.normalizedPauli A =
      sourceNormalizedPauliLiteral A := by
  fin_cases A <;>
    rfl

/-- The ACTUAL named original source +i SU(2) z-quarter-turn acts
on ALL THREE original normalized Pauli colors with signs -,-,+.
This is NOT yet a full SU2→Spin48 homomorphism. -/
theorem original_source_quarter_adjoint_sign (A : Fin 3) :
    (sourceZ sourceQuarterTurnTime : ColorMatrix 2) *
      FCP.BFSSSU2.normalizedPauli A *
      (sourceZ sourceQuarterTurnTime : ColorMatrix 2).conjTranspose =
        (if A = (2 : Fin 3)
          then FCP.BFSSSU2.normalizedPauli A
          else -FCP.BFSSSU2.normalizedPauli A) := by
  simpa only [original_sourceQuarterZ_eq_literal,
    original_normalizedPauli_eq_literal] using
      sourceQuarterZLiteral_conjugates_normalized A

#print axioms original_sourceQuarterZ_eq_literal
#print axioms original_normalizedPauli_eq_literal
#print axioms original_source_quarter_adjoint_sign

end
end FCP.BFSSS1V13
