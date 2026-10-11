import SU2BFSSPhysicalDomainS3L5BActualKineticMonomialCovarianceProbe

/-!
# S3L5C — orbital generators commute with literal source fermionAction

On the ORIGINAL pinned SmoothCore 2, the accepted source orbital L_ij
is a finite color sum of position/coordinateDerivative compositions.
The accepted S3L4B source postcomposition operator commutes with each
of those original bosonic factors. The accepted S3L4C interface then
identifies EVERY source M.fermionAction with that same postcomposition.

This is an unconditional, source-parametric operator identity for any
M : AlgebraData 2. It does not assume a fermionic covariance law, nor
introduce a replacement Hilbert space or a new rotation generator.

The concrete 16-component BFSS kinetic/cubic charge covariance, physical
Hamiltonian symmetry, closed domains and spectra remain unproved here.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5C
noncomputable section

open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2PhysicalDomainS3L1
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L4C

/-- An operator commuting with two original source endomorphisms also
commutes with their literal composition. No operator-algebra surrogate. -/
private theorem sourceCommutes_with_comp
    (T P D : SourceEnd)
    (hP : T.comp P = P.comp T)
    (hD : T.comp D = D.comp T) :
    (P.comp D).comp T = T.comp (P.comp D) := by
  apply LinearMap.ext
  intro f
  simp only [LinearMap.comp_apply]
  have hd : D (T f) = T (D f) := by
    simpa only [LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H f) hD.symm
  have hp : P (T (D f)) = T (P (D f)) := by
    simpa only [LinearMap.comp_apply] using
      congrArg (fun H : SourceEnd => H (D f)) hP.symm
  calc
    P (D (T f)) = P (T (D f)) := by rw [hd]
    _ = T (P (D f)) := hp

private theorem sourcePostcomp_comm_orbitalSummand
    (K : FockEnd) (i j : SpaceIndex) (A : ColorIndex 2) :
    (((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)) -
      ((position (N := 2) j A).comp (coordinateDerivative (N := 2) i A))).comp
        (sourcePostcomp K) =
      (sourcePostcomp K).comp
        (((position (N := 2) i A).comp (coordinateDerivative (N := 2) j A)) -
          ((position (N := 2) j A).comp (coordinateDerivative (N := 2) i A))) := by
  rw [LinearMap.sub_comp, LinearMap.comp_sub]
  rw [sourceCommutes_with_comp (sourcePostcomp K)
        (position (N := 2) i A) (coordinateDerivative (N := 2) j A)
        (sourcePostcomp_comm_position K i A)
        (sourcePostcomp_comm_derivative K j A),
      sourceCommutes_with_comp (sourcePostcomp K)
        (position (N := 2) j A) (coordinateDerivative (N := 2) i A)
        (sourcePostcomp_comm_position K j A)
        (sourcePostcomp_comm_derivative K i A)]

/-- Every bounded fiber endomorphism acting via *original source*
TestFunction.postcompCLM commutes with the actual finite-color orbital
generator L_ij on SmoothCore 2. -/
theorem sourcePostcomp_comm_orbital
    (K : FockEnd) (i j : SpaceIndex) :
    (pairedSourceOrbitalPlaneGenerator i j).comp (sourcePostcomp K) =
      (sourcePostcomp K).comp (pairedSourceOrbitalPlaneGenerator i j) := by
  apply LinearMap.ext
  intro f
  simp only [pairedSourceOrbitalPlaneGenerator,
    LinearMap.comp_apply, LinearMap.sum_apply, map_sum]
  apply Finset.sum_congr rfl
  intro A _
  simpa only [LinearMap.comp_apply] using
    congrArg (fun H : SourceEnd => H f)
      (sourcePostcomp_comm_orbitalSummand K i j A)

/-- The orbital generator commutes with the LITERAL upstream source
AlgebraData.fermionAction for all spinors and SU(2) colors. -/
theorem sourceOrbital_comm_fermionAction
    (M : AlgebraData 2) (i j : SpaceIndex)
    (γ : SpinIndex) (C : ColorIndex 2) :
    (pairedSourceOrbitalPlaneGenerator i j).comp
        (M.fermionAction γ C) =
      (M.fermionAction γ C).comp
        (pairedSourceOrbitalPlaneGenerator i j) := by
  rw [sourceFermionAction_eq_postcomp M γ C]
  exact sourcePostcomp_comm_orbital (M.theta γ C) i j

#print axioms sourcePostcomp_comm_orbital
#print axioms sourceOrbital_comm_fermionAction

end
end FCP.BFSSSU2PhysicalDomainS3L5C
