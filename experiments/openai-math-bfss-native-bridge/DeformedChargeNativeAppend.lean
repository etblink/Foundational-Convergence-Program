/-!
  Candidate **native append** to the pinned OpenAI BFSS DeformedCharge module.
  Tested only in an ephemeral CI checkout of openai/math; this FCP file
  deliberately has no standalone import. Stage 0 preserves the compiled
  proof decomposition as a reproducible refactor baseline, not yet an
  upstream-quality size reduction.
-/

namespace OAI
namespace BFSSQuantum.AlgebraData
noncomputable section
open Matrix Finset
variable {N : ℕ} (M : AlgebraData N)

/-- Convert the BFSS strict spatial-pair subtype sum to an explicit i<j double sum. -/
lemma undeformed_spatialPair_sum {W : Type*} [AddCommMonoid W]
    (F : SpaceIndex → SpaceIndex → W) :
    (∑ p : BFSSGamma.SpatialPair, F p.1.1 p.1.2) =
      ∑ i : SpaceIndex, ∑ j : SpaceIndex, if i < j then F i j else 0 := by
  rw [← Finset.sum_subtype
    (Finset.univ.filter (fun p : SpaceIndex × SpaceIndex => p.1 < p.2))
    (by intro p; simp)
    (fun p : SpaceIndex × SpaceIndex => F p.1 p.2)]
  simp only [Finset.sum_filter, Fintype.sum_prod_type]

/-- For a symmetric scalar kernel, the strict-upper-triangle sum is half the off-diagonal sum. -/
lemma undeformed_sum_pairs_half (f : SpaceIndex → SpaceIndex → ℝ)
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

/-- The color-bracket/gamma-two scalar kernel is symmetric in its spatial indices. -/
lemma undeformed_kernel_symmetric (x : Boson N) (A : ColorIndex N)
    (α β : SpinIndex) (i j : SpaceIndex) :
    M.coordinateBracketAll x i j A * M.gammaTwo i j α β =
      M.coordinateBracketAll x j i A * M.gammaTwo j i α β := by
  rw [M.coordinateBracketAll_skew x i j A]
  unfold AlgebraData.gammaTwo
  simp only [Matrix.smul_apply, Matrix.sub_apply, smul_eq_mul]
  ring

/-- On a strict spatial pair, gammaTwo is the pairGamma product. -/
lemma undeformed_gammaTwo_eq_pairGamma (p : BFSSGamma.SpatialPair) :
    M.gammaTwo p.1.1 p.1.2 = BFSSGamma.pairGamma M.gamma p := by
  unfold AlgebraData.gammaTwo BFSSGamma.pairGamma
  rw [BFSSGamma.gamma_anti M.gamma M.gamma_clifford p.2.ne.symm]
  module

/--
The h=1,m=0 deformed potential matrix is exactly the ordered-pair
coefficient used in the original BFSS bracket multiplier.
-/
lemma undeformed_deformedPotentialMatrix_one_zero_coeff
    (x : Boson N) (A : ColorIndex N) (α β : SpinIndex) :
    M.deformedPotentialMatrix 1 0 x A β α =
      ∑ i : SpaceIndex, ∑ j : SpaceIndex,
        ((1/2 : ℝ) * M.coordinateBracketAll x i j A) * M.gammaTwo i j α β := by
  let f : SpaceIndex → SpaceIndex → ℝ :=
    fun i j => M.coordinateBracketAll x i j A * M.gammaTwo i j α β
  have hs : ∀ i j, f i j = f j i :=
    fun i j => M.undeformed_kernel_symmetric x A α β i j
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
    rw [undeformed_spatialPair_sum f,
      undeformed_sum_pairs_half f hs, hoff]
  have hpair (p : BFSSGamma.SpatialPair) :
      -(M.coordinateBracket x p A * (BFSSGamma.pairGamma M.gamma p) β α) =
        f p.1.1 p.1.2 := by
    have hsk := congrArg (fun K : GammaMatrix => K α β)
      (BFSSGamma.pairGamma_skew M.gamma M.gamma_clifford M.gamma_symmetric p)
    simp only [Matrix.transpose_apply, Matrix.neg_apply] at hsk
    change -(M.coordinateBracketAll x p.1.1 p.1.2 A *
        (BFSSGamma.pairGamma M.gamma p) β α) =
      M.coordinateBracketAll x p.1.1 p.1.2 A * M.gammaTwo p.1.1 p.1.2 α β
    rw [M.undeformed_gammaTwo_eq_pairGamma p, hsk]
    ring
  rw [deformedPotentialMatrix, BFSSGamma.bracketMassMatrix]
  simp only [neg_smul, one_smul, zero_smul, add_zero, Matrix.neg_apply,
    Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul]
  rw [← Finset.sum_neg_distrib]
  simp_rw [hpair]
  rw [hhalf]
  simp only [f]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Reorder the six finite sums of the original bracket multiplier. -/
lemma undeformed_sum_reorder {E : Type*} [AddCommMonoid E]
    (T : SpaceIndex → SpaceIndex → ColorIndex N → ColorIndex N → ColorIndex N →
      SpinIndex → E) :
    (∑ i, ∑ j, ∑ A, ∑ B, ∑ C, ∑ β, T i j A B C β) =
      ∑ β, ∑ A, ∑ i, ∑ j, ∑ B, ∑ C, T i j A B C β := by
  calc (∑ i, ∑ j, ∑ A, ∑ B, ∑ C, ∑ β, T i j A B C β)
      = ∑ i, ∑ j, ∑ A, ∑ B, ∑ β, ∑ C, T i j A B C β :=
        Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ =>
          Finset.sum_congr rfl fun A _ => Finset.sum_congr rfl fun B _ => Finset.sum_comm
    _ = ∑ i, ∑ j, ∑ A, ∑ β, ∑ B, ∑ C, T i j A B C β :=
        Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ =>
          Finset.sum_congr rfl fun A _ => Finset.sum_comm
    _ = ∑ i, ∑ j, ∑ β, ∑ A, ∑ B, ∑ C, T i j A B C β :=
        Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => Finset.sum_comm
    _ = ∑ i, ∑ β, ∑ j, ∑ A, ∑ B, ∑ C, T i j A B C β :=
        Finset.sum_congr rfl fun i _ => Finset.sum_comm
    _ = ∑ β, ∑ i, ∑ j, ∑ A, ∑ B, ∑ C, T i j A B C β := Finset.sum_comm
    _ = ∑ β, ∑ i, ∑ A, ∑ j, ∑ B, ∑ C, T i j A B C β :=
        Finset.sum_congr rfl fun β _ => Finset.sum_congr rfl fun i _ => Finset.sum_comm
    _ = ∑ β, ∑ A, ∑ i, ∑ j, ∑ B, ∑ C, T i j A B C β :=
        Finset.sum_congr rfl fun β _ => Finset.sum_comm

/--
Expand the (h=1,m=0) potential coefficient into exactly the scalar
coefficient convention of the original BFSS charge. This is isolated
from continuous-linear-map equality for a bounded compiler checkpoint.
-/
lemma undeformed_undeformed_coefficient
    (x : Boson N) (α β : SpinIndex) (A : ColorIndex N) :
    ((M.deformedPotentialCoefficients 1 0 x α (β, A) : ℝ) : ℂ) =
      ∑ i : SpaceIndex, ∑ j : SpaceIndex, ∑ B : ColorIndex N, ∑ C : ColorIndex N,
        (((1 / 2 : ℝ) * M.structureConstant A B C * M.gammaTwo i j α β : ℝ) : ℂ) *
          (x (i, B) : ℂ) * (x (j, C) : ℂ) := by
  change ((M.deformedPotentialMatrix 1 0 x A β α : ℝ) : ℂ) = _
  rw [M.undeformed_deformedPotentialMatrix_one_zero_coeff]
  simp only [coordinateBracketAll, Finset.mul_sum, Finset.sum_mul, Complex.ofReal_sum,
    Complex.ofReal_mul]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ =>
    Finset.sum_congr rfl fun B _ => Finset.sum_congr rfl fun C _ => ?_
  ring

/--
The pinned undeformed deformed-potential multiplier agrees with the
original BFSS bracket multiplier. Reuse the compiled scalar coefficient
identity so Lean never unfolds gamma and structure-constant algebra here.
-/
lemma deformedPotentialMultiplier_one_zero_eq_bracketMultiplier
    (x : Boson N) (α : SpinIndex) :
    M.deformedPotentialMultiplier 1 0 x α = M.bracketMultiplier α x := by
  let T : SpaceIndex → SpaceIndex → ColorIndex N → ColorIndex N →
      ColorIndex N → SpinIndex → (Fermion N →L[ℂ] Fermion N) :=
    fun i j A B C β =>
      (((((1 / 2 : ℝ) * M.structureConstant A B C *
          M.gammaTwo i j α β : ℝ) : ℂ) *
        (x (i, B) : ℂ) * (x (j, C) : ℂ))) • M.theta β A
  calc
    M.deformedPotentialMultiplier 1 0 x α =
        ∑ β : SpinIndex, ∑ A : ColorIndex N,
          ((M.deformedPotentialCoefficients 1 0 x α (β, A) : ℝ) : ℂ) •
            M.theta β A := by
      change (∑ p : FermionIndex N,
        ((M.deformedPotentialCoefficients 1 0 x α p : ℝ) : ℂ) •
          M.theta p.1 p.2) = _
      rw [Fintype.sum_prod_type]
    _ = ∑ β : SpinIndex, ∑ A : ColorIndex N,
          (∑ i : SpaceIndex, ∑ j : SpaceIndex,
            ∑ B : ColorIndex N, ∑ C : ColorIndex N,
              (((1 / 2 : ℝ) * M.structureConstant A B C *
                M.gammaTwo i j α β : ℝ) : ℂ) *
                (x (i, B) : ℂ) * (x (j, C) : ℂ)) •
            M.theta β A := by
      apply Finset.sum_congr rfl
      intro β _
      apply Finset.sum_congr rfl
      intro A _
      rw [M.undeformed_undeformed_coefficient x α β A]
    _ = ∑ β : SpinIndex, ∑ A : ColorIndex N,
          ∑ i : SpaceIndex, ∑ j : SpaceIndex,
            ∑ B : ColorIndex N, ∑ C : ColorIndex N,
              T i j A B C β := by
      apply Finset.sum_congr rfl
      intro β _
      apply Finset.sum_congr rfl
      intro A _
      simp only [T, ← Finset.sum_smul]
    _ = M.bracketMultiplier α x := by
      change (∑ β : SpinIndex, ∑ A : ColorIndex N,
        ∑ i : SpaceIndex, ∑ j : SpaceIndex,
          ∑ B : ColorIndex N, ∑ C : ColorIndex N,
            T i j A B C β) =
        (∑ i : SpaceIndex, ∑ j : SpaceIndex,
          ∑ A : ColorIndex N, ∑ B : ColorIndex N,
            ∑ C : ColorIndex N, ∑ β : SpinIndex,
              T i j A B C β)
      exact (undeformed_sum_reorder T).symm

/--
The undeformed deformed-core supercharge agrees with the original BFSS
supercharge on the common smooth core. The kinetic terms agree directly;
the potential terms agree by the compiled multiplier bridge.
-/
lemma deformedCoreCharge_one_zero_eq_charge
    (α : SpinIndex) (f : SmoothCore N) :
    M.deformedCoreCharge 1 0 α f = M.charge α f := by
  ext x
  rw [M.deformedCoreCharge_apply, M.charge_kinetic_plus_bracket,
    M.deformedPotentialMultiplier_one_zero_eq_bracketMultiplier]

/--
The original BFSS core form inherits the general undeformed averaged
energy identity: kinetic energy + bosonic potential + fermionic field.
This is conditional on the upstream abstract AlgebraData N assumptions
and does not instantiate the concrete relative SU(2) model.
-/
lemma coreForm_eq_averaged_undeformed (f : SmoothCore N) :
    M.coreForm f =
      (1/2 : ℝ) * ∑ p : SpaceIndex × ColorIndex N,
        ‖coreToL2 (coordinateDerivative p.1 p.2 f)‖^2 +
      ∫ x : Boson N, (M.deformedBosonicPotential 1 0 x * ‖f x‖^2 +
        inner ℝ (f x) (M.deformedFermionField 1 0 x (f x))) := by
  have h := M.averaged_core_energy 1 0 f
  simpa only [coreForm, M.deformedCoreCharge_one_zero_eq_charge] using h


#print axioms deformedPotentialMultiplier_one_zero_eq_bracketMultiplier
#print axioms deformedCoreCharge_one_zero_eq_charge
#print axioms coreForm_eq_averaged_undeformed

end
end BFSSQuantum.AlgebraData
end OAI
