# S1V52L7A4 — original BFSS AlgebraData Z-color conditional exponential Gate #1 ACCEPTED

**Disposition:** `L7A4_GATE1_PASS__ONE_ACTUAL_UPSTREAM_ALGEBRADATA2_CONDITIONAL_Z_ROOT__L7A3_CACHE_RESTORED__PERMITTED_AXIOMS_ONLY__ORIGINAL_PAIRED_COLOR_SPECIALIZATION_OPEN`.

## Primary strict CI evidence

- [GitHub Actions run #39478860759](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39478860759), job `118821863259`, completed **SUCCESS** on checkout `a348dea0cb6739b405f39420c56ccdadbaca4b4e`.
- Source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L7A4NativeAlgebraDataZColorConditionalExpBridgeProbe.lean`, exact Git blob `ac2fef8ee53cbc0d219ab0e31bd6cf14e1f25e42`.
- Pinned upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, BFSS original Core blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; exact-source validation PASS.
- Restored qualified accepted L7A3 cache `bfss-s1v52l7a3-finite-positive-iz-exp-v2-adc7f124-lean4341-d13f23b-Linux-X64` and verified all required original source/Lean `.olean` artifacts.
- Declaration `FCP.BFSSS1V52L7A4.originalAlgebraDataZColor_exp_of_diagonal` compiled; `#print axioms` reported exactly `[propext, Classical.choice, Quot.sound]`. Fail-closed marker `S1V52L7A4_NATIVE_COLOR_Z_CONDITIONAL_EXP_1_ROOT_KERNEL_PASS`. No `sorryAx` or compiler errors.
- New cache `bfss-s1v52l7a4-native-z-conditional-exp-v1-adc7f124-lean4341-d13f23b-Linux-X64` saved. Evidence artifact `bfss-s1v52l7a4-conditional-native-z-39478860759`, ID `12290417547`.

## Exact qualified statement

For genuine `M : OAI.BFSSQuantum.AlgebraData 2`, real `t,s`, and the **explicit** hypothesis that `M.color 2` is the literal Z-diagonal `Matrix.diagonal ![(s:ℂ), -(s:ℂ)]`, the actual `NormedSpace.exp (t • ((Complex.I:ℂ) • M.color 2))` equals `sourceQuaternionColorMatrix ⟨cos(t*s),sin(t*s),0,0⟩`. The proof uses accepted L7A3 finite matrix exponential, preserving the original +i tangent and arbitrary correct source normalization.

This does NOT itself discharge the hypothesis for `FCP.BFSSSU2GaugeG1A.pairedAlgebraData`. An independent source-level proof must use `pairedAlgebraData_color` (historical G1A), `concreteAlgebraData_color` (F4), and normalized Pauli `pauliScale` (ColorCross).

Accepted S1V52 count now **87**, not a count of completed native curve-to-Spin roots.

## Newly staged source-exact L7A5 (UNQUALIFIED)

Research source `SU2BFSSPhysicalDomainS1V52L7A5OriginalPairedZColorAndNativeCurveProbe.lean`, commit `3595e79db3ca3c2826aeab5dde4a3bbbfcbed227`, proposes two exact theorem roots: `originalPairedZColor_exact_diagonal` and `originalNativePositiveIZCurve_eq_quaternion`. The latter is the literal **original** `sourcePlusIGaugeCurve (2:Fin 3) t : GaugeGroup 2` coe to `ColorMatrix 2`, NOT an invented ambient matrix exponential or generic substitute. It uses the explicitly proved original source color certificate to specialize accepted L7A4.

L7A5 has not been compiled in strict CI: **zero accepted L7A5 roots**. Do not promote it based on source text or earlier historical H5E8R acceptance.

## Import/cache provenance — prevent predictable reds

The older original `.github/workflows/bfss-l6g1-original-spin-identity.yml` builds qualified source G6X→H5E8P/Q→H5E8R/S/T/Y through a large coupled source environment. It saves an L6G7W .olean cache before H5E8R (see `Save only L6G7W accepted source closure`) and then compiles H5E8R/T as subsequent stages; its final `actions/upload-artifact` archives **text diagnostics** (`/tmp/bfss-l6g1/`), not a reusable H5E8R/T compiled source cache. Thus the S1V52 isolated L7A4 cache cannot be assumed to contain H5E8R or `pairedAlgebraData` declaration artifacts. An immediate naive strict L7A5 workflow would fail the required-import .olean preflight before reaching Lean or induce an unnecessarily expensive historical rebuild.

PL next decision: inspect precise accepted historical baseline and cache access; either deliberately rebuild the pinned minimal genuine source G1A/G6X/H5E8R import closure with auditable cache provenance, or qualify a thinner authentic `pairedAlgebraData` Z-color source interface with original file hashes and zero new assumptions. No surrogate AlgebraData 2, additional axioms, source sign changes, or CIs fired solely to record staged L7A5.

Still open: full original Y curve, original L7A1 native quaternion coordinates, L7B native source Spin transfer, all SU2 Euler-to-Spin global lift, sixteen-block group law, original Majorana projection, continuity, physical Fock/module identity, and spectral positivity.

`main`, original `etblink/math`, draft PR #25 remain outside this isolated branch's writes.
