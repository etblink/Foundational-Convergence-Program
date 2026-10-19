import SU2BFSSG4JExactGaugeDataAssemblyProbe

/-!
BFSS SU(2) G4K — narrow ORIGINAL G4J GaugeData quarter-color consequence.

This file uses the actual pinned AlgebraData 2, exact original
pairedGaugeData SU(2) representation, normalized positive-i Pauli
color basis and native adjointCoefficient trace. It proves an EXACT
CONDITIONAL assertion for an arbitrary real source GaugeGroup 2
element g, assuming its actual underlying matrix equals the literal
positive-i z-quarter matrix diag(i,-i). This is a fact about the
ACTUAL source GaugeData, not a surrogate fermion/gauge representation.

The outstanding mathematical obligation is to discharge that visible
matrix hypothesis for the original L6G6X sourcePlusIGaugeCurve
(2:Fin3) ((pi/2)*sqrt 2), whose historical physical operator import
closure is expensive. This file deliberately does NOT import L6G6X,
S1G, Euler factorization, standalone manuscript Spin48, or any axiom.

STATUS: UNCOMPILED CANDIDATE until strict exact pinned Lean CI passes.
-/
set_option autoImplicit false
set_option maxHeartbeats 400000
set_option synthInstance.maxHeartbeats 170000

namespace FCP.BFSSSU2GaugeG4K
noncomputable section

open Matrix
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2GaugeG4E
open FCP.BFSSSU2GaugeG4H
open FCP.BFSSSU2GaugeG4J

/-- The actual positive-i Pauli-z source quarter MATRIX. This is
a matrix value, not a newly constructed gauge group element. -/
def originalZQuarterMatrix : ColorMatrix 2 :=
  !![Complex.I, 0; 0, -Complex.I]

/-- Fixed by the ORIGINAL σx,σy,σz Pauli order: two minus signs
and one plus, without substituting a different algebra basis. -/
theorem originalZQuarter_pauli_conjugates (A : Fin 3) :
    originalZQuarterMatrix * FCP.BFSSSU2.pauli A *
        originalZQuarterMatrix.conjTranspose =
      (if A = (2 : Fin 3)
        then FCP.BFSSSU2.pauli A else -FCP.BFSSSU2.pauli A) := by
  fin_cases A <;>
    ext i j <;> fin_cases i <;> fin_cases j <;>
    simp [originalZQuarterMatrix, FCP.BFSSSU2.pauli,
      Matrix.mul_apply, Matrix.conjTranspose_apply,
      Fin.sum_univ_two] <;> ring

theorem originalZQuarter_normalizedPauli_conjugates (A : Fin 3) :
    originalZQuarterMatrix * FCP.BFSSSU2.normalizedPauli A *
        originalZQuarterMatrix.conjTranspose =
      (if A = (2 : Fin 3) then FCP.BFSSSU2.normalizedPauli A
       else -FCP.BFSSSU2.normalizedPauli A) := by
  let k : ℂ := (FCP.BFSSSU2.pauliScale : ℂ)
  have h := originalZQuarter_pauli_conjugates A
  change originalZQuarterMatrix * (k • FCP.BFSSSU2.pauli A) *
      originalZQuarterMatrix.conjTranspose =
      (if A = (2 : Fin 3) then k • FCP.BFSSSU2.pauli A
       else -(k • FCP.BFSSSU2.pauli A))
  calc
    originalZQuarterMatrix * (k • FCP.BFSSSU2.pauli A) *
        originalZQuarterMatrix.conjTranspose =
      k • (originalZQuarterMatrix * FCP.BFSSSU2.pauli A *
        originalZQuarterMatrix.conjTranspose) := by
          simp only [Matrix.mul_smul, Matrix.smul_mul]
    _ = k • (if A = (2 : Fin 3) then FCP.BFSSSU2.pauli A
       else -FCP.BFSSSU2.pauli A) := by rw [h]
    _ = (if A = (2 : Fin 3) then k • FCP.BFSSSU2.pauli A
       else -(k • FCP.BFSSSU2.pauli A)) := by
         split_ifs <;> simp

/-- Original G3A trace coefficient, output B versus input A.
The only hypothesis is the actual source SU(2) element's matrix. -/
theorem original_paired_adjointCoefficient_of_quarter_matrix
    (g : GaugeGroup 2)
    (hg : (g : ColorMatrix 2) = originalZQuarterMatrix)
    (A B : ColorIndex 2) :
    pairedAlgebraData.adjointCoefficient g A B =
      if B = A then
        (if A = (2 : Fin 3) then (1 : ℝ) else -1)
      else 0 := by
  have hcolor (C : ColorIndex 2) :
      pairedAlgebraData.color C = FCP.BFSSSU2.normalizedPauli C := by
    rw [pairedAlgebraData_color,
      FCP.BFSSSU2Full.concreteAlgebraData_color]
  change (Matrix.trace (pairedAlgebraData.color B *
      ((g : ColorMatrix 2) * pairedAlgebraData.color A *
        (g : ColorMatrix 2).conjTranspose))).re = _
  rw [hg, hcolor A, hcolor B,
    originalZQuarter_normalizedPauli_conjugates A]
  have hpair (C D : Fin 3) :
      (Matrix.trace (FCP.BFSSSU2.normalizedPauli C *
        FCP.BFSSSU2.normalizedPauli D)).re =
        if C = D then (1 : ℝ) else 0 := by
    rw [FCP.BFSSSU2.normalizedPauli_trace_pair]
    split_ifs <;> norm_num
  by_cases hA : A = (2 : Fin 3)
  · rw [if_pos hA, hpair]
    simp [hA]
  · rw [if_neg hA, Matrix.mul_neg, Matrix.trace_neg,
      Complex.neg_re, hpair]
    by_cases hBA : B = A
    · simp [hA, hBA]
    · simp [hA, hBA]

/-- Source G3A color orthogonal representation, with output-row B,
input-column A; not a surrogate real 3x3 rotation. -/
theorem original_adjointColorMatrix_of_quarter_matrix
    (g : GaugeGroup 2)
    (hg : (g : ColorMatrix 2) = originalZQuarterMatrix)
    (B A : ColorIndex 2) :
    FCP.BFSSSU2GaugeG3A.adjointColorMatrix g B A =
      if B = A then
        (if A = (2 : Fin 3) then (1 : ℝ) else -1)
      else 0 :=
  original_paired_adjointCoefficient_of_quarter_matrix g hg A B

/-- The exact G4J source fermion GaugeData acts on each of the
16×3 true paired theta fields with the positive-i quarter sign.
This is CONDITIONAL on hg; the original L6G6X curve equality remains
to be kernel-proved separately. -/
theorem original_pairedGaugeData_fermion_quarter_of_matrix
    (g : GaugeGroup 2)
    (hg : (g : ColorMatrix 2) = originalZQuarterMatrix)
    (α : SpinIndex) (A : ColorIndex 2) (v : Fermion 2) :
    pairedGaugeData.fermion g (pairedAlgebraData.theta α A v) =
      (if A = (2 : Fin 3) then (1 : ℂ) else -1) •
        pairedAlgebraData.theta α A (pairedGaugeData.fermion g v) := by
  have h := pairedGaugeData.fermion_adjoint g α A v
  calc
    _ = ∑ B : ColorIndex 2,
          (pairedAlgebraData.adjointCoefficient g A B : ℂ) •
            pairedAlgebraData.theta α B (pairedGaugeData.fermion g v) := h
    _ = ∑ B : ColorIndex 2,
          (if B = A then
            (if A = (2 : Fin 3) then (1 : ℂ) else -1)
            else 0) •
            pairedAlgebraData.theta α B (pairedGaugeData.fermion g v) := by
          apply Finset.sum_congr rfl
          intro B _
          rw [original_paired_adjointCoefficient_of_quarter_matrix g hg A B]
          split_ifs <;> norm_num
    _ = _ := by simp

#print axioms originalZQuarterMatrix
#print axioms originalZQuarter_pauli_conjugates
#print axioms originalZQuarter_normalizedPauli_conjugates
#print axioms original_paired_adjointCoefficient_of_quarter_matrix
#print axioms original_adjointColorMatrix_of_quarter_matrix
#print axioms original_pairedGaugeData_fermion_quarter_of_matrix

end
end FCP.BFSSSU2GaugeG4K
