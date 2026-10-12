# L6G5B — negative knowledge from first complex kinetic color Gram gate

**Date:** 2026-10-12. **Run #13:** [red](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38308797985), at commit `bf7069e3b8fe1d7d460e18085b90ddf871bd1b61`.

## Evidence and precise classification

The full workflow reached L6G5B with the pinned upstream etblink/math checkout, compiler, Mathlib, and accepted L6G1, L6G2, L6G3, L6G4A, L6G4B, and L6G5A premises all successful. The L6G5B Lean invocation **failed to compile** due to two local proof-interface errors, not an observed contradiction in the finite gamma/color identity:

1. `originalGamma_complexRowKineticGram`: at original line 85, `exact_mod_cast h` reconstructed the *real* finite Gram equality rather than the target *complex* equality. Lean reported that `mod_cast` had a real-valued sum proof but expected a casted sum. **Correction:** transport the accepted real equality by `congrArg (fun a : ℝ => (a : ℂ)) h`, then let `simpa` normalize casted finite sums/products and the if expression. Do not re-prove the gamma identity.
2. `sourceSpinorKineticWeight_colorGram`: at original line 135, `rw [colorSelectors_contract]` did not synthesize the two complex row functions from the `if` expression. **Correction:** explicitly instantiate `S := SpinIndex`, `C := ColorIndex N`, both colors, and both row functions, then rewrite with that typed instance. Avoid asking Lean to guess higher-order functions from nested conditionals.

The audit printed `sorryAx` for the two unfinished declarations because Lean elaborated proofs with errors; such declarations are **rejected**, not independently verified. The `sourceSpinorKineticWeight_eq` declaration, color-selector lemma and `minusI_mul_minusI` lemma showed only the permitted standard axioms, but no partial acceptance of the whole L6G5B theorem is claimed.

## Targeted repair and bounded check

Commit [`415b4782d9d74264235b95a08db1fa5881bb2ee6`](https://github.com/etblink/Foundational-Convergence-Program/commit/415b4782d9d74264235b95a08db1fa5881bb2ee6) changes only those two proof steps in the L6G5B source. [Run #14](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38310062657) is the next qualification attempt. **Its result was not known at the time of this note.** Never promote the attempted repair to a qualified theorem without a successful pinned compile and explicit `#print axioms` audit.

## Run #14 follow-up: one remaining if/cast mismatch

[Run #14](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38310062657) at `415b4782d9d74264235b95a08db1fa5881bb2ee6` also finished red, but **both original proof-interface errors did not persist**. The explicit `colorSelectors_contract` instance rewrote successfully; no new local error appeared in the final `sourceSpinorKineticWeight_colorGram` proof. The only Lean error, line 86, remained in `originalGamma_complexRowKineticGram`: after `congrArg (fun a : ℝ => (a : ℂ))` and `simpa`, the result still had `↑(if i = j then spinorSquareNorm w else 0)` while the target was `if i = j then ↑(spinorSquareNorm w) else 0`. **Do not change the theorem or gamma normalization to work around this syntactic cast mismatch.**

Committed fix [`f838be4e1c0f84be496171147a5e0cd37ad843c6`](https://github.com/etblink/Foundational-Convergence-Program/commit/f838be4e1c0f84be496171147a5e0cd37ad843c6) explicitly splits `i = j` and `i ≠ j` before transporting the equality. This discharges the conditional form by reduction to its two ordinary scalar cases; it remains a candidate until the follow-up Lean CI compiler and axiom gate passes.

## Research boundaries retained

L6G5A's exact real gamma Gram theorem is already accepted. L6G5B targets only the complex `-i` kinetic coefficient, finite spinor/color contraction, and its negative diagonal sign. It does **not** prove the full kinetic differential-operator square, original scalar potential, either Gauss generator, gauge restriction, closure or spectral positivity. Preserve source normalizations and seek the smallest compiler-verifiable bridge rather than increasing heartbeats or rerunning legacy monolithic cubic proofs.

The run header has been renamed `BFSS L6G5B Complex Kinetic Color Gram` in the workflow; historical owner reporting may call the same workflow `Original Source Spin Identity`. Use the run ID and commit to disambiguate.
