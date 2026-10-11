import SU2BFSSPhysicalDomainS3L5HFiniteSumAndCoefficientEntryProbe

/-!
# S3L5I — full original kinetic finite-sum commutator expansion

Use only the accepted S3L5H weighted finite-sum rule and the source
S3L5G actual combined monomial. The target retains every actual
-Complex.I * pairedAlgebraData.gamma coefficient over 9 spatial,
3 color and 16 spin indices, and the literal sourceKineticCharge.

This is an EXPANDED kinetic commutator identity, not yet the final
spinor-index contracted covariance. No cubic term, full Q, domain,
Hamiltonian group symmetry, spectral or eigenvalue claim is made.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5I
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5G
open FCP.BFSSSU2PhysicalDomainS3L5H

/-- Three successive finite sums, keeping the innermost complex scalar
weights exactly intact. This is an identity of original SmoothCore 2
endomorphisms, not a claim about a BFSS spectrum. -/
theorem sourceComm_three_weighted_sums
    (G : SourceEnd)
    (c : SpaceIndex → ColorIndex 2 → SpinIndex → ℂ)
    (T : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd) :
    G.comp (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • T k A γ) -
      (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • T k A γ).comp G =
      ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • (G.comp (T k A γ) - (T k A γ).comp G) := by
  classical
  calc
    _ = ∑ k : SpaceIndex,
        (G.comp (∑ A : ColorIndex 2, ∑ γ : SpinIndex, c k A γ • T k A γ) -
          (∑ A : ColorIndex 2, ∑ γ : SpinIndex, c k A γ • T k A γ).comp G) :=
      sourceComm_sum Finset.univ G
        (fun k => ∑ A : ColorIndex 2, ∑ γ : SpinIndex, c k A γ • T k A γ)
    _ = ∑ k : SpaceIndex, ∑ A : ColorIndex 2,
        (G.comp (∑ γ : SpinIndex, c k A γ • T k A γ) -
          (∑ γ : SpinIndex, c k A γ • T k A γ).comp G) := by
      apply Finset.sum_congr rfl
      intro k _
      exact sourceComm_sum Finset.univ G
        (fun A => ∑ γ : SpinIndex, c k A γ • T k A γ)
    _ = ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • (G.comp (T k A γ) - (T k A γ).comp G) := by
      apply Finset.sum_congr rfl
      intro k _
      apply Finset.sum_congr rfl
      intro A _
      exact sourceComm_weighted_sum Finset.univ G
        (fun γ => c k A γ) (fun γ => T k A γ)

/-- Specialized transport through all three sums when every term's
commutator has already been proven. This makes the concrete S3L5G
source hypothesis visible, never tacitly assumed. -/
theorem sourceComm_three_weighted_sums_of
    (G : SourceEnd)
    (c : SpaceIndex → ColorIndex 2 → SpinIndex → ℂ)
    (T R : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd)
    (h : ∀ k A γ, G.comp (T k A γ) - (T k A γ).comp G = R k A γ) :
    G.comp (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • T k A γ) -
      (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • T k A γ).comp G =
      ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
        c k A γ • R k A γ := by
  rw [sourceComm_three_weighted_sums]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro A _
  apply Finset.sum_congr rfl
  intro γ _
  rw [h k A γ]

/-- The ACTUAL original source kinetic charge, not an invented model:
all 9×3×16 finite-sum coefficients including -i are preserved.
The only physics input is the fully qualified S3L5G true paired
48-Majorana combined monomial identity. The final gamma/J contraction
is left to a separate independently checked gate. -/
theorem pairedActualCombined_comm_sourceKineticCharge_expanded
    (i j : SpaceIndex) (α : SpinIndex) (hij : i ≠ j) :
    (sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j).comp
      (sourceKineticCharge pairedAlgebraData α) -
    (sourceKineticCharge pairedAlgebraData α).comp
      (sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j) =
    ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      (-Complex.I * (pairedAlgebraData.gamma k α γ : ℂ)) •
        ((pairedAlgebraData.fermionAction γ A).comp
          (if k = j then coordinateDerivative (N := 2) i A
           else if k = i then -(coordinateDerivative (N := 2) j A)
           else 0) +
         (∑ β : SpinIndex,
           (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
             pairedAlgebraData.fermionAction β A)).comp
             (coordinateDerivative (N := 2) k A)) := by
  let G : SourceEnd :=
    sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j
  let c : SpaceIndex → ColorIndex 2 → SpinIndex → ℂ :=
    fun k _ γ => -Complex.I * (pairedAlgebraData.gamma k α γ : ℂ)
  let T : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd :=
    fun k A γ => (pairedAlgebraData.fermionAction γ A).comp
      (coordinateDerivative (N := 2) k A)
  let R : SpaceIndex → ColorIndex 2 → SpinIndex → SourceEnd :=
    fun k A γ =>
      (pairedAlgebraData.fermionAction γ A).comp
        (if k = j then coordinateDerivative (N := 2) i A
         else if k = i then -(coordinateDerivative (N := 2) j A)
         else 0) +
      (∑ β : SpinIndex,
        (((pairedPlaneSpinGenerator i j β γ : ℝ) : ℂ) •
          pairedAlgebraData.fermionAction β A)).comp
        (coordinateDerivative (N := 2) k A)
  have hterm : ∀ k A γ,
      G.comp (T k A γ) - (T k A γ).comp G = R k A γ := by
    intro k A γ
    exact pairedActualCombined_comm_kineticMonomial i j k γ A A hij
  change G.comp (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      c k A γ • T k A γ) -
    (∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      c k A γ • T k A γ).comp G =
    ∑ k : SpaceIndex, ∑ A : ColorIndex 2, ∑ γ : SpinIndex,
      c k A γ • R k A γ
  exact sourceComm_three_weighted_sums_of G c T R hterm

#print axioms sourceComm_three_weighted_sums
#print axioms sourceComm_three_weighted_sums_of
#print axioms pairedActualCombined_comm_sourceKineticCharge_expanded

end
end FCP.BFSSSU2PhysicalDomainS3L5I
