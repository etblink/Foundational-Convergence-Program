# H5E8AV Gate #2 — graph/domain set equality is not proposition iff

**Date:** October 17, 2026 (PDT). **Status:** `RED__LEAN_EQ_VS_IFF_REWRITE_MISMATCH__SOURCE_MATHEMATICS_UNCHANGED`.

[Original Minimal Charge Operator Action Parity #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39057465025) strict **RED**, job `117468298370`, exact candidate/workflow SHA `049d66fcb3976d6e43f2a608ae9e83eb52f7a91b`, AV blob `680839c3a65e72457268752e788e066acc383ab6`. Pinned Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, etblink/math `adc7f1241b42e322a6451854ab7e4b4c146bf78a`; all seventeen previously accepted AD–AU modules recompiled, including qualified original minimal closed source `LinearPMap`.

## Exact compiler findings

1. At AV line 50, `congrArg (fun S => (x,y) ∈ S) (originalMinimalClosedGraph_set_eq M G)` correctly produced equality of propositions `P=Q`, whereas the elaborated `rw [show ... ↔ ... from ...]` demanded `P↔Q`. The algebraic source graph equality **was already correct and axiom-clean** from AU; the failure was a proof-script type mismatch.
2. Consequently the graph-membership iff theorem had an unsolved goal at line 44. At AV line 76, `simpa only [originalMinimalClosedChargeColumn_domain_eq ...] using originalPhysicalClosedChargeDomain_mem_iff` failed to orient/normalize the actual `LinearPMap.domain` coercion to its set equality, leaving an exactly stated but unmatched iff. These were the only direct new Lean error locations in the Gate #2 AV file.
3. `#print axioms` for descendants included `sorryAx` from failed declarations, never valid qualification; the gate correctly FAILED. The later prospective operator action was not accepted merely because it produced no independent error.

## Targeted source-preserving repair

Commit [`e73c036c4cc3d8b09e81ad508fa904123d755a2e`](https://github.com/etblink/Foundational-Convergence-Program/commit/e73c036c4cc3d8b09e81ad508fa904123d755a2e), AV blob `9a975f56b2810a08683347ff6a2200bef922cbce`, changes only the two proof scripts: after rewriting the accepted AU `LinearPMap.graph_eq`, use a typed `change` into the source Set membership and **direct `rw` of accepted AU `originalMinimalClosedGraph_set_eq`**, and likewise `change` domain set membership followed by `rw` of `originalMinimalClosedChargeColumn_domain_eq`; then invoke already-qualified AQ source closed graph/domain iff. This avoids ad hoc proposition equality/iff coercions and does not raise heartbeat limits. Strict workflow pin updated at [`f33468a6805f50a6513ff68b021a6dc2ac559a99`](https://github.com/etblink/Foundational-Convergence-Program/commit/f33468a6805f50a6513ff68b021a6dc2ac559a99). Subsequent Gate #3 determines compiler acceptance independently.

[Gate #1 negative-knowledge audit](./OPENAI_MATH_BFSS_SU2_H5E8AV_GATE_1_MISSING_OPPOSITEGAMMA_NAMESPACE_NEGATIVE_2026_10_17.md) records previous missing AD `oppositeGamma` namespace and secondary `whnf` timeout. None of these are counterexamples to the intended source operator action parity.

**Scientific boundary:** the AU original `M.chargeVector` closed operator is qualified; AV natural-domain operator-action parity is not yet qualified; D2B12 `G.deformedModelGraph 1 0` alias equality, normalized self-adjoint Hamiltonian natural domain, paper realization and positive spectral theorem remain independently open. No main/upstream changes.
