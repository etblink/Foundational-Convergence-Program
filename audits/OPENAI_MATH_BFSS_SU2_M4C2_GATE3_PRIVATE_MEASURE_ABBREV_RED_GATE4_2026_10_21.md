# FCP BFSS SU(2) — M4C2 Gate #3 RED; private-measure abbreviation interface and Gate #4

**Local project date:** 2026-10-22 UTC / 2026-10-21 PDT.  
**Disposition:** `M4C2_GATE3_RED__PRIVATE_MU_SIMPA_ONLY_RESIDUAL__GATE4_EXACT_CONGRARG_PENDING`.  
**Authoritative cumulative accepted theorem roots: 275; M4C2 0/1 accepted.**

## Independently inspected original Gate #3 runner

- [Strict run #39737613965](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39737613965), job `119686912525`, original head `a3183faf12124eca17ce3c88ade365e6910a1f7a`, **completed failure**.
- Immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean **4.34.1**, pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, and accepted M4B/M4C1/G4J source hashes passed. The current-branch **qualified M4C1 v7 cache** restored and exact `.olean` closure checks passed.
- Fresh M4C2 source compiled under `lake env lean -DwarningAsError=true` until **one** error at `FCPIndependentFullL2Unitary.lean:43:6`:
  ```text
  Type mismatch: After simplification, term
    congrArg (⇑J.symm) hf
  has type
    J.symm (((compLpL 2 μ J) v) x) = J.symm (J (v x))
  but is expected to have type
    J.symm (((compLpL 2 FCP.IndependentFullL2GaugeTransport.μ✝ J) v) x) =
      J.symm (J (v x))
  ```
  These forms arise from separately declared `private abbrev μ := (volume : Measure (Boson 2))` in the accepted M4C1 source and the M4C2 candidate. Although definitionally equivalent, `simpa only [fiberTransport]` unfolds the accepted source function but does not normalize both private measure abbreviations to a common spelling. Its syntactic simplification proof fails even though the equalities are definitionally convertible.
- The source-specific **right inverse** `fiberTransport_right_inverse`, **forward contraction** `fiberTransport_norm_le`, and **inverse contraction** `inverseFiberTransport_norm_le` compiled with only `propext`, `Classical.choice`, `Quot.sound`. The **left inverse**, dependent **linear equivalence** and final **unitary equivalence** reported `sorryAx`; thus **three clean and three unaccepted**, not five clean. No M4C2 cache was saved.
- Original diagnostic artifact `bfss-m4c2-gate3-39737613965`, artifact ID `12408420751`.

## One-line Gate #4 repair hypothesis

At precisely the first failing step, replace:

```lean
_ = J.symm (J (v x)) := by
  simpa only [fiberTransport] using congrArg J.symm hf
```

with:

```lean
_ = J.symm (J (v x)) := by
  exact congrArg J.symm hf
```

The `exact` proof term directly transports the **already established AE-representative equality** through `J.symm`; Lean's kernel definitional equality, rather than a restricted simp-set, must reconcile `fiberTransport J` with its pinned `compLpL 2 μ` definition, including the private abbreviations. This is a falsifiable proof-elaboration hypothesis **not locally verified**. No rewrite of the unitary statement, no change to the two inverse maps, norm proofs, source gauges or measure conventions.

New M4C2 candidate `experiments/openai-math-su2-physical-domain/FCPIndependentFullL2Unitary.lean`, blob **`12ee07bf3b189c252fa54867e60f71cba532c574`**.

Unique path-triggered `.github/workflows/bfss-m4c2-original-full-l2-fiber-unitary-strict-gate4.yml`, blob **`1342c431b291c5444a4edf959efbb9f56468d4ed`**. Restore only qualified M4C1 v7; compile new source with warningAsError; require all **six exact declarations** and `#print axioms` reports restricted to `propext`, `Classical.choice`, `Quot.sound`; reject compiler errors, unexpected warnings, `sorryAx`, missing `.olean`; save distinct qualified v4 `bfss-fcp-m4c2-original-full-l2-fiber-unitary-v4-adc7f124-lean4341-d13f23b-Linux-X64` only after full success and preserve log artifact.

Only final `FCP.IndependentFullL2GaugeTransport.fiberTransportUnitary` counts as one prospective new accepted root. A strict Gate #4 **green plus qualified cache save** would advance 275 to 276; otherwise 275 remains final. Source exact pins and old failed gates remain immutable.

## Negative knowledge and physical boundary

- Gate #1 run #39735409407: incorrectly explicit `2 μ` arguments on `coeFn_compLpL`.
- Gate #2 run #39736606254: `rw [hf]` failed under accepted `fiberTransport` abbreviation; `rw [hb]` left a coercion-normalization residual.
- Gate #3 run #39737613965: `simpa only [fiberTransport]` exposes two distinct private `μ` names instead of their definitionally equal source volume measure; other three independent proofs are now axiom-clean.
- Gate #4 remains an **unverified exact Lean test**, not an accepted proof.

If accepted, M4C2 proves actual source full-`L²` **linear isometric equivalence** induced by `J`; does **not** yet prove gauge-fixed physicalSpace equality, preserved invariant smooth core, closed sixteen-supercharge graphs, Hamiltonian equality, Spin(9), or BFSS spectral consequences. No edits to main, draft PR #25, Issue #28, immutable upstream pins or prior accepted proofs.
