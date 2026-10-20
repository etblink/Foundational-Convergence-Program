# S1V52L1C Gate #3 — RED: invalid symmetry projection on negated equality

**Disposition:** `L1C_GATE3_RED__THREE_NE_SYMM_FIELD_ERRORS__PRECHECK_AND_L1A_CACHE_PASS__TWO_ROOTS_UNQUALIFIED__NO_THEOREM_ACCEPTANCE`.

## Exact evidence

- GitHub Actions [run #39408370479](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39408370479), job `118579772746`, **completed failure** at the strict source Lean compile.
- Checked branch checkout `7778cc1cafa4ee03ffeff4aa6e1c930cac28c1db`; candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L1CIsolatedSource48CoordinateNormProbe.lean`, Git blob `bfe773ec4c9b0198cf950b7cbdf461cc3c002aa2`.
- Original pinned upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact preflight and accepted L1A cache restoration passed.
- First Lean errors in the candidate at `47:43`, `48:48` and `48:58`, all `error(lean.invalidField)`: `Invalid field symm` applied to `hki` or `hkj` of type `j = i → False`, `k = i → False`, `k = j → False`. These are negated equalities, not equality proofs with a `.symm` field available at these occurrences. The earlier Gate #1/#2 `hsplit` error is not the earliest error of Gate #3.
- The run also reported unused `simp` arguments and deprecated `if_pos`/`if_neg` warnings; those warnings are not independent mathematical counterexamples.
- Neither `source48Dot_two_coordinate_norm` nor `source48Quadratic_two_coordinate_norm` passed the complete strict compilation and allowed-axiom validator; no accepted L1C `.olean` cache saved. **The S1V52 acceptance ledger stays at 51**, through qualified L1A.

## Narrow correction and stopping criterion

Remove only the invalid local `hki.symm`/`hkj.symm` simp arguments while keeping explicit original `SourceLabel` / `Source48Vector`, the two-support-point proof, accepted S1V6 `source48Quadratic_eq_dot` transport, and the `hsplit` branch rewrite. Do not revive monolithic `QuadraticForm.map_add` expansion or change signs, hypotheses, or the original source quadratic form.

Re-pin the candidate source blob before running one strictly scoped gate. If a new first error occurs, classify it and preserve its reproducible trace before any further change. Count the two roots only after both compile, `#print axioms` shows permitted axioms only (`propext`, `Classical.choice`, `Quot.sound`), a nonempty new `.olean` is saved, and strict validator succeeds.

Canonical `main`, upstream `etblink/math`, and draft PR #25 are untouched. A future valid L1C result still would **not** establish the concrete Z-plane norm specialization, `lipschitzGroup`, `Spin(48)`, a global gauge lift, or a spectral claim.
