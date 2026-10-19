# BFSS S1V27 — first genuine original SU2 historical quarter vs independent Spin48 real-matrix comparison gate

**Date:** October 19, 2026 PDT. **Current status:** `S1V25_2_ROOTS_ACCEPTED__S1V26_74_ROOTS_ACCEPTED__S1V27_5_NEW_ROOTS_IN_CI_NOT_ACCEPTED`.

## Strict accepted inputs and unavoidable cache-merge issue

- [S1V25 corrected Gate #2 success #39323769366](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39323769366), job `118304220298`, 2/2 genuine historical original S1J real-matrix source typed roots passed allowed axioms, cache SAVED `bfss-s1v25-isolated-original-source48-historical-quarter-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Exact S1V25 blob `e9762e418272c0ad8ed9937a4f837f4c5743b1f2`; first Gate #1 red lexing `+/-` inside Lean comment is preserved in negative knowledge and was not a mathematics failure.
- [S1V26 independent Spin48 Gate #1 success #39323121776](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39323121776), job `118301980699`, original-source-sized 16 original unchanged Spin(48) rotor modules, 74/74 checked exact axiom roots. Actual original S1V24 cache restored; SAVED `bfss-s1v26-isolated-original-size-spin48-rotor-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Includes genuine original S1J `SO(48)` module and independent S1V18 rotor 48-real diagonal matrix at same original 8×3×2 total size. Neither cache contains an unqualified S1V27 equality.

## Bounded strict follow-up now running (no claim of success)

- Workflow `.github/workflows/bfss-s1v27-actual-source-quarter-spin48-matrix-equality-strict.yml`, commit `50321ef924efe8b40bf762b00789a19e076837f9`, [S1V27 Strict Gate #1 run #39326355701](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39326355701), dispatched path-scoped **only** by its own CI workflow.
- Original immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original accepted S1J source SHA1, actual historical S1V23 source SHA1, exact prior accepted S1V18 rotor source SHA1 and **two exact new source blobs** `S1V25=e9762e418272c0ad8ed9937a4f837f4c5743b1f2`, `S1V27=a3a368006d8e33cd2d3fcded43faee66415918de` checked.
- Restores **exact** S1V26 cached 16-module Spin48 + original S1V24 source build, fail-closed `cache-hit` and `S1V18, S1V16, S1V11, S1J, L6G6X, S1V23, G4K,G4L` `.olean` presence. This addresses a concrete artifact mismatch: S1V26 and S1V25 sibling caches were produced independently on top of S1V24 and cannot be assumed to overlay.
- Then compiles unchanged already ACCEPTED S1V25 mathematical source in S1V26 environment (two roots), next compiles NEW S1V27 original-plus-i historical curve matrix equality (five roots), strictly audits **7/7** exact #print names, private-name cardinality, allowed axioms `[propext, Classical.choice, Quot.sound]`, no `sorryAx`, and verifies source `.olean` on each. Strict success marker `S1V27_ACTUAL_HISTORICAL_SU2_QUARTER_EQUALS_INDEPENDENT_SPIN48_7_ROOTS_KERNEL_PASS`.
- SAVE a NEW `bfss-s1v27-isolated-historical-source-spin48-matrix-v1-adc7f124-lean4341-d13f23b-Linux-X64` **only after success**; do not claim success or availability until actual GitHub cache-save confirmation. At writing, gate is in progress.

## Five actual proposed S1V27 candidate proof roots

In `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V27HistoricalOriginalQuarterVsIndependentSpin48MatrixProbe.lean`:
1. `FCP.BFSSS1V27.standalone_source_label_eq_original`.
2. `FCP.BFSSS1V27.standalone_source_label_eq_paired_original`.
3. `FCP.BFSSS1V27.standalone_quarter_coeff_original`.
4. `FCP.BFSSS1V27.historical_source_quarter_48_matrix_block_entry`.
5. `FCP.BFSSS1V27.historical_source_quarter_48_matrix_eq_independent_spin_quarter` (full actual historical original SU2 source matrix equals independent 16-rotor real matrix).

**Important:** the former S1V20 historical equality source was unqualified and referred to a different still-heavy S1V19 definition. The new S1V27 imports directly the actual ACCEPTED S1V23/S1V25 original historical L6G6X source and independently constructed S1V18 rotor. Unlike prior candidates, it does NOT require an unqualified S1G Euler calculation or assumed abstract Spin48 map. The new `rfl` mode equivalences and matrix equality proof remain first-compile hypotheses, not established facts. If red, preserve the first real Lean error, disambiguate syntactic/coercion mismatch from actual mathematical sign/index mismatch, and make targeted source corrections; never change the kernel's axiom whitelist or the factual math statement just to pass.

## Absolute scientific ceiling

Even if Gate #1 is fully green, S1V27 only proves equality of one original historical SU(2) element's *48-real orthogonal action* with one separately constructed actual Spin48 rotor's orthogonal conjugation. It does NOT identify a unique Spin48 preimage/phase, furnish a continuous global SU2→Spin48 homomorphism, identify independently constructed complex irreducible Clifford module with source Fock Hilbert module, justify gauge-invariant operator-domain transport, nor establish BFSS point spectrum or mass gap. Continue only on isolated research branch; `main`, draft PR #25 and original pinned mathematics unchanged.
