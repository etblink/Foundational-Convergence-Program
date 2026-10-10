# BFSS SU2 Physical Domain D2B4 — Gate #22 TestFunction.ext repair 0.1.0

**Date:** 2026-10-09 America/Los_Angeles (Actions UTC 2026-10-10).
**Status:** `GATE_22_RED__D2B4_NOT_YET_QUALIFIED`; next compiler repair `UNCOMPILED`.

## Evidence from original pinned GitHub Actions

[BFSS SU2 Physical Domain Bridge #22](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38023293422), run `38023293422`, job `114128711412`, tested commit `f86f0c019a25197d5ee47484f4534e72f015b71e`, D2B4 source blob `048e033fb8a573ca27bea2ddb3a34352f924fd7d`, job FAILED.

Pinned dependency cache, accepted G4-K10A proof cache, frozen source checks, all accepted D1, D3A, D3B, D2A, D2B1, D2B2, D2B3 and D2B3J recompilations and axiom reports PASSED. The true-source D2B3J unconditional smooth Haar theorem was recompiled successfully.

New D2B4 file **successfully constructed** an original `SmoothCore 2` (the actual `TestFunction ⊤ (Fermion 2) ⊤`) from genuine source Haar average, using accepted unconditional smoothness from D2B3J and compact support from D2B2. The first FOUR D2B4 public theorems compiled with only `[propext, Classical.choice, Quot.sound]`, no `sorryAx`:

1. `sourceHaarAverageCore_apply`: bundled function equals original source Haar-integral function;
2. `sourceHaarAverageCore_equivariant`: pointwise covariance under exact source boson/fermion SU2 action;
3. `sourceHaarAverageCore_mem_physicalSpace`: exact source `coreToL2` image satisfies each original `G.bosonPullback g = G.fiberAction g` Lp identity, hence lies in `G.physicalSpace`;
4. `sourceHaarAverageCore_mem_invariantCore`: source `G.invariantCore = G.physicalSpace.comap coreToL2` membership, not an unlicensed pointwise proxy.

The FIFTH theorem, `sourceHaarAverageCore_fixed`, FAILED at line 102:
```text
Type mismatch
  sourceHaarAverageRaw_fixed M G f x
has type
  sourceHaarAverageRaw M G (↑f) x = ↑f x
but is expected to have type
  ((sourceHaarAverageCore M G ↑f) x).ofLp i✝ = (↑f x).ofLp i✝
```
This arose solely from generic `ext x` descending into the source Fermion `PiLp` coordinate instead of stopping at full test-function evaluation. Its axiom report consequently includes `sorryAx`; D2B4 as a whole is NOT accepted by Gate #22.

## Exact pinned Mathlib repair

Inspected the exact pinned `Mathlib/Analysis/Distribution/TestFunction.lean` at `d13f23b723b8a846827a245b89c10fc7d3f11612`: inside `namespace TestFunction` it defines
```lean
@[ext]
theorem ext {f g : 𝓓^{n}(Ω, F)} (h : ∀ a, f a = g a) : f = g :=
  DFunLike.ext _ _ h
```
We therefore replace **only** the fifth candidate theorem's proof:
```lean
  apply TestFunction.ext
  intro x
  change sourceHaarAverageRaw M G f.val x = f.val x
  exact sourceHaarAverageRaw_fixed M G f x
```
This invokes a concrete source-type extensionality rule at the whole `Fermion 2` level. It discharges the pointwise equality using the independently qualified original-source D2B1 fixed-point theorem, does not enumerate or change PiLp coordinates, and adds no assumption or artificial physics. This patch is **not yet compiled**; the next gate is authoritative.

## Scope and scientific next steps

If all FIVE exact D2B4 named reports pass with only `propext`, `Classical.choice`, and `Quot.sound`, then the project qualifies the actual bundled original smooth Haar projection, physical-subspace membership, invariant-core membership and fixedness of invariant-core functions. These are mathematically substantial source-defined properties, although Gate #22 as a whole currently remains RED.

The original `coreToL2_dense` establishes density of the unprojected full smooth core in full L², but it does **not** alone imply density of the invariant smooth core. The next genuine work must construct/verify a nonexpansive extension of the authentic gauge averaging map (using the original Lp isometric source boson/fermion actions and actual Haar probability), identify its fixed points with `G.physicalSpace`, and show it maps approximating smooth-core elements to the invariant smooth core. Only after those source-specific proofs may the equality `G.coreNormClosure = G.physicalSpace` be accepted. This is not a BFSS spectrum or self-adjointness assertion.

No qualified source/pin modifications, new axiom, replacement group representation, main merge or upstream pull request.
