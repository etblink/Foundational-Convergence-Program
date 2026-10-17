# L6G6X — original determinant-one SU(2) curve and native adjoint derivative

**Date:** 2026-10-13 PT. **Current status:** KERNEL_QUALIFIED_ORIGINAL_SU2_CURVE_AND_NATIVE_ADJOINT_DERIVATIVE in gate #153. Research branch only. Initial candidate and red-gate records below remain historical negative knowledge.

## Mathematical uncertainty addressed

Accepted L6G6V/W prove unitarity, matrix conjugation differentiation, and the ambient real trace-coefficient derivative for `g_c(t)=exp(t • (i • T_c))`. They do not place this curve inside the source `GaugeGroup 2 = Matrix.specialUnitaryGroup (Fin 2) ℂ`. X discharges determinant one from the original color matrices' trace-zero field and transports W to the source-defined `AlgebraData.adjointCoefficient`, with A=input, B=output and derivative `f_(B A c)`.

## Why this architecture is source-grounded

At pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, `Mathlib/Analysis/Normed/Algebra/MatrixExponential.lean` explicitly lists the general `det(exp A)=exp(trace A)` identity as TODO. X does not invoke that unavailable theorem, introduce a determinant-one premise, or replace the original curve by an unrelated trigonometric parameterization.

For a complex 2-by-2 matrix W with trace zero, put `J=!![0,1;-1,0]`. Exact finite algebra gives `J*(-J)=I`, `adjugate(X)=J Xᵀ (-J)`, and `J Wᵀ=(-W)J`. Pinned `SemiconjBy.exp_right` and `Matrix.exp_transpose` therefore give `adjugate(exp W)=exp(-W)`. Pinned `NormedSpace.exp_add_of_commute` proves `exp W exp(-W)=I`. Combining this with `Matrix.mul_adjugate` gives `det(exp W) I=I`, hence determinant one. This generic theorem needs only `trace W=0`; Hermiticity is used separately by accepted V for unitarity.

The original `pairedAlgebraData.color_traceless` field discharges the trace premise for `t • (i • T_c)`. Pinned `Matrix.mem_specialUnitaryGroup_iff` then combines the two independently proved membership conditions. X constructs the actual source-group subtype and recovers the native adjoint coefficient's derivative by the exact definition in `etblink/math@adc7f124...:lean/OAI/MathematicalPhysics/BFSS/GaugeCore.lean`, retaining W's sign and index order.

Exact pinned APIs were read in `Mathlib/LinearAlgebra/Matrix/Adjugate.lean`, `Mathlib/Analysis/Normed/Algebra/Exponential.lean`, `Mathlib/Analysis/Normed/Algebra/MatrixExponential.lean`, and `Mathlib/LinearAlgebra/UnitaryGroup.lean`. The L2 matrix-norm scope and real-trace derivative architecture are preserved. No compiler/dependency/source pin or accepted source is changed.

## Acceptance and stopping rule

Qualification requires a real X `.olean`, its printed native `HasDerivAt` statement, permitted axioms only (`propext`, `Classical.choice`, `Quot.sound`) for all six public roots and both private finite-matrix helpers, and no compiler error or `sorryAx`. W is separately compiled and audited first. A 240-second bounded new-stage budget is unchanged from W and is intended to expose causal Lean diagnostics.

If this finite proof fails, inspect the first actual error and distinguish the algebraic helpers, exponential/instance interface, source subtype construction, and final derivative transport. The whole candidate stays unqualified even if later printed dependent declarations look plausible.

## Remaining science after a successful X

The one-particle 24-mode action derivative and exterior/Fock implementation are still separate. A curve's determinant-one membership and adjoint derivative do not identify its fermionic representation derivative, the source bounded current, combined Gauss annihilation on the physical core, complete original charge-square assembly, operator closure, or spectrum. The unqualified T Schur-specialization gate and old R4B/R4D concrete cubic assemblies remain paused.

Next bounded target after X qualification: transport the native adjoint derivative through the accepted G3C block formula to the literal eight 3-by-3 one-particle blocks, preserving output B/input A. Then connect the resulting flow to the actual exterior/Fock gauge action using accepted covariance/vacuum interfaces or a source-exact exterior derivation whose premises are separately discharged.

Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Canonical main, both mathematical-source repos, and PR25's normal S3K base remain unchanged; PR25 is draft and unmerged.

## Gate #152 first causal failures and bounded repair

[#152](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38510630673), job `115678063132`, source commit `bc4b8678687590746115ef7a58155e0c145fc192`, completed **FAILURE** at X after independently recompiling and auditing accepted W successfully. K–V cache closure and all pinned environment checks succeeded.

Two local errors were observed, with no timeout or exponential-instance failure:

1. X line 38 `matrixTwoForm_adjugate` left four 2-by-2 entry goals, e.g. `X 1 1 = (![0,1] ᵥ* Xᵀ) 1`. Generic matrix simplification had exposed row-vector multiplication without reducing that interface. The repair explicitly includes the established `Matrix.vecMul` and `dotProduct` definitions in the finite entry proof.
2. X line 73 scalar extraction left `det(exp W) * (if True then 1 else 0) = (if True then 1 else 0)`. The restricted simp list omitted the necessary identity-condition reduction. Use ordinary `simpa` on this small scalar-entry equality, without unfolding the exponential or changing its matrix statement. The nonfatal `letI` linter is also resolved by the upstream proof's `let` form.

The native derivative's final type printed correctly, but its dependencies inherited `sorryAx` from these unfinished matrix proofs. **No X theorem or actual SU(2) membership is accepted from #152.** Repair only these observed finite reductions; retain the adjugate/semiconjugacy determinant proof, trace-zero source discharge, original curve, strict axiom audit and limits. Follow-up success remains unknown until its own compile and audit.

Successor lesson: finite matrices can simplify through row-vector products; inspect the remaining interface rather than repeatedly adding unrelated matrix lemmas. A clean-looking downstream theorem printed after an upstream helper fails does not qualify that downstream theorem.

## Gate #153: original SU(2) curve and native derivative qualified

[#153](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38511261397), job `115680067435`, source commit `02e5e74fc6db5a71ef563ace734831d23824ba24`, completed **SUCCESS**. Both finite repairs resolved #152's errors. All six public roots and both private matrix helpers compiled and passed the allowed-axiom audit, with no error or `sorryAx`; marker `L6G6X_ORIGINAL_SU2_CURVE_AND_NATIVE_ADJOINT_DERIVATIVE_QUALIFIED` was emitted.

The source curve is now proved to have determinant one for every real t, belongs to the native `GaugeGroup 2`, equals identity at zero, and differentiates the actual source `adjointCoefficient` to `f_(B A c)` with original +i sign. The generic determinant theorem retains only its explicit trace-zero premise, discharged here by `pairedAlgebraData.color_traceless`; no determinant-one or derivative premise was added.

Accepted X source blob: `b4aff5ae8e55e506d6850765ec661d777b63a58e`. Actual PR-merge CI checkout: `5d499fd4ce395b005a896e4eb80409ec7acb31bb`. Preserved artifact `bfss-l6g1-source-qualification-38511261397`, ID `11869854203`, SHA256 `97b4b13d5ea80cf9275fe7b66dfb276c12011958354bd1b54a6ac1016918c1d9`. This permanent statement and source record preserves the accepted boundary after artifact expiry.

Next candidate `L6G6Y` transports the native derivative through G3C's actual block equation and the pinned real-to-complex and finite-Pi derivative laws. The complete 24-mode derivative is still unqualified until its own gate passes. All Fock, Gauss, square-assembly and spectral limitations above remain.

**Subsequent qualification:** [#154](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38511980270) now qualifies that complete original 24-mode derivative in Y. See [Y's accepted statement and remaining Fock obligation](./L6G6Y_ORIGINAL_ONE_PARTICLE_DERIVATIVE_BOUNDARY_0_1_0.md). X's statement and frozen source remain unchanged.
