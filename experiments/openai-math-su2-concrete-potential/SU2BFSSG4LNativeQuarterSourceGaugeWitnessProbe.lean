import SU2BFSSG4KOriginalGaugeDataQuarterConditionalProbe

/-!
G4L: A concrete element of the actual native OAI GaugeGroup 2 with
underlying +i normalized z-quarter matrix, and its unconditional
consequences for the already-qualified original G4J GaugeData.

This closes G4K's *group-membership* matrix condition for a genuine
SU(2) source-group element. It does NOT prove that this element equals
the historically defined sourcePlusIGaugeCurve (2:Fin3)
((Real.pi / 2) * Real.sqrt 2). That final source-curve identification
requires importing L6G6X with its costly original physical closure
(or another separately qualified definitional-equivalence bridge).

No new group, replacement Hilbert model, inserted unproved axioms,
different Pauli normalization or alternative 48-Majorana indexing.
-/

set_option autoImplicit false
set_option maxHeartbeats 420000

namespace FCP.BFSSSU2GaugeG4L
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4J
open FCP.BFSSSU2GaugeG4K

/-- The native source quarter matrix has determinant exactly +1. -/
theorem originalZQuarterMatrix_det_one :
    Matrix.det originalZQuarterMatrix = 1 := by
  norm_num [originalZQuarterMatrix, Matrix.det_fin_two, Complex.I_sq]

/-- The native source quarter matrix is unitary; both matrix
orders are checked explicitly rather than assumed. -/
theorem originalZQuarterMatrix_unitary :
    originalZQuarterMatrix ∈ Matrix.unitaryGroup (Fin 2) ℂ := by
  change originalZQuarterMatrixᴴ * originalZQuarterMatrix = 1 ∧
    originalZQuarterMatrix * originalZQuarterMatrixᴴ = 1
  constructor <;>
    ext i j <;> fin_cases i <;> fin_cases j <;>
    simp [originalZQuarterMatrix, Matrix.mul_apply,
      Matrix.conjTranspose_apply, Fin.sum_univ_two,
      Complex.I_sq, Complex.conj_I] <;> ring

/-- Genuine source GaugeGroup 2 membership, independent of all
old L6G6 physical operator proof imports. -/
theorem originalZQuarterMatrix_specialUnitary :
    originalZQuarterMatrix ∈
      Matrix.specialUnitaryGroup (Fin 2) ℂ := by
  exact Matrix.mem_specialUnitaryGroup_iff.mpr
    ⟨originalZQuarterMatrix_unitary, originalZQuarterMatrix_det_one⟩

/-- A real element of the actual original SU(2) source gauge group.
NOT YET identified with historical L6G6X sourcePlusIGaugeCurve. -/
noncomputable def actualQuarterGauge : GaugeGroup 2 :=
  ⟨originalZQuarterMatrix, originalZQuarterMatrix_specialUnitary⟩

theorem actualQuarterGauge_coe :
    (actualQuarterGauge : ColorMatrix 2) = originalZQuarterMatrix := rfl

/-- The genuine G4J pairedAlgebraData.GaugeData has exact
negative signs on colors 0 and 1 and positive sign on color 2,
on all 48 source Majorana theta fields. -/
theorem actualQuarterGauge_fermion_theta_sign
    (α : SpinIndex) (A : ColorIndex 2) (v : Fermion 2) :
    pairedGaugeData.fermion actualQuarterGauge
        (pairedAlgebraData.theta α A v) =
      (if A = (2 : Fin 3) then (1 : ℂ) else -1) •
        pairedAlgebraData.theta α A
          (pairedGaugeData.fermion actualQuarterGauge v) := by
  exact original_pairedGaugeData_fermion_quarter_of_matrix
    actualQuarterGauge actualQuarterGauge_coe α A v

#print axioms originalZQuarterMatrix_det_one
#print axioms originalZQuarterMatrix_unitary
#print axioms originalZQuarterMatrix_specialUnitary
#print axioms actualQuarterGauge
#print axioms actualQuarterGauge_coe
#print axioms actualQuarterGauge_fermion_theta_sign

end
end FCP.BFSSSU2GaugeG4L
