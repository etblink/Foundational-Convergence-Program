# BFSS M4F9 H2D2A Gate1 — false identifier for subtype continuity, root 1 red, root 2 compiles cleanly

**Disposition:** `M4F9_H2D2A_GATE1_RED__CONTINUOUS_IFF_CONTINUOUS_SUBTYPE_VAL_UNKNOWN__DENSITY_KERNEL_CLEAN_BUT_GATE_NOT_ACCEPTED`.

**Immutable original evidence:** [GitHub Actions run #40064770339](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40064770339), job `120785586329`, `completed/failure`, HEAD `6c31ef281f04e6e5f4819235befeee6228a16fab`. Original runner compiler artifact [#12548708397](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40064770339/artifacts/12548708397), SHA256 `cc3dd84e2ba02aadd732b00abd3ea342e82a9f38c3992feac14c76e15a5d33b6`. Candidate `experiments/openai-math-su2-physical-domain/FCPM4F9H2D2ANativeHilbertE2ContinuityAndDensity.lean`, original Git blob `25e635231c7094e02cd8c913ec466c8c45b29f30`. Immutable original math `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

**Preflight and cache:** Exact source blob, original math and toolchain pins, and exact accepted H2D1 cache `bfss-fcp-m4f9-h2d1-native-pilp2-e2-domain-5666b77b-gate2-v1-adc7f124-lean4341-d13f23b-Linux-X64` restored and passed full H2C/H2B/H2A/H1/DE4 and DE2B parent .olean checks.

**Compiler, unfiltered:**
```
FCPM4F9H2D2ANativeHilbertE2ContinuityAndDensity.lean:43:8:
  error(lean.unknownIdentifier): Unknown identifier `continuous_iff_continuous_subtype_val.mpr`
FCPM4F9H2D2ANativeHilbertE2ContinuityAndDensity.lean:44:2:
  error: No goals to be solved
```
The proposed false lemma `continuous_iff_continuous_subtype_val` is absent; Lean treats the `.mpr` reference as an unresolved identifier. This is isolated to `hilbertPhysicalOutputsToActualOutputs_continuous`, which prints `sorryAx`. **The second independently substantive declaration `independentActualE2NativeHilbertChargeColumn_domain_dense` compiled with only `[propext, Classical.choice, Quot.sound]`, WITHOUT sorryAx.** Nevertheless, overall run failed and qualified cache save was skipped, so **zero H2D2A roots are formally accepted** from this gate. This is not a mathematical counterexample to the continuity or actual E2 dense-domain statement.

**Pinned correction in original Mathlib:** `Mathlib/Topology/Constructions.lean` at exact revision defines
```lean
theorem Continuous.subtype_mk {f : Y → X} (h : Continuous f)
    (hp : ∀ x, p (f x)) : Continuous fun x => (⟨f x, hp x⟩ : Subtype p)
```
Use `Continuous.subtype_mk` on the proven continuous ambient coordinate function `fun v : PiLp 2 ... => fun α => (v α : Lp E 2 μ)` via `continuous_pi`, `PiLp.continuous_apply`, `continuous_subtype_val`; then supply the property of the *already existing* H2B physical-output map. Do NOT change its definition, topology, source/unitary hypothesis, nor the second accepted-by-compiler density proof. Require new strict Gate2 source pin, both exact axiom reports clean, new cache saved. All previous H2C/H2D1 and DE2B qualified caches remain accepted.

**Ledger:** H2D2A Gate1 red, 0 new accepted; principal working BFSS 309 unchanged, source/main/PR unchanged.
