# S1V52M3E — Strict Gate #1 causal red: missing tensor-product notation scope

**Disposition:** `M3E_GATE1_RED__ZERO_NEW_ROOTS__263_CUMULATIVE__ONE_SOURCE_SCOPING_REPAIR_STAGED__GATE2_UNQUALIFIED`.

## Reproducible primary evidence
- [GitHub Actions run #39693775887](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39693775887), job `119546095747`, workflow commit `254900afc6c22bccb6a4146a530b9df5a88a90fe`, conclusion **failure**.
- Original upstream exact `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` passed; actual source exact M3E blob `4174d7133061b900ccd9b780321e87afa14f4631` matched. Qualified M3D source cache hit; M2/M3A/M3B/M3C/M3D original oleans and qualified L9E5F20B original 48 PBW olean all passed the dependency preflight.
- Only the `Compile exact original complex Clifford 48-PBW basis and dimension theorem` step failed:
```text
SU2BFSSPhysicalDomainS1V52M3EOriginalComplexCliffordPBWBasisProbe.lean:38:13: error: expected token
SU2BFSSPhysicalDomainS1V52M3EOriginalComplexCliffordPBWBasisProbe.lean:36:47: error: unsolved goals
case e
⊢ ℂ
e : ℂ := ?e
⊢ Module.Basis (Finset Source48Label) ℂ A
'FCP.BFSSS1V52M3E.originalComplexCliffordPBWBasis'
  depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'FCP.BFSSS1V52M3E.originalComplexClifford_finrank'
  depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```
- `sorryAx` is contamination from the failed elaboration, **not** proof of either declaration or an original mathematical contradiction. Gate1 accepted **0/1 roots**, cumulative **263**.

## Diagnosis
Source line 38 uses `let e : (ℂ ⊗[ℝ] CliffordAlgebra Q) ≃ₗ[ℂ] A :=`. The tensor-product notation requires `open scoped TensorProduct`, but M3E initially omitted it. This is corroborated by accepted M3A source using `open scoped TensorProduct` for tensor-generator notation. An absent notation scope breaks parsing at `⊗[ℝ]`, and subsequent `e : ℂ` phantom goal shows the downstream parser/elaborator cascade. This is a **syntax/scoping obstacle**, not a failure of the PBW map mathematically. Subsequent elaboration obstacles, if any, must be diagnosed from the next compiler run rather than predicted as resolved.

## One-line isolated repair
In candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52M3EOriginalComplexCliffordPBWBasisProbe.lean`, immediately after opening `FCP.BFSSS1V52L9E5F20B`, insert
```lean
open scoped TensorProduct
```
Research source repair commit `aecad131712335927d784fe7d36e8a28c9c46a11`, Git blob `47d6a1606e4929ef3ccf8ac865f02310620101d9`.

No theorem statement, original source symbol, basis index, Jacobson argument, physical normalization, or source pin is changed. **No M3E root is accepted** until a new strict gated compile establishes both basis definition and finrank theorem without `sorryAx`.

## Governance and next physics
Gate2 should fetch this immutable candidate blob, restore **exact qualified M3D** source cache, check original L9E5F20B PBW input and execute the same 1-root/2-axiom-report strict validator. Keep run paths single-gate and do not retry unchanged failed Gate1. No new unearned algebra faithfulness/unitary/physical domain/spectrum claims. `main`, draft PR #25 and immutable upstream math are untouched.
