import SU2BFSSPhysicalDomainS3L5K2C1AbstractSourceLeibnizProbe

/-!
# S3L5K2C2 — exact concrete source operator Leibniz shape
K2C Gate #2: add the original GaugeG1A source namespace omitted in K2C2 #1. Preserve exact theorem and raw Leibniz tactic.
K2C Gate #3: Mathlib abstract ring passed; concrete exact source application exhausted recursion depth.
K2C Gate #4: direct extensional application exhausted wall-clock (exit 124) without Lean diagnostics.\nK2C Gate #5: concrete three-atom generalization timed out (exit 124).\nK2C Gate #6: independent opaque-SourceEnd name experiment; stage marker distinguishes algebraic instantiation from final definitional discharge.

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

/-! Source-faithful opaque interfaces: each RHS is exactly the original
    48-Majorana BFSS source operator, not an assumed source identification. -/
irreducible_def sourceG (i j : SpaceIndex) : SourceEnd :=
  sourceParametricCombinedPlane (pairedFermionPlaneSpinGenerator i j) i j

irreducible_def sourceF (γ : SpinIndex) (A : ColorIndex 2) : SourceEnd :=
  pairedAlgebraData.fermionAction γ A

irreducible_def sourceP (k l : SpaceIndex)
    (B C : ColorIndex 2) : SourceEnd :=
  (position (N := 2) k B).comp (position (N := 2) l C)

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
  -- Independent Grok-inspired test after K2C #5 exit 124.
  -- Stage A: instantiate K2C1 ONLY at three irreducible SourceEnd names.
  -- Stage B: discharge their exact original-source defining equalities
  -- with only these three rewrite rules. No source or physics unfolding
  -- other than the explicitly named definitions.
  have h := sourceComm_comp_raw
    (sourceG i j) (sourceF γ A) (sourceP k l B C)
  trace "K2C2_STAGE_A_OPAQUE_LEIBNIZ_ELABORATED"
  simpa only [sourceG, sourceF, sourceP] using h

#print axioms pairedActualCombined_comm_cubicMonomial_rawLeibniz

end
end FCP.BFSSSU2PhysicalDomainS3L5K2C2
