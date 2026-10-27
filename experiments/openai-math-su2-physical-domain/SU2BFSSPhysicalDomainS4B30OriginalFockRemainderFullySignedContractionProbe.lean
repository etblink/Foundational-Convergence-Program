import SU2BFSSPhysicalDomainS4B29OriginalFermionRemainderContractibleSumOrderProbe

/-!
S4B30: APPLY the source-proven signed gamma contraction to the actual
full complex Fock fermionic remainder. The genuine original -Complex.I
and 1/16 scalar factors, color/spinor indices, and kinetic-before-field
theta order are all retained. No CAR exchange or manuscript B(x)
identification is asserted.
-/

set_option autoImplicit false
namespace FCP.BFSSSU2PhysicalDomainS4B30
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS4B10
open FCP.BFSSSU2PhysicalDomainS4B11
open FCP.BFSSSU2PhysicalDomainS4B25
open FCP.BFSSSU2PhysicalDomainS4B29

/-- Phase and double sum contraction of real source coefficient products,
proved in an opaque complex module, without unfolding Fock PiLp CLMs. -/
private theorem phasedDouble_sum_real_products
    {ι κ V : Type*} [Fintype ι] [Fintype κ]
    [AddCommMonoid V] [Module ℂ V]
    (z : ℂ) (f g : ι → κ → ℝ) (v : V) :
    (∑ i : ι, ∑ j : κ,
      z • ((((f i j : ℝ) : ℂ) *
        ((g i j : ℝ) : ℂ)) • v)) =
      z • (((∑ i : ι, ∑ j : κ,
        f i j * g i j : ℝ) : ℂ) • v) := by
  calc
    _ = z • (∑ i : ι, ∑ j : κ,
          (((f i j : ℝ) : ℂ) * ((g i j : ℝ) : ℂ)) • v) := by
        simp only [Finset.smul_sum]
    _ = z • (∑ i : ι, ∑ j : κ,
          (((f i j * g i j : ℝ) : ℂ)) • v) := by
        apply congrArg (fun T : V => z • T)
        apply Finset.sum_congr rfl
        intro i _hi
        apply Finset.sum_congr rfl
        intro j _hj
        exact congrArg (fun c : ℂ => c • v)
          (Complex.ofReal_mul (f i j) (g i j)).symm
    _ = _ := by
        simp only [Complex.ofReal_sum, Finset.sum_smul]

/-- Full original complex fermionic remainder with the actual source
spinor-gamma contraction and first/last source color antisymmetry.
This is the entire source Fock CLM equality with original -i and 1/16
still exposed; not a definition or a proof of the manuscript's B(x). -/
theorem originalComplexFermionContraction_full_signed_source
    {N : ℕ} (M : AlgebraData N) (x : Boson N) :
    sourceMasslessComplexFermionContraction M x =
      (1 / 16 : ℂ) •
        (∑ A : ColorIndex N, ∑ β : SpinIndex,
          ∑ q : FermionIndex N,
            (-Complex.I) •
              ((((-8 : ℝ) *
                (∑ j : SpaceIndex, ∑ C : ColorIndex N,
                  M.structureConstant C A q.2 *
                    x (j,C) * M.gamma j β q.1)) : ℝ) : ℂ) •
                  (M.theta β A * M.theta q.1 q.2)) := by
  calc
    _ = (1 / 16 : ℂ) •
        (∑ A : ColorIndex N, ∑ β : SpinIndex,
          ∑ q : FermionIndex N, ∑ k : SpaceIndex, ∑ α : SpinIndex,
            (-Complex.I) •
              (((M.gamma k α β : ℂ) *
                ((sourceMasslessComplexVariationCoefficient M x
                  (EuclideanSpace.single (k, A) (1 : ℝ)) α q : ℝ) : ℂ)) •
                  (M.theta β A * M.theta q.1 q.2))) :=
          originalComplexFermionContraction_contractible_source_order M x
    _ = _ := by
      exact congrArg
        (fun T : Fermion N →L[ℂ] Fermion N => (1 / 16 : ℂ) • T)
        (by
          apply Finset.sum_congr rfl
          intro A _hA
          apply Finset.sum_congr rfl
          intro β _hβ
          apply Finset.sum_congr rfl
          intro q _hq
          rcases q with ⟨δ, D⟩
          calc
            (∑ k : SpaceIndex, ∑ α : SpinIndex,
              (-Complex.I) •
                (((M.gamma k α β : ℂ) *
                  ((sourceMasslessComplexVariationCoefficient M x
                    (EuclideanSpace.single (k, A) (1 : ℝ)) α (δ,D) : ℝ) : ℂ)) •
                    (M.theta β A * M.theta δ D))) =
                (-Complex.I) •
                  (((∑ k : SpaceIndex, ∑ α : SpinIndex,
                    M.gamma k α β *
                      sourceMasslessComplexVariationCoefficient M x
                        (EuclideanSpace.single (k,A) (1 : ℝ)) α (δ,D) : ℝ) : ℂ) •
                      (M.theta β A * M.theta δ D)) :=
                phasedDouble_sum_real_products
                  (-Complex.I)
                  (fun k α => M.gamma k α β)
                  (fun k α =>
                    sourceMasslessComplexVariationCoefficient M x
                      (EuclideanSpace.single (k,A) (1 : ℝ)) α (δ,D))
                  ((M.theta β A * M.theta δ D) :
                    Fermion N →L[ℂ] Fermion N)
            _ = _ :=
              congrArg
                (fun r : ℝ =>
                  (-Complex.I) • ((r : ℂ) •
                    ((M.theta β A * M.theta δ D) :
                      Fermion N →L[ℂ] Fermion N)))
                (originalSourceVariationCoefficient_manuscript_signed
                  M x A D β δ))

#print axioms originalComplexFermionContraction_full_signed_source

end
end FCP.BFSSSU2PhysicalDomainS4B30
