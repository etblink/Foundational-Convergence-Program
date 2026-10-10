# OpenAI Math BFSS SU2 — post-Gate-174 scientific boundary assessment 0.1.0

**Date:** 2026-10-09 Pacific. **Classification:** `READ_ONLY_SOURCE_AND_ADJUDICATION_BOUNDARY_ASSESSMENT`, not a new source-theorem proof or complete fresh PDF re-audit. This document is derived from the pinned upstream Lean definitions and the already qualified FCP independent T6 adjudication of the October 5, 2026 manuscript; **the primary manuscript was not independently re-extracted in this assessment**.

## Qualified FCP results

Gates #162–#171 established original source SU2 gauge/physical trial nonvanishing and positive-trial-energy facts, the true original/deformed massless coefficients (G4-K9A/B/C), exact massless potential operators and source smooth-core charges/forms (G4-K9D), and equality of original/deformed closed joint charge graphs and their projected domains (G4-K10A). All post-G4-K8E3 source modules now have cache creation/warm-reuse qualification in Gate #173 (run 38012972174) and Gate #174 (run 38013292401). No additional assumptions or new axioms were used; each cited Gate #171 theorem's axiom list was `[propext, Classical.choice, Quot.sound]`.

## Registered manuscript versus pinned source

FCP registered source `SRC-OPENAI-MATH-F270B-BFSS-2026` is the pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` manuscript `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/positive-eigenvalues-relative-su2-bfss.pdf`, Git blob `cca4d207595c1da59d77ed78b3cce276e509674a`. FCP's prior independent adjudication `audits/OPENAI_MATH_FAMILY270B_BFSS_T6_SOURCE_DELTA_ADJUDICATION_0_1_0.md` summarizes its Theorem 1.1 as a **gauge-invariant relative N=2** form operator on `L²(R²⁷; F)`, constructed from the closure of the nonnegative `q(Ψ)=(1/16) ∑α ‖QαΨ‖²` initially on the **gauge-invariant** smooth compactly supported core. The associated self-adjoint operator has infinitely many positive point eigenvalues tending to infinity. The paper's compact-resolvent argument is restricted to selected reducing sectors, not all physical space. This is not a claim that FCP has re-proved the paper's spectral theorem in Lean.

Pinned upstream Lean definitions actually inspected:
- `BFSS/Core.lean`: `AlgebraData N`, `M.charge α`, `M.chargeVector`, `M.coreForm f := (1/16) ∑α ‖coreToL2 (M.charge α f)‖²`; `M.fullCoreGraph := LinearMap.range (coreToL2.prod M.chargeVector)`, `M.fullClosedGraph := M.fullCoreGraph.topologicalClosure`. This graph uses the **full** `SmoothCore N`, without gauge restriction in its definition.
- `BFSS/GaugeCore.lean`: `M.GaugeData` with genuine bosonic/fermionic gauge actions; `G.physicalSpace` as a gauge-invariant closed submodule; `G.invariantCore := G.physicalSpace.comap coreToL2` on `SmoothCore N`. The source provides actual gauge-defined objects, not a placeholder 'physical space'.
- `BFSS/ClosedProfiles.lean`: `M.deformedChargeVector h m`, `M.deformedCoreGraph h m` and `M.deformedClosedGraph h m`; separately `G.coreNormClosure` is an L²-norm closure of **gauge-invariant** core sections, defined in the `GaugeData` namespace. Its topology and role are not automatically the form/graph closure in the manuscript.
- `BFSS/MassiveMoments.lean`: `M.deformedCoreEnergy h m f := (1/16) ∑α ‖coreToL2 (M.deformedCoreCharge h m α f)‖²`.

Thus G4-K10A's closed-graph identity is valuable for the **same original full-space joint graph** and yields a genuine closed joint charge domain equivalence at h=1,m=0. But the original paper's operator uses the gauge-invariant core, its graph closure/form closure, and a specific **self-adjoint Hamiltonian associated to that closed quadratic form**. The fact that the *full-space* graph closures agree does not, without further identification, transfer the paper's gauge-restricted spectral theorem.

## Targeted next diagnostic — NO automatic theorem gates

First compare the paper's exact gauge-invariant core and inner-product/form normalization to the existing source `G.invariantCore`, source `M.coreForm`, `M.deformedCoreEnergy`, and `M.chargeVector`. In particular identify whether the manuscript Hilbert space and gauge action are the *same specific `M,G`* as FCP's qualified concrete SU2 `AlgebraData 2/GaugeData`; prove an explicit identification or record an exact remaining mismatch.

Second distinguish closure of the **restricted gauge-invariant charge graph** from restriction of the **full-space closed charge graph**. These can differ without a separately established core/domain density result; `G.coreNormClosure` is an L²-norm closure and cannot silently substitute for graph-norm closure. If the charge maps are the same already on `G.invariantCore`, equality of their closures as *restricted core graph closures* is a direct corollary, but matching that particular closure to the manuscript remains its own test.

Third establish the exact closed nonnegative quadratic form defined by the closed charge column and the associated self-adjoint representation-theorem operator, including domain, operator coefficient and gauge-invariant restriction. Only after this identification could one discuss transferring the manuscript's existing positive-point-spectrum theorem to a provably identical formal object; such transfer would **not be an independent discovery of new spectrum**.

These are explicit scientific scope gaps, not a recommendation to run an unlimited new Lean gate sequence. Freeze source-operator proof program and the cache; conduct a bounded read-only primary manuscript-to-source identity audit first. FCP K1–K10 source-delta controls (T6 confirmed, T2 not triggered) remain unchanged.

## Status

`G4K10A_GRAPH_EQUALITY = ACCEPTED`  
`G4K10A_WARM_CACHE = QUALIFIED`  
`SU2_MANUSCRIPT_GAUGE_RESTRICTED_FORM_IDENTITY = NOT_YET_ADJUDICATED`  
`SU2_MANUSCRIPT_HAMILTONIAN_OPERATOR_DOMAIN_IDENTITY = NOT_YET_ADJUDICATED`  
`NEW_SPECTRAL_THEOREM = NOT_CLAIMED`  
`MAIN_MERGE = NO`; `UPSTREAM_PR = NO`.

No automatic further CI gate from this audit-only documentation.
