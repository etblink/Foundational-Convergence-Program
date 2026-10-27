import SU2BFSSPhysicalDomainS1V52K1D2E1OriginalPBWBasisAbsentCoordinateContractionProbe
import SU2BFSSPhysicalDomainS1V52K1D2E2OriginalPBWLeastCoordinateHeadProbe

/-!
K1D2E3 — actual F20B finite-subset exterior PBW basis derivative
for a LEAST label j in the true original 48-label index I.

The exact original source exterior contraction satisfies
  d_j ⌋ B I = B (I.erase j)
when j is the least original PBW label of I; it vanishes when j
is absent (strictly qualified earlier in K1D2E1).

E1 and E2 provide exactly the original source ordering, no model
substitution. This is the nonzero (+1) column of the true basis
contraction matrix; the arbitrary finite-support scalar-kernel
result remains a SEPARATE UNPROVED theorem.

STAGED, DO NOT COUNT until K1D2E2 qualified and this module passes
the strict pinned Lean/axiom gate.
-/

set_option autoImplicit false
set_option maxHeartbeats 400000

namespace FCP.BFSSS1V52K1D2E3
noncomputable section
open FCP.BFSSS1V0
open FCP.BFSSS1V52K1D2A

private abbrev E := ExteriorAlgebra ℝ Source48Vector
private abbrev Q0 : QuadraticForm ℝ Source48Vector := 0

local instance : LinearOrder Source48Label := by
  classical
  exact linearOrderOfSTO WellOrderingRel
local instance : LE Source48Label :=
  (instDistribLatticeOfLinearOrder (α := Source48Label)).toSemilatticeInf.toLE

/-- Exact genuine finite-subset PBW basis contraction at its LEAST
original source label is the PBW basis of its erased index,
with coefficient precisely +1 and no sign convention guess. -/
theorem originalSourceExteriorPBWBasis_contraction_erase_of_least
    (I : Finset Source48Label) (j : Source48Label)
    (hj : j ∈ I) (hmin : ∀ k ∈ I, j ≤ k) :
    CliffordAlgebra.contractLeft (Q := Q0)
      (LinearMap.proj j : Module.Dual ℝ Source48Vector)
      (FCP.BFSSS1V52K1D2C.originalSourceExteriorPBWBasis I) =
        FCP.BFSSS1V52K1D2C.originalSourceExteriorPBWBasis (I.erase j) := by
  classical
  have htail :
      j ∉ FCP.BFSSS1V52K1D2C.originalSourceExteriorPBWOrderedLabels (I.erase j) := by
    intro h
    exact (Finset.not_mem_erase j I)
      (FCP.BFSSS1V52K1D2E1.originalSourcePBWOrderedLabels_mem_finset
        (I.erase j) j h)
  rw [FCP.BFSSS1V52K1D2C.originalSourceExteriorPBWBasis_eq_originalCoordinateWord]
  rw [FCP.BFSSS1V52K1D2E2.originalSourcePBWOrderedLabels_cons_of_least
    I j hj hmin]
  rw [originalExteriorCoordinateWord_leading_contraction j _ htail]
  exact (FCP.BFSSS1V52K1D2C.originalSourceExteriorPBWBasis_eq_originalCoordinateWord
    (I.erase j)).symm

#print axioms originalSourceExteriorPBWBasis_contraction_erase_of_least

end
end FCP.BFSSS1V52K1D2E3
