import SU2BFSSPhysicalDomainS1V1StandaloneSpin48AllVectorProbe

/-!
S1V2 — explicit actual 48-label rotor half-turn as an involution.

S1V1 kernel-qualified conjugation of Clifford generators for every actual
source-sized vector. This gate proves the underlying explicit real-vector
half-turn is an involution and reverses the source two-plane while fixing
its exact common orthogonal complement. It uses the literal S1V0
normalized quadratic form on (Fin 24 × Fin 2) → ℝ and does not assert
a continuous SU2 → Spin48 lift or manuscript Hilbert equivalence.

CANDIDATE until a strict pinned kernel audit.
-/

set_option autoImplicit false
set_option maxHeartbeats 280000

namespace FCP.BFSSS1V2
noncomputable section

open FCP.BFSSS1V0
open FCP.BFSSS1V1

private abbrev Q : QuadraticForm ℝ Source48Vector := source48Quadratic
private abbrev B : Source48Vector →ₗ[ℝ] Source48Vector →ₗ[ℝ] ℝ :=
  QuadraticMap.associated Q

theorem sourcePlaneFlip_ortho_coefficient_first
    (a b v : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    B a (sourcePlaneFlip a b v) = -(B a v) := by
  have hAA : B a a = 1 :=
    (QuadraticMap.associated_eq_self_apply ℝ Q a).trans ha
  have hAB : B a b = 0 :=
    (QuadraticMap.associated_isOrtho (Q := Q)).2 hab
  have hc : B a (sourcePlaneComplement a b v) = 0 :=
    (QuadraticMap.associated_isOrtho (Q := Q)).2
      (sourcePlaneComplement_ortho_first a b v ha hb hab)
  simp only [sourcePlaneFlip, map_add, map_smul, smul_eq_mul,
    hAA, hAB, hc, mul_one, mul_zero, add_zero, neg_add_cancel]

theorem sourcePlaneFlip_ortho_coefficient_second
    (a b v : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    B b (sourcePlaneFlip a b v) = -(B b v) := by
  have hBB : B b b = 1 :=
    (QuadraticMap.associated_eq_self_apply ℝ Q b).trans hb
  have hBA : B b a = 0 :=
    (QuadraticMap.associated_isOrtho (Q := Q)).2 hab.symm
  have hc : B b (sourcePlaneComplement a b v) = 0 :=
    (QuadraticMap.associated_isOrtho (Q := Q)).2
      (sourcePlaneComplement_ortho_second a b v ha hb hab)
  simp only [sourcePlaneFlip, map_add, map_smul, smul_eq_mul,
    hBA, hBB, hc, mul_one, mul_zero, zero_mul, add_zero, zero_add]

theorem sourcePlaneFlip_complement_fixed
    (a b v : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    sourcePlaneComplement a b (sourcePlaneFlip a b v) =
      sourcePlaneComplement a b v := by
  rw [show sourcePlaneComplement a b (sourcePlaneFlip a b v) =
    sourcePlaneFlip a b v -
      (B a (sourcePlaneFlip a b v)) • a -
      (B b (sourcePlaneFlip a b v)) • b from rfl]
  rw [sourcePlaneFlip_ortho_coefficient_first a b v ha hb hab,
      sourcePlaneFlip_ortho_coefficient_second a b v ha hb hab]
  change ((-(B a v)) • a + (-(B b v)) • b +
      sourcePlaneComplement a b v) -
      (-(B a v)) • a - (-(B b v)) • b =
      sourcePlaneComplement a b v
  abel

/-- The actual 48-real two-plane half-turn obtained from the inner
Spin48 rotor is genuinely an involution on ALL original-sized labels. -/
theorem sourcePlaneFlip_involution
    (a b v : Source48Vector)
    (ha : Q a = 1) (hb : Q b = 1)
    (hab : Q.IsOrtho a b) :
    sourcePlaneFlip a b (sourcePlaneFlip a b v) = v := by
  have hA := sourcePlaneFlip_ortho_coefficient_first a b v ha hb hab
  have hB := sourcePlaneFlip_ortho_coefficient_second a b v ha hb hab
  have hC := sourcePlaneFlip_complement_fixed a b v ha hb hab
  change (-(B a (sourcePlaneFlip a b v))) • a +
      (-(B b (sourcePlaneFlip a b v))) • b +
      sourcePlaneComplement a b (sourcePlaneFlip a b v) = v
  rw [hA, hB, hC]
  simp only [neg_neg]
  exact (sourcePlane_decomposition a b v).symm

#print axioms sourcePlaneFlip_ortho_coefficient_first
#print axioms sourcePlaneFlip_ortho_coefficient_second
#print axioms sourcePlaneFlip_complement_fixed
#print axioms sourcePlaneFlip_involution

end
end FCP.BFSSS1V2
