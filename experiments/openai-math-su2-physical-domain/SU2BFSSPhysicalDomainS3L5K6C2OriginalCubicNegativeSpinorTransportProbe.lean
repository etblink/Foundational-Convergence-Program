import SU2BFSSPhysicalDomainS3L5K6C1OriginalCubicCoefficientContractionProbe

/-!
# S3L5K6C2 — isolated original cubic source coefficient step
K6C2 Gate #4: isolate type aliases and use simp-only rather than whnf-heavy change.
Gate #4 qualification: avoid Gate #3 whnf timeout at change by simp-only three typed aliases. Gate #3 experiment: explicitly typed named scalar and monomial interfaces before finite-sum transport; preserve the exact original theorem statement.
Specialize already-qualified K6B negative sixfold transport to original BFSS gammaTwo and original SmoothCore cubic monomials.
No new axioms, source physics, concrete K2 commutator, or spectral claims.
-/

namespace FCP.BFSSSU2PhysicalDomainS3L5K6C2
noncomputable section
open scoped BigOperators
open OAI.BFSSQuantum
open FCP.BFSSSU2GaugeG1A
open FCP.BFSSSU2PhysicalDomainS3A
open FCP.BFSSSU2PhysicalDomainS3L4B
open FCP.BFSSSU2PhysicalDomainS3L5A
open FCP.BFSSSU2PhysicalDomainS3L5K3
open FCP.BFSSSU2PhysicalDomainS3L5K4
open FCP.BFSSSU2PhysicalDomainS3L5K5
open FCP.BFSSSU2PhysicalDomainS3L5K6B
open FCP.BFSSSU2PhysicalDomainS3L5K6C1

theorem pairedOriginalCubicNegativeCoefficients_asSpinorSum
    (i j : SpaceIndex) (α : SpinIndex) :
    ∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (-(∑ β : SpinIndex,
        (pairedPlaneSpinGenerator i j α β : ℂ) *
          ((originalCubicStructureWeight A B C *
            pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ))) •
          originalCubicSourceMonomial k l γ A B C =
    -(∑ β : SpinIndex,
          (pairedPlaneSpinGenerator i j α β : ℂ) •
            (∑ k : SpaceIndex, ∑ l : SpaceIndex,
              ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
              ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
              (((originalCubicStructureWeight A B C *
                pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ)) •
                  originalCubicSourceMonomial k l γ A B C)) := by
  -- Name each fully typed source interface BEFORE asking Lean to match
  -- the generic compiled theorem to the sixfold concrete BFSS term.
  -- All three definitions are definitionally the original source values.
  let d : SpinIndex → ℂ :=
    fun β => (pairedPlaneSpinGenerator i j α β : ℂ)
  let c : SpinIndex → SpaceIndex → SpaceIndex →
      ColorIndex 2 → ColorIndex 2 → ColorIndex 2 →
      SpinIndex → ℂ :=
    fun β k l A B C γ =>
      (((originalCubicStructureWeight A B C *
        pairedAlgebraData.gammaTwo k l β γ : ℝ) : ℂ))
  let T : SpaceIndex → SpaceIndex → ColorIndex 2 →
      ColorIndex 2 → ColorIndex 2 → SpinIndex → SourceEnd :=
    fun k l A B C γ => originalCubicSourceMonomial k l γ A B C
  -- Gate #3 failed at 'change' itself (whnf heartbeat exhaustion).
  -- Reuse the compiled K6B theorem as a named proof first; rewrite ONLY
  -- the three explicit aliases, never unfold the BFSS operators.
  have h : (∑ k : SpaceIndex, ∑ l : SpaceIndex,
      ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
      ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
      (-(∑ β : SpinIndex, d β * c β k l A B C γ)) •
        T k l A B C γ) =
    -(∑ β : SpinIndex, d β •
      (∑ k : SpaceIndex, ∑ l : SpaceIndex,
        ∑ A : ColorIndex 2, ∑ B : ColorIndex 2,
        ∑ C : ColorIndex 2, ∑ γ : SpinIndex,
        c β k l A B C γ • T k l A B C γ)) :=
      sourceCubicNegativeFreeSpinorSum_transport d c T
  simpa only [d, c, T] using h

#print axioms pairedOriginalCubicNegativeCoefficients_asSpinorSum

end
end FCP.BFSSSU2PhysicalDomainS3L5K6C2
