# FCP BFSS SU(2) — M4E5 Gate #2 RED: runner shutdown during uncompleted Lean compilation

**Date:** October 22, 2026 PDT.
**Disposition:** `M4E5_GATE2_RED__RUNNER_SHUTDOWN_SIGNAL_EXIT143_DURING_COMPILE__LEAN_VERDICT_NOT_OBTAINED__ZERO_ROOTS__286_CUMULATIVE`.

## Independent original CI evidence

- [GitHub Actions strict Gate #2 run #39812844570](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39812844570), job `119943434832`, attempt 1, overall `completed/failure`.
- Triggering research head `7aaf5c1f1049f28a4e84569d200a701090070dea`, isolated branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.
- Candidate `experiments/openai-math-su2-physical-domain/FCPIndependentFullSmoothCharge.lean`, Git blob `a2026158b4e44528c257ed0da66552e33e9cf428`.
- Original pinned mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; immutable source / candidate hash checks passed.
- M4E4B qualified cubic cache restored successfully: `bfss-fcp-m4e4b-cubic-charge-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Original and accepted dependent `.olean` closure passed.
- The strict compile began at **2026-10-22T16:25:26Z** using `timeout 660s lake env lean -DwarningAsError=true -o ... FCPIndependentFullSmoothCharge.lean` and reached no Lean axiom reports, proof error, theorem verdict or strict acceptance marker.
- At **16:33:16Z** (approximately seven minutes fifty seconds later) GitHub reported:
  ```text
  ##[error]The runner has received a shutdown signal.
  ##[error]Process completed with exit code 143.
  ```
  This indicates the process was terminated with SIGTERM while running; the logs **do not establish why GitHub shut down the runner**. Do not equate it with a compiler-proven proof failure, Mathlib incompatibility, or mathematical contradiction.
- Workflow marked failed, save of new M4E5 cache was skipped; **0/1 new theorem roots**, cumulative **286**. No independent `#print axioms` results from this attempt.
- Qualified Gate #1 remains separately red for its actual `rfl` maximum recursion-depth compiler error. Source and negative knowledge recorded in `audits/OPENAI_MATH_BFSS_SU2_M4E5_GATE1_SOURCE_CHARGE_RFL_MAX_REC_DEPTH_RED_2026_10_22.md`.

## Bounded next strategy

Gate #1 proved direct independent `independentCharge` definition elaborates and is axiom-clean, with the component theorem bridges `hk` and `hc` previously accepted under exact gamma, color and Majorana hypotheses. It failed at final `rfl` after applying `hk` and `hc`. Gate #2 replaced the last `rfl` by recursive `simp only [AlgebraData.charge, LinearMap.add_apply]`, but was interrupted by external SIGTERM before yielding any Lean diagnostics. In particular, the apparent long-running simplification is an **unconfirmed suspected workload bottleneck**, not a verified compiler error.

Next Gate #3 must preserve the mathematical statements, accepted source hashes and exactly two declaration-name and axiom reports. Make only the proof-end change:
```lean
  conv_rhs =>
    rw [AlgebraData.charge]
    rw [LinearMap.add_apply]
  rfl
```
This is a directed right-hand-side reduction of the **single named original charge** and its **outermost operator addition**, not a recursive global simplification over six nested sums. It should avoid traversing all color, spin and coordinate sums as rewrite candidates. Keep the original exact kinetic and cubic component equations and no-J independent definition unchanged.

If Gate #3 reveals new actual Lean errors or another resource shutdown, diagnose and preserve them before trying expensive retries. Avoid merely increasing `maxRecDepth` or timeouts to force huge reduction. The accepted ledger stays 286 until a fully strict green.

## Scope and governance

The complete sixteen-charge equation, physical gauge-restricted charges, graph/domain closures, Hamiltonian equality and all spectral conclusions are **unproved at M4E5**. No math-source modifications, accepted source-blob edits, canonical `main` edits, PR #25 action or Issue #28 action. Research branch only, audit-only commit does not trigger CI.
