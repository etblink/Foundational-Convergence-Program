# BFSS M4F8 DE1C — Gate #3 strict post-Lean warning-filter correction

**Date:** 2026-10-23 PDT. **Disposition at creation:** `DE1C_GATE2_RED_PRESERVED__GATE3_SOURCE_LOCKED_RECOMPILE_SCHEDULED__NO_NEW_ACCEPTANCE`.

## Verified prior state

- [DE1C Gate #1 run #40046838616](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40046838616) **red before Lean** from source scanner misreading `theorem and` inside a documentation comment. Its separate immutable negative audit is preserved.
- [DE1C Gate #2 run #40047382287](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40047382287), job `120732102463`, **red AFTER successful fresh Lean compilation**. Both exact DE1C theorems printed full allowed axiom set `{propext, Classical.choice, Quot.sound}`; no `sorryAx` and no theorem-level diagnostic. Parent DE1B 42-path cache restored, exact source preflight passed. The final Python check incorrectly rejected eleven routine `lake` package-worktree warnings, so formal accept and 43-path cache save were blocked. See `audits/FCP_BFSS_M4F8_DE1C_GATE2_POSTCOMPILATION_WARNING_VALIDATOR_FALSE_NEGATIVE_2026_10_23.md` and [artifact #12541408417](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40047382287/artifacts/12541408417), SHA256 `b3a3590bc115dd468b02747b25388834916f148817a218b8bc59a3c60527cccb`.

## Gate #3 correction and first-run negative-knowledge warning

- Gate #3 workflow created at commit `306b9b3a0b506bddcc5ff13f1918db35c34559ba`, immediately triggered [run #40047975640](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40047975640). A post-commit source inspection found **an over-indented first line** of the newly inserted Python warning-checker block (`known = ...` was indented 20 spaces, next lines 10). This is **workflow authoring error**, not a DE1C Lean issue; run #40047975640 retains its frozen original commit and may fail after environmental setup. Its outcome must be independently checked and separately preserved when complete.
- Corrected same workflow on branch at commit `c664468dd8a5ff8cce911d90db314f6d2c02ea2d`; the newly triggered [run #40048017955](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40048017955) uses the **corrected source-locked workflow**. Branch-write cannot retroactively change the original frozen run #40047975640.
- Correction only changes Python indentation and warning-validation logic, **not original BFSS mathematics nor DE1C Lean source**. DE1C Git blob remains `4fe5ecdb0b78d670c4ed62bb74ab15e4bb826a1c`, original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, pinned Mathlib.
- Gate #3 exact parent 42-item manifest and cache key remain unchanged: `bfss-fcp-m4f8-de1b-closed-outputs-61156421-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- New verifier still uses `lake env lean -DwarningAsError=true`, exact two named `#print axioms`, forbidden-axiom/`sorryAx`/`error:` rejection, and requires a new saved **43-path** qualified DE1C cache for actual strict acceptance.
- Warning filter permits **only full-line matches** of the documented dependency checkout warning `warning: <name>: repository '.../upstream-math/lean/.lake/packages/<name>' has local changes`; all other warnings remain rejected:
```python
known = r"warning: [A-Za-z0-9_-]+: repository '[^']*/upstream-math/lean/\.lake/packages/[A-Za-z0-9_-]+' has local changes"
warnings=[z for z in s.splitlines() if 'warning:' in z]
unexpected=[z for z in warnings if not re.fullmatch(known,z)]
assert not unexpected,('UNEXPECTED_WARNINGS',unexpected)
```
- Both Gate #3 GitHub runs were still unaccepted/in progress or pending at this audit creation. Do **not** infer success from source edits, run existence, or favorable prior theorem reports.

## Scientific and governance boundary

DC Haar, DE1 actual J-free physical-input rebase, DE1B closedness and all-sixteen physical outputs remain strictly accepted. The **DE1C** exact domain-membership and unconditional rebased physical-input Hilbert norm-density claims await full strict Gate #3 verification and saved cache. DE2/DE2B physical-output codomain rebase and Hamiltonian/spectrum remain open. Principal BFSS physics ledger **308**, no new accepted roots. Canonical `main`, original `etblink/math`, draft PR #25 unchanged.
