# BFSS M4F9 H2D2A Gate2 — PiLp.continuous_apply dependent-family argument mismatch

**Disposition:** `M4F9_H2D2A_GATE2_RED__PILP_CONTINUOUS_APPLY_FAMILY_ARGUMENT_MISSING__CONTINUITY_SORRYAX__DENSITY_AXIOMS_CLEAN__0_OF_2_ACCEPTED`.

**Original independent evidence:** [GitHub Actions run #40065377358](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40065377358), original job `120787409579`, `completed/failure`, workflow SHA `c4902cf90d64050ccc49057066a6c86938df2282`. Exact original compiler log [artifact #12548852680](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40065377358/artifacts/12548852680), SHA256 `89387384552da51e19f3e25f4f4e521de22cd0f1bc5480ae8cac8e0c23611f88`. Staged H2D2A source exact blob `626b6448fac446c9fbe3c0efe0fca58dfdc74ff3`; frozen etblink/math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Full H2D1 archive `bfss-fcp-m4f9-h2d1-native-pilp2-e2-domain-5666b77b-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored; DE2B, H1/DE4, H2A/B/C/D1 original .olean ancestry checks passed.

**Original compiler's sole relevant error:**
```
FCPM4F9H2D2ANativeHilbertE2ContinuityAndDensity.lean:49:38:
  error: Application type mismatch: The argument
    PiLp.continuous_apply ↑↑α
  has type
    ∀ (β : ?m.104 → Type ?u.82) [inst : (i : ?m.104) → TopologicalSpace (β i)] (i : ?m.104),
      Continuous fun f => f.ofLp i
  but is expected to have type
    Continuous fun a => a.ofLp α
  in the application
    Continuous.comp continuous_subtype_val (PiLp.continuous_apply ↑↑α)
```
The preceding Gate1 nonexistent `continuous_iff_continuous_subtype_val` identifier has been corrected via the VALID pinned `Continuous.subtype_mk`; that is not the current failure. The source used `continuous_subtype_val.comp (PiLp.continuous_apply α)` but the pinned Mathlib `Mathlib/Analysis/Normed/Lp/PiLp.lean`, around line 542, declares `protected lemma continuous_apply [∀ i, TopologicalSpace (β i)] (i : ι) : Continuous ...` inside namespace `PiLp` with parameter `(β : ι → Type*)` explicit. The correct invocation supplies the **component type family** `(fun _ : SpinIndex => independentPhysicalSpace theta hCAR hHermitian)` before `α`.

**Axiom-level separation:** The failed `hilbertPhysicalOutputsToActualOutputs_continuous` declaration printed `sorryAx` as consequence of the elaboration failure. The second root, `independentActualE2NativeHilbertChargeColumn_domain_dense`, compiled separately with exactly permitted `[propext, Classical.choice, Quot.sound]` and no `sorryAx`; this confirms density proof itself is not the blocker. Nonetheless the strict workflow failed and H2D2A cache save was skipped: **zero roots formally accepted from this gate**. There is no negative mathematical result/counterexample to continuity or density.

**Minimal next correction:** In the SAME genuine H2B independent physical-output continuity declaration only, change `PiLp.continuous_apply α` to `PiLp.continuous_apply (fun _ : SpinIndex => independentPhysicalSpace theta hCAR hHermitian) α`. Do not change theorem statement, existing H2B J-free map, `Continuous.subtype_mk`, H2D1 source domain equivalence, second domain-density theorem text, assumptions, or original mathematical source. Strict Gate3 must pin the resulting NEW source blob, restore qualified H2D1 archive, fresh Lean `-DwarningAsError=true`, require 2 exact named roots and only standard axioms, no sorryAx/errors/unclassified warnings, save new cache only on global green. Keep Gate1/Gate2 reds separately.

**Bookkeeping:** H2D2A Gate2 0/2 formally accepted; working principal BFSS tally 309 unchanged, original math/main/PR #25 untouched.
