# S1V52L7A0 — native Z/Y first-row quaternion-coordinate transport, strict Gate #1 ACCEPTED

**Disposition:** `L7A0_GATE1_PASS__TWO_ORIGINAL_GAUGE_FIRSTROW_COORDINATE_ROOTS__C1_CACHE_RESTORED__PERMITTED_AXIOMS_ONLY__L7A1_ACTUAL_CURVES_OPEN`.

## Primary fail-closed verification

- [GitHub Actions run #39471584870](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39471584870), job `118796735780`, completed **SUCCESS** with checked-out commit `3e393866eb49288d7e4283190913d7265b78e0c9`.
- Exact new source `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L7A0NativeSourceCurveFirstRowTransportProbe.lean`, pinned blob `2570ae7ffa7e7a720282950e7ba008d2544aaadf`.
- Pinned upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original BFSS Core blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` passed strict source preflight.
- Previously accepted C1 original GaugeGroup quaternion coordinate cache **restored successfully**, `bfss-s1v52c1-isolated-original-native-gauge-quaternion-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Qualified actual source dependency `.olean` checks and original BFSS Core `.olean` checks passed.
- Two compiled declarations, both with `#print axioms` reporting **only** `[propext, Classical.choice, Quot.sound]`:
  - `FCP.BFSSS1V52L7A0.originalNativeQuaternionCoords_of_positiveIZ_firstRow`
  - `FCP.BFSSS1V52L7A0.originalNativeQuaternionCoords_of_positiveIY_firstRow`
- Strict validator printed `S1V52L7A0_NATIVE_ZY_FIRSTROW_TRANSPORT_2_ROOTS_KERNEL_PASS`; no compiler error, unknown identifier or `sorryAx`. Fresh compilation cache saved as `bfss-s1v52l7a0-native-zy-firstrow-transport-v1-adc7f124-lean4341-d13f23b-Linux-X64`. Diagnostic artifact ID `12287758506` (`bfss-s1v52l7a0-native-firstrow-39471584870`).

## Exact proved mathematics and boundary

For an **actual** original `g : OAI.BFSSQuantum.GaugeGroup 2`, the source first-row identities `g 0 0 = (c:ℂ)+(s:ℂ)*Complex.I` and `g 0 1 = 0` imply `originalNativeQuaternionCoords g = ⟨c,s,0,0⟩`. Similarly `g 0 0 = (c:ℂ)` and `g 0 1 = (s:ℂ)` imply the exact native `⟨c,0,s,0⟩` quaternion. No axiom, alternate group, redefined real/imag extractor, or sign conversion was introduced.

**This does NOT prove** those matrix entry hypotheses for `sourcePlusIGaugeCurve 2/1 t`; actual curve coefficient transport `L7A1` remains staged and UNQUALIFIED. In particular the historical `sourceYAngle t = t * FCP.BFSSSU2.pauliScale` is correct source normalization and cannot be silently replaced by `t/2`; the Z sine's imaginary sign and Y offdiagonal sine's sign are positive in the original convention.

Historical original source H5E8R/T/Y proofs pull an expensive Gauss/Hilbert .olean dependency chain. Qualify the literal curve-to-coordinate bridge without assuming those imports are present in the new C1/L7A0 cache: construct a genuinely finite, source-identical interface if it can be proved, or deliberately restore/rebuild exact historical source cache. Do not manufacture new curve axioms or infer source matrix equality by analogy.

Local S1V52 strict acceptance ledger advances **80 → 82**. L7B source is research-staged but UNQUALIFIED; no native all-gauge Spin membership, global lift, 16-block action, physical-Hilbert or BFSS spectral conclusion is asserted.

Repository research branch only. Canonical main, original upstream `etblink/math` and draft PR #25 unchanged. Audit commit does not trigger CI.
