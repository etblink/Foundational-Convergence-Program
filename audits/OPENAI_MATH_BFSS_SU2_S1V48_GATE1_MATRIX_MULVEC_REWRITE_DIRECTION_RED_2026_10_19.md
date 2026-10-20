# S1V48 Gate #1 RED — actual source Spin/SU2 projection fiber inverse `Matrix.mulVec_mulVec` rewrite direction

**Disposition:** `S1V48_G1_SOURCE_PINS_AND_S1V47_CACHE_PASS__PREDICATE_ONE_MUL_PERMITTED_AXIOMS__INV_REWRITE_DIRECTION_RED_SORRYAX__NO_NEW_CACHE`.

- Exact strict [S1V48 Gate #1 run #39370408498](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39370408498), job `118454507196`, **RED**, workflow commit `24bd1647a287dbe9f2cbac10bbdb1191d83dd4ed`, source commit `f2ba543c6ed6acea2cdf2f998a2a7c924478dfc6` and blob `a752cc0601f53979cdf00bb24ce426ede08da21c`.
- Original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact FCP source SHA preflight passed. Accepted S1V47 qualified cache restored with original S1J/S1M/S1V18/Spin modules present.
- Three declarations printed permitted axioms only `[propext, Classical.choice, Quot.sound]`: `sourceSpin48CoversActualGauge`, `sourceSpin48CoversActualGauge_one`, and `sourceSpin48CoversActualGauge_mul`. They ARE locally compiling roots, but the complete S1V48 module is **not** accepted and no new cache was saved.
- First causal compiler failure at source line 91: `rw [← Matrix.mulVec_mulVec]` searched for a **product matrix action** `(M * N) *ᵥ v`, whereas the actual goal already had **nested vector actions** `M *ᵥ N *ᵥ v = v`. Pinned Mathlib's `Matrix.mulVec_mulVec` is oriented from nested action to product action. This is a theorem rewrite-direction error, not evidence against the original gauge/Spin compatibility property.
- Because of the unfinished inverse proof, `sourceSpin48CoversActualGauge_inv` printed `sorryAx`; strict CI correctly failed closed. An unused `change` warning in the identity proof was harmless and distinct.
- Debug artifact `bfss-s1v48-spin-fiber-39370408498` uploaded at ID `12240673862`.

**Bounded Gate #2 repair:** replace only `rw [← Matrix.mulVec_mulVec]` by `rw [Matrix.mulVec_mulVec]` in the inverse proof, preserving every declared theorem, source-sign convention and CI validator. Then rerun one new exact-source strict gate. If another proof elaboration defect emerges, preserve the new earliest causal failure without assuming completion.

**Scientific nonimplication:** Even a complete three-case identity/multiplication/inverse compatibility lemma would merely formalize a future global lift's exact projection requirement; it would not establish any SU2→Spin48 lift's existence, continuity, uniqueness, central sign normalization, manuscript module intertwiner or BFSS spectrum.

Canonical main, upstream math and draft PR #25 untouched.
