# FCP BFSS SU(2) — M4C2 Gate #2 strict RED; Gate #3 bounded AE congruence repair

**Local date:** October 21, 2026 PDT (original GitHub Actions event October 22 UTC).
**Disposition:** `M4C2_GATE2_RED__TWO_POINTWISE_INVERSE_EQ_TACTIC_NORMALIZATION__GATE3_CONGRARG_REPAIR_PENDING`.
**Authoritative cumulative strictly accepted theorem roots: 275.** M4C2 adds **0/1** roots until a complete pinned strict gate passes.

## Independently inspected original runner

[M4C2 original Gate #2 run #39736606254](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39736606254), job `119683661401`, source commit `013d3247f26706fe9dced85960c07b7627e9f784`, **completed failure**. Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` source hashes, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, new candidate exact source, qualified branch M4C1 v7 cache, and original G4J/M4B/M4C1 `.olean` closure all passed.

Gate #2 fixed Gate #1's incorrectly explicit `2 μ` arguments to `ContinuousLinearMap.coeFn_compLpL`. Four correct `coeFn_compLpL v` calls typechecked, and the two norm-bound theorems compiled and reported only permitted `propext`, `Classical.choice`, `Quot.sound`.

**First causal failure** at `FCPIndependentFullL2Unitary.lean:42:35`:
```text
Tactic `rewrite` failed: Did not find an occurrence of the pattern
  ↑↑((ContinuousLinearMap.compLpL 2 μ ↑↑J) v) x
in target
  J.symm (↑↑((fiberTransport J) v) x) = J.symm (J (↑↑v x))
```
The pointwise AE hypothesis `hf` is expressed using the expanded `compLpL` operator, but the target uses the *accepted* abbreviation `fiberTransport J`; `rw [hf]` does not reduce that definition at the tactic's matching transparency.

**Second localized failure** at line 60: original `rw [hb]` left
```text
⊢ J (↑↑J.symm (↑↑v x)) = J (J.symm (↑↑v x))
```
a reflexive target modulo coercions/normalization. Both failures are proof tactic alignment between an AE equality and an outer fiberwise application. They are not counterexamples to the actual `J` and `J.symm` inverses.

The compiler printed `sorryAx` for both failed inverse lemmas, the dependent `fiberTransportLinearEquiv`, and the final `fiberTransportUnitary`. The two norm inequalities had permitted axioms only. Strict compile exited 1, no M4C2 qualified v2 cache was saved. Original artifact: `bfss-m4c2-gate2-39736606254`, artifact ID `12407274361`.

## Exact bounded Gate #3 candidate

Change **only two calc proof steps**, leaving the same six declaration statements, both forward and inverse maps, exact original `FullL2 2`, and two already axiom-clean contraction proofs intact.

Left-inverse step:
```lean
_ = J.symm (J (v x)) := by
  simpa only [fiberTransport] using congrArg J.symm hf
```
This applies the existing `hf` through `J.symm` and unfolds precisely the accepted M4C1 `fiberTransport` definition so that its target and hypothesis are aligned.

Right-inverse step:
```lean
_ = J (J.symm (v x)) := by
  exact congrArg J hb
```
This applies the actual `hb` equality through `J` directly, avoiding a `rw` tactic that produces a coercion-normalization residual.

**Exact source Git blob:** `7fb0f248f5afdb0f48f741f5d71ee05958760da2`, `experiments/openai-math-su2-physical-domain/FCPIndependentFullL2Unitary.lean`.
**New unique workflow Git blob:** `14b12e04d31c122a550a3625fcde10675b6cfc75`, `.github/workflows/bfss-m4c2-original-full-l2-fiber-unitary-strict-gate3.yml`.

Gate #3 reuses only the **qualified M4C1 v7** original source closure, confirms immutable Lean/Mathlib and source pins, compiles fresh M4C2 with `lake env lean -DwarningAsError=true`, requires **six exact** `#print axioms` reports restricted to `propext`, `Classical.choice`, `Quot.sound`, rejects errors, `sorryAx`, unexpected warnings, and missing `.olean`, and saves the new unique **v3** `bfss-fcp-m4c2-original-full-l2-fiber-unitary-v3-adc7f124-lean4341-d13f23b-Linux-X64` qualified cache only if fully green. Its sole push trigger is the new exact workflow path. No other CI gates should run.

This is a **proposed** source-exact Lean repair. The Project Lead has **not** already compiled Gate #3 and must report the first causal error from the original runner if red. Only the final `FCP.IndependentFullL2GaugeTransport.fiberTransportUnitary` counts as one new potential theorem root. Ledger **275** until full acceptance, 276 only after strict green and saved cache.

## Preserved negative knowledge

- M4C2 Gate #1 [39735409407](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39735409407): `coeFn_compLpL 2 μ v` misused pinned theorem's explicit arguments, not a failure of the full-L² equivalence.
- M4C2 Gate #2 [39736606254](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39736606254): earlier API corrected; AE quotient inverse calculation now blocked only by tactic matching and normalization.
- M4C2 Gate #3: no result until completed original compiler and cache verification.

**Scientific boundary:** Even a strictly accepted M4C2 full-L² complex linear isometry equivalence does **not** establish that the independent gauge-fixed subspace maps onto `pairedGaugeData.physicalSpace`, nor source invariant smooth-core preservation, all sixteen unbounded closed supercharges/domains, Hamiltonian equality, source-to-manuscript identification, or a BFSS spectral theorem.

**Governance:** no change to prior accepted M4C1, M4B, frozen original source, `main`, PR #25 or Issue #28. Commit an isolated gate and audit only.
