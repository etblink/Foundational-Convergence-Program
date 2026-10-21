# S1V52M1 — Gate #1 strict red: incorrect use of Submodule.mem_bot projection

**Classification:** `M1_GATE1_RED__ONE_MATHLIB_MEM_BOT_PROJECTION_UNKNOWN_CONSTANT__ZERO_OF_ONE_ROOT_ACCEPTED__S1V52_STAYS_254`.

## Independently verified source evidence

- [Strict run #39675748905](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39675748905), job `119485024352`, workflow head `f9ac81bae7817068a8adadb50620d1f072d8a174`, job red only at source compilation. Source original `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52M1IndependentNonzeroMajoranaIntertwinerEquivProbe.lean` Git blob `5ec2055c9ce23a089fb63eaf3a925dba080e729e`, verified `expected=committed=filtered=raw`.
- Frozen upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`; pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Exact source SHA preflight, toolchain restoration, qualified F20F cache `cache-hit=true`, OAI BFSS core `.olean`, and `SU2BFSSG1APairedThetaProbe.olean` (real source 48 Majorana irreducibility) **all passed**.
- One compiler error at source line **75**:
```text
Unknown constant `Submodule.mem_bot.mp`
```
  Code incorrectly wrote `exact hnonzero (Submodule.mem_bot.mp hv)`. Pinned Mathlib uses `(Submodule.mem_bot R).mp hv` with an explicit coefficient ring. Exact scoped fix:
```lean
    exact hnonzero ((Submodule.mem_bot ℂ).mp hv)
```
  `hv` was already rewritten to membership in `(⊥ : Submodule ℂ (Fermion 2))`. No theorem statement or mathematical hypothesis changes.
- The single `independent_nonzero_majorana_intertwiner_equiv` axiom report included `sorryAx` because the first proof did not elaborate. Gate1 **0/1 accepted**, no M1 cache saved. Cumulative S1V52 **254** qualified roots unchanged. No other Lean compiler errors reported.

## Boundaries / next move

M1 is a *conditional* Schur-kernel-and-range lemma: if an **independent** irreducible `E` possesses a NONZERO generator-wise intertwiner `T₀` to the original irreducible 48-theta Fock module, then it has a full complex-linear equivalence intertwining all 48 generators. **The nonzero `T₀` is explicitly assumed, not constructed.** Neither CAR/self-adjoint structure on `E`, Hilbert unitarity, paper Spin48 representation nor closed supercharge domains are proven by M1.

Repair only the theorem body's `Submodule.mem_bot` application, then gate on a distinct strict Gate #2 workflow with hash-pinned source and saved cache key, permitted-axiom whitelist, and all source guards unchanged. Do not touch canonical `main`, pinned `etblink/math` or draft PR #25.

The separate substantial existence route remains complex Clifford base change → original complex Clifford action onto endomorphisms (requires proof, potentially via Jacobson density or explicit CAR matrix units) → universal nonzero intertwiner → Hilbert-unitary normalization → literal paper smooth core/domains. Avoid green-count credit for conditional assumptions.
