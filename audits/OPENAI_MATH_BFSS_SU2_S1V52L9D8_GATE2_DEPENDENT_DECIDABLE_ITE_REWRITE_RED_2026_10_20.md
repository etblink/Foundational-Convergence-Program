# L9D8 strict Gate #2 — RED, 0/1: dependent Decidable condition blocks `rw` inside `if`

**Independent diagnostic:** `L9D8_GATE2_RED__ONE_REMAINING_COMPILER_ROOT__DEPENDENT_ITE_REWRITE_MOTIVE__L9D7_QUALIFIED_CACHE_HIT__197_CUMULATIVE`.

- [GitHub Actions run #39539714595](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39539714595), job `119024425343`, completed FAILURE at exact workflow commit `6f46cf83f31487ffc2e9244869a8ba65eeca7a7f`, candidate Git blob `4573ebf453a97c12534503fafa924770d0a9865b`.
- Verified source preflight, original pinned upstream BFSS and Mathlib, parent cache **HIT** `bfss-s1v52l9d7-original-fock-majorana-block-entry-v1-adc7f124-lean4341-d13f23b-Linux-X64`; all exact original Fock transitive modules and accepted original source label dependencies restored/compiled.
- The prior Gate #1 three defects (invalid `Prod.mk.inj_iff.mp`, missing source-label indicator argument, broad recursive `simp`) no longer appear.
- Sole compiler error: `...SourceBasisMulVecProbe.lean:72:8`, `Tactic 'rewrite' failed: motive is not type correct`, arising from `rw [hlabel]` when rewriting `(if sourceBlockColorLabel β C = sourceBlockColorLabel α B then 1 else 0)` to `(if α = β ∧ B = C then 1 else 0)`.
- Explanation from Lean: original `instDecidableEqProd ... : Decidable (sourceBlockColorLabel β C = sourceBlockColorLabel α B)` cannot be carried to a motive with arbitrary new proposition `_a`. Plain rewriting inside a **dependent `ite` condition** has an invalid motive, even though the logical iff was already correctly proved by original source-label injectivity.
- The statement remains mathematically unaffected, the root's axiom report contains `sorryAx` only because Lean could not finish the proof, and **zero new roots are accepted** (count **197**). No qualified L9D8 cache.
- Gate #3 correction plan: avoid `rw` inside the `ite`; perform `by_cases h : α = β ∧ B = C`, derive the original concrete index equality via `hlabel.mpr h` when true, derive its negation using `hlabel.mp` when false, and simplify just both concrete `if` branches. Keep theorem statement and original source matrix/basis conventions identical. Preserve finite sum reduction; diagnose any further compiler errors separately.

Original `main`, pinned math upstream and draft PR #25 unchanged. Staged L9D9 universal source projection is not qualified.
