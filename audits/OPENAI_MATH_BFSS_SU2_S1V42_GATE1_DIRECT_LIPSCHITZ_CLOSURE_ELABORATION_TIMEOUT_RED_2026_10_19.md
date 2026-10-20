# S1V42 Gate #1 RED — direct genuine Lipschitz closure-membership elaboration timeout

Disposition: `S1V42_G1_CLIFFORD_UNIT_ROOT_PRINTS_PERMITTED_AXIOMS__GENUINE_LIPSCHITZ_MEMBERSHIP_DETERMINISTIC_TIMEOUT__DEPENDENT_ERRORS_SORRYAX__NO_CACHE__UNQUALIFIED`.

## Immutable evidence
- [S1V42 Gate #1 GitHub Actions run #39359176152](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39359176152), job `118421025200`, **FAILURE**; pinned workflow commit `72afe5de533efc0fb8ac95456586c5a398e0dea2`; candidate authoring commit `7413317ed4441bd792149ceb7e09cf08493dc96f`; original candidate Git blob `935560825f9cfba96b735d144096f3ea74e50f5d`.
- Exact source and pinned upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, all strict source-blob checks passed.
- Accepted S1V41 cache restored exactly: `bfss-s1v41-isolated-source48-lipschitz-real-gl-hom-v1-adc7f124-lean4341-d13f23b-Linux-X64`; all original required `.olean` dependencies nonempty and verified.
- First causal Lean diagnostics:
```text
...S1V42ActualLipschitzGeneratorDeterminantProbe.lean:42:4: error:
(deterministic) timeout at isDefEq, maximum heartbeats (350000)
...:39:18: error: (deterministic) timeout at «abstract nested proofs»
```
The first-timeout area was **construction of `source48CliffordGeneratorLipschitz`**, at `apply Subgroup.subset_closure` directly against an unscoped reducible expression for the closure/preimage of the genuine original Clifford unit. It is not a counterexample to genuine subgroup membership, and does not justify relaxing source conventions or introducing a surrogate group.
- First root `source48CliffordGeneratorUnit` printed only `[propext, Classical.choice, Quot.sound]`, but the source file as a whole failed. The missing constructor subsequently produced unknown `source48CliffordGeneratorLipschitz` errors, a subscript-elaboration secondary error, and `sorryAx` contamination in action/toLin/determinant root reports. No S1V42 `.olean` was accepted and the new cache-save step was skipped.
- Diagnostic artifact `bfss-s1v42-actual-generator-det-39359176152`, ID `12236852455`.

## Architectural repair—not a retry with more resources
Do not simply increase heartbeats or rerun this same tactic. Introduce the **fully typed original generator unit** `u : (CliffordAlgebra Q)ˣ`, its **fully typed preimage membership**
```lean
have hu : (u : CliffordAlgebra Q) = CliffordAlgebra.ι Q a := rfl
have hpre :
    u ∈ ((↑) ⁻¹' Set.range (CliffordAlgebra.ι Q) :
      Set (CliffordAlgebra Q)ˣ) := by
  exact ⟨a, hu⟩
have hclosure : u ∈ Subgroup.closure
    ((↑) ⁻¹' Set.range (CliffordAlgebra.ι Q) :
      Set (CliffordAlgebra Q)ˣ) :=
  Subgroup.subset_closure hpre
```
Then construct the genuine `lipschitzGroup Q` subtype with the previously **named** `hclosure`. This mirrors the successful explicit typed-interface architectural repair in S1V37 Gate #3, and avoids asking `apply` to infer the subgroup-set closure under large Clifford definitions.

Change only this original-source constructor proof. Retain all five mathematical declarations, original Clifford signs, 48-real labels and group membership. Run exactly one hash-pinned Gate #2 to learn whether the typed boundary resolves the first elaboration timeout. If it does not, preserve that new diagnostic and consider separating the subtype constructor into a small independent earlier module instead of increasing elaboration budgets.

## Scientific limits
Nothing here establishes generator det `-1` on the actual `lipschitzGroup`, parity, `Spin(Q)` universal det+1, topological cover, normalized SU2 lift, independent manuscript representation bridge, or BFSS spectral theorem. Canonical main, upstream math and draft PR #25 remain untouched.
