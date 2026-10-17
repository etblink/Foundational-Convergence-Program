# Original BFSS L6H5E8AJ — FullL2 spatial parity is a unitary involution (0.1.0)

**Date:** October 17, 2026 PDT.  
**Disposition:** `PASS__ACTUAL_ORIGINAL_FULLL2_PARITY_UNITARY_INVOLUTION__FIVE_AXIOM_CLEAN_ROOTS`.
**Scope:** literal original `FullL2 N`, unchanged `Fermion N`, original `Boson N` inversion, accepted AI measure invariance and literal `coreToL2`. Not yet gauge-fixed source physical-space or Hamiltonian domain equivalence, manuscript identification, or positive spectrum.

## Frozen exact source acceptance

- [Original FullL2 Unitary #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39041298692), accepted head `99c97e1fae65ac298afbb224f83ba7df1c4f7ce4`, original strict proof job `117421200739`, **SUCCESS**, updated `2026-10-17T14:38:15Z`.
- Artifact `bfss-su2-opposite-gamma-39041298692`, ID `12103799362`; all compiler and proof logs retained.
- Exact Lean candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AJOriginalFullL2ParityUnitaryProbe.lean`, Git blob `23bce6337e42dffb530339d54eef95378d9230b1`; accepted AI source Git blob `4832b4bdf140adaefa3271bea2325a05fde7d1be`, accepted AF source Git blob `c9f71c6929121226788181ce3547979dcfe6afef`. Strict job checks all three and recompiles AF/AI in original pinned order.
- Original math source `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; no replacement package or extra mathematical premise.
- All five AJ roots printed **only `[propext, Classical.choice, Quot.sound]`** with no `sorryAx`; strict marker `L6H5E8AJ_ACTUAL_SOURCE_FULLL2_PARITY_UNITARY_AXIOM_CLEAN_PASS`.

## Exact new declarations

Namespace `FCP.BFSSSU2PhysicalDomainL6H5E8AJ`:

1. `originalFullL2Parity_involutive`: on **all original FullL2 N** vectors, `P₂(P₂g)=g`, from the valid pinned Lp pullback-composition lemma and genuine `Lp.ext` against almost-everywhere representatives, using the original spatial inversion `x↦-x` squared equal to identity.
2. `originalFullL2ParityUnitary`: a **surjective complex-linear isometry equivalence** `FullL2 N ≃ₗᵢ[ℂ] FullL2 N`, constructed using pinned `LinearIsometryEquiv.ofSurjective` and proved involutivity; not just a norm-preserving injective map.
3. `originalFullL2ParityUnitary_apply`: acts identically to accepted AI original `FullL2` parity.
4. `originalFullL2ParityUnitary_sq`: parity unitary squares to the identity on every original Lp equivalence class.
5. `originalFullL2ParityUnitary_coreToL2`: exactly agrees with original accepted `originalSmoothParity` under the literal upstream `coreToL2` embedding.

This is the physically correct Hilbert-space lift of H5E8AH's full original smooth-core supercharge parity identity. It does not identify the original source physical gauge-invariant closed graph or Hamiltonian operator domains.

## First-cause negative knowledge

[FullL2 Unitary #1 RED](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39040884234), job `117420012248`: all source pins, AF/AI recompilation and the Lp composition theorem succeeded. The one Lean error was at AJ line 39 `rw [hinv]`, `hinv : inv ∘ inv = id`, under `Lp.compMeasurePreserving (inv ∘ inv) (h.comp h)`; the Lean `rw` tactic could not construct its motive because the `MeasurePreserving` witness's **type depends on the function** being replaced. Attempted root contained `sorryAx`. This is a dependent-function rewrite obstruction, not a counterexample to spatial parity involution.

[Repair `87587be8`](https://github.com/etblink/Foundational-Convergence-Program/commit/87587be816928c2b8eb89ad5ee0d2aeae82fae77) compares original Lp functions with `Lp.ext` and `Lp.coeFn_compMeasurePreserving`, moving the `inv ∘ inv = id` rewrite to the *nondependent representative evaluation*. [Exact CI pin `99c97e1f`](https://github.com/etblink/Foundational-Convergence-Program/commit/99c97e1fae65ac298afbb224f83ba7df1c4f7ce4) then qualified all five roots as real kernel facts.

**Reusable rule:** When replacing a map under a certificate whose type depends on that map, avoid rewriting through a dependent proposition using generic `rw`; compare the induced actual Lp elements by their a.e. values, then use the scalar function equality only at representative evaluation.

## Next science

A prospective source exact [AK bosonic gauge-parity probe](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s3l-combined-rotation/experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainL6H5E8AKOriginalFullL2ParityBosonGaugeProbe.lean) targets commutation of `P₂` with the literal `G.bosonPullback g`; its [independent Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39041502666) is separately **pending**, not qualified here. Also establish parity commutation with actual `G.fiberAction g` (source Fock fiber unitary) to preserve `G.physicalSpace`, then original `G.invariantCore`, source **restricted** charge-column graph and closure, normalized `1/16` associated self-adjoint Hamiltonian **with domain**. The original October 2026 manuscript Cl48/Spin48 identification and global Spin9 spectral/isotype claims are independent and unproved.

No accepted source math/pins, main, or draft PR #25 base/status were altered.
