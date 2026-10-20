# S1V52L1B — original 48 two-coordinate norm Gate #1 RED

**Disposition:** `L1B_GATE1_RED__PI_SINGLE_UNCONSTRAINED_FUNCTION_TYPE__SOURCE_SPECIALIZATION_REWRITE_RECURSION__BOTH_ROOTS_SORRYAX__NO_PROMOTION`.

## Primary CI and exact evidence

- [Actions run #39402924403](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39402924403), job `118561801317`, concluded **failure**, source commit `8ecf384755f38d1a61ba1a3577c61d401befc009`.
- Exact candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L1BOriginalSourceTwoCoordinateNormProbe.lean` original Git blob `47f844731204b288cd69b1b23be834fa18029ee5`.
- Original upstream FCP etblink/math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, Lean 4.34.1, original BFSS Core blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`. Source SHA preflight passed, accepted L1A cache `bfss-s1v52l1a-original48-isolated-abstract-norm-z-factor-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored; every required source `.olean` found.
- Actual errors at lines 39 and 40: `Function expected at c • Pi.single i ?m.93 - s • Pi.single j ?m.100`, while term inferred as metavariable rather than `Source48Vector = SourceLabel → ℝ`; the unannotated `Pi.single` expression was being applied to `k` inside a `change` summation.
- Distinct error line 78: `maximum recursion depth has been reached` on `rw [source48Quadratic_two_coordinate_norm _ _ hij]`, an expensive concrete rewrite specializing to source axes and labels.
- Both roots `source48Quadratic_two_coordinate_norm` and `sourceZPlane_firstVector_unit` reported `sorryAx`. The entire two-root gate is **RED**, no qualified module cache, zero accepted new roots. No implication of mathematical falsehood.
- L1A generic orthogonal-vector norm and original source +i Clifford factorization remain independently **accepted** (run #39401752872, 2 roots).

## Repair/negative knowledge

1. Specify `(Pi.single i (1 : ℝ) : Source48Vector)` and similarly for `j` in all norm-dot summand expressions. Avoid leaving the function's implicit codomain as an unresolved metavariable under dependent `Pi.single`.
2. Rewrite the final source proof as an explicit `calc` with *an already fully instantiated equality term*, avoiding `rw` on the enormous original `source48Quadratic` term. Keep the source `sourceBlockColorLabel_injective` proof explicit; do not unfold `finProdFinEquiv` into concrete indices.
3. Re-run only after source SHA changes and a strict workflow hash update, preserve `#print axioms`, no sorry, fixed original BFSS pin.
4. If specialization still recurses, split the general coordinate result from the concrete source bridge again, and consider deriving the concrete norm using `source48Quadratic_eq_dot` plus source coordinate orthogonality without instantiating heavyweight linear-map typeclass machinery.
5. Staged L2 Lipschitz unit proof is blocked until concrete source-vector norm is qualified; `spinGroup source48Quadratic`, sixteen-block lift, exact source gauge action, continuity remain open.

Accepted S1V52 root count remains **51**. No changes to main, original etblink/math, or draft PR #25.
