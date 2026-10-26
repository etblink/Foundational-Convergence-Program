import SU2BFSSPhysicalDomainS4B7OriginalRealFockFieldPolynomialProbe

/-! S4B8: first genuine original real-Fock field directional derivative;
source operator, gamma, color, fermion, and bosonic spaces unchanged.
Not the full fermionic remainder field or a spectral theorem. -/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B8
noncomputable section
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B7

/-- Derivative on every genuine source bosonic affine line. -/
theorem originalMasslessRealField_line_hasDerivAt
    {N : ℕ} (M : AlgebraData N) (x v : Boson N) (α : SpinIndex) :
    HasDerivAt (fun t : ℝ => M.deformedRealField 1 0 α (x + t • v))
      (sourceMasslessRealFieldVariation M x v α) (0 : ℝ) := by
  have hpoly :
      (fun t : ℝ => M.deformedRealField 1 0 α (x + t • v)) =
      (fun t : ℝ => M.deformedRealField 1 0 α x +
        t • sourceMasslessRealFieldVariation M x v α +
        t ^ 2 • M.deformedRealField 1 0 α v) := by
    funext t
    exact originalMasslessRealField_affine_polynomial M x v t α
  have hlin : HasDerivAt
      (fun t : ℝ => t • sourceMasslessRealFieldVariation M x v α)
      (sourceMasslessRealFieldVariation M x v α) (0 : ℝ) := by
    simpa using
      ((hasDerivAt_id (0 : ℝ)).smul_const
        (sourceMasslessRealFieldVariation M x v α))
  -- Isolate the scalar square derivative before lifting into Fock CLMs.
  -- This is a propositionally normalized identity, not a kernel 'change'.
  have hpow : HasDerivAt (fun t : ℝ => t ^ 2) (0 : ℝ) (0 : ℝ) := by
    have hp := ((hasDerivAt_id (0 : ℝ)).pow 2)
    convert hp using 1
    all_goals
      first
      | (funext t; simp [Pi.pow_apply])
      | norm_num
  -- Type the raw source quadratic derivative *before* reducing its
  -- zero scalar coefficient. No broad simplicial normalization.
  have hquadRaw : HasDerivAt
      (fun t : ℝ => t ^ 2 • M.deformedRealField 1 0 α v)
      ((0 : ℝ) • M.deformedRealField 1 0 α v) (0 : ℝ) := by
    exact hpow.smul_const (M.deformedRealField 1 0 α v)
  have hquad : HasDerivAt
      (fun t : ℝ => t ^ 2 • M.deformedRealField 1 0 α v)
      (0 : Fermion N →L[ℝ] Fermion N) (0 : ℝ) := by
    simpa only [zero_smul] using hquadRaw
  have hconst : HasDerivAt
      (fun _ : ℝ => M.deformedRealField 1 0 α x)
      (0 : Fermion N →L[ℝ] Fermion N) (0 : ℝ) :=
    hasDerivAt_const (0 : ℝ) (M.deformedRealField 1 0 α x)
  -- Assemble only after discharging the scalar and CLM-valued derivatives.
  rw [hpoly]
  convert ((hconst.add hlin).add hquad) using 1
  all_goals
    first
    | (funext t; rfl)
    | simp

/-- Actual source Fréchet derivative in the real Fock CLM carrier. -/
theorem originalMasslessRealField_fderiv_direction
    {N : ℕ} (M : AlgebraData N) (x v : Boson N) (α : SpinIndex) :
    fderiv ℝ (M.deformedRealField 1 0 α) x v =
      sourceMasslessRealFieldVariation M x v α := by
  -- Keep Pi-addition out of the derivative elaborator: identify the
  -- functions by extensionality rather than hoping for blanket simp.
  have hpath : HasDerivAt (fun t : ℝ => x + t • v) v (0 : ℝ) := by
    convert ((hasDerivAt_const (0 : ℝ) x).add
      ((hasDerivAt_id (0 : ℝ)).smul_const v)) using 1
    all_goals
      first
      | (funext t; rfl)
      | simp
  have hdiff : DifferentiableAt ℝ (M.deformedRealField 1 0 α) x :=
    (M.deformedRealField_contDiff 1 0 α).differentiable (by simp) x
  have hchain : HasDerivAt
      (fun t : ℝ => M.deformedRealField 1 0 α (x + t • v))
      (fderiv ℝ (M.deformedRealField 1 0 α) x v) (0 : ℝ) := by
    -- The chain rule requires the exact line base point x + 0 • v.
    have hdiff0 : HasFDerivAt (M.deformedRealField 1 0 α)
        (fderiv ℝ (M.deformedRealField 1 0 α) x)
        (x + (0 : ℝ) • v) := by
      simpa only [zero_smul, add_zero] using hdiff.hasFDerivAt
    convert (hdiff0.comp_hasDerivAt (0 : ℝ) hpath) using 1
    all_goals
      funext t
      rfl
  exact hchain.unique (originalMasslessRealField_line_hasDerivAt M x v α)

/-- Source coordinate derivative, not an assumed proxy gamma field. -/
theorem originalMasslessRealField_single_coordinate_fderiv
    {N : ℕ} (M : AlgebraData N) (x : Boson N)
    (α : SpinIndex) (k : SpaceIndex) (D : ColorIndex N) :
    fderiv ℝ (M.deformedRealField 1 0 α) x
        (EuclideanSpace.single (k,D) (1 : ℝ)) =
      sourceMasslessRealFieldVariation M x
        (EuclideanSpace.single (k,D) (1 : ℝ)) α := by
  exact originalMasslessRealField_fderiv_direction M x
    (EuclideanSpace.single (k,D) (1 : ℝ)) α

#print axioms originalMasslessRealField_line_hasDerivAt
#print axioms originalMasslessRealField_fderiv_direction
#print axioms originalMasslessRealField_single_coordinate_fderiv

end
end FCP.BFSSSU2PhysicalDomainS4B8
