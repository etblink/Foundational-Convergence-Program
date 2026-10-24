# BFSS M4F9 H2D1 Gate #1 — Lean unknown toLp identifier, both roots unaccepted

**Strict disposition:** `M4F9_H2D1_GATE1_RED__UNKNOWN_WITHLP_TOLP_IDENTIFIER__TWO_SORRYAX_REPORTS__0_OF_2_ACCEPTED`.

Original [GitHub Actions run #40063751774](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40063751774), job `120782547377`, `completed/failure`, exact workflow HEAD `7ea2ead4548620ec0db8f12c3ddea662b2ac5945`; preserved original diagnostic [artifact #12548856027](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40063751774/artifacts/12548856027), SHA256 `966e01685a8538cd3168bd5f13a6de6a5932742a76dcdeea2e4dbf307fdb340c`. Immutable etblink/math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact candidate Git blob `d60b1b768a1fde0384d1269137065ba1213c197c`. Python original-source and H2D1 theorem inventory preflight passed; exact H2C accepted archive `bfss-fcp-m4f9-h2c-native-pilp2-physical-e2-charge-a2a6cebc-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored and all required H2C/H2B/H2A/H1/DE4 parent .olean checks passed.

**First and only Lean error**, unfiltered compiler log:
```
FCPM4F9H2D1ActualE2HilbertOutputDomainEquivalence.lean:53:10:
  error(lean.unknownIdentifier): Unknown identifier `toLp`
```
The actual source at that location attempts
```lean
refine ⟨toLp 2 (fun α : SpinIndex => ...), ?_⟩
```
The pinned Mathlib `Mathlib/Analysis/Normed/Lp/PiLp.lean` uses `open ... WithLp` to expose `toLp`; H2D1 does not open `WithLp`. Both candidate roots subsequently print `sorryAx` due to the invalid first root; **neither is accepted**, no H2D1 co-qualified cache saved. No independent mathematical counterexample, analytic gap, source/Hamiltonian identity issue or runtime block demonstrated by this gate.

**Minimal correction:** change only that source token to the unambiguous qualified `WithLp.toLp 2`, updating exact source Git blob in a new pinned strict Gate #2 workflow. Retain every hypothesis, actual independently defined E2 output-submodule membership proof, true Hilbert PiLp2 output witnesses, exact H2C graph, natural-domain theorem and both #print-axioms roots. No `sorry` or declaration modification/relaxation. Reuse exact original math, source H1, DE4, H2A/H2B/H2C qualified archive with fresh Lean `-DwarningAsError=true`, no unexpected warnings, only permitted axioms and a new saved archive on full green.

**Bookkeeping:** H2D1 Gate1 0/2 accepted; principal working BFSS ledger **309 unchanged**. H2C 3/3 support roots and its cache remain accepted. Keep this original gate red permanently; do not count green until separately qualified. Canonical main, pinned original math and PR #25 untouched.
