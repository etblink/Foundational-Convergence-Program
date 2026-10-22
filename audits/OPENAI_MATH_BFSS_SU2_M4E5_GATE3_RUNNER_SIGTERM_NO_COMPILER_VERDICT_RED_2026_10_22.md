# FCP BFSS SU(2) — M4E5 Gate #3 RED: runner SIGTERM during bounded source-charge rewrite, no Lean verdict

**Review date:** 2026-10-22, America/Los_Angeles.  
**Disposition:** `M4E5_GATE3_RED__SIGTERM_EXIT143__NO_LEAN_VERDICT__NO_ACCEPTED_M4E5_CACHE__286_ROOTS`.

## Independently verified immutable evidence

- Strict GitHub Actions [Gate #3 run #39819815185](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39819815185), job `119967805386`, first attempt, **overall completed/failure**. Run head `072d37aca8f595beb60ce139ef2eba450f89ae88`.
- Candidate `experiments/openai-math-su2-physical-domain/FCPIndependentFullSmoothCharge.lean` has Git blob `30f9260a474044dbc3a4e052f95d23e478a55e7c`.
- Original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Original source/candidate provenance passed, qualified M4E4B v1 cubic cache `bfss-fcp-m4e4b-cubic-charge-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored, accepted `.olean` closure passed.
- Original log: strict `lake env lean -DwarningAsError=true` began at `2026-10-22T17:12:15.56Z`. At `17:18:37.84Z`, after approximately **6m22s**, runner reported `The runner has received a shutdown signal` and `Process completed with exit code 143`. No Lean `FCPIndependentFullSmoothCharge.lean:...` compiler error, `#print axioms` output, or strict pass marker was emitted. Source step failure occurred before qualified M4E5 cache save.
- GitHub job timeout 48 minutes, compile step timeout 12 minutes, shell command `timeout 660s`. Observed shutdown precedes nominal workflow/job/command timeouts; mechanism not identifiable from these logs. Do NOT assert OOM, GitHub outage, mathematical falsehood, or proof divergence as established fact.
- Both prior Gate #2 first-attempt executions `#39812844570` (`119943434832`) and `#39812868385` (`119951175940`) were also interrupted after ~7m50s by exit 143 without Lean verdict. Gate #1 `#39811556321` (`119938873676`) emitted a genuine Lean `maximum recursion depth has been reached` at final `rfl`.
- Gate #3 tried a distinct directed `conv_rhs` instead of global simp:
  ```lean
  have hk := independentKineticCharge_intertwining gamma theta J hGamma hJ α f
  have hc := independentCubicCharge_intertwining color gamma theta J hColor hGamma hJ α f
  simp only [independentCharge, LinearMap.add_apply, map_add]
  rw [hk, hc]
  conv_rhs =>
    rw [AlgebraData.charge]
    rw [LinearMap.add_apply]
  rfl
  ```
  The absence of intermediate proof-state timing markers means the exact expensive tactic is **not localized** by these runs. There is no compiler evidence to prove or disprove the combined theorem.

## Root and acceptance accounting

The independent charge `independentCharge := independentKineticCharge + independentCubicCharge` was already compiled axiom-clean in Gate #1. Each separate source-intertwining component was strictly accepted:
- M4E3 kinetic `independentKineticCharge_intertwining`, qualified.
- M4E4B cubic `independentCubicCharge_intertwining`, qualified.
- M4E4A independent position and previous gamma/color/fermion/derivative bridges, qualified.

M4E5 remains **0/1 accepted**. **Cumulative accepted theorem roots = 286**. Neither the sixteen-charge equality nor physical restriction, closed graph, Hamiltonian or spectrum is accepted.

## Decision and independent review

Pause automated proof retries. Seek an independent mathematical/Lean proof architecture from Grok with full exact source, prior accepted component theorems, original CI evidence, and a mandate to expose any hidden mismatch.

Review should test whether source `AlgebraData.charge` can be factored once through separately *named* kinetic/cubic source maps with a small kernel-checked helper lemma (without reducing full nested gamma/color/test-function internals), or whether a completely different proof via `LinearMap.ext`, `change`, targeted delta, or explicit `Eq.trans` is preferable. Require precise handling of opaque structures and correct right-hand original equality, not syntactic lookalikes. Investigate whether elaboration of `hk`/`hc` or large `rw` rewrite terms is the bottleneck; propose isolated instrumentation with explicit proof-stage markers if needed.

Reject `sorry`, `admit`, new axioms, source-file changes, proof weakening, redefining independent charge by conjugation, increasing recursion/timeout as sole approach, or counting a green before a full strict check.

An independent review mandate is maintained in `handoffs/FCP_BFSS_M4E5_GROK_INDEPENDENT_PROOF_ARCHITECTURE_REVIEW_2026_10_22.md`.

**Governance:** original source pins unchanged, accepted theorem blobs unchanged, canonical `main` unchanged. PR #25 draft/unmerged, Issue #28 open. No Gate #4 CI was dispatched merely on the basis of a red.
