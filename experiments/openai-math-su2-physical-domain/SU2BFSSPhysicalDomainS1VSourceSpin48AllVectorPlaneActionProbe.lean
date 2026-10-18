import SU2BFSSPhysicalDomainS1USourceSpin48PlaneLinearCombinationProbe

/-!
S1V RESEARCH CANDIDATE — NOT KERNEL QUALIFIED.

The accepted S1U theorem applies to a source real vector already written
as x • a + y • b + c, with c perpendicular to both Q-unit axes.
This candidate supplies that missing decomposition for *every* actual
48-real Majorana-label vector, using the bilinear form associated to
the original normalized source quadratic form, not a surrogate space.

Only a complete pinned strict CI run, prerequisite closure, and explicit
axiom audit may qualify the declarations below.

DO NOT infer a continuous source SU(2) → Spin(48) lift, a Clifford/Fock
module equivalence, physical operator-domain transport, Spin(9) spectrum,
or a BFSS mass gap from the local all-vector rotor identity.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSSU2PhysicalDomainS1V
noncomputable section

open FCP.BFSSSU2PhysicalDomainS1P0
open FCP.BFSSSU2PhysicalDomainS1S
open FCP.BFSSSU2PhysicalDomainS1U

private abbrev Q : QuadraticForm ℝ Source48Vector :=
  source48Quadratic
private abbrev C := CliffordAlgebra Q
private abbrev B : Source48Vector →ₗ[ℝ] Source48Vector →ₗ[ℝ] ℝ :=
  QuadraticMap.associated Q

/-- Explicit common-orthogonal remainder in the *literal* 48-source vector
space. The coefficients use the bilinear form associated to the exact
source quadratic form Q(v)=Σ_i v_i². -/
noncomputable def sourcePlaneComplement (a b v : Source48Vector) :
    Source48Vector :=
  v - (B a v) • a - (B b v) • b

/-- The resulting source-label real half-turn; at this stage it is a
specified vector map, not a formal Spin-covering projection. -/
noncomputable def sourcePlaneFlip (a b v : Source48Vector) :
    Source48Vector :=
  (-(B a v)) • a + (-(B b v)) • b +
    sourcePlaneComplement a b v

theorem sourcePlane_decomposition (a b v : Source48Vector) :
    v = (B a v) • a + (B b v) • b +
      sourcePlaneComplement a b v := by
  dsimp [sourcePlaneComplement]
  abel

/-- Orthogonality of the remainder to the first axis, assuming the source
unit and cross-orthogonality hypotheses. -/
theorem sourcePlaneComplement_ortho_first
    (a b v : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    Q.IsOrtho a (sourcePlaneComplement a b v) := by
  have hAA : B a a = 1 := by
    exact (QuadraticMap.associated_eq_self_apply ℝ Q a).trans ha
  have hAB : B a b = 0 := by
    exact (QuadraticMap.associated_isOrtho (Q := Q)).2 hab
  have hzero : B a (sourcePlaneComplement a b v) = 0 := by
    simp only [sourcePlaneComplement, map_sub, map_smul, smul_eq_mul,
      hAA, hAB, mul_one, mul_zero, sub_zero, sub_self]
  exact (QuadraticMap.associated_isOrtho (Q := Q)).1 hzero

/-- Orthogonality of the same remainder to the second source axis. -/
theorem sourcePlaneComplement_ortho_second
    (a b v : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    Q.IsOrtho b (sourcePlaneComplement a b v) := by
  have hBB : B b b = 1 := by
    exact (QuadraticMap.associated_eq_self_apply ℝ Q b).trans hb
  have hBA : B b a = 0 := by
    exact (QuadraticMap.associated_isOrtho (Q := Q)).2 hab.symm
  have hzero : B b (sourcePlaneComplement a b v) = 0 := by
    simp only [sourcePlaneComplement, map_sub, map_smul, smul_eq_mul,
      hBA, hBB, mul_one, mul_zero, zero_mul, sub_zero, sub_self]
  exact (QuadraticMap.associated_isOrtho (Q := Q)).1 hzero

/-- CANDIDATE: the already-accepted actual Spin pair acts on EVERY
generator in the full original 48-source-label real vector space,
not merely on vectors supplied in an orthogonal decomposition.
The image is the explicit source-plane half-turn, and no abstract
Spin projection, choice of lift or Clifford generator injectivity is used. -/
theorem sourceSpinPair_conjugates_every_source_vector
    (a b v : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    (sourceSpinPair a b ha hb : C) *
      CliffordAlgebra.ι Q v *
      star (sourceSpinPair a b ha hb : C) =
        CliffordAlgebra.ι Q (sourcePlaneFlip a b v) := by
  have hv := sourcePlane_decomposition a b v
  have hac := sourcePlaneComplement_ortho_first a b v ha hb hab
  have hbc := sourcePlaneComplement_ortho_second a b v ha hb hab
  calc
    (sourceSpinPair a b ha hb : C) * CliffordAlgebra.ι Q v *
        star (sourceSpinPair a b ha hb : C) =
      (sourceSpinPair a b ha hb : C) *
        CliffordAlgebra.ι Q
          ((B a v) • a + (B b v) • b +
            sourcePlaneComplement a b v) *
        star (sourceSpinPair a b ha hb : C) := by rw [← hv]
    _ = CliffordAlgebra.ι Q
          ((-(B a v)) • a + (-(B b v)) • b +
            sourcePlaneComplement a b v) := by
      exact sourceSpinPair_conjugates_plane_combination
        a b (sourcePlaneComplement a b v)
        ha hb hab hac hbc (B a v) (B b v)
    _ = CliffordAlgebra.ι Q (sourcePlaneFlip a b v) := rfl

#print axioms sourcePlane_decomposition
#print axioms sourcePlaneComplement_ortho_first
#print axioms sourcePlaneComplement_ortho_second
#print axioms sourceSpinPair_conjugates_every_source_vector

end
end FCP.BFSSSU2PhysicalDomainS1V
