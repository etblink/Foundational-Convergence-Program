# L6G6W — ambient adjoint derivative: exact rewrite boundary

**Date:** 2026-10-13 PT. **Scope:** FCP research branch only. This is a diagnostic and qualification record, not a proof certificate.

## Gate #150: what changed and what failed

[Original Source Spin Identity #150](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38508242239), job `115670573177`, source commit `0bd4aacb3543bc701fe7aa51f312c7d1a9896f48`, completed **FAILURE**. Its sole Lean error is `SU2BFSSPhysicalDomainL6G6WAmbientAdjointCoefficientDerivativeProbe.lean:114:2`.

The previous #149 matrix-instance mismatch did **not** recur. Opening the pinned GaugeGeometry proof's `Matrix.Norms.L2Operator` scope and composing its original `BFSSGaugeFlow.exp_conj_deriv_zero` directly with the real trace functional successfully elaborated the derivative composition, explicit matrix `change`, source commutator normalization, and the accepted `L6G6U` coefficient rewrite.

The final `simpa only [sourcePlusIColorMatrix, sourcePlusIColorMatrix_conjTranspose] using hd` failed. The resulting hypothesis contains the final factor `exp(t • (-(i • T_c)))`; the target still contains `(exp(t • (i • T_c)))ᴴ`. The curve definition was unfolded before the named conjugate-transpose helper could rewrite its left side. This is an expression-conversion failure, not evidence against the chain rule, source sign, or mathematical derivative.

The helper `sourcePlusIColorMatrix_conjTranspose` printed only `propext`, `Classical.choice`, and `Quot.sound`. The failed full derivative printed `sorryAx` and is **NOT QUALIFIED**. The accepted K–V cache restored and its required objects validated before W ran. No environment or source-pin regression was observed.

## Bounded next experiment

Rewrite the goal with `simp_rw [sourcePlusIColorMatrix_conjTranspose]` while the named curve is still visible; then use `simpa only [sourcePlusIColorMatrix] using hd`. Preserve the entire statement, `+i` curve convention, output color B/input color A, real structure constant `f_(B A c)`, matrix norm scope, source pins, and strict axiom audit.

Prediction: this removes the sole observed mismatch while retaining #150's successful calculus architecture. Acceptance still requires a successful pinned `.olean` compilation and both public roots' allowed-axiom checks. No success is claimed before that evidence. If a new instance or expression mismatch appears, inspect its exact first error before another change.

## Scientific boundary and successor lesson

W differentiates an **ambient unitary matrix trace coefficient**. It does not yet construct a curve in the determinant-one `GaugeGroup 2`, differentiate the actual G3C/G4A/G4B gauge representation, identify the fermionic generator, annihilate the combined Gauss constraint, or establish a spectral theorem. Existing U/V and source-vacuum results remain qualified on their own statements.

Use a named equality before unfolding the definition its left side requires. A simplifier list containing both a definition and its helper is not a guarantee that the helper will match. Preserve the progression of first causal failures: #149 instance coherence; #150 final conjugate-transpose conversion. Do not collapse them into one unchanged red streak or repeat chain-rule guesses after that step has successfully elaborated.

Pinned environment: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Canonical main and both mathematical-source repositories are unchanged.
