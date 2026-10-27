import SU2BFSSPhysicalDomainS4B30OriginalFockRemainderFullySignedContractionProbe

/-!
S4B31: normalize the EXACT accepted S4B30 original source complex Fock
remainder. The source (-i)/16 and signed source -8 combine to (+i)/2
in the same original ordered theta bilinear. All color/gamma entries
and real source bosonic x are unchanged. Still NOT the manuscript B(x)
or the original real-linear restriction.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B31
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B10
open FCP.BFSSSU2PhysicalDomainS4B11
open FCP.BFSSSU2PhysicalDomainS4B30

/-- Exact complex normalization on an opaque complex module. The source
factor -8 is a proven real scalar and is cast, not silently replaced. -/
private theorem signedPhase_normalize
    {V : Type*} [AddCommMonoid V] [Module ℂ V]
    (r : ℝ) (v : V) :
    (1 / 16 : ℂ) • ((-Complex.I) •
      ((((-8 : ℝ) * r : ℝ) : ℂ) • v)) =
        (Complex.I / 2 : ℂ) • ((r : ℂ) • v) := by
  calc
    _ = (((1 / 16 : ℂ) * (-Complex.I)) *
          (((-8 : ℝ) * r : ℝ) : ℂ)) • v := by
          simp only [smul_smul]
    _ = ((Complex.I / 2 : ℂ) * (r : ℂ)) • v := by
          exact congrArg (fun z : ℂ => z • v) (by
            rw [Complex.ofReal_mul]
            norm_num <;> ring)
    _ = _ := by
          simp only [smul_smul]

/-- Normalize the source phase and exact triple sum entirely in a
general complex module, without unfolding the genuine PiLp Fock CLM. -/
private theorem signedPhase_normalize_triple
    {I J K V : Type*}
    [Fintype I] [Fintype J] [Fintype K]
    [AddCommMonoid V] [Module ℂ V]
    (r : I → J → K → ℝ) (v : I → J → K → V) :
    (1 / 16 : ℂ) •
      (∑ i : I, ∑ j : J, ∑ k : K,
        (-Complex.I) •
          ((((-8 : ℝ) * r i j k : ℝ) : ℂ) • v i j k)) =
    (Complex.I / 2 : ℂ) •
      (∑ i : I, ∑ j : J, ∑ k : K,
        (r i j k : ℂ) • v i j k) := by
  calc
    _ = ∑ i : I, ∑ j : J, ∑ k : K,
          (1 / 16 : ℂ) • ((-Complex.I) •
            ((((-8 : ℝ) * r i j k : ℝ) : ℂ) • v i j k)) := by
          simp only [Finset.smul_sum]
    _ = ∑ i : I, ∑ j : J, ∑ k : K,
          (Complex.I / 2 : ℂ) • ((r i j k : ℂ) • v i j k) := by
          apply Finset.sum_congr rfl
          intro i _hi
          apply Finset.sum_congr rfl
          intro j _hj
          apply Finset.sum_congr rfl
          intro k _hk
          exact signedPhase_normalize (r i j k) (v i j k)
    _ = _ := by
          simp only [Finset.smul_sum]

/-- Genuine original complex Fock fermionic remainder with EXACT +i/2
coefficient, original source color/gamma sum and ordered Majorana
operators. The whole source operator is transformed, not scalar proxy. -/
theorem originalComplexFermionContraction_normalized_i_half
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    sourceMasslessComplexFermionContraction M x =
      (Complex.I / 2 : ℂ) •
        (∑ A : ColorIndex N, ∑ β : SpinIndex,
          ∑ q : FermionIndex N,
            (((∑ j : SpaceIndex, ∑ C : ColorIndex N,
                M.structureConstant C A q.2 *
                  x (j,C) * M.gamma j β q.1) : ℝ) : ℂ) •
              (M.theta β A * M.theta q.1 q.2)) := by
  calc
    _ = (1 / 16 : ℂ) •
          (∑ A : ColorIndex N, ∑ β : SpinIndex,
            ∑ q : FermionIndex N,
              (-Complex.I) •
                ((((-8 : ℝ) *
                  (∑ j : SpaceIndex, ∑ C : ColorIndex N,
                    M.structureConstant C A q.2 *
                      x (j,C) * M.gamma j β q.1)) : ℝ) : ℂ) •
                    (M.theta β A * M.theta q.1 q.2)) :=
          originalComplexFermionContraction_full_signed_source M x
    _ = _ :=
      signedPhase_normalize_triple
        (fun A β q =>
          ∑ j : SpaceIndex, ∑ C : ColorIndex N,
            M.structureConstant C A q.2 *
              x (j,C) * M.gamma j β q.1)
        (fun A β q =>
          ((M.theta β A * M.theta q.1 q.2) :
            Fermion N →L[ℂ] Fermion N))

#print axioms originalComplexFermionContraction_normalized_i_half

end
end FCP.BFSSSU2PhysicalDomainS4B31
