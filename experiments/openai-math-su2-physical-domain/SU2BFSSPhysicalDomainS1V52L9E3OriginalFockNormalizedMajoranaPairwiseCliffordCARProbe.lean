import SU2BFSSPhysicalDomainS1V52L9E2OriginalFockMajoranaSourceCliffordAxisNormalizationProbe

/-!
S1V52L9E3 — STAGED, UNQUALIFIED, dependent on kernel acceptance
of L9E2. Original Fermion 2 complex-linear Majoranas normalized
by sqrt(2) satisfy the exact unit-Clifford pairwise anticommutator.

Original source pairedTheta CAR is delta ONE. On unit source
axes the positive-sign Clifford Q satisfies Q(e)=1, hence
gamma(e)^2=1 and gamma(e)gamma(f)+gamma(f)gamma(e)=
2 delta(e,f) I. Original real/imag Fock labeling and
source spinPairEquiv.symm pairing must remain EXACT.

This stage is NOT a constructed full CliffordAlgebra AlgHom,
Fock-unitary Spin representation, topological lift or spectral
statement. Strict CI must verify all axioms before qualification.
-/

set_option autoImplicit false
set_option maxHeartbeats 350000

namespace FCP.BFSSS1V52L9E3
noncomputable section

open OAI.BFSSQuantum
open FCP.BFSSS1V5
open FCP.BFSSS1V52L9E2
open FCP.BFSSSU2GaugeG1A

/-- The two sqrt(2)-normalized ORIGINAL Fock Majoranas have
the exact positive-unit Clifford anticommutator, including the
correct delta factor two. -/
theorem originalNormalizedFockMajorana_pairwise_CAR
    (α β : RealSpinBlock) (A B : Fin 3) :
    originalNormalizedFockMajorana α A *
        originalNormalizedFockMajorana β B +
      originalNormalizedFockMajorana β B *
        originalNormalizedFockMajorana α A =
      (if α = β ∧ A = B then (2 : ℂ) else 0) •
        (1 : Fermion 2 →L[ℂ] Fermion 2) := by
  let x : Fermion 2 →L[ℂ] Fermion 2 :=
    pairedTheta (spinPairEquiv.symm α) A
  let y : Fermion 2 →L[ℂ] Fermion 2 :=
    pairedTheta (spinPairEquiv.symm β) B
  have hlabel :
      (spinPairEquiv.symm α = spinPairEquiv.symm β ∧ A = B) ↔
        (α = β ∧ A = B) := by
    constructor
    · rintro ⟨hs, hAB⟩
      exact ⟨spinPairEquiv.symm.injective hs, hAB⟩
    · rintro ⟨rfl, rfl⟩
      exact ⟨rfl, rfl⟩
  have hcar : x * y + y * x =
      (if α = β ∧ A = B then (1 : ℂ) else 0) •
        (1 : Fermion 2 →L[ℂ] Fermion 2) := by
    have hc := pairedTheta_CAR
      (spinPairEquiv.symm α) (spinPairEquiv.symm β) A B
    change x * y + y * x =
      (if spinPairEquiv.symm α = spinPairEquiv.symm β ∧ A = B
         then (1 : ℂ) else 0) •
        (1 : Fermion 2 →L[ℂ] Fermion 2) at hc
    by_cases hab : α = β ∧ A = B
    · have hh := hlabel.mpr hab
      simpa only [if_pos hh, if_pos hab] using hc
    · have hn :
          ¬ (spinPairEquiv.symm α = spinPairEquiv.symm β ∧ A = B) := by
        intro h
        exact hab (hlabel.mp h)
      simpa only [if_neg hn, if_neg hab] using hc
  have hsqrt : ((↑(Real.sqrt 2) : ℂ) *
      (↑(Real.sqrt 2) : ℂ)) = (2 : ℂ) := by
    exact_mod_cast Real.mul_self_sqrt (by norm_num : (0 : ℝ) ≤ 2)
  change ((↑(Real.sqrt 2) : ℂ) • x) *
      ((↑(Real.sqrt 2) : ℂ) • y) +
      ((↑(Real.sqrt 2) : ℂ) • y) *
      ((↑(Real.sqrt 2) : ℂ) • x) =
      (if α = β ∧ A = B then (2 : ℂ) else 0) •
        (1 : Fermion 2 →L[ℂ] Fermion 2)
  rw [smul_mul_smul, smul_mul_smul, ← smul_add, hsqrt, hcar]
  by_cases hab : α = β ∧ A = B <;>
    simp [hab, smul_smul]

#print axioms originalNormalizedFockMajorana_pairwise_CAR

end
end FCP.BFSSS1V52L9E3
