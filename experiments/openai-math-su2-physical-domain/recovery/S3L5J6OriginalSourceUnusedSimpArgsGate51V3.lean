import SU2BFSSPhysicalDomainS3L5J5SourceKineticResponseSplitProbe

/-!
# S3L5J6 — literal source orbital derivative response reindex at fixed A,γ

Use accepted J1 spatial finite-sum transport and J5 original weighted
response pieces; no expansion of the paired 48-Majorana Fock operator.

This qualifies the precise orbital-index coefficient assignment for a
genuine AlgebraData 2 source fermionAction and coordinateDerivative,
then instantiates original -Complex.I gamma kineticWeight.
It does NOT yet combine the fermionic J4 response or conclude
full free-spinor covariance of the actual kinetic source charge.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5J6
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5I2A
open FCP.BFSSSU2PhysicalDomainS3L5J1
open FCP.BFSSSU2PhysicalDomainS3L5J5
open FCP.BFSSSU2GaugeG1A

/-- A genuine source linear endomorphism distributes over the orbital
derivative's two conditional branches, including the exact minus sign. -/
theorem sourceComp_orbitalDerivative_cases
    (F : SourceEnd) (D : SpaceIndex → SourceEnd)
    (i j k : SpaceIndex) :
    F.comp (if k = j then D i else if k = i then -(D j) else 0) =
    (if k = j then F.comp (D i) else if k = i then -(F.comp (D j)) else 0) := by
  by_cases hkj : k = j
  · simp [hkj]
  · by_cases hki : k = i
    · have hij : i ≠ j := by
        intro e
        exact hkj (hki.trans e)
      apply LinearMap.ext
      intro f
      simp [hki, hij, LinearMap.comp_apply]
    · apply LinearMap.ext
      intro f
      simp [hkj, hki]

/-- The named J5 orbital source piece is exactly the J1 spatial
derivative variation applied to the literal source kineticTerm. -/
theorem sourceKineticOrbitalPiece_asDerivativeCases
    (M : AlgebraData 2) (i j k : SpaceIndex)
    (A : ColorIndex 2) (γ : SpinIndex) :
    kineticOrbitalPiece M i j k A γ =
    (if k = j then kineticTerm M i A γ
     else if k = i then -(kineticTerm M j A γ) else 0) := by
  simpa only [kineticOrbitalPiece, kineticTerm] using
    (sourceComp_orbitalDerivative_cases
       (M.fermionAction γ A)
       (fun k => coordinateDerivative (N := 2) k A) i j k)

/-- Exact source orbital coefficient transport at fixed color and
spinor, for ANY source AlgebraData 2 and complex coefficient c. -/
theorem sourceOrbitalFixedColorSpinor_reindex
    (M : AlgebraData 2) (i j : SpaceIndex) (hij : i ≠ j)
    (A : ColorIndex 2) (γ : SpinIndex) (c : SpaceIndex → ℂ) :
    (∑ k : SpaceIndex, c k • kineticOrbitalPiece M i j k A γ) =
    ∑ k : SpaceIndex,
      (if k = i then c j else if k = j then -(c i) else 0) •
        kineticTerm M k A γ := by
  calc
    _ = ∑ k : SpaceIndex,
      c k • (if k = j then kineticTerm M i A γ
        else if k = i then -(kineticTerm M j A γ) else 0) := by
          apply Finset.sum_congr rfl
          intro k _
          rw [sourceKineticOrbitalPiece_asDerivativeCases]
    _ = _ := sourceOrbitalSpatialSum_reindex i j hij c
      (fun k => kineticTerm M k A γ)

/-- Source SU(2) paired specialization, retaining the original
kineticWeight = -Complex.I * gamma and the same source monomials. -/
theorem pairedOrbitalFixedColorSpinor_reindex
    (i j : SpaceIndex) (hij : i ≠ j)
    (α γ : SpinIndex) (A : ColorIndex 2) :
    (∑ k : SpaceIndex,
      kineticWeight pairedAlgebraData α k A γ •
        kineticOrbitalPiece pairedAlgebraData i j k A γ) =
    ∑ k : SpaceIndex,
      (if k = i then kineticWeight pairedAlgebraData α j A γ
       else if k = j then -(kineticWeight pairedAlgebraData α i A γ)
       else 0) • kineticTerm pairedAlgebraData k A γ := by
  exact sourceOrbitalFixedColorSpinor_reindex pairedAlgebraData
    i j hij A γ (fun k => kineticWeight pairedAlgebraData α k A γ)

#print axioms sourceComp_orbitalDerivative_cases
#print axioms sourceKineticOrbitalPiece_asDerivativeCases
#print axioms sourceOrbitalFixedColorSpinor_reindex
#print axioms pairedOrbitalFixedColorSpinor_reindex

end
end FCP.BFSSSU2PhysicalDomainS3L5J6
