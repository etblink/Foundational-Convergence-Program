# BFSS M4F9 H4E2A Gate #1 — polarized charge-form broad rewrite red

**Disposition: verified RED, 0/2 roots accepted.** Preserve this original failure; it is a deterministic Lean definitional-equality resource exhaustion, **not** a mathematical counterexample or validated form identity.

**Date:** 2026-10-24. Branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`.

- Candidate commit [`bfe79ebc4879`](https://github.com/etblink/Foundational-Convergence-Program/commit/bfe79ebc4879ffc23d70bce7765633b6745af40c), source blob `20fce11ca7a9325b217bc45335a0191cae18bea9`, file `experiments/openai-math-su2-physical-domain/FCPM4F9H4E2AOriginalAYAmbientNativePolarizedForm.lean`.
- Workflow commit [`18145f853303`](https://github.com/etblink/Foundational-Convergence-Program/commit/18145f853303837d2880090b543cf4cd8192c928). [Run #40124129075](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40124129075), job `120961794638`, completed **failure**.
- Immutable original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Exact candidate hash and source preflight passed. Accepted parent cache `bfss-fcp-m4f9-h4e1b-action-74ab69c3-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored successfully, and H4E1A/H4E1B ancestry `.olean` existence checks passed. Therefore **not** a missing-parent/infrastructure failure.

## First causal failure in original log

```text
FCPM4F9H4E2AOriginalAYAmbientNativePolarizedForm.lean:47:6:
error: (deterministic) timeout at `isDefEq`,
maximum number of heartbeats (180000) has been reached
```

The culprit is first theorem's broad
```lean
rw [pairedOriginalAmbientCharge_action_ofNative u hu,
    pairedOriginalAmbientCharge_action_ofNative v hv]
```
over two expressions containing original AY unbounded operator, natural-domain membership subtype witnesses and nested Hilbert `inner`. This forced expensive definitional conversion. **Increasing maxHeartbeats without changing architecture is not the preferred next gate.**

Both `#print axioms` reports explicitly included **`sorryAx`** cascading from the first incomplete theorem. These are **not qualified roots**, even though a report was printed:

```text
pairedOriginalAYAmbientNative_inner_charge_eq : sorryAx
pairedOriginalAYAmbientNative_normalizedForm_eq : sorryAx
```

The run exited code 1, saved raw diagnostic artifact, and did **not** save a qualified H4E2A cache.

## Discriminating correction

Replace broad source-expression `rw` with one typed outer-congruence composition. Let `h_u` and `h_v` be the **already qualified** H4E1B action equalities for each original AY charge-domain vector, and `h_I` the H4E1A exact output Hilbert pairing equality. Form:

```lean
have hpair := congrArg₂
  (fun a b : PiLp 2 (fun _ : SpinIndex => FullL2 2) => inner ℂ a b)
  (pairedOriginalAmbientCharge_action_ofNative u hu)
  (pairedOriginalAmbientCharge_action_ofNative v hv)
exact hpair.trans
  (pairedPhysicalHilbertOutputsToOriginalAmbient_inner
    (pairedOriginalNativePhysicalHilbertChargeColumn ⟨u,hu⟩)
    (pairedOriginalNativePhysicalHilbertChargeColumn ⟨v,hv⟩))
```

This keeps the large original AY terms opaque; it only transports equality through the **outer** typed `inner` and transitivity. The existing normalized `1/16` corollary should then use the first theorem without re-expanding the original source.

**Gate #2 must test the corrected source blob**, preserve source pin/qualified parent, exact two-root axiom audit, compiler logs and new cache. Do not claim success until the entire strict job passes. Preserve this Gate #1 red audit forever. Do not alter canonical `main`, upstream `etblink/math`, or PR #25.
