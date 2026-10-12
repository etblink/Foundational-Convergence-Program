import SU2BFSSPhysicalDomainS3L5K2D1ParametricCubicFactorTransportProbe

/-!
# S3L5K2D2 — literal original BFSS cubic factor, conditional bridge

K2D1 is axiom-qualified and compiled: it proves genuine SourceEnd factor
transport before specializing to pairedFermionPlaneSpinGenerator or
pairedAlgebraData. Here we perform ONE concrete specialization with the
original 48-Majorana Fock generator and original fermionAction, keeping
the ACTUAL fermion commutator response hF VISIBLE as a hypothesis.

This is an experimental bridge: it is NOT unconditional original cubic
monomial covariance until that hypothesis is discharged by accepted K2A,
and not yet the source monomial-definitional bridge or cubic charge sum.
This is not a variant of the stopped raw K2C2 theorem; K1 + Leibniz have
already been discharged once in K2D1 at parameter level.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2D2
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2
open FCP.BFSSSU2PhysicalDomainS3L5K2D1

/-- Concrete original source-operator factor, conditional ONLY on the
exact K2A fermionAction covariance identity. The hypothesis is not an
axiom: K2A has already independently discharged this statement. -/
theorem pairedActualCombined_comm_cubicFactor_of_fermionResponse
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) (hij : i ≠ j)
    (hF :
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j).comp
          (pairedAlgebraData.fermionAction γ A) -
      (pairedAlgebraData.fermionAction γ A).comp
        (sourceParametricCombinedPlane
          (pairedFermionPlaneSpinGenerator i j) i j) =
        sourceCubicFermionVariation i j γ A) :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
        ((pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) -
    ((pairedAlgebraData.fermionAction γ A).comp
       ((position (N := 2) k B).comp (position (N := 2) l C))).comp
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j) =
    (sourceCubicFermionVariation i j γ A).comp
      ((position (N := 2) k B).comp (position (N := 2) l C)) +
    (pairedAlgebraData.fermionAction γ A).comp
      ((sourcePositionVariation i j k B).comp (position (N := 2) l C) +
        (position (N := 2) k B).comp
          (sourcePositionVariation i j l C)) := by
  -- Unlike old K2B, K1 and Leibniz are already proved and sealed in
  -- K2D1. No explicit sourceComm_comp application / hP inference here.
  have h := sourceCombined_comm_cubicFactor_of_fermionResponse
    pairedAlgebraData (pairedFermionPlaneSpinGenerator i j)
    i j k l γ A B C (sourceCubicFermionVariation i j γ A) hij hF
  trace "K2D2_ORIGINAL_GENERATOR_AND_FERMION_ACTION_INSTANCE"
  exact h

#print axioms pairedActualCombined_comm_cubicFactor_of_fermionResponse

end
end FCP.BFSSSU2PhysicalDomainS3L5K2D2
