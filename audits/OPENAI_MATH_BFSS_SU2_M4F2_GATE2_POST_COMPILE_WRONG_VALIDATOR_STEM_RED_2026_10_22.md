# FCP BFSS SU(2) — M4F2 Independent L² Charge Column Gate #2 RED: wrong validator module stem

**Date:** 2026-10-22 PDT. **Strict accepted ledger:** 290, unchanged. **0/1 principal theorem accepted from this gate.**

## Verified original GitHub evidence

- [GitHub Actions run #39849583301](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39849583301), job `120071842011`, attempt 1, triggering HEAD `695935c6dc23970e5b81ca765c360f645772d9c3`. Whole workflow `completed/failure`.
- Immutable source and candidate checks passed (upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`). Candidate `FCPIndependentChargeVectorL2.lean` blob `6492f4b08181020f611f7d7d4b751394805420d2` retains the exact original sixteen-component independent charge vector, with only `open MeasureTheory` added following Gate #1.
- Qualified M4E5 parent cache `bfss-fcp-m4e5-full-smooth-charge-gate5-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored, all compiled dependency closure checks passed.
- The isolated `lake env lean -DwarningAsError=true` candidate compilation exited **successfully** after **12.76 seconds**, peak RSS **7,437,964 KB**, and emitted a nonempty `FCPIndependentChargeVectorL2.olean`.
- The *post-compilation* strict axiom report parser never ran, because its Python script begins with the stale M4E5 module stem, although the shell compiler uses the correct M4F2 stem:
```text
  stem=FCPIndependentChargeVectorL2             # shell compiler correct
  stem='FCPIndependentFullSmoothCharge'         # validator WRONG
  src=Path(stem+'.lean').read_text()
```
  Since only the M4F2 candidate was copied into the working Lean directory, the original traceback states:
```text
FileNotFoundError: [Errno 2] No such file or directory: 'FCPIndependentFullSmoothCharge.lean'
Process completed with exit code 1
```
- The original M4F2 `#print axioms` lines exist in the uploaded compiler-log artifact, but the complete strict whitelist/report validation did not occur and was **not inferred** from compilation alone. New qualified M4F2 cache was skipped; no new theorem root accepted.
- Original artifact: `bfss-m4f2-l2-charge-vector-gate2-39849583301` (artifact `12457197033`, digest `sha256:ee4e5aea205ae94cfc7ac3128991b0a03d4933f80d9bce84e798d9ccb38ba01f`).

## Corrective action

Fix **only** the Python validator's `stem='FCPIndependentChargeVectorL2'` under a fresh exact-path-triggered M4F2 strict Gate #3. Preserve source blob unchanged, all accepted parent/original hashes, the exact parent save/restore cache path configuration, 105-second compile limit, exact root/name and `#print axioms` checks, three-axiom whitelist `propext, Classical.choice, Quot.sound`, `sorryAx` rejection, and a new cache key/artifact name. Never rerun the unchanged failed Gate #2.

M4F1 remains separately blocked before Lean by the missing qualified D3B `.olean`; these are disjoint issues. Full physical graph/domain, Hamiltonian equality and spectral questions are not established by this M4F2 charge-column compilation.

## Negative knowledge

Success of a `lake env lean` compiler invocation does **not** imply full strict qualification if the independent axiom parser fails. When cloning a workflow, validate **all** source stems in shell, Python, artifact paths, cache save and restore contracts, declaration names and immutable candidate pins before submitting the new gate. 
