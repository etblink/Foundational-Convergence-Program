# BFSS SU(2) G4-K7 — source sum-of-squares correction and strict-positivity criterion 0.1.0

**Date:** October 9, 2026.
**Status:** `UNCOMPILED_CANDIDATE`.

## Origin: correct the mathematical interpretation

Gate #136 qualifies the lower bound `∃ K≥0, ∀ 0<h≤1, -K ≤ physicalNormalizedTrialEnergy h` for the genuine nonzero `radialBumpL2` and source core energy. The pinned upstream `OAI.MathematicalPhysics.BFSS.MassiveMoments`, however, defines `deformedCoreEnergy` as **one sixteenth of a finite sum of squared norms of deformed supercharges**. Thus global nonnegativity is already immediate. The Gate #136 bound is correct but weaker than the source definition; do not treat it as a new spectral result.

## G4-K7 obligations

On the same pinned `pairedAlgebraData : AlgebraData 2`, prove:
1. `0 ≤ pairedAlgebraData.deformedCoreEnergy h m f` for every `f : SmoothCore 2` and all real `h,m`, from the literal source sum of squares.
2. Specialize this for the exact accepted nonzero smooth Gauss-invariant trial section `radialBumpSmoothCore`.
3. Prove zero energy iff all **actual source** `coreToL2 (pairedAlgebraData.deformedCoreCharge h m α f)` vanish, for any smooth f; specialize to the accepted physical trial.
4. Prove the exact strict-positivity criterion for that trial: `0 < physicalDeformedEnergy h m ↔ ∃ α : SpinIndex, coreToL2 (pairedAlgebraData.deformedCoreCharge h m α radialBumpSmoothCore) ≠ 0`.
5. Conclude `0 ≤ physicalNormalizedTrialEnergy h` **for every real h**, using previously proved `radialBumpL2 ≠ 0` (not needed for nonnegative quotient as denominator is square, but needed for genuine normalized meaning).

## Boundary

The iff is a **conditional criterion** and not evidence that any deformed charge component of the radial state is nonzero. The genuinely new forthcoming question is a source-bound nonzero deformed-charge witness, potentially followed by a strictly positive **trial** energy estimate. Even then, strict energy of one trial state does not imply a spectral gap or exclude zero-energy states elsewhere. Do not assert a ground state, eigenvector, SUSY vacuum, quantitative bound or empirical truth.

Required pinned compiler Lean 4.34.1, OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No `sorry`/`admit`, custom axioms or surrogate state. Update research branch atomically, leave original mathematical sources untouched, and STOP without inspecting newly triggered gate until the owner reports its color.
