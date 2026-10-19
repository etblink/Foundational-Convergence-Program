import SU2BFSSPhysicalDomainS1SSourceSpin48TwoVectorRotorProbe
import SU2BFSSPhysicalDomainS1V1StandaloneSpin48AllVectorProbe

/-!
S1V3 — proposed ORIGINAL-SOURCE bridge, not independently qualified.

The standalone S1V1 gate already qualifies all-vector Spin48 conjugation
for the literally same Fin 24 × Fin 2 source label space and the exact
same normalized weighted-sum-squares quadratic expression as S1P0.

This small import bridge makes the precise additional claims explicit:
  1. source and standalone label types/quad forms are definitionally equal;
  2. the ORIGINAL source S1S rotor equals the standalone S1V1 Clifford
     word as an element of the common Clifford algebra;
  3. its action on all vectors follows by transport of S1V1's green theorem.

This is a research PROPOSAL until an S1P0/S1S-qualified import closure
compiles this literal file and reports all kernel axioms. The known
cross-PR cache failure MUST NOT be bypassed by an unqualified assumption.

No source SU2→Spin48 map, topology, independent Fock module, operator
equivalence or spectral theorem is claimed.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V3
noncomputable section

open FCP.BFSSSU2PhysicalDomainS1P0
open FCP.BFSSSU2PhysicalDomainS1S
open FCP.BFSSS1V0
open FCP.BFSSS1V1

private abbrev Q : QuadraticForm ℝ
    FCP.BFSSSU2PhysicalDomainS1P0.Source48Vector :=
  FCP.BFSSSU2PhysicalDomainS1P0.source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Both *original* and standalone spaces reduce to the same
(Fin 24 × Fin 2) → ℝ labels; no chosen isomorphism is introduced. -/
theorem original_source48Vector_eq_standalone :
    FCP.BFSSSU2PhysicalDomainS1P0.Source48Vector =
      FCP.BFSSS1V0.Source48Vector := rfl

/-- Both normalized source Clifford quadratic forms are the literal
same weightedSumSquares definition, not just abstractly isometric. -/
theorem original_source48Quadratic_eq_standalone :
    FCP.BFSSSU2PhysicalDomainS1P0.source48Quadratic =
      FCP.BFSSS1V0.source48Quadratic := rfl

/-- Identify the actual source S1S rotor with the standalone S1V1
Clifford word, with the SAME source unit hypotheses and signs. -/
theorem original_sourceSpinPair_coe_eq_standalone
    (a b : FCP.BFSSSU2PhysicalDomainS1P0.Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1) :
    (FCP.BFSSSU2PhysicalDomainS1S.sourceSpinPair a b ha hb : C) =
      (FCP.BFSSS1V1.sourceSpinPair a b ha hb : C) := by
  calc
    (FCP.BFSSSU2PhysicalDomainS1S.sourceSpinPair a b ha hb : C) =
      CliffordAlgebra.ι Q a * CliffordAlgebra.ι Q b := by
        exact FCP.BFSSSU2PhysicalDomainS1S.sourceSpinPair_coe a b ha hb
    _ = (FCP.BFSSS1V1.sourceSpinPair a b ha hb : C) := by
      exact (FCP.BFSSS1V1.sourceSpinPair_coe a b ha hb).symm

/-- The exact original-source S1S Spin element (not a newly postulated
unitary lift) conjugates EVERY original 48-real Majorana generator by
the explicitly specified source-identity two-plane half-turn. -/
theorem original_sourceSpinPair_conjugates_every_source_vector
    (a b v : FCP.BFSSSU2PhysicalDomainS1P0.Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    (FCP.BFSSSU2PhysicalDomainS1S.sourceSpinPair a b ha hb : C) *
      CliffordAlgebra.ι Q v *
      star (FCP.BFSSSU2PhysicalDomainS1S.sourceSpinPair a b ha hb : C) =
        CliffordAlgebra.ι Q (FCP.BFSSS1V1.sourcePlaneFlip a b v) := by
  rw [original_sourceSpinPair_coe_eq_standalone a b ha hb]
  exact FCP.BFSSS1V1.sourceSpinPair_conjugates_every_source_vector
    a b v ha hb hab

#print axioms original_source48Vector_eq_standalone
#print axioms original_source48Quadratic_eq_standalone
#print axioms original_sourceSpinPair_coe_eq_standalone
#print axioms original_sourceSpinPair_conjugates_every_source_vector

end
end FCP.BFSSS1V3
