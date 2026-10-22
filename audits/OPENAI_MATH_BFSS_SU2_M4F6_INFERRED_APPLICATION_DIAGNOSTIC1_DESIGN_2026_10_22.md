# FCP BFSS — M4F6 inferred-application bounded diagnostic #1

**Date:** 2026-10-22 (America/Los_Angeles). **Disposition:** prospective diagnostic only. Zero principal roots; recorded cumulative 294.

The previous [Gate #2 run 39869296605](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39869296605) compiled and strictly audited the three generic/source-parametric input-cut helpers. The concrete module then hit recursion only in its two cut-specialization applications (lines 92 and 104). The generic mathematical restriction law is distinct from the concrete graph bridge.

## Discriminating question

Does each of the exact two applications elaborate when its result type is inferred, rather than checked against a concrete restricted-graph equality after unfolding?

New `FCPRestrictedGraphInputCertificates.lean`, blob `aaee88f75e17c816afdd6efc7cd33fa94b350125`, defines the two proof applications without return-type annotations:
- `core_graph_input_cut independentCoreToL2 (independentChargeVector color gamma theta) (independentPhysicalSpace theta hCAR hHermitian)`;
- `original_core_graph_input_cut pairedAlgebraData pairedGaugeData`.

The argument expressions match those in the failed applications. E, CAR, Hermiticity and all source objects retain their original meanings. There is no expected concrete graph-alias goal during these two elaborations. Printing both inferred declarations and their axioms makes the actual propositions inspectable.

If both pass, the remaining failed boundary is the application-to-concrete-goal conversion, rather than bare inference of these applications. If one fails, its first diagnostic localizes the problem earlier. This is not a claim that a passing inferred certificate already proves the concrete graph-alias equality.

## Gate contract and preserved work

New self-path-only workflow `.github/workflows/bfss-m4f6-input-cut-application-diagnostic1.yml` uses:
- unchanged pinned original `adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`;
- the exact eleven-path M4F5 qualified parent restore;
- a fresh 105-second helper compile and exact three-declaration validator;
- a separate helper checkpoint saved after that strict stage, before later work can fail;
- a fresh 105-second inferred-certificate compile and exact two-declaration validator;
- only the standard permitted axioms, compiler warningAsError, no sorryAx, and the established narrow Lake-status warning filter;
- a distinct final diagnostic cache containing both helper modules, only after both stages succeed.

The diagnostic does not compile or accept the failed concrete M4F6 module. Its graph definitions and two principal theorem statements remain unchanged in the prior candidate. Supporting helper certificates do not increment the principal ledger. No recursion/heartbeat/resource limit is increased.

Local checks cover exact ten source/candidate pins, exact 3+2 name lists, YAML/shell/Python syntax, checkpoint restore/save path equality, and the full patch's workflow triggers. The patch matches only this new diagnostic on the isolated branch.

## Decision after the diagnostic

Use the outcome to choose the next source bridge. Do not launch an uninstrumented replay of the previous concrete change/unfold/exact sequence. A clean inferred certificate may be reusable as an explicit named raw-source certificate, but any bridge back to the literal source/independent graph aliases still needs strict qualification.

No physical output invariance, closed-operator/domain transport, Hamiltonian or spectrum conclusion follows from this diagnostic. The independent D3B recovery workstream continues separately. Canonical main, original mathematical sources and accepted proof blobs remain untouched.
