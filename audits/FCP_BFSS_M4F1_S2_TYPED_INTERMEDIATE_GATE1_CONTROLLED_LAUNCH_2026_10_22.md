# FCP BFSS M4F1 — S2 typed intermediate proof: controlled strict Gate #1

**Local date:** 2026-10-22 PDT. **Disposition at launch:** experimental strict proof gate **in progress**; no S2 result accepted yet. **Accepted cumulative principal roots: 295** from independently verified S1 Gate #1.

## Accepted S1 foundation and exact intended theorem

The prior isolated, truly source-specialized certificate `FCP.BFSSM4F1SourceSpecialization.pairedOriginalCharge_mem_invariantCore` was **formally accepted 1/1** in [S1 Actions #39885669948](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39885669948), job `120193159242`, with only `propext`, `Classical.choice`, `Quot.sound`. S1 parent cache saved:
`bfss-fcp-m4f1-qualified-source-s1-3340c823-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
The D3B importable original-source checkpoint saved separately:
`bfss-fcp-m4f1-qualified-d3b-source-s1-parent-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

**S2 preserves the full exact original intended statement** of `FCP.IndependentSmoothSupercharge.independentCharge_mem_invariantCore` and its existing hypotheses, including the concrete witness `J`, `hCAR`, `hHermitian`, `hColor`, `hGamma`, `hJ`. The `J` does not appear in the conclusion but its existence is still required by the theorem.

## Actual isolated source construction

Staged file `experiments/openai-math-su2-physical-domain/FCPM4F1TypedIndependentInvariantCharge.lean`, exact Git blob `642ba305a7a9a0ca23093b2e873bff6929931f36`, commit `39cf2d47c5f6bf9888195dbda088ba06f39422f1`, is **exactly** original minimally namespace-corrected M4F1 source blob `1152c5c31013bff6bd5a4bd8cbc8d3e53a4f54b7` with only two replacements:

1. Replace the direct generic D3B import with the accepted `FCPM4F1PairedSourceSpecialization` import.
2. Replace the failing direct generic D3B application with the named specialized source certificate and an explicit `g.val = independentSmoothTransport J f.val` equality, then rewrite that equality in the certificate:

```lean
  have hsource :
      pairedAlgebraData.charge α g.val ∈ pairedGaugeData.invariantCore :=
    FCP.BFSSM4F1SourceSpecialization.pairedOriginalCharge_mem_invariantCore α g
  have hg : g.val = independentSmoothTransport J f.val := rfl
  rw [hg] at hsource
  exact hsource
```

All earlier independent core membership, exact full source-charge intertwining, and `g : pairedGaugeData.invariantCore` construction remain unchanged. This is one deliberate, mathematically equivalent staged proof hypothesis, **not yet kernel-accepted**.

## Exact strict CI and stopping rule

A single dedicated workflow `.github/workflows/bfss-m4f1-typed-intermediate-s2-strict-gate1.yml` was committed in `fa38f97ff73ffcf40c77c4d1a199ee0bfa7232c2`; launched [Actions #39887196835](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39887196835), job `120198011868`. At audit preparation it was **in progress**, still checking out frozen source.

This job checks pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact original/S1/S2 source hashes, **both** exact replacements, S1 strictly accepted cache and importable accepted M4F5 charge/core theorem closures, then performs **fresh** `-DwarningAsError=true` Lean compilation of the S2 candidate. Strict validator requires the one intended qualified theorem with permitted axioms only, zero `sorryAx`, no Lean warnings/errors; separately keyed reusable S2 proof cache is saved **if and only if** the entire gate is successful. Logs and resource measurements are preserved on any result.

If S2 **green**, independently verify original job logs, absence of accidental assumptions, exact one-root axiom statement and cache before counting 296. Then M4F1 smooth physical-core preservation is established under the stated explicit hypotheses and the program can progress toward M4F6 physical restricted graph/domain and Hamiltonian equivalence.

If S2 **red**, classify exact first compiler error, preserve negatives; do not simply raise max recursion depth or change mathematics. If the error concerns the explicit `g.val` rewrite, isolate an exact source typing equality and `change` for the named theorem rather than expanding 16-charge components. One failed experiment cannot refute the genuine mathematical implication.

Canonical main, PR #25, and frozen original source remain unchanged.
