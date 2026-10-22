# FCP BFSS SU(2) — M4C3 Gate #1 RED: continuous-linear-map coercion normalization

**Project local date:** 2026-10-22 PDT.  
**Disposition:** `M4C3_GATE1_RED__ONE_CLM_COERCION_IFF_RESIDUAL__ZERO_OF_ONE_NEW_ROOTS__276_CUMULATIVE`.

## Original strict-run evidence

- Run: https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39744500022
- Job: `119709511119`. Run conclusion: **failure**, attempt 1.
- Source/workflow commit: `102fd64bbb42fe173e22c246d41643b15cd15301`.
- Original candidate Lean source blob: `80a3aab37d73fbf8011db092fc15d4f671cd4b55`.
- Original source checkout `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`: pin/toolchain checks passed.
- Qualified M4C2 v4 original full-L² unitary cache was restored, and all required original and independent prerequisite `.olean` checks passed.
- The candidate compiled far enough to print four clean permitted-axiom declarations: `independentBosonPullback`, `originalPhysicalSpace_mem_iff`, `independentFermionAction`, and `independentPhysicalSpace`.
- Exactly one Lean compiler error was reported at `FCPIndependentPhysicalSpace.lean:72:64`, in `independentPhysicalSpace_mem_iff`. It left that helper and `independentPhysicalSpace_iff_source` dependent on `sorryAx` in the failed run.
- Strict gate exited nonzero before cache save. No theorem-root acceptance; cumulative count remains **276**.
- Diagnostic artifact: `bfss-m4c3-gate1-39744500022`, ID `12410183745`.

## Exact first-causal failure

The simplifier reduced the independent physical kernel intersection to:

```lean
⊢ (∀ (i : GaugeGroup 2),
    ↑(independentBosonPullback i) v =
      ↑(independentFermionAction theta hCAR hHermitian i) v) ↔
  ∀ (g : GaugeGroup 2),
    (independentBosonPullback g) v =
      (independentFermionAction theta hCAR hHermitian g) v
```

The remaining difference is the displayed coercion of a continuous linear map to a function. Both sides quantify over the same literal `GaugeGroup 2`, and their map applications are definitionally equal. The original `simp only` call did not discharge the reflexive `Iff`. This is a local elaboration/normalization issue, not evidence against the physical-space bridge.

## Gate #2 exact falsifiable repair

Append `rfl` immediately after the existing restricted `simp only` in `independentPhysicalSpace_mem_iff`. This tests whether the Lean kernel recognizes the two displayed propositions as definitionally equal without broadening simplifier hypotheses or changing any mathematical statement.

The new source blob is `795f4cbcb15e1c86f5adabbf5cc8cc93c1f0a890`, source-only repair commit `613e7c41d812f91d83ca5040bd25db03de4b3b70`. It has **not** been separately compiled at the time of this audit. Gate #2 must recheck all six declaration-name and permitted-axiom reports with `-DwarningAsError=true`, reject `sorryAx`, save a distinctly qualified cache only on full pass, and retain diagnostics on failure.

## Scientific limits

The proposed main theorem establishes membership equivalence of independent and **literal source** SU(2) gauge-constraint physical spaces under an already constructed generator-preserving full-L² unitary. It does not itself construct the restricted Hilbert-space isometry as a bundled object, prove invariant smooth-core transport, close any supercharge graph, identify Hamiltonian operator domains, or establish a spectral/mass-gap theorem.

**Governance:** gate is research-branch only. Original mathematical source, accepted prior proof blobs, `main`, draft PR #25 and Issue #28 remain unchanged.
