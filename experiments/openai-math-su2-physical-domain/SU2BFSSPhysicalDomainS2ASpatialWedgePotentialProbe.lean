import SU2BFSSPhysicalDomainS1COneParticleSpecialUnitaryProbe
import SU2ColorCrossProbe

/-!
# BFSS SU(2) S2A — actual Pauli-normalized bosonic spatial-wedge potential

The paper's confinement argument begins with the genuine quartic BFSS
potential V = Σ_{a<b} |x^a ∧ x^b|² on the original three 9-vectors.

The pre-existing accepted SU2ColorCrossProbe proves an exact pointwise
formula for the *pinned source* deformedBosonicPotential 1 0 as a sum
of three color-minor squares at each strict spatial pair, conditional on
the source color basis. Specialize to the actual pairedAlgebraData
and exchange the finite spatial/color sums. No proxy potential is used.

This is one essential *bosonic potential* step toward the paper's
confinement estimate, NOT a claim about the spin(9) sectors,
derivatives, closed-form coercivity, compact resolvent, or eigenvalues.
-/

namespace FCP.BFSSSU2PhysicalDomainS2A
noncomputable section

open Finset
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2
open FCP.BFSSSU2GaugeG1A

/-- Actual 9-dimensional spatial wedge squared, expressed as strict
spatial minors on the original BFSS Boson 2 coordinates. -/
noncomputable def sourceSpatialWedgeSq (x : Boson 2)
    (a b : ColorIndex 2) : ℝ :=
  ∑ p : OAI.BFSSGamma.SpatialPair,
    (x (p.1.1, a) * x (p.1.2, b) -
      x (p.1.1, b) * x (p.1.2, a)) ^ 2

theorem sourceSpatialWedgeSq_nonneg (x : Boson 2)
    (a b : ColorIndex 2) :
    0 ≤ sourceSpatialWedgeSq x a b := by
  unfold sourceSpatialWedgeSq
  exact Finset.sum_nonneg (fun p hp => sq_nonneg _)

/-- The actual pinned paired SU(2) source potential is exactly the
three spatial 9-vector wedge energies. Its Pauli normalization is
not assumed: it follows from the accepted paired source color. -/
theorem pairedPotential_eq_spatialWedges (x : Boson 2) :
    pairedAlgebraData.deformedBosonicPotential 1 0 x =
      sourceSpatialWedgeSq x (0 : Fin 3) (1 : Fin 3) +
        sourceSpatialWedgeSq x (0 : Fin 3) (2 : Fin 3) +
        sourceSpatialWedgeSq x (1 : Fin 3) (2 : Fin 3) := by
  have hcolor : ∀ a : ColorIndex 2,
      pairedAlgebraData.color a = normalizedPauli a := by
    intro a
    rfl
  rw [deformedBosonicPotential_one_zero_eq_wedge pairedAlgebraData hcolor x]
  simp only [colorWedgeSquared, sourceSpatialWedgeSq, Finset.sum_add_distrib]

/-- The pointwise one-color lower bound (color zero) from the paper:
retaining its two color-crossing spatial wedges and discarding the
nonnegative third wedge. This is the normalized source V(x) itself. -/
theorem pairedPotential_ge_two_spatialWedges (x : Boson 2) :
    sourceSpatialWedgeSq x (0 : Fin 3) (1 : Fin 3) + sourceSpatialWedgeSq x (0 : Fin 3) (2 : Fin 3) ≤
      pairedAlgebraData.deformedBosonicPotential 1 0 x := by
  rw [pairedPotential_eq_spatialWedges]
  have h := sourceSpatialWedgeSq_nonneg x 1 2
  linarith

theorem pairedPotential_nonneg (x : Boson 2) :
    0 ≤ pairedAlgebraData.deformedBosonicPotential 1 0 x := by
  rw [pairedPotential_eq_spatialWedges]
  have h01 := sourceSpatialWedgeSq_nonneg x 0 1
  have h02 := sourceSpatialWedgeSq_nonneg x 0 2
  have h12 := sourceSpatialWedgeSq_nonneg x 1 2
  linarith

#print axioms sourceSpatialWedgeSq_nonneg
#print axioms pairedPotential_eq_spatialWedges
#print axioms pairedPotential_ge_two_spatialWedges
#print axioms pairedPotential_nonneg

end
end FCP.BFSSSU2PhysicalDomainS2A
