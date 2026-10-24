# BFSS M4F9 H2D2A Gate3 — missing PiLp exponent argument, continuity unqualified

**Status:** `M4F9_H2D2A_GATE3_RED__PILP_CONTINUOUS_APPLY_MISSING_EXPONENT__DENSE_DOMAIN_COMPILER_CLEAN__NO_ROOTS_ACCEPTED`.

Independently inspected [GitHub Actions run #40065940383](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40065940383), original job `120789099234`, `completed/failure`, head `ceeaa21349faaacf12e158adfbf39b66da1f2d08`, unfiltered original [artifact #12549282183](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40065940383/artifacts/12549282183), sha256 `8298647190a1e3917161870e5ada010b0a6babd356ab8b8eab3fcd9c9114a66e`. Exact H2D2A source blob `dbb7b8b76197528e8f77001917e0277ac2566947`. Frozen etblink/math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, and exact qualified H2D1 cache `bfss-fcp-m4f9-h2d1-native-pilp2-e2-domain-5666b77b-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored and parents .olean checks passed. Preflight passed, fresh Lean reached both roots. No new cache saved.

**Only first causal compiler error** at `FCPM4F9H2D2ANativeHilbertE2ContinuityAndDensity.lean:51:8`:
```
Application type mismatch:
  fun x => independentPhysicalSpace theta hCAR hHermitian
has type
  SpinIndex → Submodule ℂ (Lp E 2 ...)
but is expected to have type
  ENNReal
in the application
  @PiLp.continuous_apply fun x => independentPhysicalSpace theta hCAR hHermitian
```
Gate2 repair had supplied the component family first to `PiLp.continuous_apply` but omitted its explicit `p : ℝ≥0∞` parameter. The actual pinned Mathlib declaration `Mathlib/Analysis/Normed/Lp/PiLp.lean` (around lines 90, 540–543) is under `namespace PiLp` with `variable (p : ℝ≥0∞) ... (β : ι → Type*)` and declares `protected lemma continuous_apply ... (i : ι)`. Correct argument sequence is **exponent `2`, family `fun _ : SpinIndex => independentPhysicalSpace theta hCAR hHermitian`, index `α`**. This is a proof elaboration failure, not negative mathematics.

`hilbertPhysicalOutputsToActualOutputs_continuous` printed `sorryAx`. Independently `independentActualE2NativeHilbertChargeColumn_domain_dense` printed only `[propext, Classical.choice, Quot.sound]`, for a third consecutive Gate1–Gate3 compiler-clean density theorem. Strict whole-gate failure means zero H2D2A support roots accepted; preserve this Gate3 red separately from Gate1 and Gate2, do not overcount. Current principal BFSS tally 309.

**Bounded Gate4 repair:** In the continuity proof alone, replace
```lean
PiLp.continuous_apply
  (fun _ : SpinIndex => independentPhysicalSpace theta hCAR hHermitian) α
```
with
```lean
PiLp.continuous_apply 2
  (fun _ : SpinIndex => independentPhysicalSpace theta hCAR hHermitian) α
```
and update only the source Git hash and strict new Gate4 workflow. Keep original H2B J-free coordinate map, `hraw.subtype_mk`, native Hilbert topology, actual E2 dense-domain proof byte-identical, all original source pins/qualified caches, `-DwarningAsError=true`, exact two strict axiom inventories; save new cache only on full success. On any new error preserve a separate Gate4 diagnostic.

**No Hamiltonian/self-adjointness/spectral conclusion.** main, original math, PR #25 untouched.
