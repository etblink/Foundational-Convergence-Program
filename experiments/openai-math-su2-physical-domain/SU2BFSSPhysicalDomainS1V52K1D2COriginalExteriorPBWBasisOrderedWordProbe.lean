import SU2BFSSPhysicalDomainS1V52K1D2AOriginalExteriorCoordinateWordContractionProbe
import SU2BFSSPhysicalDomainS1V52L9E5F20BOriginalSource48CliffordPBWBasisFiniteDimensionalProbe
import Mathlib.Data.Finset.Sort

/-!
K1D2C — identify the exact accepted ORIGINAL F20B exterior basis
with a finite ordered word of literal source Majorana coordinate labels.

The chosen order is the SAME noncomputable
  linearOrderOfSTO WellOrderingRel
used in the accepted original F20B Clifford PBW basis, not a guessed
color-major lexicographic order or a new spinor flattening.

This theorem is the missing bridge from accepted K1D2A exterior
coordinate-word derivative lemmas to F20B's indexed Finset basis.
It does NOT yet prove full coefficient isolation or scalar kernel.
STAGED pending strict original Lean proof/axiom gate.
-/

set_option autoImplicit false
set_option maxHeartbeats 350000

namespace FCP.BFSSS1V52K1D2C
noncomputable section
open FCP.BFSSS1V0
open FCP.BFSSS1V52K1D2A

private abbrev E := ExteriorAlgebra ℝ Source48Vector

/-- The EXACT exterior basis on the original 48-label space used
before the genuine F20B Clifford/exterior real-linear equivalence. -/
noncomputable def originalSourceExteriorPBWBasis :
    Module.Basis (Finset Source48Label) ℝ E := by
  classical
  letI : LinearOrder Source48Label := linearOrderOfSTO WellOrderingRel
  exact (Pi.basisFun ℝ Source48Label).ExteriorAlgebra

/-- Finite labels sorted using the exact original F20B local well-order. -/
noncomputable def originalSourceExteriorPBWOrderedLabels
    (I : Finset Source48Label) : List Source48Label := by
  classical
  letI : LinearOrder Source48Label := linearOrderOfSTO WellOrderingRel
  exact I.sort (· ≤ ·)

/-- Exact F20B exterior PBW monomial equals its ordered original
source Majorana coordinate exterior word. -/
theorem originalSourceExteriorPBWBasis_eq_originalCoordinateWord
    (I : Finset Source48Label) :
    originalSourceExteriorPBWBasis I =
      originalExteriorCoordinateWord (originalSourceExteriorPBWOrderedLabels I) := by
  classical
  letI : LinearOrder Source48Label := linearOrderOfSTO WellOrderingRel
  change (Pi.basisFun ℝ Source48Label).ExteriorAlgebra I =
    originalExteriorCoordinateWord (I.sort (· ≤ ·))
  rw [ExteriorAlgebra.basis_apply]
  unfold ExteriorAlgebra.ιMulti_family
  rw [ExteriorAlgebra.ιMulti_apply]
  simp only [originalExteriorCoordinateWord, Pi.basisFun_apply,
    Set.powersetCard.prodEquiv_symm_apply,
    Set.powersetCard.ofFinEmbEquiv_symm_apply]
  rw [List.ofFn_eq_map]
  rw [← Finset.listMap_orderEmbOfFin_finRange I rfl]
  simp only [List.map_map]

/-- Ordered original PBW basis label words have no repetitions. -/
theorem originalSourceExteriorPBWOrderedLabels_nodup
    (I : Finset Source48Label) :
    (originalSourceExteriorPBWOrderedLabels I).Nodup := by
  classical
  letI : LinearOrder Source48Label := linearOrderOfSTO WellOrderingRel
  change (I.sort (· ≤ ·)).Nodup
  exact Finset.sort_nodup I (· ≤ ·)

#print axioms originalSourceExteriorPBWBasis_eq_originalCoordinateWord
#print axioms originalSourceExteriorPBWOrderedLabels_nodup

end
end FCP.BFSSS1V52K1D2C
