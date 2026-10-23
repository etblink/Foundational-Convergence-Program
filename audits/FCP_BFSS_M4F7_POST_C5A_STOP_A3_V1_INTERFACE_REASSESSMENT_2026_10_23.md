# FCP BFSS — M4F7 post-C5A stop: source-exact A3/V1 interface reassessment

**Date:** 2026-10-23 PDT. **Status:** Architectural review, **no new Lean theorem, no new CI gate, no new principal credit**. Frozen accepted principal-root count **302**.

## Independently inspected accepted mathematical interfaces

Following the independently verified strict C5A Function Prod Gate #3 failure ([Actions #39924000467](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39924000467)), directly reread the research branch source files and exact Lean signatures:

1. **A3** `FCPM4F7IndependentClosedGraphAliasA3.lean`, immutable Git blob `f38ff58df7afe69562c3059c71b7c2f7d7a28e60`: independent, J-free `independentRestrictedClosedGraph color gamma theta hCAR hHermitian : Submodule ℂ (Lp E 2 μ × (SpinIndex → Lp E 2 μ))`, **defined to be native `(LinearMap.range restrictedProd).topologicalClosure`**, and `independentRestrictedClosedGraph_isClosed` strictly accepted. No J in definition or theorem premises. Neither is single-valuedness or a closed `LinearPMap`.
2. **V1** `FCPM4F7IndependentRestrictedClosedGraphVerticalC1Cut.lean`, immutable blob `71a0b11174a1c5beef4ad674a0ac1666ec35347c`: accepted `independentRestrictedCoreGraph_closure_vertical` under original `color,gamma,theta,hCAR,hHermitian,J,hColor,hGamma,hJ`, requiring membership of `(0,y)` in **`closure (LinearMap.range restrictedProd : Set (Lp E 2 μ × (SpinIndex → Lp E 2 μ)))`**, yielding `y=0`. This is genuinely the **same exact restricted raw expression** as A3's native `topologicalClosure`, but the *coercion/closure interface and copied entire concrete charge expression* differ.
3. **C4** `FCPM4F6RestrictedGraphClosureC4.lean`, immutable blob `7a248ff92d8f1d3e7ee7cbf9e94b7addf5db5e0d`: accepted original source restricted closed-graph **Set** equality under actual independent-to-source graph transport homeomorphism, using **the same literal range closure as V1**. It does not independently imply A3 is the graph of a single-valued `LinearPMap`.
4. **C3** `FCPM4F6RestrictedGraphImageC3.lean`, immutable blob `b9d707d8a9ca1100fda35872ebbfeb83c56dbd2a`: accepted original source restricted smooth graph image identity, again with literal raw restricted graph and unweakened source hypotheses; not a named A3 operator interface.

The originally planned B5/C5A detour attempted to prove a *different* inclusion: A3's restricted graph submodule is contained in the **unrestricted independent** graph closure, invoking A1 and generic linear product-range restriction. That inclusion is mathematically plausible and the generic theorem independently accepted, but **four levels of concrete specialization have failed**:
- B5 Gate #3 at the concrete C2 full Set equality; accepted sources/cache otherwise passed.
- C5 Gate #1 at concrete generic closure specialization `whnf` 600000-heartbeat timeout.
- C5A Gate #1 at unrestricted product witness `rfl` recursion.
- C5A Gates #2–#3 at structural and function product equality `simp` variants, with no qualified result.
The concrete C5A proof variants are formally stopped; the forensic details are preserved in `audits/FCP_BFSS_M4F7_C5A_GATE3_FUNCTION_PROD_SIMP_NO_PROGRESS_STOP_2026_10_23.md`.

## Highest-value next interface: exact V1→A3 native membership bridge

The shortest mathematical path may **avoid the unrestricted product/witness inclusion entirely**, because **accepted V1 already proves vertical uniqueness of the very literal restricted closure that *defines A3***. A successful **new** interface must furnish an exact, narrowly typed statement:

```text
For original color,gamma,theta,hCAR,hHermitian and p:
p ∈ A3.independentRestrictedClosedGraph color gamma theta hCAR hHermitian
  ↔ p ∈ closure
       (LinearMap.range ((independentCoreToL2.comp invariantCore.subtype).prod
        (independentChargeVector.comp invariantCore.subtype)) : Set _)
```

but **do not** retry proving this entire concrete Set equality with `rfl`, `exact`, `simpa`, or `Submodule.topologicalClosure_coe` directly: those were A2 Gate #1/2 recursion reds. Instead inspect Mathlib's exact **abstract** `Submodule.topologicalClosure_coe` type and any existing generic abstract named-wrapper proof *first*. Form an **opaque input proposition/interface** over arbitrary `S:Submodule ℂ (X×Y)` and *propositionally named closure* `C=S.topologicalClosure`, proving membership equivalence generically with `S` and `C` both **opaque**, and a separately named native-submodule identification. The last concrete specialization still requires real evidence that the A3 definition's restricted range matches V1's literal range in a kernel-checkable **typed** environment. Existing B2 `topologicalClosure_vertical_of_set` provides the necessary generic vertical certificate; do not duplicate it or mistake abstract proof for BFSS specialization.

A lower-risk variant is to define a new *J-free closed partial charge operator* with its graph closure written directly as the **V1 literal raw restricted range**, and reserve A3 named graph equality as a *separate*, separately qualified comparison. Such a definition alone does **not** establish an actual closed operator: vertical uniqueness for a native submodule closure must still be verified with exactly the original V1 source premise.

## Required sequencing (no more speculative gates)

1. Audit exact Lean signature shapes in accepted A3 and V1 and Mathlib `Submodule.topologicalClosure_coe`, `Submodule.toLinearPMap_graph_eq`, `LinearPMap.IsClosed`. Do not infer a concrete proof from a generic theorem alone.
2. Specify one concrete, **new** and minimal native-submodule membership or closure identification proposition (without rewriting giant Set equality); require a source-preserving statement and an exact proof sketch that does **not** depend on costly hidden conversion before launching any strict gate.
3. Only after source-exact qualification: use accepted V1 and B2 to establish actual single-valued A3 closure, construct genuine **J-free** `LinearPMap`, verify `graph` equality and `IsClosed`. Each substantive operator theorem requires fresh strict source, whitelisted axioms and qualified saved `.olean`.
4. Do **not** infer original source/operator/domain equivalence, physical Hilbert domain density, sixteen output physical memberships, Hamiltonian/form or spectral equality, or mass gap from topological graph closedness.

**Key procedural decision:** stop paying for large BFSS proof search without a type-stable adapter. At present, original main, draft PR #25 and frozen source mathematics remain untouched; the accepted principal-root ledger remains **302**. Preserve every negative result; test something genuinely different, never cosmetic tactic permutations.
