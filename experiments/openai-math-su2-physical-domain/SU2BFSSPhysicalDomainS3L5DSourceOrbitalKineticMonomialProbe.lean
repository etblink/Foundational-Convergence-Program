import SU2BFSSPhysicalDomainS3L5CSourceOrbitalFermionActionCommutationProbe

/-!
# S3L5D — original source orbital action on each BFSS kinetic monomial

The actual source L_ij is the already-qualified S3L1 orbital operator.
The exact source M.fermionAction is S3L4C and commutes with that L_ij
by the qualified S3L5C theorem. The original coordinateDerivative
transformation under L_ij was qualified in S3L3E.

Prove their operator composition law on the ORIGINAL SmoothCore 2,
parametrically for all exact source M : AlgebraData 2. This is the
bosonic contribution to the kinetic monomial and does not yet contract
gamma coefficients or assert a full 16-charge/Hamiltonian symmetry.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5D
noncomputable section

open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L1
open FCP.BFSSSU2PhysicalDomainS3L3E
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5C

/-- Original-core composition commutator when the first factor
commutes with the generator. The second-factor commutator is not
assumed to vanish: it is supplied and discharged below from S3L3E. -/
private theorem sourceOrbital_comm_comp_of_first_comm
    (L T D Δ : SourceEnd)
    (hLT : L.comp T = T.comp L)
    (hLD : L.comp D - D.comp L = Δ) :
    L.comp (T.comp D) - (T.comp D).comp L = T.comp Δ := by
  apply LinearMap.ext
  intro f
  simp only [LinearMap.sub_apply, LinearMap.comp_apply]
  have hT : L (T (D f)) = T (L (D f)) := by
    simpa only [LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H (D f)) hLT
  have hD : L (D f) - D (L f) = Δ f := by
    simpa only [LinearMap.sub_apply, LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H f) hLD
  calc
    L (T (D f)) - T (D (L f)) =
      T (L (D f)) - T (D (L f)) := by rw [hT]
    _ = T (L (D f) - D (L f)) := (map_sub T _ _).symm
    _ = T (Δ f) := by rw [hD]

/-- Source-parametric orbital covariance of the literal BFSS kinetic
fermionAction–derivative monomial, retaining all original operator
domains and the exact source spatial rotation signs. -/
theorem sourceOrbital_comm_kineticMonomial
    (M : AlgebraData 2) (i j k : SpaceIndex)
    (γ : SpinIndex) (A B : ColorIndex 2) (hij : i ≠ j) :
    (pairedSourceOrbitalPlaneGenerator i j).comp
        ((M.fermionAction γ A).comp (coordinateDerivative (N := 2) k B)) -
      ((M.fermionAction γ A).comp (coordinateDerivative (N := 2) k B)).comp
        (pairedSourceOrbitalPlaneGenerator i j) =
      (M.fermionAction γ A).comp
        (if k = j then coordinateDerivative (N := 2) i B
         else if k = i then -(coordinateDerivative (N := 2) j B)
         else 0) := by
  exact sourceOrbital_comm_comp_of_first_comm
    (pairedSourceOrbitalPlaneGenerator i j)
    (M.fermionAction γ A)
    (coordinateDerivative (N := 2) k B)
    (if k = j then coordinateDerivative (N := 2) i B
      else if k = i then -(coordinateDerivative (N := 2) j B)
      else 0)
    (sourceOrbital_comm_fermionAction M i j γ A)
    (pairedSourceOrbital_comm_derivative i j k B hij)

#print axioms sourceOrbital_comm_kineticMonomial

end
end FCP.BFSSSU2PhysicalDomainS3L5D
