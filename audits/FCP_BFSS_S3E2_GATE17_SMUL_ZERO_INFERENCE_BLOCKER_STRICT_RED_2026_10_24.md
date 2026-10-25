# BFSS S3E2 Gate #17 — Lean scalar-zero theorem underspecified, strict RED

**October 24 Pacific / October 25 UTC, 2026. Strict 0/3 new source theorem roots accepted.**

## Primary original evidence

[Gate #17 run #40157374612](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40157374612), job `121061525906`, source workflow commit `1447aaa991dfbe47da761881f03d1a9a42318f86`, run/job `completed/failure`. Source/original math/toolchain SHA preflight PASSED, frozen `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1/Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Qualified Gate13 117-path source cache restored; authentic S3C/D/E1 compiled `.olean` ancestor checks passed. Original mathematical theorem statements frozen.

Source V4 `experiments/openai-math-su2-physical-domain/recovery/SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbeV4.lean`, actual Git blob `cccca70f645548958f60337fef36cc1a44b3c521`, differences from V3 exactly two extra `exact smul_zero _` lines following true pointwise `β≠γ` and `α≠γ` cases. Fresh original `lake env lean -DwarningAsError=true` reached each proof and produced precisely:

```text
...S3E2...lean:48:16: error: typeclass instance problem is stuck
  SMulZeroClass ?m.129 ?m.130
Lean will not resolve because first, second, third arguments remain metavariables.

...S3E2...lean:80:20: error: typeclass instance problem is stuck
  SMulZeroClass ?m.171 ?m.172
```

The previously displayed residual *before* `exact smul_zero _` in Gate16 was `⊢ ↑(J α β) • 0 = 0` for each of the two Kronecker false branches. These are real complex scalar multiplication of **zero source continuous linear fermion Fock operator** `Fermion 2 →L[ℂ] Fermion 2`; supplying `_` for scalar to `smul_zero` leaves the typeclass unsolved, not a failure of the module identity. Every one of three S3E2 `#print axioms` reports still includes `sorryAx` from incomplete source selector lemmas; **no S3E2 roots accepted and no child cache saved**. Original compiler artifact ID `12584682504`, ZIP SHA256 `51f23fe01a19fd71416da3544dceb58806bbb846acefdcc20e37a1aa15eb0b4e`.

## Smallest justified correction

Leave V4, original candidate `d7a784e0679b279e5ca3c71206cd7d1994e70959`, V2/V3 and original S3C/D/E1 true Fock mathematics untouched. Pin separate V5 proof-only source with BOTH `exact smul_zero _` replaced by an explicitly type-ascribed invocation of `smul_zero` with exact source complex scalar `((J α β : ℝ) : ℂ)` and target zero `(0 : Fermion 2 →L[ℂ] Fermion 2)`. Verify original theorem statements/diff and strict whole-module compilation; if the proof still fails, read exact elaborated goal and refine types, never weaken the source coefficient. No axiom/sorry/linter suppression or unqualified cache overlay.

Preserve negative sequence separately: Gate14 source finite-sum simp and sub_smul rewrite; Gate15 #1 Python string escaped diff red; Gate15 #2 implicit matrix function transparency; Gate16 exact scalar-zero residual; Gate17 missing type arguments in `SMulZeroClass`. Prior 28 historical requalifications and 1 new accepted S3E1 raw CAR source theorem remain accepted. Still no Spin(9) full source covariance, closed physical q invariance or positive normalizable SU(2) BFSS eigenpair existence. Main, original math, PR #25 unchanged.