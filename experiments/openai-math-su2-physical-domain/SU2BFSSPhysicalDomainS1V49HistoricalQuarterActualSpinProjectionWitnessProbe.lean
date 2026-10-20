import SU2BFSSPhysicalDomainS1V48OriginalGaugeSpin48ProjectionFiberProbe
import SU2BFSSPhysicalDomainS1V27HistoricalOriginalQuarterVsIndependentSpin48MatrixProbe

/-!
S1V49 — the genuine historically pinned positive-i SU(2) z-quarter
has an explicitly constructed TRUE spinGroup source48Quadratic witness
in the exact original Fin 24 × Fin 2 real-majorana source coordinates.

This joins the accepted S1V27 source matrix equality, S1V16 true
sixteen-rotor Clifford conjugation, S1V18 exact matrix action, and
S1V31/S1V48 actual Spin representation and projection predicate.

Strict scientific boundary: ONE historically pinned SU2 group point,
not a continuous global homomorphic lift, unique deck sign, SU2
fundamental-group calculation, manuscript module or spectral theorem.
-/

set_option autoImplicit false
set_option maxHeartbeats 350000

namespace FCP.BFSSS1V49
noncomputable section

open FCP.BFSSS1V0
open Matrix
open OAI.BFSSQuantum

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Genuine sixteen-factor source rotor acts on ALL original real
48-vectors exactly by S1V16's independently proved quarter flip;
this identifies S1V31's canonical Spin action with the literal
source Clifford algebra conjugation, not a convenient SO surrogate. -/
theorem historicalSixteenRotor_canonicalSourceAction
    (v : Source48Vector) :
    FCP.BFSSS1V31.sourceSpin48VectorAction
      FCP.BFSSS1V9.sourceSixteenColorRotor v =
      FCP.BFSSS1V16.source48QuarterFlip v := by
  apply FCP.BFSSS1V30.source48_cliffordGenerator_injective
  calc
    CliffordAlgebra.ι Q
        (FCP.BFSSS1V31.sourceSpin48VectorAction
          FCP.BFSSS1V9.sourceSixteenColorRotor v) =
      ConjAct.toConjAct
        (spinGroup.toUnits FCP.BFSSS1V9.sourceSixteenColorRotor) •
          CliffordAlgebra.ι Q v :=
      FCP.BFSSS1V31.sourceSpin48VectorAction_clifford_generator
        FCP.BFSSS1V9.sourceSixteenColorRotor v
    _ = (FCP.BFSSS1V9.sourceSixteenColorRotor : C) *
          CliffordAlgebra.ι Q v *
          star (FCP.BFSSS1V9.sourceSixteenColorRotor : C) := by
      rfl
    _ = CliffordAlgebra.ι Q
          (FCP.BFSSS1V16.source48QuarterFlip v) :=
      FCP.BFSSS1V16.sourceSixteenColorRotor_conjugates_every_source_vector v

/-- TRUE original normalized +i historical source SU(2) quarter is
covered under S1V48's exact original source projection predicate by
the independently constructed ordered sixteen-factor Spin(48) rotor. -/
theorem historicalSourceQuarter_coversByActualSixteenRotor :
    FCP.BFSSS1V48.sourceSpin48CoversActualGauge
      (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
        (2 : Fin 3) FCP.BFSSSU2GaugeG4M.originalZQuarterTime)
      FCP.BFSSS1V9.sourceSixteenColorRotor := by
  intro v
  calc
    FCP.BFSSS1V31.sourceSpin48VectorAction
        FCP.BFSSS1V9.sourceSixteenColorRotor v =
      FCP.BFSSS1V16.source48QuarterFlip v :=
      historicalSixteenRotor_canonicalSourceAction v
    _ = FCP.BFSSS1V18.source48QuarterDiagonalMatrix.mulVec v :=
      (FCP.BFSSS1V18.source48QuarterDiagonalMatrix_mulVec v).symm
    _ = (FCP.BFSSSU2PhysicalDomainS1J.sourceRealMajoranaMatrix
          (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
            (2 : Fin 3) FCP.BFSSSU2GaugeG4M.originalZQuarterTime)).mulVec v := by
      rw [FCP.BFSSS1V27.historical_source_quarter_48_matrix_eq_independent_spin_quarter]

/-- A genuine original-source Spin(48) lift FIBER is inhabited at this
single actual historical +i SU(2) z-quarter, with the explicit
ordered sixteen-factor witness. This does not extend pointwise to all g. -/
theorem historicalSourceQuarter_hasActualSpinWitness :
    ∃ s : spinGroup Q,
      FCP.BFSSS1V48.sourceSpin48CoversActualGauge
        (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
          (2 : Fin 3) FCP.BFSSSU2GaugeG4M.originalZQuarterTime) s := by
  exact ⟨FCP.BFSSS1V9.sourceSixteenColorRotor,
    historicalSourceQuarter_coversByActualSixteenRotor⟩

#print axioms historicalSixteenRotor_canonicalSourceAction
#print axioms historicalSourceQuarter_coversByActualSixteenRotor
#print axioms historicalSourceQuarter_hasActualSpinWitness

end
end FCP.BFSSS1V49
