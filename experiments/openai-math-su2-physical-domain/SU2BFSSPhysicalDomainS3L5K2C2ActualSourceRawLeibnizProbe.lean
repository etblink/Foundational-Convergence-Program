import SU2BFSSPhysicalDomainS3L5K2C1AbstractSourceLeibnizProbe

/-!
# S3L5K2C2 — exact concrete source operator Leibniz shape
K2C Gate #2: add the original GaugeG1A source namespace omitted in K2C2 #1. Preserve exact theorem and raw Leibniz tactic.
K2C Gate #3: Mathlib abstract ring passed; concrete exact source application exhausted recursion depth.\nK2C Gate #4: direct extensional application exhausted wall-clock (exit 124) without Lean diagnostics.\nK2C Gate #5: syntactically generalize the exact three original SourceEnd atoms within the target; prove the stronger abstract identity without source unfolding.

Qualify only the Leibniz decomposition of the ACTUAL source 48-Majorana
combined generator acting on the original ordered cubic monomial.
Do not combine the qualified fermion or position commutator responses
here; those remain independently compiled in K2A/K1. The purpose is to
isolate SourceEnd specialization from theorem-substitution elaboration.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K2C2
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open OAI.BFSSQuantum.AlgebraData
-- pairedAlgebraData is defined in the original SU(2) gauge source namespace.
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3D
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5F
open FCP.BFSSSU2PhysicalDomainS3L5K1
open FCP.BFSSSU2PhysicalDomainS3L5K2C1

theorem pairedActualCombined_comm_cubicMonomial_rawLeibniz
    (i j k l : SpaceIndex) (γ : SpinIndex)
    (A B C : ColorIndex 2) :
    (sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j).comp
        ((pairedAlgebraData.fermionAction γ A).comp
          ((position (N := 2) k B).comp (position (N := 2) l C))) -
    ((pairedAlgebraData.fermionAction γ A).comp
      ((position (N := 2) k B).comp (position (N := 2) l C))).comp
      (sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j) =
      ((sourceParametricCombinedPlane
        (pairedFermionPlaneSpinGenerator i j) i j).comp
          (pairedAlgebraData.fermionAction γ A) -
        (pairedAlgebraData.fermionAction γ A).comp
          (sourceParametricCombinedPlane
            (pairedFermionPlaneSpinGenerator i j) i j)).comp
          ((position (N := 2) k B).comp (position (N := 2) l C)) +
      (pairedAlgebraData.fermionAction γ A).comp
        ((sourceParametricCombinedPlane
          (pairedFermionPlaneSpinGenerator i j) i j).comp
            ((position (N := 2) k B).comp (position (N := 2) l C)) -
         ((position (N := 2) k B).comp (position (N := 2) l C)).comp
           (sourceParametricCombinedPlane
             (pairedFermionPlaneSpinGenerator i j) i j)) := by
  -- Gate #3: concrete specialisation of the abstract theorem recursed.
  -- Gate #4: direct pointwise simplification took the 65s wall-clock limit.
  -- Instead abstract only THREE rigid SourceEnd atoms syntactically in the
  -- CURRENT GOAL, BEFORE applying any algebraic theorem. We never reduce
  -- their genuine Fock, gamma, orbital, position or gauge definitions.
  -- The resulting goal is the exact noncommutative SourceEnd identity.
  generalize hG :
    sourceParametricCombinedPlane
      (pairedFermionPlaneSpinGenerator i j) i j = G
  generalize hF : pairedAlgebraData.fermionAction γ A = F
  generalize hP :
    (position (N := 2) k B).comp (position (N := 2) l C) = P
  exact sourceComm_comp_raw G F P

#print axioms pairedActualCombined_comm_cubicMonomial_rawLeibniz

end
end FCP.BFSSSU2PhysicalDomainS3L5K2C2
