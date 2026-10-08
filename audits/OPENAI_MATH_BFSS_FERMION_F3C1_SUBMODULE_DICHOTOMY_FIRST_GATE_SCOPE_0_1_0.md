# BFSS fermions F3-C1 — full-submodule and dichotomy first kernel gate 0.1.0

**Date:** 2026-10-08. **Status:** `F3C1_SUBMITTED_UNQUALIFIED`.

## Authority and accepted facts

- Research branch `research/openai-math-su2-concrete-potential`. Pin OpenAI Math `adc7f1241b42e322a6451854ab7e4b4c146bf78a` and Lean 4.34.1.
- Accepted F3-B5 Gate #71: every exact BFSS Fermion 2 vector has a full genuine finite occupation basis expansion `occupationExpansion` with standard three kernel axioms.
- Accepted F3-B6 Gate #72: a theta-invariant submodule containing a nonzero vector contains one canonical actual occupation ket.
- Accepted F3-B9 Gate #76, run `37760755562`, job `113256291486`, source commit `0241cccf4cb0e4958ecdae1f774cfda568f37c19`: any theta-invariant submodule containing one occupation ket contains **all** canonical occupation kets, with kernel axiom footprint `[propext, Classical.choice, Quot.sound]`.

## Bounded targets

1. For any `W : Submodule ℂ (OAI.BFSSQuantum.Fermion 2)` theta-invariant and any nonzero `x ∈ W`, prove `W = ⊤` using B6, B9, and B5 expansion together with scalar- and finite-sum-closure.
2. For every such theta-invariant W prove `W = ⊥ ∨ W = ⊤` by the elementary argument that every non-bottom submodule contains a nonzero vector and target (1).

The proof must be on the exact transported 24-mode BFSS Fock space; do not assume finite-dimensional irreducibility, a universal physical conclusion or a rewritten CAR representation. Avoid `Finset.univ` evaluation or defeq explosion by treating accepted expansion and membership results as opaque lemmas.

## Required gate checks and boundaries

Preserve the verified F1–F3-B9 imported sequence. Print exact axiom reports for two new declarations; expected only `[propext, Classical.choice, Quot.sound]`. **No** `sorry`, `admit`, `sorryAx`, new axioms, target weakening, relaxed resource limits, branch main modifications, or upstream writes. Compiler acceptance requires exact research HEAD, successful `lake env lean` and standard-only reports.

This F3-C1 gate is a **concrete irreducibility criterion** expressed on submodules. It does NOT yet certify the exact upstream `theta_irreducible` definition or close upstream `AlgebraData 2`; those require separate pinned-interface audit and formal linkage after acceptance. Does not prove BFSS spectrum, positivity, mass gap or broad FCP unification conclusions. FCP frozen T6/K1–K10 classifications unaffected.

Human owner provides gate GREEN/RED. Submit one candidate and **stop without inspecting its newly triggered workflow**.
