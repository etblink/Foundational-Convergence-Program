import SU2BFSSPhysicalDomainL6G6IOriginalFermionColorCurrentProjectionProbe

/-!
L6G6J — CAR commutator for the original fermionic color current.

The accepted L6G6I current is an exact source ordered theta-pair
expression. This gate establishes the mathematical commutator its
normalization requires, beginning with an abstract CAR algebra,
not a concrete 48-Majorana Fock unfolding.

The source GaugeData.fermion is an ADDITIONAL gauge representation:
this CAR identity alone does not identify its infinitesimal generator.
No physical Gauss restriction, full supercharge square, or spectrum
statement is established.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainL6G6J
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainL6G3
open FCP.BFSSSU2PhysicalDomainL6G4A
open FCP.BFSSSU2PhysicalDomainL6G6I

/-- The exact commutator of an ORDERED CAR pair and one generator.
This is abstract ring algebra; it does not reorder theta by fiat. -/
private theorem finiteCAROrderedPair_comm
    {R I : Type*} [Ring R] [DecidableEq I]
    (theta : I → R)
    (hCAR : ∀ p q, theta p * theta q + theta q * theta p =
      if p = q then 1 else 0)
    (p q t : I) :
    (theta p * theta q) * theta t -
      theta t * (theta p * theta q) =
      (if q = t then theta p else 0) -
      (if p = t then theta q else 0) := by
  calc
    _ = theta p * (theta q * theta t + theta t * theta q) -
        (theta t * theta p + theta p * theta t) * theta q := by
          noncomm_ring
    _ = _ := by
      rw [hCAR q t, hCAR t p]
      by_cases hqt : q = t <;> by_cases hpt : p = t <;>
        simp [hqt, hpt, eq_comm]

/-- This is the precise complex coefficient and sign forced
by CAR-normalized theta and antisymmetric color structure constants.
All sums and rearrangements are over COMPLEX scalar coefficients. -/
private theorem finiteCARColorCurrent_comm
    {R S C : Type*} [Ring R] [Algebra ℂ R]
    [Fintype S] [DecidableEq S] [Fintype C] [DecidableEq C]
    (theta : S → C → R)
    (hCAR : ∀ s t a b,
      theta s a * theta t b + theta t b * theta s a =
        if s = t ∧ a = b then 1 else 0)
    (F : C → C → C → ℂ)
    (hskew : ∀ a b c, F b a c = -F a b c)
    (c : C) (t : S) (d : C) :
    ((-Complex.I / 2 : ℂ) •
        (∑ s : S, ∑ a : C, ∑ b : C,
          F a b c • (theta s a * theta s b))) * theta t d -
      theta t d * ((-Complex.I / 2 : ℂ) •
        (∑ s : S, ∑ a : C, ∑ b : C,
          F a b c • (theta s a * theta s b))) =
      Complex.I • (∑ b : C, F d b c • theta t b) := by
  classical
  let T : S × C → R := fun p => theta p.1 p.2
  have hpair (p q : S × C) :
      T p * T q + T q * T p = if p = q then 1 else 0 := by
    rcases p with ⟨s,a⟩
    rcases q with ⟨u,b⟩
    simpa only [T, Prod.mk.injEq] using hCAR s u a b
  have hA :
      (∑ s : S, ∑ a : C, ∑ b : C,
        F a b c • (if (s,b) = (t,d) then theta s a else 0)) =
        ∑ a : C, F a d c • theta t a := by
    calc
      _ = ∑ s : S, ∑ a : C,
          if s = t then F a d c • theta s a else 0 := by
            apply Finset.sum_congr rfl
            intro s _
            apply Finset.sum_congr rfl
            intro a _
            by_cases hs : s = t
            · subst s
              simp
            · simp [hs, Prod.mk.injEq]
      _ = ∑ a : C, ∑ s : S,
          if s = t then F a d c • theta s a else 0 := Finset.sum_comm
      _ = _ := by simp
  have hB :
      (∑ s : S, ∑ a : C, ∑ b : C,
        F a b c • (if (s,a) = (t,d) then theta s b else 0)) =
        ∑ b : C, F d b c • theta t b := by
    calc
      _ = ∑ s : S, ∑ b : C, ∑ a : C,
          F a b c • (if (s,a) = (t,d) then theta s b else 0) := by
            apply Finset.sum_congr rfl
            intro s _
            exact Finset.sum_comm
      _ = ∑ s : S, ∑ b : C,
          if s = t then F d b c • theta s b else 0 := by
            apply Finset.sum_congr rfl
            intro s _
            apply Finset.sum_congr rfl
            intro b _
            by_cases hs : s = t
            · subst s
              simp
            · simp [hs, Prod.mk.injEq]
      _ = ∑ b : C, ∑ s : S,
          if s = t then F d b c • theta s b else 0 := Finset.sum_comm
      _ = _ := by simp
  let B : R :=
    ∑ s : S, ∑ a : C, ∑ b : C,
      F a b c • (theta s a * theta s b)
  let X : R := ∑ b : C, F d b c • theta t b
  have hraw : B * theta t d - theta t d * B = -(2 : ℂ) • X := by
    calc
      _ = ∑ s : S, ∑ a : C, ∑ b : C,
        ((F a b c • (theta s a * theta s b)) * theta t d -
          theta t d * (F a b c • (theta s a * theta s b))) := by
            simp only [B, Finset.sum_mul, Finset.mul_sum,
              Finset.sum_sub_distrib]
      _ = ∑ s : S, ∑ a : C, ∑ b : C,
        F a b c •
          ((if (s,b) = (t,d) then theta s a else 0) -
           (if (s,a) = (t,d) then theta s b else 0)) := by
            apply Finset.sum_congr rfl
            intro s _
            apply Finset.sum_congr rfl
            intro a _
            apply Finset.sum_congr rfl
            intro b _
            rw [smul_mul_assoc, mul_smul_comm, ← smul_sub]
            exact congrArg (fun y : R => F a b c • y)
              (finiteCAROrderedPair_comm T hpair (s,a) (s,b) (t,d))
      _ = (∑ s : S, ∑ a : C, ∑ b : C,
            F a b c • (if (s,b) = (t,d) then theta s a else 0)) -
          (∑ s : S, ∑ a : C, ∑ b : C,
            F a b c • (if (s,a) = (t,d) then theta s b else 0)) := by
            simp only [smul_sub, Finset.sum_sub_distrib]
      _ = (∑ a : C, F a d c • theta t a) - X := by
            rw [hA, hB]
      _ = -X - X := by
            congr 1
            rw [← Finset.sum_neg_distrib]
            apply Finset.sum_congr rfl
            intro a _
            rw [hskew d a c, neg_smul]
      _ = -(2 : ℂ) • X := by
            rw [neg_smul, two_smul]
            abel
  change ((-Complex.I / 2 : ℂ) • B) * theta t d -
    theta t d * ((-Complex.I / 2 : ℂ) • B) =
      Complex.I • X
  calc
    _ = (-Complex.I / 2 : ℂ) •
        (B * theta t d - theta t d * B) := by
          rw [smul_mul_assoc, mul_smul_comm, smul_sub]
    _ = (-Complex.I / 2 : ℂ) • ((-(2 : ℂ)) • X) := by
          rw [hraw]
    _ = Complex.I • X := by
          rw [smul_smul]
          congr 1
          ring

/-- The qualified original-source CAR already implies its
ordered theta-pair commutator, independently of concrete Fock
representation expansion. -/
theorem sourceOriginalOrderedFermionPair_comm
    (M : AlgebraData 2)
    (p q t : FermionLabel 2) :
    (M.fermionAction p.1 p.2 * M.fermionAction q.1 q.2) *
        M.fermionAction t.1 t.2 -
      M.fermionAction t.1 t.2 *
        (M.fermionAction p.1 p.2 * M.fermionAction q.1 q.2) =
      (if q = t then M.fermionAction p.1 p.2 else 0) -
      (if p = t then M.fermionAction q.1 q.2 else 0) := by
  exact finiteCAROrderedPair_comm
    (fun u : FermionLabel 2 => M.fermionAction u.1 u.2)
    (sourceFermionAction_CAR M) p q t

#print axioms finiteCAROrderedPair_comm
#print axioms finiteCARColorCurrent_comm
#print axioms sourceOriginalOrderedFermionPair_comm
#check @sourceOriginalOrderedFermionPair_comm

end
end FCP.BFSSSU2PhysicalDomainL6G6J
