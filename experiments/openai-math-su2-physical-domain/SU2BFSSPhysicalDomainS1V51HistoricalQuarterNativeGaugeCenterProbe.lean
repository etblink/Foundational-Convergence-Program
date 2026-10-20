import SU2BFSSPhysicalDomainS1V50SixteenRotorCentralParityProbe

/-!
S1V51 — identify the historical actual +i source SU(2) quarter's
group square with the TRUE central -I_2 matrix in GaugeGroup 2.

This uses S1V23's separately qualified exact historical source-curve
equality with G4L's native source SU(2) element, and the LITERAL
original Pauli normalized quarter matrix diag(i,-i).
The central SU2 element is constructed in the actual GaugeGroup 2,
not an unverified independent abstract SU2 or quaternion model.

Together with S1V50 the true original center -I_2 has an identity
Spin(48) projection witness. No global continuous homomorphic lift,
center kernel classification, normalized lift sign or BFSS spectral
result follows from these one-point identities.
-/

set_option autoImplicit false
set_option maxHeartbeats 350000

namespace FCP.BFSSS1V51
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSS1V0

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic

/-- The exact G4K native historical +i z-quarter 2×2 source
matrix squared is the literal scalar central matrix -I₂. -/
theorem originalZQuarterMatrix_square_neg_one :
    FCP.BFSSSU2GaugeG4K.originalZQuarterMatrix *
      FCP.BFSSSU2GaugeG4K.originalZQuarterMatrix =
        (-1 : ColorMatrix 2) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [FCP.BFSSSU2GaugeG4K.originalZQuarterMatrix,
      Matrix.mul_apply, Fin.sum_univ_two, Complex.I_sq]

/-- The source G4L genuine SU2 quarter group's square has
literal underlying matrix -I₂, in the original ColorMatrix 2. -/
theorem actualQuarterGauge_square_matrix :
    ((FCP.BFSSSU2GaugeG4L.actualQuarterGauge *
        FCP.BFSSSU2GaugeG4L.actualQuarterGauge : GaugeGroup 2) :
          ColorMatrix 2) = (-1 : ColorMatrix 2) := by
  change FCP.BFSSSU2GaugeG4K.originalZQuarterMatrix *
    FCP.BFSSSU2GaugeG4K.originalZQuarterMatrix =
      (-1 : ColorMatrix 2)
  exact originalZQuarterMatrix_square_neg_one

/-- The true original gauge-group central matrix -I₂, with
special-unitary membership derived from the accepted genuine source
quarter element and its exact square, not postulated as a group axiom. -/
noncomputable def sourceCentralNegOneGauge : GaugeGroup 2 :=
  ⟨(-1 : ColorMatrix 2), by
    have hm :
        (((FCP.BFSSSU2GaugeG4L.actualQuarterGauge *
          FCP.BFSSSU2GaugeG4L.actualQuarterGauge : GaugeGroup 2) :
            ColorMatrix 2)) ∈
          Matrix.specialUnitaryGroup (Fin 2) ℂ :=
      (FCP.BFSSSU2GaugeG4L.actualQuarterGauge *
        FCP.BFSSSU2GaugeG4L.actualQuarterGauge).property
    rw [actualQuarterGauge_square_matrix] at hm
    exact hm⟩

/-- The native central -I₂ commutes with EVERY original SU2 group
element, using scalar -1 centrality in the noncommutative matrix ring. -/
theorem sourceCentralNegOneGauge_commutes (g : GaugeGroup 2) :
    sourceCentralNegOneGauge * g = g * sourceCentralNegOneGauge := by
  apply Subtype.ext
  change (-1 : ColorMatrix 2) * (g : ColorMatrix 2) =
    (g : ColorMatrix 2) * (-1 : ColorMatrix 2)
  simp only [neg_one_mul, mul_neg_one]

/-- EXACT source +i historical curve at its original parameter
has genuine SU2 group square -I₂, not merely an adjoint/SO48 identity. -/
theorem historicalSourceQuarter_square_eq_centralNegOne :
    (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
       (2 : Fin 3) FCP.BFSSSU2GaugeG4M.originalZQuarterTime) *
      (FCP.BFSSSU2PhysicalDomainL6G6X.sourcePlusIGaugeCurve
       (2 : Fin 3) FCP.BFSSSU2GaugeG4M.originalZQuarterTime) =
      sourceCentralNegOneGauge := by
  rw [FCP.BFSSS1V23.original_sourcePlusIGaugeCurve_quarter_eq_actualGauge]
  apply Subtype.ext
  exact actualQuarterGauge_square_matrix

/-- S1V50's genuine source historical-quarter-square identity
projection is now identified with the ACTUAL source center -I₂. -/
theorem sourceCentralNegOneGauge_coveredByActualSpinIdentity :
    FCP.BFSSS1V48.sourceSpin48CoversActualGauge
      sourceCentralNegOneGauge (1 : spinGroup Q) := by
  rw [← historicalSourceQuarter_square_eq_centralNegOne]
  exact FCP.BFSSS1V50.historicalQuarterSquare_coveredBySpinIdentity

#print axioms originalZQuarterMatrix_square_neg_one
#print axioms actualQuarterGauge_square_matrix
#print axioms sourceCentralNegOneGauge
#print axioms sourceCentralNegOneGauge_commutes
#print axioms historicalSourceQuarter_square_eq_centralNegOne
#print axioms sourceCentralNegOneGauge_coveredByActualSpinIdentity

end
end FCP.BFSSS1V51
