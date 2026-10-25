# BFSS S3E2 Gate 22 — strict CI RED on overbroad Lake-warning validator (three source proofs compile)

**October 24, 2026 PDT / October 25, 2026 UTC.**
**Status: completed/failure, ZERO newly formally accepted S3E2 theorem roots.**
**Proof-versus-gate distinction is mandatory.** All three source exact theorem declarations compiled with clean permitted-axiom output, but the full acceptance pipeline did not pass and the qualified child cache was not saved.

## Immutable primary verification

- Original run: [Gate22 #40160950162](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40160950162), job `121072195695`, completed/failure, workflow HEAD `a0415e70584a4cbd2b1833a7f1e57f6aea166247`.
- Original frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; all source SHA and theorem signature checks passed.
- Original source three-statement candidate: `experiments/openai-math-su2-physical-domain/recovery/SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbeV7SelectorBridge.lean`, Git blob `c6942d34650e83be8d2d380057816234a3004060`. The exact original S3E2 signatures are those of blob `d7a784e0679b279e5ca3c71206cd7d1994e70959`; this candidate integrates the Gate21 verified helper without altering original source CAR, J matrix indices, Fock carrier or normalization.
- The S3E1 Gate13 parent original 117-path cache successfully restored: `bfss-fcp-s3l-s3e1-forward-smulsub-4b5f4f9e-gate13-v1-adc7f124-lean4341-d13f23b-Linux-X64`. The original S3C/D/E1 compiled `.olean` ancestry checks all passed.
- Fresh actual `lake env lean -DwarningAsError=true -o .lake/build/lib/lean/SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbe.olean` returned successfully, producing nonempty local `.olean`. All THREE actual `#print axioms` reports contain precisely `propext, Classical.choice, Quot.sound`, with no `sorryAx` and **no Lean theorem compilation error**:
```text
FCP.BFSSSU2PhysicalDomainS3E2.pairedFermionSpinQuadraticColor_delta_beta
FCP.BFSSSU2PhysicalDomainS3E2.pairedFermionSpinQuadraticColor_delta_alpha
FCP.BFSSSU2PhysicalDomainS3E2.pairedFermionSpinQuadraticColor_comm_same_color_coefficient
```

## First causal red, not a false coefficient claim

The CI post-compiler Python validator then executed this incorrect line:
```python
assert not any(t in s for t in ("sorryAx","error:","unknownIdentifier","warning:")),("BAD_STRICT_SOURCE_LOG",s[-3500:])
```
The raw `lake env lean` output contains benign package-worktree warnings, e.g.
```text
warning: belyi: repository '.../upstream-math/lean/.lake/packages/belyi' has local changes
warning: formal-schemes: repository '.../upstream-math/lean/.lake/packages/formal-schemes' has local changes
```
The validator's catch-all `warning:` rejection caused `AssertionError ('BAD_STRICT_SOURCE_LOG', ...)`, ending the job with exit code 1. These warnings arise from local `lake` package state, NOT compiler diagnostics about the source proof. Earlier Gate19 used a precise package-warning classifier; Gate22 mistakenly dropped that distinction.

**Raw evidence preserved:** [artifact #12586591915](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40160950162/artifacts/12586591915), upload ZIP SHA256 `837b2f60d9435fdcc756a1fab4a6fcf0f451e607de50156cbe87e42f198abf06`.

The original three theorems are not promoted: the Gate22 child cache `bfss-fcp-s3l-s3e2-fock-selector-c6942d34-gate22-v1-adc7f124-lean4341-d13f23b-Linux-X64` was skipped. **0/3 new accepted principal source roots** in the authoritative ledger.

## Project Lead next decision (single bounded CI correction)

Create separate Gate23 workflow, with unchanged V7 Git blob `c6942d34`, unchanged three source declarations and all original strict source/cache/axiom checks. Change ONLY the overbroad post-compiler warning rule into a *narrow* `lake` known local package warning whitelist (e.g. source-matching `warning: <package>: repository '<upstream-math>/lean/.lake/packages/<package>' has local changes`). Reject EVERY other warning and ANY `sorryAx`, `error:`, `unknownIdentifier`. Use a new Gate23 cache key, save the qualified 118-path child cache only after a fully green gate; retain original full compiler log and source audit. Do not alter the mathematical proof or source theorem statements to fix this script defect.

If Gate23 strictly green and cache genuinely saved, the **three source-realization roots** may then be counted exactly once, not as proof of global Spin(9) physical covariance, closed form reduction, coercivity, compact resolvent, or existence of positive normalizable eigenvectors. Frozen original mathematical source, `main`, and draft PR #25 unchanged.
