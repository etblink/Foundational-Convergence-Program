# FCP BFSS — M4F6 Gate #2 input-restriction proof design

**Date:** 2026-10-22 (America/Los_Angeles). **Status:** prospective strict verification, zero new roots accepted. Recorded cumulative count before this gate: 294.

## Same mathematical claim, different proof boundary

Previous [M4F6 run 39864916502](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39864916502) restored the corrected parent cache and reached maximum-recursion errors at lines 100, 148, 163 and 168. The first error was a concrete product-expression conversion involving the invariant-core equivalence. That failed proof and source blob `a1ebee69429e04596eeaeae6fc8e28e5ec86322e` remain in Git history.

Both independent and literal-source restricted graph definitions are unchanged. Both principal theorem statements, including all CAR, Hermiticity, coefficient and labeled generator-intertwining premises, are unchanged. No timeout/heartbeat/recursion limit is increased.

The new proof observes:
1. For arbitrary linear input/output maps a,b and an input submodule P, restricting the core to P.comap a yields exactly the unrestricted graph with first coordinate in P. No output-preservation or injectivity premise is needed.
2. A graph-image equality restricts along equivalent predicates on corresponding inputs.
3. Actual original GaugeData.invariantCore and the actual independent invariant core are each the comap of their own physicalSpace under their own coreToL2 embedding.
4. Accepted M4F4 unrestricted graph equality and M4C3 physical membership equivalence therefore yield the restricted raw graph equality.
5. The accepted ambient homeomorphism transports its closure by image_closure, after the raw restricted equality has been proved. There is no claim that closure commutes with intersection.

This bypasses the concrete invariant-core-equivalence evaluation which failed previously. It retains every source-specialization obligation.

## Frozen candidates and bounded stages

- New generic/source-parametric helper `FCPRestrictedGraphInputCut.lean`, blob `cbcb667d15fccd67eaa185a69eb8b476546d977d`: three supporting declarations.
- Revised `FCPIndependentRestrictedCoreGraph.lean`, blob `9d492475be251f5414ad1758cfa810d1f92fb235`: the two unchanged graph definitions, two supporting input-cut characterizations, and the two unchanged principal graph/image-closure claims.
- New self-path-only workflow `.github/workflows/bfss-m4f6-input-cut-restricted-core-graph-gate2.yml`.
- Stage A: fresh helper compile, 105-second process bound, exact three-name and axiom contract.
- Stage B: fresh actual restricted-graph compile, 105-second process bound, exact six-name and axiom contract.
- Standard allowed axioms only: propext, Classical.choice, Quot.sound. Reject sorryAx, missing/duplicate/wrong declarations, compiler errors and unexpected warnings; retain compiler warningAsError.
- Restore the exact qualified eleven-path M4F5 cache contract. Save a distinct Gate #2 cache including the new helper only after both strict stages pass.

Local preflight verified both unchanged definitions and both unchanged principal signatures, all nine parent/candidate hashes, YAML and shell/embedded-Python syntax, all exact declaration/report lists, rejection of synthetic proof-hole and duplicate reports, and exact parent restore/save equality. All 341 existing/new workflow event configurations were checked against the complete four-file patch; exactly this new gate matches on the isolated branch.

## Acceptance and stop rules

A passing generic helper alone is not the source theorem. Neither a partial clean axiom report nor a compiler exit code without the complete strict contract accepts a root. At most the two predeclared principal graph theorems can add roots; definitions and five supporting lemmas add none to principal accounting.

The next failure must be classified by the first actual compiler/validator diagnostic. A namespace or localized type error warrants a minimal source-faithful correction. Another concrete recursion failure warrants preserving the newly localized conversion boundary and reassessing its source bridge; do not replay the old invariant-core change or increase limits blindly.

## Scientific ceiling and governance

These targets identify restricted raw graph relations and their closures. Physical output invariance, densely defined closed operators, adjoints, associated normalized Hamiltonian natural domains, global Spin(9) reduction and the positive-eigenvalue theorem remain separately accountable. D3B/M4F1 recovery is an independent workstream; this graph proof neither imports nor assumes their new candidate.

Source mathematics remains `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Research branch only, no main/upstream/accepted-proof changes or PR #25 manipulation.
