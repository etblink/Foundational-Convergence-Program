# FCP BFSS SU(2) — M4C2 Gate #1 strict RED, Gate #2 bounded Mathlib API correction

**Local project date:** October 21, 2026 PDT; completed GitHub Actions run October 22 UTC.  
**Status:** `M4C2_GATE1_RED__COEFN_COMPLPL_INCORRECT_EXPLICIT_EXPONENT_MEASURE__GATE2_SOURCE_EXACT_FIX_PENDING`.  
**Authoritative cumulative theorem roots: 275**. M4C2 contributes **0/1** until a full new successful gate.

## Independently verified original Gate #1

[Strict M4C2 Gate #1 run #39735409407](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39735409407), job `119679810933`, original commit `e706c216250cd0213de7d28ddb551780687ff4db`, completed **failure**. Original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, candidate source provenance and qualified M4C1 v7 cache all passed. Original G4J/M4B/M4C1 .olean ancestry was present.

First two Lean compiler errors, at lines 35 and 52 of `FCPIndependentFullL2Unitary.lean`:
```text
FCPIndependentFullL2Unitary.lean:35:19: error: Function expected at
  ContinuousLinearMap.coeFn_compLpL (↑↑J) 2
Note: Expected a function because this term is being applied to μ

FCPIndependentFullL2Unitary.lean:52:16: error: Function expected at
  ContinuousLinearMap.coeFn_compLpL (↑↑J.symm) 2
Note: Expected a function because this term is being applied to μ
```
These originate from the erroneous calls `L.coeFn_compLpL 2 μ v`. The exact pinned Mathlib `Mathlib/MeasureTheory/Function/LpSpace/Basic.lean` (near line 855) declares:
```lean
theorem coeFn_compLpL [Fact (1 ≤ p)] (L : E →SL[σ] F) (f : Lp E p μ) :
    L.compLpL p μ f =ᵐ[μ] fun a => L (f a)
```
Only `L` and `f` are explicit; `p` and `μ` are inferred. This mistake made both inverse proof bodies fail, and dependent `fiberTransportLinearEquiv` and `fiberTransportUnitary` printed `sorryAx`. No M4C2 cache was saved. By contrast, **both norm bound results compiled with only `propext`, `Classical.choice`, `Quot.sound`**. The first errors are Lean application/interface errors, not a mathematical counterexample. Artifact `bfss-m4c2-gate1-39735409407`, artifact ID `12407506456`.

## Gate #2 exact correction

Make only **four use-site corrections** within the two `Lp.ext_iff` inverse proofs, replacing:
- `J.toContinuousLinearEquiv.toContinuousLinearMap.coeFn_compLpL 2 μ v` with `...coeFn_compLpL v`;
- `J.symm...coeFn_compLpL 2 μ (fiberTransport J v)` with `...coeFn_compLpL (fiberTransport J v)`;
- `J.symm...coeFn_compLpL 2 μ v` with `...coeFn_compLpL v`;
- `J...coeFn_compLpL 2 μ (J.symm...compLpL 2 μ v)` with `...coeFn_compLpL (J.symm...compLpL 2 μ v)`.

The explicit parameters `2 μ` **remain appropriate on the map `compLpL` itself**; do not remove them from the map construction. The source mathematical statements, inverse maps, CAR and original Hilbert fiber conventions, source module `FullL2 2`, norm-bound proof tactics, and final `LinearIsometryEquiv.ofBounds` are **unchanged**. Do not claim the repaired proofs passed before CI.

New candidate source `experiments/openai-math-su2-physical-domain/FCPIndependentFullL2Unitary.lean`, SHA **`05d5ff17c54d0a554e863b0844b101261f9d93fe`**.

New isolated workflow `.github/workflows/bfss-m4c2-original-full-l2-fiber-unitary-strict-gate2.yml`, SHA **`3ae7ca301a05e7cc7fdca6f55a31a7f4bcae9369`**. Restore exact qualified M4C1 v7 cache, check pinned immutable source hashes, compile fresh M4C2 module with `-DwarningAsError=true`, require all **six** exact named `#print axioms` reports allowing only `propext`, `Classical.choice`, `Quot.sound`; disallow `sorryAx` and unexpected warnings, and save distinct qualified `bfss-fcp-m4c2-original-full-l2-fiber-unitary-v2-adc7f124-lean4341-d13f23b-Linux-X64` cache only after full success. Only one gate workflow path triggers the push; diagnostics preserved independently of result.

**Count at most one root:** `FCP.IndependentFullL2GaugeTransport.fiberTransportUnitary`. On strictly complete pass, cumulative count becomes 276; otherwise **275**.

## Scope and governance

M4C2 proposes bijective isometric transport on the actual full Hilbert space; it does **not** prove identification of source `pairedGaugeData.physicalSpace`, invariant smooth cores, closed sixteen-supercharge domains and their graphs, Hamiltonian equality, Spin(9), or spectral results. Next research target M4C3 must compare the source exact kernel-intersection gauge invariance with the independent fixed-point subspace. No change to accepted M4C1, M4B, original Mathlib, PR #25, Issue #28 or canonical main.
