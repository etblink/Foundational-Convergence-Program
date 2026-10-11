import SU2BFSSPhysicalDomainS3L5J1SourceSpatialReindexAndGammaCoefficientProbe

/-!
# S3L5J2 — exact complexified source gamma/J kinetic coefficient

Gate #59 verified both the literal original spatial-source reindex and
the correctly signed REAL gamma/J coefficient. The literal source
kinetic charge weights each gamma coefficient by -Complex.I.

This module moves only that qualified finite coefficient equality from
real to complex scalars, then applies the true -Complex.I weight.
It neither unfolds any Fock operator nor claims completion of the
9×3×16 operator-level spinor contraction; those remain separate.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5J2
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L5J1

/-- Complexification of the independently qualified real S3L5J1
coefficient; the index order and orbital sign remain identical. -/
theorem pairedComplexKineticCoefficient_reindexed
    (i j k : SpaceIndex) (α γ : SpinIndex) (hij : i ≠ j) :
    (∑ β : SpinIndex,
      (pairedAlgebraData.gamma k α β : ℂ) *
        (pairedPlaneSpinGenerator i j γ β : ℂ)) +
      ((if k = i then pairedAlgebraData.gamma j α γ
        else if k = j then -(pairedAlgebraData.gamma i α γ)
        else (0 : ℝ)) : ℂ) =
    -(∑ β : SpinIndex,
      (pairedPlaneSpinGenerator i j α β : ℂ) *
        (pairedAlgebraData.gamma k β γ : ℂ)) := by
  have h := congrArg (fun x : ℝ => (x : ℂ))
    (pairedRealKineticCoefficient_reindexed i j k α γ hij)
  simpa using h

/-- Multiply the exact complexified gamma/J identity by the
LITERAL original -Complex.I source kinetic coefficient, with no
additional free coefficient or hidden sign choice. -/
theorem pairedMinusI_KineticCoefficient_reindexed
    (i j k : SpaceIndex) (α γ : SpinIndex) (hij : i ≠ j) :
    -Complex.I *
      ((∑ β : SpinIndex,
        (pairedAlgebraData.gamma k α β : ℂ) *
          (pairedPlaneSpinGenerator i j γ β : ℂ)) +
        ((if k = i then pairedAlgebraData.gamma j α γ
          else if k = j then -(pairedAlgebraData.gamma i α γ)
          else (0 : ℝ)) : ℂ)) =
    -Complex.I *
      (-(∑ β : SpinIndex,
        (pairedPlaneSpinGenerator i j α β : ℂ) *
          (pairedAlgebraData.gamma k β γ : ℂ))) := by
  exact congrArg (fun z : ℂ => -Complex.I * z)
    (pairedComplexKineticCoefficient_reindexed i j k α γ hij)

#print axioms pairedComplexKineticCoefficient_reindexed
#print axioms pairedMinusI_KineticCoefficient_reindexed

end
end FCP.BFSSSU2PhysicalDomainS3L5J2
