# FCP BFSS SU(2) — M4E5 Source Outer Diagnostic #1 STRICT PASS

**2026-10-22 | Research branch:** `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.

**Disposition:** `M4E5_SOURCE_OUTER_DIAG1_STRICT_PASS__ORIGINAL_ALGEBRADATA_CHARGE_EQ_KINETIC_PLUS_CUBIC__ONE_PRINCIPAL_ROOT__287_CUMULATIVE__FULL_INTERTWINING_NOT_YET_ACCEPTED`.

## Independently checked original evidence

- Overall GitHub Actions [run #39826549068](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39826549068), job `119991231795`, **completed/success**; run attempt 1; head `16bcd58b06d3cec9c77e0506671fca7c697635d9`; CI ran under the isolated, workflow-path-scoped trigger.
- Original source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, immutable original and accepted hashes preflight passed. Qualified parent cache `bfss-fcp-m4e4b-cubic-charge-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored, qualified accepted `.olean` closure passed.
- Stage A candidate `experiments/openai-math-su2-physical-domain/FCPM4E5SourceParts.lean`, exact Git blob `c1cd2114780ceeb8a8933fc9de90c4c63e762ef8`.
- Stage B candidate `experiments/openai-math-su2-physical-domain/FCPM4E5SourceOuterEquality.lean`, exact Git blob `5651f5b06167635501536f997c51608a4b777226`.
- Both fresh stages used `lake env lean -DwarningAsError=true`, independently capped at `105s`, produced verified `.olean`, passed exact declaration-name and axiom whitelist assertions, and reported `M4E5_DIAG_A_PARTS_STRICT_AXIOMS_PASS`, `M4E5_DIAG_B_OUTER_STRICT_AXIOMS_PASS`.
- Original uploaded artifact [#12447916254](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39826549068/artifacts/12447916254), ZIP digest `sha256:c58a15583b53dc2ec9c20a5e58e13f8b06f949c441151aee587a6d2fd34e705e`. I independently opened `FCPM4E5SourceParts.log`, `FCPM4E5SourceOuterEquality.log`, `*.resource` and `stages.log` from those original bytes.
- Both original logs report **only** `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`, for:
  ```text
  FCP.IndependentSmoothSupercharge.originalSourceKineticPart
  FCP.IndependentSmoothSupercharge.originalSourceCubicPart
  FCP.IndependentSmoothSupercharge.originalSource_charge_eq_parts
  FCP.IndependentSmoothSupercharge.originalSource_charge_apply_parts
  ```
- Recorded original timing and memory:
  - Stage A `FCPM4E5SourceParts`: `11.23s` wall, `83%` CPU, `MAX_RSS_KB 6981276`.
  - Stage B `FCPM4E5SourceOuterEquality`: `12.83s` wall, `99%` CPU, `MAX_RSS_KB 7133380`.
  - The reported peak RSS includes the Lean/Lake process, not exclusively the kernel proof; both are close to 7 GiB.
- A fresh qualified cache `bfss-fcp-m4e5-source-outer-diag1-v1-adc7f124-lean4341-d13f23b-Linux-X64` was saved.

## Genuine mathematical statement and exact accounting

For any `N : ℕ`, abstract **original** `M : OAI.BFSSQuantum.AlgebraData N`, and `α : SpinIndex`, the principal new theorem `originalSource_charge_eq_parts` proves **equality of linear maps**:
```lean
M.charge α =
  originalSourceKineticPart M α + originalSourceCubicPart M α
```
Here `originalSourceKineticPart` reproduces the exact original kinetic finite sum; `originalSourceCubicPart` reproduces the exact original cubic finite sum including scalar `1/2`, source `structureConstant`, `gammaTwo`, and source fermion/position ordering. The supporting `originalSource_charge_apply_parts` derives the corresponding pointwise identity by `LinearMap.add_apply`. No abstract operator has been substituted for the literal pinned `M.charge α`.

**Count exactly one principal theorem root** `originalSource_charge_eq_parts`. The pointwise statement is a supporting corollary; both new part definitions are supporting declarations. The previously accepted ledger **286 → 287**. The external goal `independentCharge_intertwining` is not among compiled declarations and remains **0/1 accepted** for full M4E5; this audit does not misrepresent that as proved.

## Negative knowledge and next boundary

M4E5 Gates #1-#4 failed to qualify the actual full independent charge theorem: #1 recursion depth at `rfl`; #2 two independent runner SIGTERM exit143 runs without compiler verdict; #3 same, no Lean verdict; #4 Grok's five-step large-sum `calc` likewise SIGTERM exit143 without Lean verdict.

This diagnostic establishes the abstract original *source side* outer decomposition can be recognized quickly. It does **not** identify the precise expensive step in the full theorem. Memory use is substantial even when separate stage computations finish within 13 seconds; optimize by avoiding simultaneous reductions of original nested sums and instantiated concrete paired data.

Next step: introduce **thin individually compiled named transport interfaces** to repackage M4E3 accepted kinetic and M4E4B accepted cubic intertwining into `originalSourceKineticPart pairedAlgebraData` and `originalSourceCubicPart pairedAlgebraData`; separately bound each Lean stage. Then combine the named expressions with the proved `originalSource_charge_apply_parts` in a final distinct strict gate only after those interfaces are qualified. Never unfold multiple original multi-index expressions in a single `calc`.

## Governance

Audit-only commit; no workflow triggered by audit. Immutable original mathematics unchanged; all accepted proof blobs and caches untouched; canonical `main` unchanged at `cf06212a57db0ceffad74bd78280a8a240856a17`. PR #25 remains draft/unmerged, Issue #28 remains open.
