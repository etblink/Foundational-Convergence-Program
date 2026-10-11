import SU2BFSSPhysicalDomainS3L5GConcreteCombinedKineticMonomialProbe
import SU2BFSSPhysicalDomainS3L0SourceKineticSpinorCoefficientProbe

/-!
# S3L5H — finite source commutator transport and exact gamma coefficient entry

The next target is the original full -i gamma kinetic charge, not an
artificially simplified Hamiltonian. This gate deliberately isolates:

1. additive and scalar-weighted finite sums of commutators on the literal
   source SmoothCore 2 (general linear-map identities, no BFSS physics);
2. the indexed REAL coefficient identity of the already-qualified S3L0
   source gamma/J matrices, without unfolding the concrete Fock generator.

A later gate must apply these pieces to the original 9 x 3 x 16 kinetic
sum, including the Complex.I coefficient, and then verify its concrete
source charge identity. Cubic charge, full Q, closed form/Hamiltonian,
Spin(9) and spectral claims remain unproved.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5H
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L0

/-- Scalar weighting commutes with taking a source-endomorphism
commutator. This is linear algebra on the ORIGINAL SmoothCore 2. -/
theorem sourceComm_smul (G T : SourceEnd) (c : ℂ) :
    G.comp (c • T) - (c • T).comp G =
      c • (G.comp T - T.comp G) := by
  apply LinearMap.ext
  intro f
  change G (c • T f) - c • T (G f) =
    c • (G (T f) - T (G f))
  rw [map_smul, smul_sub]

/-- Finite-sum commutator transport for the literal source test core.
No sum of original charge operators is expanded here. -/
theorem sourceComm_sum {ι : Type*} [DecidableEq ι]
    (s : Finset ι) (G : SourceEnd) (T : ι → SourceEnd) :
    G.comp (∑ a ∈ s, T a) - (∑ a ∈ s, T a).comp G =
      ∑ a ∈ s, (G.comp (T a) - (T a).comp G) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
      simp only [Finset.sum_insert ha]
      calc
        G.comp (T a + ∑ b ∈ s, T b) -
            (T a + ∑ b ∈ s, T b).comp G =
          (G.comp (T a) - (T a).comp G) +
          (G.comp (∑ b ∈ s, T b) -
            (∑ b ∈ s, T b).comp G) := by
              rw [LinearMap.comp_add, LinearMap.add_comp]
              abel
        _ = (G.comp (T a) - (T a).comp G) +
            ∑ b ∈ s, (G.comp (T b) - (T b).comp G) := by rw [ih]

/-- Weighted source finite-sum transport. The original kinetic charge's
-Complex.I * gamma coefficient will enter through this interface, not
through gigantic charge-expression elaboration. -/
theorem sourceComm_weighted_sum {ι : Type*} [DecidableEq ι]
    (s : Finset ι) (G : SourceEnd)
    (c : ι → ℂ) (T : ι → SourceEnd) :
    G.comp (∑ a ∈ s, c a • T a) -
        (∑ a ∈ s, c a • T a).comp G =
      ∑ a ∈ s, c a • (G.comp (T a) - (T a).comp G) := by
  rw [sourceComm_sum]
  simp_rw [sourceComm_smul]

/-- A single literal matrix-entry equality, from S3L0, with the
orbital spatial correction on the correct side. This is intentionally
REAL: complexification and -i contraction remain independent gates. -/
theorem pairedKineticSpinorCoefficient_entry
    (i j k : SpaceIndex) (α γ : SpinIndex) (hij : i ≠ j) :
    (∑ β : SpinIndex, pairedAlgebraData.gamma k α β *
      pairedPlaneSpinGenerator i j γ β) -
      (if k = j then pairedAlgebraData.gamma i α γ
        else if k = i then -(pairedAlgebraData.gamma j α γ)
        else 0) =
      -(∑ β : SpinIndex, pairedPlaneSpinGenerator i j α β *
        pairedAlgebraData.gamma k β γ) := by
  have h := congrArg (fun M : GammaMatrix => M α γ)
    (pairedKineticSpinorCoefficient_exact i j k hij)
  simpa [Matrix.mul_apply, Matrix.transpose_apply] using h

#print axioms sourceComm_smul
#print axioms sourceComm_sum
#print axioms sourceComm_weighted_sum
#print axioms pairedKineticSpinorCoefficient_entry

end
end FCP.BFSSSU2PhysicalDomainS3L5H
