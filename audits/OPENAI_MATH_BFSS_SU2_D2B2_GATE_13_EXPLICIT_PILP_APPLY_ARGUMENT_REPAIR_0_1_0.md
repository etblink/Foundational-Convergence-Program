# BFSS SU2 D2B2 Gate #13 — explicit PiLp projection parameters repair 0.1.0

**Date:** 2026-10-09 Pacific, GitHub Actions UTC 2026-10-10. **Status:** `GATE_13_RED__D2B2_NOT_QUALIFIED`; proposed D2B2 continuity repair `UNCOMPILED`.

## Exact pinned evidence

[BFSS SU2 Physical Domain Bridge #13](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38019642500), run `38019642500`, job `114117560316`, tested commit `8204bbea5617844a61bc7f7ce54d9c21c10ff983`, source blob `1de9fb0b047b8ce98ff09be783845768a9badf5e`. The qualified G4-K10A proof cache restored and accepted D1/D3A/D3B/D2A/D2B1 recompiled and passed their axiom checks. D2B2 `sourceHaarIntegrand_jointContinuous` and `sourceHaarAverageRaw_hasCompactSupport` both compiled with exactly the standard axiom set `[propext, Classical.choice, Quot.sound]`.

Only error:
```text
SU2BFSSPhysicalDomainD2B2HaarAverageContinuitySupportProbe.lean:61:6:
  PiLp.continuous_apply ↑↑i
has type
  ∀ (β : ?m.140 → Type ?u.88) [inst : (i : ?m.140) → TopologicalSpace (β i)]
    (i_1 : ?m.140), Continuous fun f => f.ofLp i_1
but is expected to have type
  Continuous fun v => v.ofLp i
```
Consequently the single public `sourceHaarAverageRaw_continuous` axiom report inherited `sorryAx`; D2B2 was **not** accepted.

## Correction to the independent review

After Gate #12, independent reviewer Grok recommended adding an explicitly typed `hproj : Continuous (fun v : Fermion 2 => v i)`, claiming `PiLp.continuous_apply i` could discharge it. Gate #13 **falsified this prediction**. On examining the **exact pinned** Mathlib source `Mathlib/Analysis/Normed/Lp/PiLp.lean`, the enclosing namespace variables are:
```lean
namespace PiLp
variable (p : ℝ≥0∞) (𝕜 : Type*) {ι : Type*} (α : ι → Type*) (β : ι → Type*)
...
protected lemma continuous_apply [∀ i, TopologicalSpace (β i)] (i : ι) :
    Continuous (fun f : PiLp p β ↦ f i) := ...
```
The public theorem has **explicit** `p` and `β` parameters before the coordinate `i`. The old call `PiLp.continuous_apply i` accidentally supplied the index `i` in the exponent position (Lean printed coercion `↑↑i`), then expected a function of `β` and the real coordinate. Thus the failure is not an essential PiLp/WithLp topology mismatch; it is an **incorrect invocation arity**. The previous type-ascription alone did not remedy it. This correction must be preserved as negative knowledge rather than assigning false confidence to review prose.

## Minimal bounded repair

Change *only* the nonqualified D2B2 proof line in the original `sourceHaarAverageRaw_continuous` declaration to:
```lean
have hproj : Continuous (fun v : Fermion 2 => v i) :=
  PiLp.continuous_apply 2
    (fun _ : Fin (2 ^ (8 * colorDim 2)) => ℂ) i
```
Here `Fermion 2 := EuclideanSpace ℂ (Fin (2 ^ (8 * colorDim 2)))` is definitionally `PiLp 2 (fun _ => ℂ)`. This supplies the exact documented `p,β,i` explicit arguments and leaves the previously compiled `sourceHaarIntegrand_jointContinuous`, support proof, genuine gauge action, existing Haar probability, theorem statement and all prior accepted files unchanged.

This new candidate is still **UNCOMPILED**. The next CI must verify all 3 D2B2 declarations with only standard permitted axioms, no `sorryAx`. The purported viability of remaining `hscalar/hcoord/hcoords` steps is only a hypothesis until tested.

## Mathematics and stopping boundary

If Gate #14 succeeds, D2B2 proves source Haar-averaged functions are **continuous and compactly supported**, not all-order smooth or L² dense in the physical subspace. Those are genuine outstanding D2B obligations; do not promote this Lean elaboration repair to a BFSS Hamiltonian or spectrum result.

No original source/dependency/cached proof modification, main merge, upstream PR, new assumption, or framework classification change.
