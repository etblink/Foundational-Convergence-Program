import SU2BFSSPhysicalDomainS4B5OriginalMasslessCoefficientPolynomialProbe

/-!
S4B6: source-original massless potential MULTIPLIER polynomial in the
actual Fermion N →L[ℂ] Fermion N type, beyond the accepted S4B5
real scalar coefficient identity. The Clifford linear finite sum here is
the literal AlgebraData.cliffordLinear, not a surrogate spinor/Fock model.

The theorem stops before real restriction of scalars, fderiv, B(x),
global Spin9 physical Hilbert domain, or spectral claims. Strict gate
must independently qualify the original imported G4K9C ancestry,
accepted S4B3/B4/B5 Lean roots, and three candidate axiom reports.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainS4B6
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

/-- Real coefficient addition is preserved exactly by the actual
original Clifford operator finite sum. -/
theorem sourceCliffordLinear_add
    {N : ℕ} (M : AlgebraData N)
    (a b : FermionIndex N → ℝ) :
    M.cliffordLinear (a + b) = M.cliffordLinear a + M.cliffordLinear b := by
  simp only [AlgebraData.cliffordLinear, Pi.add_apply, Complex.ofReal_add]
  -- Avoid leaving the complex-operator sum as two opaque Finset atoms.
  -- Prove distributivity at each actual original FermionIndex first.
  calc
    (∑ p : FermionIndex N,
      ((a p : ℂ) + (b p : ℂ)) • M.theta p.1 p.2) =
      ∑ p : FermionIndex N,
        ((a p : ℂ) • M.theta p.1 p.2 +
          (b p : ℂ) • M.theta p.1 p.2) := by
            apply Finset.sum_congr rfl
            intro p _
            exact add_smul (a p : ℂ) (b p : ℂ) (M.theta p.1 p.2)
    _ = _ := by
      rw [Finset.sum_add_distrib]

/-- Real scalar multiplication in source coefficient functions becomes
the original complex scalar acting on the complex-linear Fermion operator. -/
theorem sourceCliffordLinear_real_smul
    {N : ℕ} (M : AlgebraData N)
    (a : FermionIndex N → ℝ) (t : ℝ) :
    M.cliffordLinear (t • a) = (t : ℂ) • M.cliffordLinear a := by
  simp only [AlgebraData.cliffordLinear, Pi.smul_apply, smul_eq_mul,
    Complex.ofReal_mul, mul_smul, Finset.smul_sum]

/-- The explicit SOURCE derivative coefficient along the original
bosonic direction, prior to applying Clifford summation. -/
private def sourceMasslessPotentialVariation
    {N : ℕ} (M : AlgebraData N) (x v : Boson N)
    (α : SpinIndex) : FermionIndex N → ℝ :=
  fun p =>
    (1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        (∑ B : ColorIndex N, ∑ C : ColorIndex N,
          M.structureConstant p.2 B C *
            (v (i,B) * x (j,C) + x (i,B) * v (j,C))) *
          M.gammaTwo i j α p.1)

/-- Source-exact polynomial of the actual original massless
deformedPotentialMultiplier, a genuine Fermion N →L[ℂ] Fermion N.
Not the unproved real fderiv or source deformedFermionField B(x). -/
theorem originalMasslessPotentialMultiplier_affine_polynomial
    {N : ℕ} (M : AlgebraData N) (x v : Boson N) (t : ℝ)
    (α : SpinIndex) :
    M.deformedPotentialMultiplier 1 0 (x + t • v) α =
      M.deformedPotentialMultiplier 1 0 x α +
      (t : ℂ) • M.cliffordLinear
        (sourceMasslessPotentialVariation M x v α) +
      ((t^2 : ℝ) : ℂ) • M.deformedPotentialMultiplier 1 0 v α := by
  have hc :
      M.deformedPotentialCoefficients 1 0 (x + t • v) α =
        M.deformedPotentialCoefficients 1 0 x α +
        t • sourceMasslessPotentialVariation M x v α +
        t^2 • M.deformedPotentialCoefficients 1 0 v α := by
    funext p
    rcases p with ⟨β,A⟩
    simpa only [Pi.add_apply, Pi.smul_apply, smul_eq_mul,
      sourceMasslessPotentialVariation] using
      (FCP.BFSSSU2PhysicalDomainS4B5.originalMasslessPotentialCoefficient_affine_polynomial
        M x v t α β A)
  change M.cliffordLinear
      (M.deformedPotentialCoefficients 1 0 (x + t • v) α) =
    M.cliffordLinear (M.deformedPotentialCoefficients 1 0 x α) +
      (t : ℂ) • M.cliffordLinear (sourceMasslessPotentialVariation M x v α) +
      ((t^2 : ℝ) : ℂ) • M.cliffordLinear (M.deformedPotentialCoefficients 1 0 v α)
  rw [hc, sourceCliffordLinear_add, sourceCliffordLinear_add,
    sourceCliffordLinear_real_smul, sourceCliffordLinear_real_smul]

/-- The actual bosonic EuclideanSpace.single specialization, with no
unproved domain or operator-derivative assumptions. -/
theorem originalMasslessPotentialMultiplier_single_coordinate_polynomial
    {N : ℕ} (M : AlgebraData N) (x : Boson N) (t : ℝ)
    (α : SpinIndex) (k : SpaceIndex) (D : ColorIndex N) :
    M.deformedPotentialMultiplier 1 0
      (x + t • EuclideanSpace.single (k,D) (1 : ℝ)) α =
    M.deformedPotentialMultiplier 1 0 x α +
      (t : ℂ) • M.cliffordLinear
        (sourceMasslessPotentialVariation M x
          (EuclideanSpace.single (k,D) (1 : ℝ)) α) +
      ((t^2 : ℝ) : ℂ) • M.deformedPotentialMultiplier 1 0
        (EuclideanSpace.single (k,D) (1 : ℝ)) α := by
  exact originalMasslessPotentialMultiplier_affine_polynomial
    M x (EuclideanSpace.single (k,D) (1 : ℝ)) t α

#print axioms sourceCliffordLinear_add
#print axioms sourceCliffordLinear_real_smul
#print axioms originalMasslessPotentialMultiplier_affine_polynomial
#print axioms originalMasslessPotentialMultiplier_single_coordinate_polynomial

end
end FCP.BFSSSU2PhysicalDomainS4B6
