# BFSS S1V29 — bounded all-Spin48 Clifford generator-conjugation interface, not a global lift

**Date:** 2026-10-19 PDT. **Project Lead status:** accepted S1V28 SU2→SO48 continuous base; S1V29 **UNCOMPILED / STRICT CI IN PROGRESS**. The large independent manuscript Spin48/fock intertwiner and BFSS spectral question remain open.

## Proven original dependency

- [S1V28 Historical SU2 to SO48 Hom and Continuity Strict Gate #1, run #39330641791](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39330641791), job `118327648569`, GREEN. All 3 original S1K/S1L/S1M modules, 11 roots checked with only `propext, Classical.choice, Quot.sound`, exact immutable source pins, original S1V27 accepted cache restoration. **Saved:** `bfss-s1v28-isolated-source-su2-so48-continuous-v1-adc7f124-lean4341-d13f23b-Linux-X64`.
- Original S1V27 *genuine* source SU2 historical positive-i quarter at actual S1J 48-real matrix equals independently ordered source-sized sixteen-block S1V18 Spin48 real matrix; exact full one-group-point result, not a global lift. S1N already separately qualifies true source SO3 color adjoint hom.
- [S1V28 and 16-fold parity audit commit 186f0dc](https://github.com/etblink/Foundational-Convergence-Program/commit/186f0dca9b459cecdebacb9d053120d6712cdcd5) distinguishes orientation quotient `O48/SO48 ≅ Z2` from the Spin cover kernel `ker(Spin48→SO48) ≅ Z2`. Sixteen direct color SO3 blocks should have trivial mod-two fundamental-group obstruction to factoring the Spin lift already over SO3; this is conventional *mathematical* covering theory, **NOT yet compiled Lean source**.

## NEW S1V29 deliberately modest general-variable proof step

- Source file `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V29AllSpin48CliffordGeneratorConjugationProbe.lean`, commit `aee2c68923141072f3cac5a00899308ab23b2ea9`, immutable Git blob `365bbb1c8a1051b3e82e53095f4676dfcf8ad5e9`.
- [S1V29 Universal Source Spin48 Clifford Generator Action Strict Gate #1 run #39332822439](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39332822439), launched path-filtered workflow `.github/workflows/bfss-s1v29-source-spin48-universal-generator-conjugation-strict.yml`, commit `1f6f2b08ec803f4d515aa81a1eadd7fd98ac9f4e`. At record creation the gate was **in progress**, no results accepted and no cache save yet.
- Restores exact accepted S1V28 source cache with strict cache-hit and `.olean` presence of original S1M continuous source SO48, independently constructed S1V18 Spin48 rotor and S1V0 actual source 48-real quadratic form. Pins original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; refuses changed source blob.
- Exactly three *NEW CANDIDATE* theorem roots for every `s : spinGroup source48Quadratic`, not just the quarter element:
  1. `FCP.BFSSS1V29.all_sourceSpin48_generators_stay_real`: `ConjAct` by actual source-sized Spin element sends `CliffordAlgebra.ι Q v` to a member of `LinearMap.range (ι Q)`, instantiating pinned `spinGroup.conjAct_smul_ι_mem_range_ι`;
  2. `FCP.BFSSS1V29.all_sourceSpin48_real_generator_space_preserved`: conjugation leaves that **entire generator submodule equal** to itself, instantiating pinned `spinGroup.conjAct_smul_range_ι`;
  3. `FCP.BFSSS1V29.sourceSpin48_conjugation_central_sign_invariant`: for source-sized Clifford word `s`, simultaneous negation of `s` and its adjoint yields EXACT same conjugation on EVERY Clifford algebra element `x`. Documents the actual central sign blindness, not an asserted normalized group lift.
- Exactly three new `#print axioms` names and strict `[propext, Classical.choice, Quot.sound]` whitelist; no `sorryAx` or errors accepted. **Expected marker only if green:** `S1V29_SOURCE_SIZED_GENERIC_SPIN48_CLIFFORD_GENERATOR_AND_CENTRAL_SIGN_3_ROOTS_KERNEL_PASS`; expected saved cache only after acceptance `bfss-s1v29-isolated-universal-spin48-clifford-generator-v1-adc7f124-lean4341-d13f23b-Linux-X64`.

## What S1V29 does NOT establish

These are source-specific instantiations of existing Mathlib algebraic Spin-group API and an explicit central sign calculation. Although genuine, by themselves they DO NOT prove Clifford generator map `ι` is injective, construct a chosen 48-real orthogonal *linear* group representation of **all** `spinGroup source48Quadratic`, show quadratic-form preservation or determinant +1, prove projection kernel `±1`, its topology/covering properties, or define a continuous `SO3→Spin48` / `SU2→Spin48` lift. S1V11 fixed sixteen-rotor square +1 is not the global 16-fold loop argument. No independent manuscript complex Clifford irreducible module, unitary Fock identification, physical 16-supercharge graph-domain match or BFSS gap follows. Do not promote absent actual fresh compiler proof.

## Next falsifiable algebraic obstruction

Establish actual-source `ι` injectivity for the positive-definite 48-real source quadratic form and a **typed linear equivalence** between `Source48Vector` and the `ι`-range. Then transport the universal Spin conjugation action to the original 48-real vector space, prove group law, quadratic isometry, determinant one and original label order. Address global topology and 16-block parity only after the projection algebraic source is kernel qualified. Consider source-positive-definiteness and Clifford scalar embedding as alternative injectivity strategies if the pinned API has no direct `ι_injective` theorem. Do not inflate a generic range lemma into a Spin cover.

No modifications to `main`, PR #25, pinned `etblink/math` or accepted original mathematical sources. New CI triggered only by its own workflow path, not via blanket push triggers.
