import SU2BFSSPhysicalDomainS4B32OriginalRealFockRemainderNormalizedIHalfProbe

/-!
S4B33: source-exact comparison of the ORIGINAL massless real-linear
Fock fermionic multiplication term to the October 5 manuscript's
COLOR-COVARIANT coordinate B(x) formula (manuscript lines 236-250):
  B(x) = (i/2) f_{abc} x_i^a gamma^i_{beta,delta}
                    theta_beta^b theta_delta^c.
The manuscript's concrete Pauli basis f=sqrt(2) epsilon and the
concrete original N=2 representation are SEPARATE orientation/intertwiner
obligations. This theorem introduces no positive-eigenstate claim.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B33
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B10
open FCP.BFSSSU2PhysicalDomainS4B32

/-- Independent coordinate transcription of the October 5 B(x) fermionic
expression on the original arbitrary orthonormal color basis and original
complex Fock operators. All SIX summation indices are explicit. -/
def manuscriptCoordinateBComplex
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    Fermion N →L[ℂ] Fermion N :=
  (Complex.I / 2 : ℂ) •
    (∑ b : ColorIndex N, ∑ β : SpinIndex,
      ∑ δ : SpinIndex, ∑ c : ColorIndex N,
      ∑ i : SpaceIndex, ∑ a : ColorIndex N,
        ((M.structureConstant a b c * x (i,a) *
            M.gamma i β δ : ℝ) : ℂ) •
          (M.theta β b * M.theta δ c))

/-- Product fermion-index expansion plus real-to-complex coefficient
finite-sum distribution, for an OPAQUE complex module. This is the
index-level bridge; no direct unfolding of Fock PiLp is required. -/
private theorem expand_product_fermion_index_and_real_coefficients
    {B S D C I A V : Type*}
    [Fintype B] [Fintype S] [Fintype D] [Fintype C]
    [Fintype I] [Fintype A]
    [AddCommMonoid V] [Module ℂ V]
    (r : B → S → D → C → I → A → ℝ)
    (v : B → S → D → C → V) :
    (∑ b : B, ∑ β : S, ∑ q : D × C,
      (((∑ i : I, ∑ a : A,
           r b β q.1 q.2 i a : ℝ) : ℂ) • v b β q.1 q.2)) =
      ∑ b : B, ∑ β : S, ∑ δ : D, ∑ c : C,
        ∑ i : I, ∑ a : A,
          ((r b β δ c i a : ℝ) : ℂ) • v b β δ c := by
  calc
    _ = ∑ b : B, ∑ β : S, ∑ δ : D, ∑ c : C,
          (((∑ i : I, ∑ a : A,
            r b β δ c i a : ℝ) : ℂ) • v b β δ c) := by
          apply Finset.sum_congr rfl
          intro b _hb
          apply Finset.sum_congr rfl
          intro β _hβ
          exact Fintype.sum_prod_type'
            (fun δ c =>
              (((∑ i : I, ∑ a : A,
                r b β δ c i a : ℝ) : ℂ) • v b β δ c))
    _ = _ := by
          apply Finset.sum_congr rfl
          intro b _hb
          apply Finset.sum_congr rfl
          intro β _hβ
          apply Finset.sum_congr rfl
          intro δ _hδ
          apply Finset.sum_congr rfl
          intro c _hc
          simp only [Complex.ofReal_sum, Finset.sum_smul]

/-- The actual original real-linear source fermion field equals the
scalar restriction of the independently transcribed COLOR-COVARIANT
manuscript B formula. Concrete Pauli/epsilon orientation NOT proved. -/
theorem originalRealFockField_eq_manuscript_coordinate_B
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    M.deformedFermionField 1 0 x =
      (manuscriptCoordinateBComplex M x).restrictScalars ℝ := by
  have hSum :
      (∑ b : ColorIndex N, ∑ β : SpinIndex,
        ∑ q : FermionIndex N,
          (((∑ i : SpaceIndex, ∑ a : ColorIndex N,
            M.structureConstant a b q.2 * x (i,a) *
              M.gamma i β q.1 : ℝ) : ℂ) •
                (M.theta β b * M.theta q.1 q.2)) =
      (∑ b : ColorIndex N, ∑ β : SpinIndex,
        ∑ δ : SpinIndex, ∑ c : ColorIndex N,
        ∑ i : SpaceIndex, ∑ a : ColorIndex N,
          ((M.structureConstant a b c * x (i,a) *
                M.gamma i β δ : ℝ) : ℂ) •
              (M.theta β b * M.theta δ c)) := by
    exact expand_product_fermion_index_and_real_coefficients
      (B := ColorIndex N) (S := SpinIndex)
      (D := SpinIndex) (C := ColorIndex N)
      (I := SpaceIndex) (A := ColorIndex N)
      (V := Fermion N →L[ℂ] Fermion N)
      (fun b β δ c i a =>
        M.structureConstant a b c * x (i,a) * M.gamma i β δ)
      (fun b β δ c =>
        ((M.theta β b * M.theta δ c) : Fermion N →L[ℂ] Fermion N))
  have hComplex :
      ((Complex.I / 2 : ℂ) •
        (∑ b : ColorIndex N, ∑ β : SpinIndex,
          ∑ q : FermionIndex N,
            (((∑ i : SpaceIndex, ∑ a : ColorIndex N,
              M.structureConstant a b q.2 * x (i,a) *
                M.gamma i β q.1 : ℝ) : ℂ) •
                  (M.theta β b * M.theta q.1 q.2))) =
        manuscriptCoordinateBComplex M x := by
    unfold manuscriptCoordinateBComplex
    exact congrArg
      (fun T : Fermion N →L[ℂ] Fermion N =>
        (Complex.I / 2 : ℂ) • T) hSum
  calc
    M.deformedFermionField 1 0 x =
      (((Complex.I / 2 : ℂ) •
        (∑ b : ColorIndex N, ∑ β : SpinIndex,
          ∑ q : FermionIndex N,
            (((∑ i : SpaceIndex, ∑ a : ColorIndex N,
              M.structureConstant a b q.2 * x (i,a) *
                M.gamma i β q.1 : ℝ) : ℂ) •
                  (M.theta β b * M.theta q.1 q.2)))
        : Fermion N →L[ℂ] Fermion N).restrictScalars ℝ :=
        originalMasslessRealFermionField_normalized_i_half M x
    _ = _ :=
      congrArg
        (fun T : Fermion N →L[ℂ] Fermion N => T.restrictScalars ℝ)
        hComplex

#print axioms originalRealFockField_eq_manuscript_coordinate_B

end
end FCP.BFSSSU2PhysicalDomainS4B33
