import FCPM4F9H4E3D4C4ActualIndependentHistoricalUnitaryGraphImageEquality

/-!
BFSS M4F9 H4G1A — generic real-Hilbert partial-operator
NORMALIZABLE EIGENPAIR transfer under a genuine unitary.

Only conditional transfer of the existence of a NONZERO Hilbert
eigenvector for a specified complex eigenvalue is established.
This does NOT assert any BFSS positive eigenvalue, spectral gap,
essential spectrum, sector compactness, or ground-state existence.
-/
set_option autoImplicit false
set_option maxHeartbeats 240000

namespace FCP.M4F9H4G1AGenericUnitaryNormalizableEigenpairTransfer
noncomputable section

/-- For two genuine partial Hilbert operators on possibly different
Hilbert spaces with exact full-domain iff and full-domain action
intertwining, normalizable nonzero eigenpairs for the SAME λ are
equivalent. No self-adjointness or resolvent premise is needed. -/
theorem genericUnitaryPartialEigenpair_exists_iff
    {X Y : Type*}
    [NormedAddCommGroup X] [InnerProductSpace ℂ X]
    [NormedAddCommGroup Y] [InnerProductSpace ℂ Y]
    (U : X ≃ₗᵢ[ℂ] Y)
    (A : X →ₗ.[ℂ] X)
    (B : Y →ₗ.[ℂ] Y)
    (hDom : ∀ x : X, x ∈ A.domain ↔ U x ∈ B.domain)
    (hAction : ∀ (x : X) (hx : x ∈ A.domain),
      ∃ hy : U x ∈ B.domain,
        B ⟨U x,hy⟩ = U (A ⟨x,hx⟩))
    (λ : ℂ) :
    (∃ (x : X) (hx : x ∈ A.domain),
        x ≠ 0 ∧ A ⟨x,hx⟩ = λ • x) ↔
      (∃ (y : Y) (hy : y ∈ B.domain),
        y ≠ 0 ∧ B ⟨y,hy⟩ = λ • y) := by
  constructor
  · rintro ⟨x,hx,hne,heig⟩
    obtain ⟨hy,hAct⟩ := hAction x hx
    refine ⟨U x,hy,?_,?_⟩
    · intro hzero
      apply hne
      apply U.injective
      simpa only [map_zero] using hzero
    · calc
        B ⟨U x,hy⟩ = U (A ⟨x,hx⟩) := hAct
        _ = U (λ • x) := congrArg U heig
        _ = λ • U x := map_smul U λ x
  · rintro ⟨y,hy,hyne,heig⟩
    let x : X := U.symm y
    have hUx : U x = y := U.apply_symm_apply y
    have hx : x ∈ A.domain := (hDom x).mpr (hUx ▸ hy)
    obtain ⟨hy',hAct⟩ := hAction x hx
    have hSub : (⟨U x,hy'⟩ : B.domain) = ⟨y,hy⟩ :=
      Subtype.ext hUx
    have hBEig : B ⟨U x,hy'⟩ = λ • U x := by
      rw [hSub, heig, hUx]
    have hUEig : U (A ⟨x,hx⟩) = U (λ • x) := by
      calc
        U (A ⟨x,hx⟩) = B ⟨U x,hy'⟩ := hAct.symm
        _ = λ • U x := hBEig
        _ = U (λ • x) := (map_smul U λ x).symm
    refine ⟨x,hx,?_,U.injective hUEig⟩
    intro hzero
    apply hyne
    calc
      y = U x := hUx.symm
      _ = U (0 : X) := congrArg U hzero
      _ = 0 := map_zero U

#print axioms genericUnitaryPartialEigenpair_exists_iff
end
end FCP.M4F9H4G1AGenericUnitaryNormalizableEigenpairTransfer
