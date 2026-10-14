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

## Gate #151: repair kernel-qualified

[#151](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38509669642), job `115675031522`, source commit `23a9a90937df7d291cbe6541a4733481eef2437a`, completed **SUCCESS**. The explicit named rewrite removed the sole #150 mismatch. Both `sourcePlusIColorMatrix_conjTranspose` and `sourcePlusIAmbientAdjointCoefficient_deriv` compiled into the W `.olean` and printed only `propext`, `Classical.choice`, and `Quot.sound`. The log reports `L6G6W_SOURCE_AMBIENT_ADJOINT_COEFFICIENT_DERIVATIVE_QUALIFIED` with no Lean errors or `sorryAx`.

The printed full derivative quantifies exactly over `c B A : ColorIndex 2` and differentiates the original real matrix trace expression to `pairedAlgebraData.structureConstant B A c` at zero. Exact mathematical-source/compiler/Mathlib checks and the accepted K–V cache closure validated. W is now qualified at the **ambient coefficient** boundary stated above.

Accepted W source blob: `5f73e148a9c4b2abf6afb7d6204271ec12b00f4f`. The actual PR-merge CI checkout is `fbe45b7634c2498957fba22fcffa449b8eb990c1`, distinct from the source branch commit. Preserved evidence artifact: `bfss-l6g1-source-qualification-38509669642`, ID `11869671481`, SHA256 `093a1896594736fd1c3c3c24ba4dbbbeb76eadcef4fc869a1b32fd8a9b2d7477`. The permanent source/statement record retains the qualification boundary beyond the artifact's 14-day retention window.

Next candidate: `L6G6X` constructs the original determinant-one SU(2) curve and transports this accepted derivative to the native `AlgebraData.adjointCoefficient`. It is not accepted until its own pinned compile and axiom audit succeed.
