# FCP BFSS M4F6 — B1 abstract named-alias graph input cut strictly accepted

**Verified:** October 22, 2026 PDT / October 23 UTC. **Disposition:** `B1_STRICT_PASS__ONE_OPAQUE_NAMED_ALIAS_GRAPH_INPUT_CUT_SUPPORT_THEOREM__C2_OPEN__297_PRINCIPAL_ROOTS`.

## Independent primary evidence

- [GitHub Actions run #39897430060](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39897430060), job `120230987015`, completed/success both job and workflow. Triggering research workflow HEAD `9ca0d93d392904dcfd89ca8123ebaf6a34f0dfab`.
- Pinned original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; immutable source/blob checks passed.
- Previously strictly qualified caches were restored and import closures confirmed: M4F5 unrestricted graph, M4F6 C1 paired source input-cut, and A1 genuine independent core/graph alias equalities.
- Exact candidate `experiments/openai-math-su2-physical-domain/FCPM4F6GenericNamedAliasInputCut.lean`, Git blob `b826575e5c39739a49e2797c02b79024c9f7e692`.
- Strict fresh `lake env lean -DwarningAsError=true` compiled the one theorem `FCP.M4F6GenericNamedAliasInputCut.core_graph_input_cut_with_named_aliases` with only the three permitted axioms. Exact verified original job text:

```
M4F6_ALIAS_B1_STRICT_PARENT_IMPORT_CLOSURE_PASS
M4F6_ALIAS_B1_GENERIC_INTERFACE_SOURCE_ONLY_PASS
M4F6_ALIAS_B1_GENERIC_NAMED_INPUT_CUT_ONE_SUPPORT_ROOT_STRICT_PASS_NO_C2 {
  'FCP.M4F6GenericNamedAliasInputCut.core_graph_input_cut_with_named_aliases':
    {'propext', 'Classical.choice', 'Quot.sound'}
}
DIAG_RESOURCE_TIME 10.32 CPU 71% MAX_RSS_KB 6979240
Cache saved with key:
  bfss-fcp-m4f6-generic-named-alias-b1-b826575e-v1-adc7f124-lean4341-d13f23b-Linux-X64
```

- Exact 1 root, no `sorryAx`, compiler errors, disallowed axioms or unexpected Lean warnings. Workflow's accepted cache save was successful and complete.

## Precise theorem / mathematical scope

For arbitrary complex modules `X,Y,Z`, linear maps `a:X →ₗ[ℂ]Y`, `b:X →ₗ[ℂ]Z`, physical-input submodule `P:Submodule ℂ Y`, opaque restricted submodule `S:Submodule ℂ X` and opaque full graph `G:Submodule ℂ (Y×Z)`, and explicit equalities
```lean
hS : S = P.comap a
hG : G = LinearMap.range (a.prod b)
```
the restricted graph of `a,b` over `S` is exactly `{p | p∈G ∧ p.1∈P}`. The proof uses `subst S; subst G; exact core_graph_input_cut a b P` **without** instantiating massive independent BFSS expressions, and is accepted under strict axioms.

This B1 *supporting* theorem is not itself the actual J-free independent BFSS M4F6 C2 theorem. The original C2 is still **0 accepted roots**, the principal ledger remains **297**. B1 creates no physical output invariance, closability, Hamiltonian/domain or spectral conclusion.

## Prepared next formal obligation

In a **separate** source-pinned strict gate, apply qualified B1 with the exact concrete objects:
`a:=independentCoreToL2`, `b:=independentChargeVector color gamma theta`, `P:=independentPhysicalSpace theta hCAR hHermitian`, `S:=independentInvariantCore theta hCAR hHermitian`, `G:=independentFullCoreGraph color gamma theta`.
Discharge `hS` and `hG` with the exact **strictly accepted A1** theorems `independentInvariantCore_eq_actualComap` and `independentFullCoreGraph_eq_actualRange`. Freeze the **byte-for-byte original C2 theorem header and full hypotheses**. Do not weaken the goal, introduce `J`, unfold physical source charge definitions, increase recursion limit or hide any Lean mismatch.

The key remaining scientific risk is elaborator/definitional conversion even at this named composition boundary. One controlled experiment is justified; if it reports another conversion recursion, preserve the full first-error log and diagnose a smaller type/instance bridge instead of trying tactic permutations.

Canonical `main`, draft PR #25, original BFSS math, accepted source proofs/caches unchanged.
