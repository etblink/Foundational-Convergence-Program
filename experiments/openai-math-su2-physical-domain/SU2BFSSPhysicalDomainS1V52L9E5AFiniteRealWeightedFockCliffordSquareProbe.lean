import SU2BFSSPhysicalDomainS1V52L9E4OriginalFockRealLinearCliffordGeneratorMapProbe

/-!
S1V52L9E5A — STAGED, UNQUALIFIED abstract finite weighted-CAR
contraction in the ACTUAL original Fermion 2 operator algebra.

Target: prove the finite weighted sum of real-scaled elements squares
to the corresponding weighted quadratic scalar, using unit diagonal
squares and off-diagonal anticommutation. This first source-small lemma
is deliberately separate from exact 48-label/Pauli specialization in
a subsequent L9E5B gate.

NO compilation/axiom qualification is claimed by staging this file.
Source Q=Σv² and original source label normalization are not changed.
No assumptions are to be admitted in an original-source theorem;
this abstract helper exposes its hypotheses and a later concrete
specialization must discharge them using L9E2/L9E3.
-/

set_option autoImplicit false
set_option maxHeartbeats 400000

namespace FCP.BFSSS1V52L9E5A
noncomputable section
open OAI.BFSSQuantum

private abbrev FockOp := Fermion 2 →L[ℂ] Fermion 2

/-- Finite real-weighted CAR contraction, as a reusable operator
lemma. The parameters are explicit abstract hypotheses; none is
silently promoted into a claim about original BFSS source operators.
Those hypotheses must later be discharged with the original L9E3
pairwise normalized CAR, the L9E2 squares, and exact source labels. -/
theorem finiteRealWeightedFockClifford_square
    {ι : Type*} (s : Finset ι)
    (c : ι → ℝ) (γ : ι → FockOp)
    (hdiag : ∀ i, γ i * γ i = (1 : FockOp))
    (hanti : ∀ i j, i ≠ j →
      γ i * γ j + γ j * γ i = 0) :
    (∑ i ∈ s, c i • γ i) *
      (∑ i ∈ s, c i • γ i) =
    (∑ i ∈ s, c i * c i) • (1 : FockOp) := by
  classical
  let X : ι → FockOp := fun i => c i • γ i
  -- L9E5A Gate #1: REAL coefficient action on an original complex-
  -- linear Fock operator does not synthesize a direct
  -- IsScalarTower ℝ FockOp FockOp / SMulCommClass instance.
  -- Transport the actual real multiplication through the pinned
  -- Complex.coe_smul lemma; then use the existing qualified complex
  -- smul_mul_smul operator instance without changing any coefficient.
  have hreal_mul (a b : ℝ) (x y : FockOp) :
      (a • x) * (b • y) = (a * b) • (x * y) := by
    calc
      (a • x) * (b • y) =
          ((a : ℂ) • x) * ((b : ℂ) • y) := by
            simp only [Complex.coe_smul]
      _ = ((a : ℂ) * (b : ℂ)) • (x * y) := by
            rw [smul_mul_smul]
      _ = (a * b) • (x * y) := by
            rw [← Complex.ofReal_mul, Complex.coe_smul]
  have hdiagX (i : ι) :
      X i * X i = (c i * c i) • (1 : FockOp) := by
    change (c i • γ i) * (c i • γ i) =
      (c i * c i) • (1 : FockOp)
    rw [hreal_mul, hdiag i]
  have hcrossX (i j : ι) (hij : i ≠ j) :
      X i * X j + X j * X i = 0 := by
    change (c i • γ i) * (c j • γ j) +
      (c j • γ j) * (c i • γ i) = 0
    calc
      (c i • γ i) * (c j • γ j) +
          (c j • γ j) * (c i • γ i) =
        (c i * c j) • (γ i * γ j) +
          (c i * c j) • (γ j * γ i) := by
            rw [hreal_mul (c i) (c j) (γ i) (γ j),
              hreal_mul (c j) (c i) (γ j) (γ i),
              mul_comm (c j) (c i)]
      _ = (c i * c j) • (γ i * γ j + γ j * γ i) :=
        (smul_add (c i * c j) (γ i * γ j) (γ j * γ i)).symm
      _ = 0 := by rw [hanti i j hij, smul_zero]
  have hsum (t : Finset ι) :
      (∑ i ∈ t, X i) * (∑ i ∈ t, X i) =
        (∑ i ∈ t, c i * c i) • (1 : FockOp) := by
    induction t using Finset.induction_on with
    | empty =>
        simp only [Finset.sum_empty, zero_mul]
        exact (zero_smul ℝ (1 : FockOp)).symm
    | @insert i t hi ih =>
        have hcrossSum :
            X i * (∑ j ∈ t, X j) +
              (∑ j ∈ t, X j) * X i = 0 := by
          rw [Finset.mul_sum, Finset.sum_mul,
            ← Finset.sum_add_distrib]
          apply Finset.sum_eq_zero
          intro j hj
          have hij : i ≠ j := by
            intro heq
            subst j
            exact hi hj
          exact hcrossX i j hij
        simp only [Finset.sum_insert hi]
        calc
          (X i + ∑ j ∈ t, X j) *
              (X i + ∑ j ∈ t, X j) =
            X i * X i +
              (∑ j ∈ t, X j) * (∑ j ∈ t, X j) +
              (X i * (∑ j ∈ t, X j) +
                (∑ j ∈ t, X j) * X i) := by
                  noncomm_ring
          _ = (c i * c i) • (1 : FockOp) +
                (∑ j ∈ t, c j * c j) • (1 : FockOp) := by
                  rw [hcrossSum, add_zero, hdiagX i, ih]
          _ = (c i * c i + ∑ j ∈ t, c j * c j) •
                (1 : FockOp) :=
                  (add_smul (c i * c i)
                    (∑ j ∈ t, c j * c j) (1 : FockOp)).symm
  simpa only [X] using hsum s

#print axioms finiteRealWeightedFockClifford_square

end
end FCP.BFSSS1V52L9E5A
