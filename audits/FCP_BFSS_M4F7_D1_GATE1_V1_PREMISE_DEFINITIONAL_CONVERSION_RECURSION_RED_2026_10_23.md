# FCP BFSS — M4F7 D1 literal independent partial operator strict Gate #1 red: V1 closure premise normalization

**Independent verification:** October 23, 2026 PDT. **Disposition:** `D1_GATE1_ALL_PINNED_MATH_TOOLCHAIN_V1_B2_CACHE_PASS__J_FREE_OPERATOR_DEF_AXIOMS_CLEAN__GRAPH_EQ_V1_HYPOTHESIS_CONVERSION_RECURSION_RED__NO_ROOT_NO_CACHE__PRINCIPAL_302_UNCHANGED`.

## Original verified evidence

[GitHub Actions run #39969876986](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39969876986), job `120469415933`, completed/failure, original run HEAD `c2ac627780c2e8b913719cf3706044c8d5996533`. The original job and actual original Lean compiler log were independently examined.

- Original immutable BFSS mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Lean 4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, full original source no-hole/Git-blob preflights and qualified C1–C4/V1 and generic B2 imported cache qualifications passed.
- Candidate `experiments/openai-math-su2-physical-domain/FCPM4F7LiteralIndependentClosedPartialOperatorD1.lean`, Git blob `38373fa3ab1ff5b985c9fa5820537cf17daa556b`, frozen source commit `78e9dc1ba262c1990e2f07c8656b77300bfeafbc`. The actual definition `independentLiteralRestrictedClosedChargeColumn` is **J-free** and equals the native `toLinearPMap` of the topological submodule closure of the original independent physically input-restricted literal 16-charge graph, with true hCAR/hHermitian hypotheses.
- Fresh strict Lean reported **only one compiler error**:
```
FCPM4F7LiteralIndependentClosedPartialOperatorD1.lean:88:59:
error: maximum recursion depth has been reached
```
At:
```lean
unfold independentLiteralRestrictedClosedChargeColumn
apply FCP.M4F7GenericOpaqueClosedRelationBridge.topologicalClosure_toLinearPMap_graph_eq
rintro ⟨x, y⟩ hp hx
dsimp at hx
subst x
exact FCP.M4F7IndependentRestrictedClosedGraphVertical.independentRestrictedCoreGraph_closure_vertical
  color gamma theta hCAR hHermitian J hColor hGamma hJ y hp
```
The `apply` of **accepted generic B2 graph theorem succeeded**. The later **accepted V1 vertical-uniqueness application** triggered recursion during elaboration/conversion of the concrete closure-membership premise `hp`. This is not evidence of falsity, and cannot count as a genuine operator graph equality.

Exact original axiom reports:
```
'FCP.M4F7LiteralIndependentClosedPartialOperatorD1.independentLiteralRestrictedClosedChargeColumn'
  depends on axioms: [propext, Classical.choice, Quot.sound]
'FCP.M4F7LiteralIndependentClosedPartialOperatorD1.independentLiteralRestrictedClosedChargeColumn_graph_eq'
  depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
```
The definition's axiom report is clean, but the **gate as a whole is red**, no D1 output `.olean` qualified for reuse and no root accepted. `DIAG_RESOURCE_TIME 21.92 CPU 100% MAX_RSS_KB 7127844`. Principal strict ledger **302**.

## Mathematical meaning and limit

This is a meaningful partial localization: constructing the independently defined `LinearPMap` requires no J, and elaborated. But Mathlib `toLinearPMap` on an arbitrary relation does **not** imply its graph equals the relation; the needed single-valuedness is precisely what the failed graph theorem was meant to verify. No D1 graph equality, closedness, physical Hilbert domain density, output physical invariance, Hamiltonian/form/domain correspondence, spectral equality or mass gap is accepted.

Unlike abandoned A2 and C5A equalities, the D1 graph equality goal is the genuine substantive operator goal. However the direct two-line combination of accepted B2 and V1 remains blocked by concrete closure-premise definitional conversion. **Do not raise maxRecDepth/maxHeartbeats, weaken original hypotheses, or silently replace the independently defined graph with a source-transported alias.**

## Targeted next mathematical response

The accepted V1 theorem `independentRestrictedCoreGraph_closure_vertical` itself was proved by:
1. C4 exact 17-component independent/source restricted **graph closure image equality**.
2. The source restricted graph closure inclusion into `pairedAlgebraData.fullClosedGraph`, separately named and strictly accepted in the V1 module.
3. The pinned source closed-graph vertical uniqueness and injectivity of the original genuine fiber unitary.

A controlled **direct closure transport subproof inside the D1 B2 vertical obligation** may avoid the particular failed full V1 lemma application. Such a proof must retain the literal D1 operator definition/theorem exactly and cite accepted C4/source results under hCAR/hHermitian/J/hColor/hGamma/hJ. It should follow the source-compiled V1 tactics verbatim for the transport portion and then use B2 once. It is a different proof architecture, not a superficial `exact/simpa/change` rewrite. The accepted V1 theorem should not be counted twice. A new strict gate is warranted only with exact source pins, unchanged theorem proposition, whitelisted axioms, output `.olean`, new qualified cache and full workflow success.

**Governance:** old C5A tactic family stays closed, red results remain preserved, canonical `main`, unmerged PR #25 and original math remain untouched. **No root credit from compiler-clean definitions in failed gates.**
