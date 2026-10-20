# S1V42 Gate #2 RED — genuine Lipschitz closure proof repaired, Matrix *ᵥ syntax missing

Disposition: `S1V42_G2_ORIGINAL_CLIFFORD_UNIT_AND_ACTUAL_LIPSCHITZ_SUBTYPE_LEAN_COMPILE_PERMITTED_AXIOMS__MULVEC_NOTATION_SCOPE_RED__DEPENDENT_SORRYAX__NO_CACHE__UNQUALIFIED`.

- [S1V42 strict Gate #2 run #39359883033](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39359883033), job `118423324028`, **FAILURE**; workflow/source-pin commit `ff25fe5f7459c096e02398be3f2aeeebb2381724`; corrected proof commit `0f1709ce95000e443c18690b77e32f70b5ee3923`; original source candidate blob `10aa52eda343a1618c6452a763872831b59b6538`.
- Exact original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; source and toolchain preflight green. Accepted S1V41 cache restored with all required original source `.olean` prerequisites; no new S1V42 cache saved.
- Unlike Gate #1, **no deterministic isDefEq timeout** in the actual subgroup closure proof. `source48CliffordGeneratorUnit` AND `source48CliffordGeneratorLipschitz` each printed only `[propext, Classical.choice, Quot.sound]`. These are individual reports within a **FAILED source file**, not an accepted S1V42 module.
- First new causal errors:
```text
...S1V42ActualLipschitzGeneratorDeterminantProbe.lean:60:59:
error: elaboration function for Mathlib.Tactic.subscriptTerm has not been implemented
  ᵥ
...:84:64:
error: elaboration function for Mathlib.Tactic.subscriptTerm has not been implemented
  ᵥ
```
At both sites, the source used the notation `*ᵥ` outside a local `open Matrix` scope. Accepted S1V39 explicitly used `open Matrix`; merely importing an S1V39 theorem does not inherit its namespace opening. A warning of `sorry` in the downstream theorem and `sorryAx` in matrix-action, toLin and determinant reports are **consequences**, not proof success.
- Diagnostic artifact `bfss-s1v42-actual-generator-det-39359883033`, ID `12237251441`.

**Next discriminating single change:** add `open Matrix` inside `FCP.BFSSS1V42` next to the other namespace openings. Retain exactly the now-compiled typed original unit membership proof and all five mathematical root statements, no extra lemma assumptions. Run one new hash-pinned strict Gate #3. If later roots produce additional elaboration diagnostics, preserve the first cause and repair structurally; never treat this red or its sorryAx as a mathematical disproof.

Scientific boundary: generator determinant -1 on the actual original Lipschitz character, arbitrary Lipschitz parity and universal Spin orientation still **unqualified**. Original physical manuscript bridge, continuous global lift and BFSS spectral conclusions remain open. Canonical main, upstream math and draft PR #25 unchanged.
