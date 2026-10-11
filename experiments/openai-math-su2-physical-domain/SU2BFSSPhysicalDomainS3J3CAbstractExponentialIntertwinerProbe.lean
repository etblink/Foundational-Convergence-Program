import Mathlib
import Mathlib.Analysis.Normed.Algebra.Exponential

/-!
# S3J3C — bounded exponential intertwiner

A bounded complex-linear intertwiner B ∘ T = T ∘ A intertwines
the norm-convergent operator exponentials. No BFSS physics assumptions.
This is a prospective source theorem until a pinned Lean gate succeeds.
-/

namespace FCP.BFSSSU2PhysicalDomainS3J3C
noncomputable section

set_option maxHeartbeats 1600000
set_option synthInstance.maxHeartbeats 400000

variable {E F : Type*}
  [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]
  [NormedAddCommGroup F] [NormedSpace ℂ F] [CompleteSpace F]

/-- A rectangular continuous-linear intertwiner also intertwines
norm-convergent exponential power series. -/
theorem exp_intertwines_on_vector
    (A : E →L[ℂ] E) (B : F →L[ℂ] F)
    (T : E →L[ℂ] F)
    (h : ∀ v : E, B (T v) = T (A v)) (v : E) :
    (NormedSpace.exp B) (T v) = T ((NormedSpace.exp A) v) := by
  letI : NormedAlgebra ℚ (E →L[ℂ] E) :=
    NormedAlgebra.restrictScalars ℚ ℂ _
  letI : NormedAlgebra ℚ (F →L[ℂ] F) :=
    NormedAlgebra.restrictScalars ℚ ℂ _
  have hp (n : ℕ) : (B ^ n) (T v) = T ((A ^ n) v) := by
    induction n with
    | zero => simp
    | succ n ih =>
      calc
        (B ^ (n + 1)) (T v) = B ((B ^ n) (T v)) := by
          rw [pow_succ']
          rfl
        _ = B (T ((A ^ n) v)) := by rw [ih]
        _ = T (A ((A ^ n) v)) := h _
        _ = T ((A ^ (n + 1)) v) := by
          rw [pow_succ']
          rfl
  have ha := (ContinuousLinearMap.apply ℂ E v).hasSum
    (NormedSpace.exp_series_hasSum_exp' (𝕂 := ℂ) A)
  change HasSum
    (fun n : ℕ => (n.factorial⁻¹ : ℂ) • ((A ^ n) v))
    ((NormedSpace.exp A) v) at ha
  have hb := (ContinuousLinearMap.apply ℂ F (T v)).hasSum
    (NormedSpace.exp_series_hasSum_exp' (𝕂 := ℂ) B)
  change HasSum
    (fun n : ℕ => (n.factorial⁻¹ : ℂ) • ((B ^ n) (T v)))
    ((NormedSpace.exp B) (T v)) at hb
  have hta := T.hasSum ha
  change HasSum
    (fun n : ℕ => T ((n.factorial⁻¹ : ℂ) • ((A ^ n) v)))
    (T ((NormedSpace.exp A) v)) at hta
  have hta' : HasSum
      (fun n : ℕ => (n.factorial⁻¹ : ℂ) • ((B ^ n) (T v)))
      (T ((NormedSpace.exp A) v)) := by
    convert hta using 1
    funext n
    rw [hp n]
    exact (map_smul T (n.factorial⁻¹ : ℂ) ((A ^ n) v)).symm
  exact hb.unique hta'

#print axioms exp_intertwines_on_vector

end
end FCP.BFSSSU2PhysicalDomainS3J3C
