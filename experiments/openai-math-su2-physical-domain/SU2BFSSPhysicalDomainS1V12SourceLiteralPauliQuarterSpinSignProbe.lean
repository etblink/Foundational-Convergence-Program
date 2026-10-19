import SU2BFSSPhysicalDomainS1V8ConcreteSource48SixteenSpinRotorsProbe
import Mathlib.Data.Complex.Basic

/-!
BFSS S1V12 — source-literal Pauli quarter-turn versus concrete Spin48
color-plane rotor.

Source primary evidence (pinned accepted research HEAD, NOT imported):
 * SU2ColorCrossProbe: pauli 0 = [0,1;1,0],
                         pauli 1 = [0,-I;I,0],
                         pauli 2 = [1,0;0,-1].
 * S1G source_quarter_z_matrix: sourceZ sourceQuarterTurnTime =
                         [I,0;0,-I].
 * sourceQuarterTurnTime=(pi/2)*sqrt 2, positive-i Pauli normalization.

This stand-alone pin tests exactly these matrices on the original-sized
real Clifford labels. It does NOT identify its local quarter matrix
with the original G1G sourceZ group term by a typed Lean theorem:
that heavy original-import bridge remains OPEN.
-/
set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V12
noncomputable section

open Matrix
open FCP.BFSSS1V0
open FCP.BFSSS1V5
open FCP.BFSSS1V8

private abbrev C₂ := Matrix (Fin 2) (Fin 2) ℂ
private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev C := CliffordAlgebra Q

/-- Exact pinned original +i SU2 z-quarter matrix, given literally.
This is NOT an independently chosen SU2 normalization. -/
def sourceQuarterZLiteral : C₂ :=
  !![Complex.I, 0; 0, -Complex.I]

/-- Exact three source Pauli matrices in the canonical color order.
The normalization is inserted separately as a common real scalar. -/
def sourcePauliLiteral : Fin 3 → C₂
  | 0 => !![0, 1; 1, 0]
  | 1 => !![0, -Complex.I; Complex.I, 0]
  | 2 => !![1, 0; 0, -1]

/-- The actual normalized source color Clifford basis coefficient:
the same source (sqrt 2)/2 normalization as SU2ColorCrossProbe. -/
noncomputable def sourceNormalizedPauliLiteral (A : Fin 3) : C₂ :=
  ((Real.sqrt 2 / 2 : ℝ) : ℂ) • sourcePauliLiteral A

theorem sourceQuarterZLiteral_mul_conjTranspose :
    sourceQuarterZLiteral * sourceQuarterZLiteral.conjTranspose = 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [sourceQuarterZLiteral, Matrix.mul_apply,
      Matrix.conjTranspose_apply, Fin.sum_univ_two] <;> ring

/-- The exact +i source SU2 z-quarter conjugation flips Pauli color
0 and 1 but fixes color 2, with NO sign convention inserted. -/
theorem sourceQuarterZLiteral_conjugates_Pauli (A : Fin 3) :
    sourceQuarterZLiteral * sourcePauliLiteral A *
        sourceQuarterZLiteral.conjTranspose =
      (if A = (2 : Fin 3) then sourcePauliLiteral A
       else -sourcePauliLiteral A) := by
  fin_cases A <;>
    ext i j <;> fin_cases i <;> fin_cases j <;>
    simp [sourceQuarterZLiteral, sourcePauliLiteral,
      Matrix.mul_apply, Matrix.conjTranspose_apply,
      Fin.sum_univ_two] <;> ring

/-- The pinned source's common 1/sqrt(2) normalization does not
change that precise color-conjugation sign. -/
theorem sourceQuarterZLiteral_conjugates_normalized (A : Fin 3) :
    sourceQuarterZLiteral * sourceNormalizedPauliLiteral A *
        sourceQuarterZLiteral.conjTranspose =
      (if A = (2 : Fin 3) then sourceNormalizedPauliLiteral A
       else -sourceNormalizedPauliLiteral A) := by
  let k : ℂ := ((Real.sqrt 2 / 2 : ℝ) : ℂ)
  have h := sourceQuarterZLiteral_conjugates_Pauli A
  change sourceQuarterZLiteral * (k • sourcePauliLiteral A) *
      sourceQuarterZLiteral.conjTranspose =
      (if A = (2 : Fin 3) then k • sourcePauliLiteral A
       else -(k • sourcePauliLiteral A))
  calc
    sourceQuarterZLiteral * (k • sourcePauliLiteral A) *
        sourceQuarterZLiteral.conjTranspose =
      k • (sourceQuarterZLiteral * sourcePauliLiteral A *
        sourceQuarterZLiteral.conjTranspose) := by
          simp only [Matrix.mul_smul, Matrix.smul_mul]
    _ = k • (if A = (2 : Fin 3) then sourcePauliLiteral A
       else -sourcePauliLiteral A) := by rw [h]
    _ = (if A = (2 : Fin 3) then k • sourcePauliLiteral A
       else -(k • sourcePauliLiteral A)) := by
         split_ifs <;> simp

/-- The concrete source-sized Spin48 color-plane rotor produces the
SAME 0,1,2 color reflection as the original Pauli z-quarter. -/
theorem sourceColorPlaneRotor_matches_quarter_sign
    (α : RealSpinBlock) (A : Fin 3) :
    (sourceColorPlaneRotor α : C) *
      CliffordAlgebra.ι Q (sourceBlockColorAxis α A) *
      star (sourceColorPlaneRotor α : C) =
      (if A = (2 : Fin 3)
        then CliffordAlgebra.ι Q (sourceBlockColorAxis α A)
        else -CliffordAlgebra.ι Q (sourceBlockColorAxis α A)) := by
  fin_cases A
  · simpa using sourceColorPlaneRotor_conjugates_zero α
  · simpa using sourceColorPlaneRotor_conjugates_one α
  · simpa using sourceColorPlaneRotor_conjugates_two α

#print axioms sourceQuarterZLiteral
#print axioms sourcePauliLiteral
#print axioms sourceNormalizedPauliLiteral
#print axioms sourceQuarterZLiteral_mul_conjTranspose
#print axioms sourceQuarterZLiteral_conjugates_Pauli
#print axioms sourceQuarterZLiteral_conjugates_normalized
#print axioms sourceColorPlaneRotor_matches_quarter_sign

end
end FCP.BFSSS1V12
