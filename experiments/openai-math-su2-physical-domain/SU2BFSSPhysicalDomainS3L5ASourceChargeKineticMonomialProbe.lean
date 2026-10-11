import SU2BFSSPhysicalDomainS3L4DConcreteSourceFockSpinCovarianceProbe

/-!
# S3L5A — literal source charge and fermionic spin on kinetic monomials

This is an independent, bounded first gate toward the *original*
16-component BFSS supercharge covariance. Preserve EXACTLY the
AlgebraData.charge coefficients and ordering from pinned Core.lean,
separating the kinetic part from the gammaTwo cubic part. Then prove
how the *actual* qualified 48-Majorana source spin acts on each true
fermionAction ∘ coordinateDerivative monomial.

The full kinetic sum, orbital contribution, cubic covariance, combined
charge and Hamiltonian conclusions remain separate, unproved gates.
No surrogate Fock representation, invented source operators, axioms,
or alteration of the pinned Hamiltonian are introduced.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5A
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L4D

/-- The literal -i gamma theta derivative portion of Core.lean's
AlgebraData.charge, with all its original finite index sums. -/
noncomputable def sourceKineticCharge
    (M : AlgebraData 2) (α : SpinIndex) : SourceEnd :=
  ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ β : SpinIndex,
    (-Complex.I * (M.gamma k α β : ℂ)) •
      ((M.fermionAction β A).comp (coordinateDerivative (N := 2) k A))

/-- The literal 1/2 structure-constant gammaTwo cubic portion of
Core.lean's original BFSS source charge, retaining ordered multipliers. -/
noncomputable def sourceCubicCharge
    (M : AlgebraData 2) (α : SpinIndex) : SourceEnd :=
  ∑ k : SpaceIndex, ∑ l : SpaceIndex, ∑ A : ColorIndex 2,
    ∑ B : ColorIndex 2, ∑ C : ColorIndex 2, ∑ β : SpinIndex,
    (((1 / 2 : ℝ) * M.structureConstant A B C *
      M.gammaTwo k l α β : ℝ) : ℂ) •
      ((M.fermionAction β A).comp
        ((position (N := 2) k B).comp (position (N := 2) l C)))

/-- Exact pinned *source* charge definition. Not a formal reconstruction
with altered normalization or a substitute domain. -/
theorem sourceCharge_eq_kinetic_add_cubic
    (M : AlgebraData 2) (α : SpinIndex) :
    M.charge α = sourceKineticCharge M α + sourceCubicCharge M α := rfl

/-- The accepted physical paired SU(2) source charge inherits
the exact original source decomposition without expanding its Fock data. -/
theorem pairedSourceCharge_eq_kinetic_add_cubic (α : SpinIndex) :
    pairedAlgebraData.charge α =
      sourceKineticCharge pairedAlgebraData α +
      sourceCubicCharge pairedAlgebraData α :=
  sourceCharge_eq_kinetic_add_cubic pairedAlgebraData α

/-- Elementary composition-commutator rule, stated for actual source
SmoothCore endomorphisms. The second factor genuinely commutes with K. -/
private theorem sourceSpin_comm_comp_of_second_comm
    (K T D Δ : SourceEnd)
    (hKD : K.comp D = D.comp K)
    (hKT : K.comp T - T.comp K = Δ) :
    K.comp (T.comp D) - (T.comp D).comp K = Δ.comp D := by
  apply LinearMap.ext
  intro f
  simp only [LinearMap.sub_apply, LinearMap.comp_apply]
  have hD : D (K f) = K (D f) := by
    simpa only [LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H f) hKD.symm
  have hT : K (T (D f)) - T (K (D f)) = Δ (D f) := by
    simpa only [LinearMap.sub_apply, LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H (D f)) hKT
  rw [hD]
  exact hT

/-- The ACTUAL paired 48-Majorana source spin transforms each
literal original fermionAction ∘ coordinateDerivative kinetic monomial.
The right side uses the original source fermionAction, not a surrogate
or an assumed spin law. The full -i gamma sum is not yet asserted. -/
theorem pairedActualSourceSpin_comm_kineticMonomial
    (i j k : SpaceIndex) (γ : SpinIndex)
    (A B : ColorIndex 2) :
    (pairedActualSourceSpin i j).comp
       ((pairedAlgebraData.fermionAction γ A).comp
         (coordinateDerivative (N := 2) k B)) -
    ((pairedAlgebraData.fermionAction γ A).comp
         (coordinateDerivative (N := 2) k B)).comp
       (pairedActualSourceSpin i j) =
    (∑ β : SpinIndex,
      (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
        pairedAlgebraData.fermionAction β A)).comp
         (coordinateDerivative (N := 2) k B) := by
  exact sourceSpin_comm_comp_of_second_comm
    (pairedActualSourceSpin i j)
    (pairedAlgebraData.fermionAction γ A)
    (coordinateDerivative (N := 2) k B)
    (∑ β : SpinIndex,
      (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
        pairedAlgebraData.fermionAction β A))
    (pairedActualSourceSpin_comm_derivative i j k B)
    (pairedActualSourceSpin_comm_fermionAction i j γ A)

#print axioms sourceCharge_eq_kinetic_add_cubic
#print axioms pairedSourceCharge_eq_kinetic_add_cubic
#print axioms pairedActualSourceSpin_comm_kineticMonomial

end
end FCP.BFSSSU2PhysicalDomainS3L5A
