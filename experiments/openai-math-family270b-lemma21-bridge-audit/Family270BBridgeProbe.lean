import OAI.MathematicalPhysics.BFSS.DeformedCharge

namespace OAI
namespace BFSSQuantum.AlgebraData
noncomputable section
open Matrix Finset

variable {N : ℕ} (M : AlgebraData N)

/-- Convert the BFSS ordered spatial-pair subtype sum to an explicit i<j double sum. -/
lemma family270B_spatialPair_sum {W : Type*} [AddCommMonoid W]
    (F : SpaceIndex → SpaceIndex → W) :
    (∑ p : BFSSGamma.SpatialPair, F p.1.1 p.1.2) =
      ∑ i : SpaceIndex, ∑ j : SpaceIndex, if i < j then F i j else 0 := by
  rw [← Finset.sum_subtype
    (Finset.univ.filter (fun p : SpaceIndex × SpaceIndex => p.1 < p.2))
    (by intro p; simp)
    (fun p : SpaceIndex × SpaceIndex => F p.1 p.2)]
  simp only [Finset.sum_filter, Fintype.sum_prod_type]

/-- For a symmetric scalar kernel, the strict-upper-triangle sum is half the off-diagonal sum. -/
lemma family270B_sum_pairs_half (f : SpaceIndex → SpaceIndex → ℝ)
    (hs : ∀ i j, f i j = f j i) :
    (∑ i : SpaceIndex, ∑ j : SpaceIndex, if i < j then f i j else 0) =
      (1/2 : ℝ) * ∑ i : SpaceIndex, ∑ j : SpaceIndex, if i ≠ j then f i j else 0 := by
  have he :
      (∑ i : SpaceIndex, ∑ j : SpaceIndex, if i ≠ j then f i j else 0) =
        (∑ i : SpaceIndex, ∑ j : SpaceIndex, if i < j then f i j else 0) +
        (∑ i : SpaceIndex, ∑ j : SpaceIndex, if j < i then f i j else 0) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro i _
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro j _
    rcases lt_trichotomy i j with h | h | h
    · simp [h, ne_of_lt h, not_lt_of_ge h.le]
    · subst j
      simp
    · simp [h, ne_of_gt h, not_lt_of_ge h.le]
  have hr :
      (∑ i : SpaceIndex, ∑ j : SpaceIndex, if j < i then f i j else 0) =
        ∑ i : SpaceIndex, ∑ j : SpaceIndex, if i < j then f i j else 0 := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    rw [hs j i]
  rw [he, hr]
  ring

/-- The original ordered-pair gamma-two kernel is symmetric after multiplying by the skew color bracket. -/
lemma family270B_kernel_symmetric (x : Boson N) (A : ColorIndex N)
    (α β : SpinIndex) (i j : SpaceIndex) :
    M.coordinateBracketAll x i j A * M.gammaTwo i j α β =
      M.coordinateBracketAll x j i A * M.gammaTwo j i α β := by
  rw [M.coordinateBracketAll_skew x i j A]
  unfold AlgebraData.gammaTwo
  simp only [Matrix.smul_apply, Matrix.sub_apply, smul_eq_mul]
  ring

/-- On a strict spatial pair, the ordered gamma-two is exactly the pairGamma product. -/
lemma family270B_gammaTwo_eq_pairGamma (p : BFSSGamma.SpatialPair) :
    M.gammaTwo p.1.1 p.1.2 = BFSSGamma.pairGamma M.gamma p := by
  unfold AlgebraData.gammaTwo BFSSGamma.pairGamma
  rw [BFSSGamma.gamma_anti M.gamma M.gamma_clifford p.2.ne.symm]
  module

/--
Coefficient-level bridge between the h=1,m=0 deformed potential matrix
and the ordered-pair coefficient used in the original BFSS charge.
-/
lemma family270B_deformedPotentialMatrix_one_zero_coeff
    (x : Boson N) (A : ColorIndex N) (α β : SpinIndex) :
    M.deformedPotentialMatrix 1 0 x A β α =
      ∑ i : SpaceIndex, ∑ j : SpaceIndex,
        ((1/2 : ℝ) * M.coordinateBracketAll x i j A) * M.gammaTwo i j α β := by
  let f : SpaceIndex → SpaceIndex → ℝ :=
    fun i j => M.coordinateBracketAll x i j A * M.gammaTwo i j α β
  have hs : ∀ i j, f i j = f j i :=
    fun i j => M.family270B_kernel_symmetric x A α β i j
  have hdiag (i : SpaceIndex) : f i i = 0 := by
    simp [f, AlgebraData.gammaTwo]
  have hoff :
      (∑ i : SpaceIndex, ∑ j : SpaceIndex, if i ≠ j then f i j else 0) =
        ∑ i : SpaceIndex, ∑ j : SpaceIndex, f i j := by
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    by_cases hij : i = j
    · subst j
      simp [hdiag]
    · simp [hij]
  have hhalf :
      (∑ p : BFSSGamma.SpatialPair, f p.1.1 p.1.2) =
        (1/2 : ℝ) * ∑ i : SpaceIndex, ∑ j : SpaceIndex, f i j := by
    rw [M.family270B_spatialPair_sum f,
      M.family270B_sum_pairs_half f hs, hoff]
  have hpair (p : BFSSGamma.SpatialPair) :
      -(M.coordinateBracket x p A * (BFSSGamma.pairGamma M.gamma p) β α) =
        f p.1.1 p.1.2 := by
    have hsk := congrArg (fun K : GammaMatrix => K α β)
      (BFSSGamma.pairGamma_skew M.gamma M.gamma_clifford M.gamma_symmetric p)
    simp only [Matrix.transpose_apply, Matrix.neg_apply] at hsk
    rw [M.family270B_gammaTwo_eq_pairGamma p]
    simp only [f]
    rw [← hsk]
    rfl
  rw [deformedPotentialMatrix, BFSSGamma.bracketMassMatrix]
  simp only [one_smul, zero_smul, add_zero, Matrix.neg_apply, Matrix.sum_apply,
    Matrix.smul_apply, smul_eq_mul]
  simp_rw [hpair]
  rw [hhalf]
  simp only [f, ← Finset.mul_sum]
  ring

/--
Bridge probe for Family 270-B Lemma 2.1:
the undeformed (h=1,m=0) deformed potential multiplier coincides
with the bracket multiplier appearing in the original BFSS charge.
-/
lemma family270B_deformedPotentialMultiplier_one_zero_eq_bracketMultiplier
    (x : Boson N) (α : SpinIndex) :
    M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x := by
  apply ContinuousLinearMap.ext
  intro z
  ext q
  simp only [deformedPotentialMultiplier, cliffordLinear, _root_.sum_apply,
    IsSMulApply.smul_apply, Fintype.sum_prod_type, bracketMultiplier,
    ContinuousLinearMap.sum_apply]
  simp_rw [deformedPotentialCoefficients,
    M.family270B_deformedPotentialMatrix_one_zero_coeff]
  simp only [Complex.ofReal_sum, Complex.ofReal_mul, Finset.sum_smul, smul_smul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro A _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro β _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro j _
  simp only [coordinateBracketAll, Complex.ofReal_sum, Complex.ofReal_mul,
    Finset.sum_smul, smul_smul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro B _
  apply Finset.sum_congr rfl
  intro C _
  ring

/-- The undeformed deformed charge is the original BFSS charge. -/
lemma family270B_deformedCoreCharge_one_zero_eq_charge
    (α : SpinIndex) (f : SmoothCore N) :
    M.deformedCoreCharge 1 0 α f = M.charge α f := by
  ext x
  rw [M.deformedCoreCharge_apply, M.charge_kinetic_plus_bracket]
  rw [M.family270B_deformedPotentialMultiplier_one_zero_eq_bracketMultiplier]

end
end BFSSQuantum.AlgebraData
end OAI
