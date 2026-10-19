# BFSS S1V32 Gate #1 — one missing ConjAct.toConjAct_mul transport

**2026-10-19 PDT, Project Lead.** Disposition: `G1_FAILED_ONE_ELABORATION_REWRITE__FIRST_TWO_NEW_ROOTS_COMPILE_WITH_ALLOWED_AXIOMS__THIRD_ROOT_REJECTED_SORRYAX__NO_CACHE`.

[Original CI Gate #1 run #39338410385](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39338410385) job `118353608010`, completed failure at workflow commit `a0f6b56509bbb150d88d0310f3b6ab911a4f15f1`; new source `SU2BFSSPhysicalDomainS1V32AllSpin48CanonicalVectorLinearGroupActionProbe.lean` Git blob `0466e300f30cd4ee902eff933724a7d59db852db`. Original OAI/Lean/Mathlib source pins passed and exact accepted S1V31 canonical action cache `bfss-s1v31-isolated-canonical-spin48-vector-action-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored. Strict fresh Lean source compilation failed and cache-save step was SKIPPED.

**Exact first causal Lean error:**
```text
SU2BFSSPhysicalDomainS1V32AllSpin48CanonicalVectorLinearGroupActionProbe.lean:77:19:
error: Tactic `rewrite` failed: Did not find an occurrence of the pattern
  (?x * ?y) • ?b
in the target expression
  ConjAct.toConjAct (spinGroup.toUnits s * spinGroup.toUnits t) • (CliffordAlgebra.ι Q) v =
    ConjAct.toConjAct (spinGroup.toUnits s) •
      ConjAct.toConjAct (spinGroup.toUnits t) • (CliffordAlgebra.ι Q) v
```
New theorem `FCP.BFSSS1V32.sourceSpin48VectorAction_smul` reports only `[propext, Classical.choice, Quot.sound]`; `FCP.BFSSS1V32.sourceSpin48VectorAction_one` same. `FCP.BFSSS1V32.sourceSpin48VectorAction_mul` explicitly reports `[propext, sorryAx, Classical.choice, Quot.sound]`, hence REJECTED. No S1V32 saved cache. The full **three-root module does not qualify**.

**Causal proof-specific diagnosis:** line 77 `rw [map_mul, mul_smul]` first transforms `spinGroup.toUnits (s*t)` to `spinGroup.toUnits s * spinGroup.toUnits t`, but `mul_smul` applies only to a product of **acting elements**, not to `ConjAct.toConjAct (u*v)`. The pinned Mathlib `Mathlib/GroupTheory/GroupAction/ConjAct.lean` explicitly defines `ConjAct.toConjAct : G ≃* ConjAct G` and gives `@[simp] theorem ConjAct.toConjAct_mul (x y : G)`. Insert the missing transformation **between** `map_mul` and `mul_smul`, i.e. `rw [map_mul, ConjAct.toConjAct_mul, mul_smul]`. This is an exact, source-grounded Lean elaboration repair; it does not alter the original mathematical theorem, action definitions, Clifford sign, group multiplication order, or axioms.

**Next:** pin corrected new source blob in the path-specific S1V32 workflow and run a genuinely changed Gate #2, with strict three-root cardinality and accepted S1V31 cache. If red, inspect new first-causal error instead of rerunning unchanged CI. Source Spin→SO projection, Q preservation, determinant +1, covering topology, SU2 global lift, BFSS spectral gap remain OPEN. Preserve original branch isolation, never mutate `main`, PR #25 or pinned upstream `etblink/math`.

## Applied exact minimal repair; Gate #2 still unqualified

- Commit `8b8f92315b04dc6bb870263292e1034db3aa115b`: source file changed ONLY the multiplication proof tactic from `rw [map_mul, mul_smul]` to `rw [map_mul, ConjAct.toConjAct_mul, mul_smul]`. The full three theorem signatures and genuine source action are unchanged. New exact source Git blob `602f68275bc00df55573a955264e9a8c1190a5ae`.
- Commit `be1b92348dbbf4471974fb3bb3b7ba761588fa73`: updated ONLY exact S1V32 Git source pin in path-scoped strict workflow. Kept accepted S1V31 cache key `bfss-s1v31-isolated-canonical-spin48-vector-action-v1-adc7f124-lean4341-d13f23b-Linux-X64` and all compiler/axiom checks.
- [S1V32 Genuine Canonical Spin48 Real Scalar and Group Strict Gate #2 run #39339767477](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39339767477) automatically started **in progress at audit preparation**, and cannot yet be accepted. Require EXACT three #print reports all subsets of `propext, Classical.choice, Quot.sound`, no Lean error/sorryAx, final strict marker `S1V32_ALL_SOURCE_SPIN48_REAL_SCALAR_IDENTITY_MUL_3_ROOTS_KERNEL_PASS`, and explicit GitHub Actions saved key `bfss-s1v32-isolated-real-linear-spin48-group-action-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- If Gate #2 red, inspect its first new causal compiler issue rather than assuming a sign error or retrying unchanged code. Remember that the accepted S1V31 cache remains valid.
