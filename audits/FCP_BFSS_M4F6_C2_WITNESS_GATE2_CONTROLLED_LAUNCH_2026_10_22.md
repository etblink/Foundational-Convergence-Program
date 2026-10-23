# FCP BFSS M4F6 — C2 Gate #2 direct witness-level graph cut: controlled strict launch

**Local date:** October 22, 2026 PDT. **Status:** one strict test launched, no verdict yet; cumulative accepted principal roots **297**. This experiment responds to a recorded exact C2 Gate #1 recursion, not mathematical counterevidence.

## Evidence and unchanged scientific target

[M4F6 C2 Gate #1 #39889826778](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39889826778), job `120206660997`: completed/failure solely at `FCPM4F6IndependentGraphInputCut.lean:52:8` `maximum recursion depth has been reached` when Lean elaborated the **generic theorem application** `exact core_graph_input_cut ...`. Frozen source provenance, original BFSS/Mathlib pins, accepted M4F5 and separately accepted C1 caches and `.olean` checks all passed. The failed theorem output contained transient `sorryAx`. No new theorem accepted; no C2 cache saved. Full first-failure audit: `audits/FCP_BFSS_M4F6_C2_INPUT_CUT_GATE1_RED_AND_WITNESS_PROOF_PIVOT_2026_10_22.md`.

The mathematical identity is the same J-free **literal independent sixteen-supercharge restricted core-graph** equals independent full-core graph subject to membership of the *input* in the *independently defined physical Hilbert space*; it does not assert output invariance, closability, physical Hamiltonian equivalence or spectrum.

## Specific proof patch: no change in claim

New `experiments/openai-math-su2-physical-domain/FCPM4F6IndependentGraphInputCutWitness.lean` (Git blob `1109d63969293f79edf5f6c0d36122b53784c93c`), research commit `3a8c51839a20c0f865cd0126cacb58eb57eda30c`. Source is **byte-for-byte identical** to original C2 blob `4db1bbd1685555a3c00efd836577186782ff08bb`, apart from replacing exactly its problematic single `exact core_graph_input_cut` application with a direct finite witness/Set extensionality proof:

```lean
  unfold independentFullCoreGraph independentInvariantCore
  ext p
  constructor
  · rintro ⟨x, rfl⟩
    exact ⟨⟨x.val, rfl⟩, x.property⟩
  · rintro ⟨⟨x, rfl⟩, hx⟩
    exact ⟨⟨x, hx⟩, rfl⟩
```

This proof architecture mirrors the strictly accepted generic lemma's witness-level argument but avoids recursive expected-type conversion from invoking the large instantiated theorem. No `maxRecDepth` increase, new axiom, sorry, new equivalence hypothesis, changed core definitions or theorem statement.

## Isolated strict experiment

Workflow `.github/workflows/bfss-m4f6-independent-input-cut-c2-witness-strict-gate2.yml`, commit `e4ab3bfbb09c5bb4296a7bf563f4b1426274b6f0`, intentionally self-path-only [run #39890728887](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39890728887) started **in progress**.

Retains immutable original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, qualified accepted M4F5 and C1 proof-cache keys. Adds an **explicit full source exactness proof** in Python: frozen predecessor source Git blob and witness candidate blob verified, and `witness == original.replace(old_proof,new_proof,1)`, with the exact same theorem signature and unique printed axiom report. Strict compilation uses `-DwarningAsError=true`, one expected fully qualified root `FCP.M4F6IndependentGraphInputCut.independentCoreGraph_eq_physicalInputCut`, no extra axioms beyond `propext`, `Classical.choice`, `Quot.sound`, and separate C2-only qualified cache saved **only upon success**. Full logs are uploaded on failure too. No historical G4 rebuild or 6-root M4F6 gate is re-triggered.

## Interpretation / stop rule

- **Green**, only after independent run log, exact source, strict allowed-axiom report and **actual cache save** verification: accept +1 root and increment cumulative to **298**. Next compose named literal source C1 and independent C2 certificates with already accepted unrestricted graph image and homeomorphic closure theorems.
- **Red**: obtain exact first Lean line, distinguish failure to unfold aliases, witness reconstruction, definitional equality or Lean elaboration from a genuine missing assumption. No blind recursion-depth bump, no serial CI variant guessing; preserve negative knowledge.
- **No impact** on canonical main, PR #25 or frozen original source BFSS mathematics. Avoid claiming physical charge-domain closed graph/operator equivalence or spectral conclusions solely from input-cut identities.
