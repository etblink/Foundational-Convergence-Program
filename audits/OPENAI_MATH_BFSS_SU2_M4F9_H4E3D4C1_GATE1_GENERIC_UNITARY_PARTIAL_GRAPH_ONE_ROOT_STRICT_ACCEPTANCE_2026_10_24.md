# BFSS M4F9 H4E3D4C1 — generic unitary equivalence of full Mathlib partial-operator graphs

**Date:** 2026-10-24 Pacific. **Disposition:** STRICT ACCEPTED — 1/1 new support theorem root.

## Independently confirmed evidence

- [Strict Gate #1 run #40142060682](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40142060682), job `121015673598`, run and job `completed/success`; exact workflow trigger commit `e9e1986050a7a284ca26980ee883e6e6ce3e435d`.
- Candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H4E3D4C1GenericUnitaryPartialGraphEquivalence.lean`, immutable source blob `bc5c2f2ab866dad8b82ba6d099ab05ff1cd25049`, source commit `1c44af7fdcb56b31e1e46a7a4393b2587b77bca5`.
- Pinned `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; source-exact SHA preflight and frozen Lean/Mathlib restore passed.
- Parent qualified H4E3D4B cache `bfss-fcp-m4f9-h4e3d4b-real-independent-action-50e5c4ea-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64` hit, with complete **100-entry** saved-path manifest and original D4B/D4A/D3 source ancestry verification.
- Fresh `lake env lean -DwarningAsError=true` compiled the entire proposed module, no error or `sorryAx`, exactly one qualified axiom report:
```text
'FCP.M4F9H4E3D4C1GenericUnitaryPartialGraphEquivalence.genericUnitaryPartialGraph_mem_iff'
depends on axioms: [propext, Classical.choice, Quot.sound]
BFSS_M4F9_H4E3D4C1_GENERIC_UNITARY_PARTIAL_GRAPH_ONE_ROOT_STRICT_PASS
```
- Successfully saved qualified child cache `bfss-fcp-m4f9-h4e3d4c1-graph-bc5c2f2a-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original unfiltered original-compiler artifact `bfss-m4f9-h4e3d4c1-gate1-40142060682`, ID `12579515688`, ZIP SHA256 `cbfbd0db1f1a7167f487448625d3a9c613590f40083e975b0577a3e355f6eb11`.

## Exactly verified mathematics

Under abstract `X,Y` complex Hilbert spaces, an actual `U : X ≃ₗᵢ[ℂ] Y` and real unbounded `LinearPMap` partial operators `A : X →ₗ.[ℂ] X`, `B : Y →ₗ.[ℂ] Y`, assuming only:
```lean
hDom : ∀ x, x ∈ A.domain ↔ U x ∈ B.domain
hAction : ∀ x (hx : x ∈ A.domain),
  ∃ hy : U x ∈ B.domain, B ⟨U x,hy⟩ = U (A ⟨x,hx⟩)
```
the accepted theorem establishes for every `x,z : X`:
```lean
(x,z) ∈ A.graph ↔ (U x,U z) ∈ B.graph
```
for **literal pinned Mathlib `LinearPMap.graph` submodules**, by exact `LinearPMap.mem_graph_iff`, dependent subtype witness uniqueness and `U.injective`. Reverse graph membership relies crucially on `hDom` in both directions; action is not merely forward inclusion because U is injective and the domains are equivalent. This does not misuse `LinearPMap.comp`, does not assume source ambient inclusion surjectivity and does not weaken the source proof.

Qualified H4E3D4A domain iff and H4E3D4B action already exist for the original independently defined E2 normalized physical Hilbert Hamiltonian `H_ind`, true historical D2B28 physical Hamiltonian `H_hist` and actual original independent/source physical Hilbert unitary U under **all explicit** original H3B2 matching `theta hCAR hHermitian color gamma J hColor hGamma hJ`. Next strict **H4E3D4C2** instantiate this generic accepted bridge to the real BFSS operators and prove the concrete full graph iff.

**Scope:** This is one accepted **generic support root**, not yet a new concrete BFSS specialization root. Neither formal unitary equivalence nor domain/action intertwining alone proves an eigenvalue, spectral gap, Spin(9) decomposition, or BFSS mass gap. Historical principal-root ledger independent; no automatic increment. Main, draft PR #25, pinned originals unchanged.
