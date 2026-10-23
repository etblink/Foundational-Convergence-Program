# BFSS M4F8 DD Gate #3 — strict red: stale validator false negative, no Lean evaluation

**Date:** October 23, 2026 PDT. **Disposition:** `DD_GATE3_RED__STALE_G2_SET_EXT_VALIDATOR_EXPECTATION__PRE_LEAN_ABORT__0_ACCEPTED__PRINCIPAL_308_HELD`.

## Original, immutable evidence

- [Actions run #40039890599](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40039890599), original job `120708226700`, completed/failure, frozen workflow HEAD `4c53324404b31bc346fc9ad164af399278cfdfaa`.
- Exact candidate `experiments/openai-math-su2-physical-domain/FCPM4F8IndependentE2ConditionalPhysicalDomainDenseDD.lean` blob `1597c59d66368825611ff611c7a9a9924833eadc`.
- Frozen BFSS upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; source provenance check, exact DB qualified cache restore, and all required accepted E2/E3/DA/DB parent `.olean` checks succeeded.
- The first failed step is `Verify source-exact DD theorem and qualified original dependencies`; the **Lean compilation step was skipped**, and the successful-cache-save step was skipped. Do not attribute the failure to a particular Lean theorem, `whnf` timeout, or a new mathematical objection.
- A Python `AssertionError` arose from the obsolete Gate #2 check (Python verifier line 33):
```python
assert 'color gamma theta hCAR hHermitian) (x, y)).2' in body
```
The new, deliberately typed original candidate instead applies the qualified E3 membership equivalence at `(graphMap f)`: `color gamma theta hCAR hHermitian) (graphMap f)).2`. Gate #3 had checks explicitly detecting `let graphMap`, its native `LinearMap.mem_range_self` witness, and `hpair`, but the old `(x,y)` assertion was inadvertently retained.
- Diagnostic [artifact #12538049577](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40039890599/artifacts/12538049577), SHA256 `eba4678f35a9f6f1ced95c16a78d35ce4b7209e20396e74edd5834e0f8f3eded`. No gate-3 Lean axiom report or compiled leaf exists.

## Project Lead classification and correction

**Class V — stale CI validation contract / false negative.** Gate #2 [run #40039171707](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40039171707) previously genuinely exhausted `whnf` heartbeat budget; Gate #3 does **not** resolve or reproduce it because Lean never ran. Do not increase heartbeats further or change mathematical statements based on Gate #3.

Narrow Gate #4 should preserve candidate blob `1597c59d66368825611ff611c7a9a9924833eadc`, exact qualified DB cache, and strict two-root axiom/cache checks, while changing the **single stale validator assertion** to match `(graphMap f)`. Then Lean can evaluate the actually intended structural repair. Never rewrite the physics or operator to obtain a green validator.

Strictly accepted principal roots: **308, unchanged**. Draft PR #25, canonical `main`, and `etblink/math` untouched.
