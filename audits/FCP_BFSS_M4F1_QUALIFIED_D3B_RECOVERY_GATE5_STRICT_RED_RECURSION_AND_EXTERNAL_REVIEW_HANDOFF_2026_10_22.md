# FCP BFSS — M4F1 qualified D3B recovery Gate #5: final theorem recursion red; independent adversarial review mandate

**Local date:** 2026-10-22 PDT. **Status:** verified strict RED; **0/1 new principal root accepted**; cumulative ledger remains **294**.

## Exact source and run evidence

- [Run #39883947823](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39883947823), job `120187619038`, completed/failure, research commit `c249d9317c66bc9791971f2ca021f37ba616e8da`.
- Immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. All original and exact one-change adapter blob preflights passed. Accepted M4F5 parent and G4K8C qualified checkpoint restored.
- All eight G4K8D–G4K9D recovered historical modules compiled with `-DwarningAsError=true` and passed exact `#print axioms` whitelist validation (5,4,4,4,2,6,5,4 reports respectively). Original G4K1–G4K8C prior cache closure verified. A complete qualified G4K1–G4K9D recovery cache was **actually saved** with key:
  `bfss-fcp-m4f1-recovered-g4-994e89ee-cf0736c8-9f802fdf-987285d0-b77af74a-380e1e90-gate5-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- G4K10A and D3A (with exact one-line deprecation adapter) compiled and passed strict reports (5 and 2 declarations). The actual historical original `SU2BFSSPhysicalDomainD3BFullChargeGaugePreservationProbe.lean`, unchanged original blob `1aedd8b251c8b04f02f9d71e35594a8cc482d79b`, compiled and passed **all five** source-exact axiom reports using only `propext`, `Classical.choice`, `Quot.sound`. Marker: `M4F1_D3B_RECOVERY_GATE5_D3B_ALL_FIVE_SOURCE_THEOREMS_PASS`. **No downstream cache containing D3B was saved** in this failed run; the full-G4 checkpoint was saved *before* G4K10A/D3A/D3B.
- The genuine independent M4F1 theorem file, repaired only by adding the missing `open FCP.BFSSSU2GaugeG4J` source-definition namespace, is `experiments/openai-math-su2-physical-domain/recovery/FCPIndependentInvariantCharge.lean`, blob `1152c5c31013bff6bd5a4bd8cbc8d3e53a4f54b7`. Compilation reached the *actual theorem* and failed:

```
FCPIndependentInvariantCharge.lean:60:8: error: maximum recursion depth has been reached
use `set_option maxRecDepth <num>` to increase limit
`FCP.IndependentSmoothSupercharge.independentCharge_mem_invariantCore` depends on axioms:
  [propext, sorryAx, Classical.choice, Quot.sound]
```

Line 60 is the `exact sourceOriginalCoreCharge_mem_invariantCore` application, whose next line supplies `pairedAlgebraData pairedGaugeData α g`. The original D3B theorem is
`sourceOriginalCoreCharge_mem_invariantCore {N} (M : AlgebraData N) (G : M.GaugeData) (α : SpinIndex) (f : G.invariantCore) : M.charge α f.val ∈ G.invariantCore`.
The M4F1 proof already (1) applies the two-sided `independentInvariantCore_iff_source` to the independent output, (2) rewrites output transport using accepted `independentCharge_intertwining`, (3) packages the independent input's transported section into a literal `g : pairedGaugeData.invariantCore`, then (4) fails on elaboration/type-conversion of the exact original source theorem. No theorem has been accepted; the printed `sorryAx` is the failed proof's elaborator recovery.

## Scientific classification and stopping rule

This is **not** a newly observed physical or logical counterexample; it is a Lean recursive type-conversion/elaboration bottleneck at a specific, named actual-source theorem interface. Nor is the independent theorem established until its exact statement is recompiled under the full strict gates. Do not spend the next CI merely increasing `maxRecDepth` or unfolding/re-simplifying `AlgebraData.charge` and the sixteen-coordinate source objects. The accepted M4E5 milestone became green by composing exact named kinetic/cubic bridges instead of expanding giant source terms.

The next step is **independent mathematical and proof-architectural review**, e.g. by Grok, with the full frozen source, accepted theorem signatures, original compiler evidence, and negative-knowledge history. Ask the reviewer to challenge whether this final implication really follows with the current hCAR/hHermitian/J/hColor/hGamma/hJ assumptions and literal physical invariant-core definitions; whether there is a hidden coercion, a missing bridge, or a definitional mismatch; and propose a minimal staged proof avoiding dangerous reduction, distinguishing a generic theorem from a source-specialization identity. Request a narrowly-scoped candidate Lean patch or rigorous missing-hypothesis diagnosis, **not green-count optimization**.

**Proposed source-exact proof investigation** (not a certified fix): type-annotate a direct source membership fact `hsource : pairedAlgebraData.charge α (independentSmoothTransport J f.val) ∈ pairedGaugeData.invariantCore` as its own named step, use `g.property` through a checked exact equality `g.val = independentSmoothTransport J f.val` rather than forcing deep definitional conversion on the original D3B application, then compose with the already accepted transport `rw`. If even a standalone source-specialization of the D3B theorem triggers recursion, isolate and precompile that specialization before attempting M4F1. Do not bypass a genuine discrepancy with `sorry`, `admit`, extra axioms or an abstract hypothesis whose realization is unproved.

Preserve original math, `main` and PR #25; no new CI was launched for this forensic audit.
