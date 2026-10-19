# BFSS S1V33 — Gate #1 RED, exact Lean inverse coercion and algebraic conjugation multiplication defects

**October 19 2026 PDT.** Status `S1V33_G1_FAIL__SCALAR_INJECTION_COMPILED__SCALAR_CONJUGATION_AND_Q_PRESERVATION_REJECTED_SORRYAX__NO_NEW_CACHE`.

[Genuine Original Source48 Spin Quadratic Isometry Strict Gate #1 run #39341087708](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39341087708), job `118362532873`, FAILURE, path-scoped workflow commit `d1cd4182583e84fab87f0eb50ca7b379edf9e85d`. Immutable original `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, exact NEW source SHA1 `4e6987d0f109e808bc2c03066746c5de20f327c8`: PIN CHECKS PASSED. Actual accepted S1V32 source real-linear Spin48 group action cache `bfss-s1v32-isolated-real-linear-spin48-group-action-v1-adc7f124-lean4341-d13f23b-Linux-X64` was restored and required `.olean` modules found. The exact new S1V33 source compiled with two errors.

First actual Lean error:
```
SU2BFSSPhysicalDomainS1V33Original48SpinQuadraticIsometryProbe.lean:54:39:
error(lean.synthInstanceFailed): failed to synthesize instance
  Inv C
```
The candidate had `(u⁻¹ : C)`, where `u : Cˣ`. Lean tries to elaborate inverse at the Clifford-algebra type `C`, which is NOT a division group. Correctly compute `u⁻¹ : Cˣ` FIRST and then coerce to C: `((u⁻¹ : Cˣ) : C)`. This is proof elaboration only.

Second actual Lean error:
```
SU2BFSSPhysicalDomainS1V33Original48SpinQuadraticIsometryProbe.lean:82:10:
error(lean.unknownIdentifier): Unknown identifier `smul_mul`
```
The context tries to prove `(g•x)*(g•x) = g•(x*x)` for `g = ConjAct.toConjAct (spinGroup.toUnits s)`. Pinned Mathlib uses `smul_mul'` for the multiplicative monoid-distributive action, so rewrite RHS using `rw [smul_mul']` or use `(smul_mul' g x x).symm` explicitly as needed. A generic `mul_smul` is the group action composition law, not product preservation. Do not invent `smul_mul` nor assume a new typeclass.

Exactly one new proposed root `FCP.BFSSS1V33.source48_real_clifford_scalar_injective` printed axioms `[propext, Classical.choice, Quot.sound]` with no compiler complaint, but the WHOLE module/gate is red, so no S1V33 roots are formally accepted. The next two proposed roots `source48_spin_conjugation_fixes_real_scalar` and `sourceSpin48VectorAction_preserves_sourceQ` printed `sorryAx`, forbidden. No S1V33 strict success marker or saved S1V33 cache.

This is consistent with the mathematical Clifford-square identity `ι_Q(v)^2 = algebraMap ℝ C (Q v)`; nothing in these diagnostics establishes a sign or isometry counterexample. S1V32 and older accepted caches remain intact, and the candidate uses original source `Q`, true `spinGroup Q`, actual original source48 labels.

## Bounded response

Repair ONLY the inverse's explicit units-group type and the multiplicative action rewrite. Do not change source definitions, theorem statements, original positive-i convention, colors or indices, or allowed axioms. Path-pin new Git blob and start one strict Gate #2. Inspect compiler's first NEW error if still red rather than retry unmodified. After accepting all three roots, proceed to exact source-sized Spin→isometry packaging then orientation det +1, followed by separate covering/topology/global lift; NO BFSS spectral claim.
