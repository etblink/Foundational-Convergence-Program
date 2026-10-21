import SU2BFSSPhysicalDomainS1V52L9D1OriginalNativeSameBlockSpinCliffordAdjointProbe
import SU2BFSSPhysicalDomainS1JActual48RealMajoranaColorActionProbe

/-!
S1V52L9D0 — STAGED, UNQUALIFIED original BFSS Fock/Spin48
Majorana LABEL equality. This is the concrete source-label bridge
needed AFTER source color-adjoint and same-block conjugation.

S1V5.sourceBlockColorLabel encodes RealSpinBlock=(Fin8×Fin2),
A=(Fin3), with original sourceColorModeEquiv=finProdFinEquiv.
G1A.pairedLabelEquiv encodes original SpinIndex and ColorIndex2
through spinPairEquiv and colorModeEquiv=finProdFinEquiv. This
theorem identifies these literal index packings in the original
Fin24×Fin2 source space, without hypothesizing a new index map.

STAGED ONLY: neither L9C3 nor L9D1 is accepted at this writing,
and this module is not a strict-CI-accepted root. Original
48-dimensional Spin projection and physical spectral claims remain
distinct unproved obligations.
-/

set_option autoImplicit false
set_option maxHeartbeats 260000

namespace FCP.BFSSS1V52L9D0
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSS1V5
open FCP.BFSSSU2GaugeG1A

/-- The original 48-real source axis coordinate and the actual
BFSS paired Fock Majorana coordinate refer to the SAME index. -/
theorem originalSourceBlockColorLabel_eq_originalPairedLabel
    (α : RealSpinBlock) (A : Fin 3) :
    sourceBlockColorLabel α A =
      pairedLabelEquiv (spinPairEquiv.symm α, A) := by
  rcases α with ⟨j,s⟩
  simp [sourceBlockColorLabel, sourceBlockColorEquiv,
    pairedLabelEquiv, sourceColorModeEquiv, colorModeEquiv]

#print axioms originalSourceBlockColorLabel_eq_originalPairedLabel

end
end FCP.BFSSS1V52L9D0
