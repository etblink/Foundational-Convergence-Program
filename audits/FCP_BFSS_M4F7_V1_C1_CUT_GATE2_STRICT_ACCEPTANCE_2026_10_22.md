# FCP BFSS — M4F7 V1 source-exact closed-graph vertical uniqueness Gate #2 formally accepted

**Accepted October 22, 2026 PDT / October 23 UTC.** **Disposition:** `M4F7_V1_GATE2_SOURCE_C1_CUT_SUPPORT_AND_INDEPENDENT_RESTRICTED_CLOSED_GRAPH_VERTICAL_STRICT_PASS__ONE_NEW_PRINCIPAL_ROOT__301_CUMULATIVE`.

## Original job and exact mathematical evidence

[GitHub Actions run #39903487699](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39903487699), job `120250056497`, triggered at research commit `462c2589b2700572fddbf5148cb013938993ddec`, completed/success for the whole workflow and job. Original complete compiler and GitHub Actions job log independently inspected; not inferred from user-reported green.

- Immutable original mathematical source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact source blob hashes passed.
- Exact candidate `experiments/openai-math-su2-physical-domain/FCPM4F7IndependentRestrictedClosedGraphVerticalC1Cut.lean`, Git blob `71a0b11174a1c5beef4ad674a0ac1666ec35347c`.
- Strictly accepted C1/A1/B1/C2/C3/C4 parent caches restored; actual `.olean` source-closure checks passed. Frozen V1 principal theorem's entire proof body and hypotheses byte-identical to V1 Gate #1; only source supporting inclusion proof changed to use accepted C1 input-cut certificate rather than range witness constructor.
- Actual `lake env lean -DwarningAsError=true` fresh compilation, exactly two named theorem axiom reports, each restricted to the three permitted axioms, complete success and no `sorryAx` or unexpected compiler warnings.
- Original job evidence:

```
M4F7_V1_GATE2_SOURCE_EXACT_VERTICAL_STATEMENT_TWO_ROOTS_PREFLIGHT_PASS

M4F7_V1_GATE2_SOURCE_FULL_GRAPH_SUPPORT_PLUS_INDEPENDENT_VERTICAL_PRINCIPAL_ROOT_STRICT_PASS {
 'FCP.M4F7IndependentRestrictedClosedGraphVertical.sourceRestrictedGraphClosure_le_fullClosedGraph':
   {'propext','Quot.sound','Classical.choice'},
 'FCP.M4F7IndependentRestrictedClosedGraphVertical.independentRestrictedCoreGraph_closure_vertical':
   {'propext','Quot.sound','Classical.choice'}
}
DIAG_RESOURCE_TIME 13.65 CPU 104% MAX_RSS_KB 7041652
Cache saved with key:
bfss-fcp-m4f7-independent-vertical-v1-c1cut-71a0b111-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

- **+1 new principal root** for the genuine independent restricted closed-graph vertical uniqueness theorem, 300 → **301**. The source restricted closure inclusion theorem is a separate supporting certificate, not another principal root.

## Mathematical theorem and legitimate conclusion

For actual independent BFSS `E`, `color`, `gamma`, `theta` with original CAR/Hermitian hypotheses and true (J,hColor,hGamma,hJ) intertwining, the closure of the **literal independent gauge-invariant smooth-core 16-charge graph** has trivial vertical fiber:

```text
∀ y : SpinIndex → Lp E 2 μ,
  ((0 : Lp E 2 μ), y) ∈
    closure (range of independently defined 16-charge graph on independentInvariantCore)
  → y = 0.
```

Proof source path:
1. Accepted source C1 expresses the literal source restricted smooth graph as the source full-core graph intersected with genuine physical-input predicate, giving raw inclusion without constructing a huge concrete source range witness.
2. `Submodule.topologicalClosure_mono` moves inclusion to closures. The pinned original source `M.fullClosedGraph_vertical` establishes source full-graph vertical uniqueness.
3. Accepted C4 transports the actual independent restricted closed graph into source; zero input maps to zero; injectivity of the 17-component fiber unitary forces independent sixteen-output vector to vanish.

There is no surrogate source-defined independent graph, axiom or modified source CAR; no altered recursion-depth setting or new physical-output hypothesis. No operator's existence, domain density or Hamiltonian equivalence is included in this exact theorem.

## Preserved original RED and important procedural lesson

[Gate #1 run #39902645718](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39902645718), job `120247452387`, had **genuine Lean recursion** at source line 45, checking `exact ⟨f.val, rfl⟩` in the original raw source full-graph range. Both Gate #1 reports had `sorryAx`; zero roots accepted, no cache. That failure was not due to the latent postcompiler regex checker defect. Gate #2 avoided that instance/conversion expansion through source-exact C1 named equality and `hcut.1`, with no changes to the independent principal theorem.

The original Gate #1 postcompile axiom-report regex was also overescaped; Gate #2 independently corrected it while maintaining identical axiom whitelist and exact report checks. This repair did not cause the mathematical success: the original non-computing range witness was separately replaced by the accepted C1 interface.

## Next boundary, not yet accepted

V2 remains a staged and uncompiled `FCPM4F7IndependentClosedChargeOperatorV2.lean` file. Its intended exact outcomes are:

- Define the actual independent restricted graph closure as a `Submodule ℂ (Lp E 2 μ × (SpinIndex → Lp E 2 μ))`, without J hidden in the graph definition.
- Under existing J and representation-identification witnesses, use **accepted V1 vertical uniqueness** to prove that closure is the graph of a `LinearPMap` with exact graph equality and `IsClosed`.
- Keep `J` only as a *proof witness of single-valuedness*, not as an independent operator's transported definition.

Before strict V2 CI, audit the precise Mathlib `Submodule.toLinearPMap` API and previously accepted original-source D2B12/D2B13 proofs. V2 does not yet prove domain density in the true independent physical Hilbert space, preservation of all physical outputs, closed operator equivalence, Hamiltonian form/domain identity or spectrum. Those remain separate goals.

**Governance:** No canonical main merge, no PR #25 merge, no new axioms and no modifications to pinned BFSS math. Preserve both red and green as original evidence.
