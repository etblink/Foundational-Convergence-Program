# S1V52A Gate #1 — sibling-branch cache scope RED: primary causal audit

**Disposition:** `S1V52A_G1_INFRASTRUCTURE_CACHE_MISS__NO_THEOREM_COMPILED__NO_MATH_VERDICT__G2_FRESH_ORIGINAL_GEOMETRY_REBUILD`

## Primary evidence

- [S1V52A Gate #1, run 39381155776](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39381155776), job `118490328868`, **FAILURE**.
- Original CI checkout `88a32f2ab622e669e7d5c6520fbfa5641e7c9dd9`.
- Immutable source SHA / Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` preflight **PASS**.
- Toolchain and Mathlib restore **PASS**.
- Attempted restore of accepted S1V51 cache with exact key `bfss-s1v51-isolated-source48-native-su2-center-v1-adc7f124-lean4341-d13f23b-Linux-X64` returned **`Cache not found for input keys`**.
- Next preflight failed **`S1V52A_ACCEPTED_CACHE_MISSING`**, exit code 1.
- **Lean source compilation step was SKIPPED**; eleven named `#print axioms` declarations received no new qualification; no S1V52A cache saved.
- Diagnostic artifact `bfss-s1v52a-even-clifford-table-39381155776` (ID `12245656192`) was saved.
- There is NO evidence from this RED run that any of the eleven proposed source-Clifford identities is mathematically false or Lean-provable. It is a workflow infrastructure failure.

## Causal mechanism

The S1V51 Actions cache was saved on the preceding isolated branch `research/openai-math-su2-s1v-orthogonal-decomposition-isolated-20261018`. S1V52A runs from its new **sibling** branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Branch-scoped GitHub Actions cache access is not guaranteed across unrelated sibling branches. A cache's key matching does **not** override its repository/ref access scope. The Gate #1 fail-closed cache test therefore operated correctly, but its upstream cache availability assumption was wrong.

## Repair made, without weakening mathematical requirements

- Workflow repair commit `4475dc0f877e377795e82446ee28e2f6a2b17e72` on the existing S1V52 isolated branch.
- [S1V52A Gate #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39382022479) is the **only** next CI initiated.
- Continue to verify immutable upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, exact source blob SHAs, pinned Lean 4.34.1, and exact pinned Mathlib.
- Restore pinned Mathlib binary cache, then **compile the three actual S1V0, S1V5, S1V6 original-size geometry dependencies directly** on THIS branch and verify each `.olean` nonempty. S1V52A imports S1V6, which imports S1V5, which imports S1V0; no S1V51 dependency is necessary for its actual theorem statements.
- Keep all eleven exact S1V52A roots and their original target types unchanged. `#print axioms` still must show at most `propext, Classical.choice, Quot.sound`, and all compiler errors / `sorryAx` remain forbidden. Cache saved only after successful strict gate.
- S1V51's previously accepted theorem evidence remains valid and independently qualified, but is not a required elaboration dependency for THIS smaller isolated module.

## Negative knowledge / future Project Lead practice

**Do not assume a cache available on one isolated research branch is restorable on a sibling branch merely because the key is identical.** Before declaring a fresh branch's gate, determine its real source import closure, distinguish Mathlib cache (restorable from pinned upstream) from branch-local FCP `.olean` cache, and either build a minimal dependency prefix on the new branch or explicitly stage a qualified transferable artifact subject to full source checks. Fail closed rather than importing unverified compiled output.

## Scientific boundary

Gate #1 RED is **not a mathematical result**. Gate #2 has no qualification until its own job finishes with exact Lean root/axiom checks. Neither gate can by itself prove a global `SU(2) → Spin(48)` lift, manuscript Clifford-module intertwiner, closed physical Hamiltonian operator equivalence, or BFSS spectrum.
