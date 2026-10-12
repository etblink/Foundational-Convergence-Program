import SU2BFSSPhysicalDomainS3L5K2C1AbstractSourceLeibnizProbe

/-!
# S3L5K2C2 — exact concrete source operator Leibniz shape
K2C Gate #2: add the original GaugeG1A source namespace omitted in K2C2 #1. Preserve exact theorem and raw Leibniz tactic.
K2C Gate #3: Mathlib abstract ring passed; concrete exact source application exhausted recursion depth.
K2C Gate #4: direct extensional application exhausted wall-clock (exit 124) without Lean diagnostics.\nK2C Gate #5: concrete three-atom generalization timed out (exit 124).\nK2C Gate #6: opaque identity instantiation passed, simultaneous final simpa only hit maxRecDepth at line 75.\nK2C Gate #7: sequential unfold reached all markers, but left irreducible_def internal wrapped values; exact h failed type matching.\nK2C Gate #8: generated sourceP_def/sourceF_def/sourceG_def equation lemmas, preserving the EXACT original theorem.
K2C Gate #9: all generated forward equation rewrites succeeded, final exact h recursed.
K2C Gate #10: reverse generated equations on literal goal; preserve qualified abstract proof opaque. Pinned CI qualification event #10.

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
  -- Gate #9: forward equations at 'h' all succeeded, but final
  -- 'exact h' recursed comparing two huge concrete BFSS expressions.
  -- Gate #10: retain an opaque proof and transform the ORIGINAL GOAL
  -- in the REVERSE direction, one generated equation lemma at a time.
  -- No physical source definition is unfolded beyond these exact
  -- theorem-backed equalities. Each marker identifies a new boundary.
  have h := sourceComm_comp_raw
    (sourceG i j) (sourceF γ A) (sourceP k l B C)
  trace "K2C2_STAGE_A_OPAQUE_LEIBNIZ_ELABORATED"
  rw [← sourceP_def]
  trace "K2C2_STAGE_B1_GOAL_POSITION_PAIR_OPAQUE"
  rw [← sourceF_def]
  trace "K2C2_STAGE_B2_GOAL_FERMION_ACTION_OPAQUE"
  rw [← sourceG_def]
  trace "K2C2_STAGE_B3_GOAL_COMBINED_GENERATOR_OPAQUE"
  exact h

#print axioms pairedActualCombined_comm_cubicMonomial_rawLeibniz

end
end FCP.BFSSSU2PhysicalDomainS3L5K2C2
