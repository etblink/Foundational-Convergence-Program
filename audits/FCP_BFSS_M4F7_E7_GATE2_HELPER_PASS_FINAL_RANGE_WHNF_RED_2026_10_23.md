# FCP BFSS M4F7 E7 Gate #2 — smooth-core helper compiles; full-graph output witness whnf red

**Date:** October 23, 2026 PDT. **Disposition:** `E7_GATE2_TYPED_SMOOTH_CORE_HELPER_KERNEL_CLEAN__FINAL_CONCRETE_RANGE_OUTPUT_WHNF_TIMEOUT__ZERO_ACCEPTED_ROOTS__307_UNCHANGED`.

[Original Actions run #39999291356](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39999291356), job `120570883668`, `completed/failure`. Original Git/source workflow trigger `2e149e42c3394a64a0697906753cbd7cac268a72`. Exact E7 source blob `c4e2bb7efa7180f7578d8f83326fffc4523e0f93`, only one architectural refactor from original Gate #1 source `16166ccfaec2a140a8987effaa4f55ce6edb4700`.

Immutable original BFSS mathematics source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, pinned Lean 4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, original source/Git blob checks and strict import preflight all passed. **Both qualified parent caches restored exactly**:
```text
bfss-fcp-m4f7-e6-physical-closed-graph-input-b5ab912a-gate1-v1-adc7f124-lean4341-d13f23b-Linux-X64
bfss-fcp-m4f1-typed-intermediate-s2-642ba305-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
The true original accepted source S1, independent smooth-charge M4F1 S2, E2/E3/E6 operator and physical space compiled dependencies were present. No historical D1/G4K9D missing source caused this red.

Fresh strict Lean exited 1 after `12.86s`, peak RSS `7050560 KB`. The exact first obstacle is a **whnf heartbeat timeout** at line 118, at `exact independentInvariantCoreChargeVector_output_physical ... f α` after `rcases hliteral with ⟨f,rfl⟩`; the global final theorem at line 70 also reports a heartbeat timeout on elaboration. Source-specific diagnostic:
```text
FCPM4F7IndependentClosedChargePhysicalOutputsE7.lean:118:10:
error: (deterministic) timeout at `whnf`, maximum number of heartbeats (100000) has been reached
FCPM4F7IndependentClosedChargePhysicalOutputsE7.lean:70:0:
error: (deterministic) timeout at `whnf`, maximum number of heartbeats (100000) has been reached
```
**Crucially the first typed BFSS helper `independentInvariantCoreChargeVector_output_physical` compiled with only `{propext, Classical.choice, Quot.sound}`.** This is mathematical feedback that smooth-core charge image physical invariance is accessible from accepted M4F1 S2; it does not by itself certify E7's requested full closed-operator theorem.

The final theorem's `#print axioms` was not a strict accepted report. No E7 cache saved and zero principal roots added; cumulative remains **307**. Original compiler/resource logs in [run #39999291356 artifact #12520988599](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39999291356/artifacts/12520988599), digest SHA256 `4006de94ef9533606e0113ecc4c1b49c4ee13958ef11e49041b1bc7b60b830b1`.

## Next structural change rather than blind resource limits

Do **not** simply increase maxRecDepth or expand native BFSS charge formulas. The failing proof path uses an elaborator-costly concrete `rcases ... with ⟨f,rfl⟩`, which rewrites a large product-map application into the output target before applying the small typed helper. Move the `LinearMap.range` product-component witness elimination to an *abstract generic lemma* on maps/submodules and a closed target submodule, where no BFSS charge expression is unfolded, and specialize it only afterward. The final theorem and exact source/CAR/hHermitian/color/gamma/J hypotheses must not be weakened. Keep original E2 J-free definition, E3 literal equality, E6 closed physical space, original M4F1 S2 certificate and the strict exact cache proofs.

If the generic route still fails at the same BFSS specialization boundary, stop this line and log its actual elaboration obstacle; do not manufacture output physicality or count a green generic theorem as completion. Retain both Gates #1/#2 reds and E5's independent import-closure block. Main and original mathematics untouched.
