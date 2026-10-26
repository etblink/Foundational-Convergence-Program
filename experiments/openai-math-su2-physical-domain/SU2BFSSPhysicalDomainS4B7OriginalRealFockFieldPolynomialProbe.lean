import SU2BFSSPhysicalDomainS4B6OriginalMasslessPotentialMultiplierPolynomialProbe

/-!
S4B7 source-original REAL continuous-linear potential field polynomial.

This stage transports strictly accepted Gate94 original complex-linear
M.deformedPotentialMultiplier 1 0 through the original source
M.deformedRealField = (M.deformedPotentialMultiplier).restrictScalars ℝ.

The coefficient is now a PUBLIC original source-typed real CLM variation,
specified through genuine M.structureConstant, M.gammaTwo and M.theta.
This is NOT yet fderiv, MixedEnergy.remainderField, manuscript B(x),
Spin9 physical invariance, or any spectral theorem.
-/

set_option autoImplicit false

namespace FCP.BFSSSU2PhysicalDomainS4B7
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData

/-- Restriction from the original complex-linear Fermion operator space
preserves source operator addition in the underlying real-linear space. -/
theorem originalFockRestrictScalars_add
    {N : ℕ} (A B : Fermion N →L[ℂ] Fermion N) :
    (A + B).restrictScalars ℝ =
      A.restrictScalars ℝ + B.restrictScalars ℝ := by
  apply ContinuousLinearMap.ext
  intro z
  rfl

/-- The original real scalar action is the restriction of the complex
scalar action on source continuous-linear Fermion operators. -/
theorem originalFockRestrictScalars_real_smul
    {N : ℕ} (A : Fermion N →L[ℂ] Fermion N) (t : ℝ) :
    ((t : ℂ) • A).restrictScalars ℝ =
      t • (A.restrictScalars ℝ) := by
  apply ContinuousLinearMap.ext
  intro z
  rfl

/-- PUBLIC source-typed linear coefficient as a REAL CLM of the actual
original 48-Majorana Fock module for N=2. For generic N uses the genuine
FermionIndex N and original gamma/color algebra. -/
def sourceMasslessRealFieldVariation
    {N : ℕ} (M : AlgebraData N) (x v : Boson N)
    (α : SpinIndex) : Fermion N →L[ℝ] Fermion N :=
  (M.cliffordLinear (fun p : FermionIndex N =>
    (1 / 2 : ℝ) *
      (∑ i : SpaceIndex, ∑ j : SpaceIndex,
        (∑ B : ColorIndex N, ∑ C : ColorIndex N,
          M.structureConstant p.2 B C *
            (v (i,B) * x (j,C) + x (i,B) * v (j,C))) *
          M.gammaTwo i j α p.1))).restrictScalars ℝ

/-- Exact original SOURCE deformedRealField polynomial in its genuine
Fermion N →L[ℝ] Fermion N type; no derivative inferred. -/
theorem originalMasslessRealField_affine_polynomial
    {N : ℕ} (M : AlgebraData N) (x v : Boson N) (t : ℝ)
    (α : SpinIndex) :
    M.deformedRealField 1 0 α (x + t • v) =
      M.deformedRealField 1 0 α x +
      t • sourceMasslessRealFieldVariation M x v α +
      t^2 • M.deformedRealField 1 0 α v := by
  have hc :=
    FCP.BFSSSU2PhysicalDomainS4B6.originalMasslessPotentialMultiplier_affine_polynomial
      M x v t α
  have hr := congrArg
    (fun T : Fermion N →L[ℂ] Fermion N => T.restrictScalars ℝ) hc
  rw [originalFockRestrictScalars_add,
    originalFockRestrictScalars_add,
    originalFockRestrictScalars_real_smul,
    originalFockRestrictScalars_real_smul] at hr
  -- The predecessor hides its coefficient behind a private definition.
  -- Compare the exact source operator types by definitional equality,
  -- rather than simplifying one coefficient while leaving the other opaque.
  change
    M.deformedRealField 1 0 α (x + t • v) =
      M.deformedRealField 1 0 α x +
      t • sourceMasslessRealFieldVariation M x v α +
      t^2 • M.deformedRealField 1 0 α v at hr
  exact hr

/-- Genuine original EuclideanSpace.single direction, in the REAL
continuous-linear source operator type without unjustified fderiv. -/
theorem originalMasslessRealField_single_coordinate_polynomial
    {N : ℕ} (M : AlgebraData N) (x : Boson N) (t : ℝ)
    (α : SpinIndex) (k : SpaceIndex) (D : ColorIndex N) :
    M.deformedRealField 1 0 α
      (x + t • EuclideanSpace.single (k,D) (1 : ℝ)) =
      M.deformedRealField 1 0 α x +
      t • sourceMasslessRealFieldVariation M x
        (EuclideanSpace.single (k,D) (1 : ℝ)) α +
      t^2 • M.deformedRealField 1 0 α
        (EuclideanSpace.single (k,D) (1 : ℝ)) := by
  exact originalMasslessRealField_affine_polynomial
    M x (EuclideanSpace.single (k,D) (1 : ℝ)) t α

#print axioms originalFockRestrictScalars_add
#print axioms originalFockRestrictScalars_real_smul
#print axioms originalMasslessRealField_affine_polynomial
#print axioms originalMasslessRealField_single_coordinate_polynomial

end
end FCP.BFSSSU2PhysicalDomainS4B7
