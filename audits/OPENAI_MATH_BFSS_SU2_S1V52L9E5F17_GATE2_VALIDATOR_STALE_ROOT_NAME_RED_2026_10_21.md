# S1V52L9E5F17 — Gate #2 red: actual Lean proof compiled, strict validator expects stale F16 theorem name

**Verdict:** `L9E5F17_GATE2_RED__LEAN_F17_PROOF_COMPILED_AXIOM_CLEAN__STRENGTH_OF_MATH_PRESERVED__STALE_EXPECTED_THEOREM_NAME_IN_VALIDATOR__ZERO_ACCEPTED__238_CUMULATIVE`.

## Exact evidence

- [GitHub Actions run #39606004369](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39606004369), job `119242235302`, workflow/source checkout commit `34f95f13f812a350e0bdb2ab53f1b46c69d05eb2`. Final conclusion **FAILURE**.
- Candidate `SU2BFSSPhysicalDomainS1V52L9E5F17OriginalNativeFockUnscaledPairedThetaColorCovarianceProbe.lean`, immutable Git blob `93940c487283e4ffa82c154fa934c9e9cd438baa` — byte-identical to Gate #1. Four-way source SHA preflight and original upstream pins passed.
- Qualified F16 and B0 caches restored on their actual source branch. Original BFSS and Pauli, full source Spin48 Fock prerequisite DAG, and compilation of F17 completed successfully.
- The Lean compiler printed exactly:
  - `FCP.BFSSS1V52L9E5F16.originalNativeSixteenFock_normalizedMajorana_color_covariance`: `[propext, Classical.choice, Quot.sound]`.
  - `FCP.BFSSS1V52L9E5F17.originalNativeSixteenFock_pairedTheta_conjugation`: `[propext, Classical.choice, Quot.sound]`.
- The gate then raised Python `AssertionError` during the **independent fail-closed theorem-name validator**. The copied workflow had `assert re.findall(r'^theorem (\\S+)',src,re.M)==["originalNativeSixteenFock_normalizedMajorana_color_covariance"]`, which is F16's earlier declaration name, **not** F17's actual `originalNativeSixteenFock_pairedTheta_conjugation`.
- Because the validator failed, the job did not save an F17 accepted cache. The entire Gate #2 has **0/1 accepted new roots**, despite evidence that Lean compiled the unchanged theorem.

## Minimal correction for Gate #3

Change **only** the expected theorem-name literal in the validator to `originalNativeSixteenFock_pairedTheta_conjugation` and advance the isolated workflow identity to Gate #3. Keep candidate Git blob `93940c487283e4ffa82c154fa934c9e9cd438baa` and the exact accepted F16/B0 caches, Lean/Mathlib and upstream source pins, theorem statement, normalized-to-unscaled proof, axiom whitelist, and other validator requirements unchanged.

Fail-closed CI is working as designed: a compiled theorem in a failing gate is not promoted. We have stronger evidence of formal viability, but accepted S1V52 ledger remains **238** until the fully corrected strict gate succeeds.

## Scientific boundary

This F17 root cancels the positive nonzero real `sqrt 2` in F16's literal original Fermion-2 Majorana conjugation, preserving the real original color coefficients and operator order. It does **not** assert complete source `fermionGaugeLinearHom` equality, S1H's complex-coefficient vector covariance, manuscript module identification, physical Hamiltonian-domain transport or BFSS spectral results. No changes to canonical main, pinned upstream or draft PR #25.
