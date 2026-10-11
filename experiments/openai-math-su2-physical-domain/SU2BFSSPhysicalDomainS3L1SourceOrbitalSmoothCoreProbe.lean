import SU2BFSSPhysicalDomainS3BFullPlaneSpinVectorCovarianceProbe

/-!
# BFSS SU(2) S3L1 — orbital plane generator on the ORIGINAL smooth core

This generator uses only the genuine upstream AlgebraData.position and
AlgebraData.coordinateDerivative maps specialized to pairedAlgebraData.
The source smooth core is preserved by construction, because each summand
is a composition of the original SmoothCore endomorphisms.

This is an infinitesimal orbital differential operator, NOT an integrated
one-parameter unitary or a Hamiltonian symmetry claim. No surrogate
functions or extra analytic assumptions.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L1
noncomputable section

open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A

/-- The actual source orbital generator L_ij = sum_A
 x_i^A partial_(j,A) - x_j^A partial_(i,A) on the original smooth core. -/
noncomputable def pairedSourceOrbitalPlaneGenerator
    (i j : SpaceIndex) : SmoothCore 2 →ₗ[ℂ] SmoothCore 2 :=
  ∑ A : ColorIndex 2,
    ((position (N := 2) i A).comp
      (coordinateDerivative (N := 2) j A) -
     (position (N := 2) j A).comp
      (coordinateDerivative (N := 2) i A))

/-- This is exactly the true BFSS 27-variable orbital differential
expression, with the original fderiv and source coordinate directions. -/
theorem pairedSourceOrbitalPlaneGenerator_apply
    (i j : SpaceIndex) (f : SmoothCore 2) (x : Boson 2) :
    pairedSourceOrbitalPlaneGenerator i j f x =
      ∑ A : ColorIndex 2,
        ((((x (i, A) : ℝ) : ℂ) •
          fderiv ℝ (f : Boson 2 → Fermion 2) x
            (EuclideanSpace.single (j, A) 1)) -
         (((x (j, A) : ℝ) : ℂ) •
          fderiv ℝ (f : Boson 2 → Fermion 2) x
            (EuclideanSpace.single (i, A) 1))) := by
  unfold pairedSourceOrbitalPlaneGenerator
  simp only [LinearMap.sum_apply, LinearMap.sub_apply, LinearMap.comp_apply,
    map_sum, map_sub]
  apply Finset.sum_congr rfl
  intro A _
  change
    (((x (i, A) : ℝ) : ℂ) •
      (coordinateDerivative (N := 2) j A f) x) -
    (((x (j, A) : ℝ) : ℂ) •
      (coordinateDerivative (N := 2) i A f) x) = _
  rw [coordinateDerivative_apply,
      coordinateDerivative_apply]

#print axioms pairedSourceOrbitalPlaneGenerator_apply

end
end FCP.BFSSSU2PhysicalDomainS3L1
