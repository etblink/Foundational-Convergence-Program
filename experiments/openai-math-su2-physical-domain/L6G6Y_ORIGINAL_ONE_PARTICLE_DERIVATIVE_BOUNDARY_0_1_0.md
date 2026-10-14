# L6G6Y — original 24-mode gauge representation derivative

**Date:** 2026-10-13 PT. **Status:** source-grounded candidate awaiting pinned qualification. Research branch only.

## Exact mathematical target

Accepted U computed the candidate 24-mode tangent. Accepted X now constructs the actual source `+i` curve `sourcePlusIGaugeCurve c t : GaugeGroup 2` and proves the native adjoint coefficient derivative. Y proves the derivative of **G3C's original complexOneParticleMatrix** along that curve, equal to the U tangent. This turns the candidate coefficient into an actual derivative of the constructed representation; it is not a redefinition of either matrix.

For all `c : ColorIndex 2`, the full target is

`HasDerivAt (fun t : ℝ => complexOneParticleMatrix (sourcePlusIGaugeCurve c t)) (source24ModeCandidateTangent c) 0`.

On row `colorModeEquiv(j,B)` and column `colorModeEquiv(k,A)`, the derivative is `if j=k then (structureConstant B A c : ℂ) else 0`. B is output, A is input; all eight source spin-pair blocks retain the exact +i sign and off-block entries vanish.

## Qualified interfaces reused and new composition

G3C's `complexOneParticleMatrix_block` is the literal source block equation. G3A's `adjointColorMatrix g B A` is exactly `pairedAlgebraData.adjointCoefficient g A B`. X's accepted native scalar derivative therefore gives each diagonal block entry after pinned `HasDerivAt.ofReal_comp` (`Mathlib/Analysis/Complex/RealDeriv.lean`). Off-block entries use the constant-zero derivative.

Reindex every original mode through `colorModeEquiv.surjective`; U's accepted `source24ModeCandidateTangent_block` recovers the original tangent matrix entries. Apply pinned `hasDerivAt_pi` twice (`Mathlib/Analysis/Calculus/Deriv/Prod.lean`) to obtain the whole 24-by-24 matrix derivative. This method adds no new derivative hypothesis and avoids concrete 2^24-dimensional Fock operator expansion. Original one-particle identity at zero is also recovered from X and G3C.

Qualification requires the Y `.olean`, complete printed derivative type and the allowed-axiom audit of all four public roots. No compiler error, `sorryAx`, added axiom, alternate source matrix or repinning is accepted. The actual W and X proofs compile and audit first. If specialization fails, inspect its exact scalar-cast/block/finite-Pi boundary before editing or increasing resources.

## What remains after a successful Y

The actual exterior/Fock gauge derivative and its equality with the original bounded fermion color generator remain open. The source current's CAR commutator and common invariant vacuum are qualified, but those results alone do not identify the generator. The unqualified T source Schur-specialization and R4B/R4D cubic assemblies remain paused. The next target must connect the actual one-particle action to its genuine Fock implementation, fixing any central scalar using the accepted common nonzero vacuum and retaining literal source transport.

No full combined Gauss annihilation, complete charge-square assembly, closed-operator identity, or spectral formalization is inferred from the one-particle derivative. Preserve separate source and analytic obligations.

Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. FCP main and both source repositories are unchanged; PR25 stays draft/unmerged on its S3K base.
