# BFSS SU(2) S1F #6 / S1G #4 — source-curve proof failure classification

**Date:** 2026-10-18 PDT. **Status:** diagnostic preservation; **neither gate is accepted by this record**.

## Frozen red evidence

- S1F Source Curve Halving **#6**, [run 39107123534](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39107123534), job 117615779736, failure.
- S1G Exact Source Character Triviality **#4**, [run 39107123576](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39107123576), job 117615415604, failure.
- Both ran at original frozen source candidate head `b0fa119414a1b7a07cd004d2939489a246df308e`, with source blob `SU2BFSSPhysicalDomainS1FSourceGaugeCurveHalvingProbe.lean` = `6af3c30d4d54b0725935740711d641aebe650a20`. Pinned Lean 4.34.1 and exact cache restoration succeeded; S1A/S1B and S1D/S1E proof-stage checks completed.

## Earliest causal errors, not theorem-refutation

S1F line 34 at the explicit local `NormedAlgebra ℚ (ColorMatrix 2)` declaration could not synthesize `SeminormedRing (ColorMatrix 2)`. The normed-matrix scope `Matrix.Norms.L2Operator` was missing. The theorem application `NormedSpace.exp_add_of_commute` then failed to rewrite because the expected exponential-multiplication instance did not match the goal.

The previous ad hoc insertion of that instance into the `hprod` subproof was indented incorrectly: its `restrictScalars` body and the local `W` name were out of tactic scope. This independently caused unsolved product-equality goals and cascading `Unknown identifier change`/`W` errors.

S1G #4 failed in its *S1F dependency step*, so **no S1G source theorem was accepted or refuted** in that run. Incidental `#print axioms` reports containing `sorryAx` are evidence of failed elaboration and cannot count as qualified roots.

## Targeted remediation and remaining boundary

At repair commit `d889ba079d2f61b470054298295a805e57fd78a6`, S1F adds `open scoped Matrix.Norms.L2Operator` and corrects the local instance/`W` indentation. This follows the already qualified `L6G6X.twoByTwo_exp_det_one_of_trace_zero` pattern in the original source branch. No mathematical statement, gauge curve, normalized Pauli matrix, inverse convention, source `+i` sign, or S1E condition has changed. Corrected S1F blob `79f34a8d5dc8c7d2ebcf605f709f4d9f2c6b2b14` is pinned in both follow-up workflows.

**Critically: repair is candidate-only until strict CI success, fresh importable `.olean`, and complete permitted-axiom check.** If errors persist, inspect the earliest fresh error and avoid another speculative replay of the same matrix-instance design. S1G remains logically downstream of S1F. The independently written paper's Clifford/Spin(48) lift, unitary module identification, supercharge core/domain bridge, and positive-point spectrum remain OPEN.

Branch governance: S3L research branch; draft PR #25 remains based on S3K and unmerged. No `main`, paper, or upstream modifications.
