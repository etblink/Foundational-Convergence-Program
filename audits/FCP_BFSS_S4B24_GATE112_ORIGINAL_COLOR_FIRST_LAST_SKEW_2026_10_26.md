# BFSS S4B24 — original color first/last structure-constant skew, Gate112

**Research candidate, NOT accepted.** Current strictly accepted S4 principal roots: **48** through Gate111. Gate112 attempts exactly one additional source-typed root and does not count a result from an incomplete workflow.

## Scientific / formal statement

Original pinned Lean source: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, original `ColorLie.lean` Git blob `3c4bbd6b4a3ba21a0f05892e90665a8c2033640c`, original `Core.lean` blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`. Lean `v4.34.1` / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. `AlgebraData.structureConstant` is the **real part** of a color-matrix trace of the original bracket `-i [x,y]`; `AlgebraData.bracket_trace_skew` is the original source theorem.

For **all** original `AlgebraData N`, color indices `D,A,C`, the proposed theorem is

```lean
theorem originalSourceStructureConstant_first_last_skew
    {N : ℕ} (M : AlgebraData N) (D A C : ColorIndex N) :
    M.structureConstant D A C = -M.structureConstant C A D
```

The intended proof uses exactly `Matrix.trace_mul_comm`, `AlgebraData.bracket_trace_skew`, and `Complex.neg_re` after unfolding the original source structure constant. This is **first/last**, not merely the already accepted S4B14 **last-two** skew. It is handedness-invariant and does not assume `f=+sqrt(2) epsilon` for arbitrary bases.

The possible scientific bridge: inserting accepted Gate111 gamma contraction into accepted Gate109's true theta product retains the kinetic-first theta factor. Scalar factor `(-i)/16` times `8` gives `-i/2`; changing `f[D,A,C]` to `-f[C,A,D]` produces the manuscript's **positive** `+i/2` at unchanged original operator ordering. This sign bookkeeping is still a **proposed operator proof**, not kernel accepted.

## Exact implementation and strict constraints

- Candidate: [S4B24 original color skew](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B24OriginalColorFirstLastSkewProbe.lean), new Git blob `fbd55472ce131fd4eec602711c24dd301958cc3b`, candidate commit `fb633db4f4be38ea8f9bdeecc48d87fc9c3aefc2`.
- Gate112 workflow: [source-skew strict gate](../.github/workflows/bfss-form-original-color-first-last-skew-strict-gate112.yml). Exact two candidate Git blob checks; immutable upstream original and accepted S4B3–S4B23 compiler/import/axiom ancestry; fresh candidate `.olean`; exact theorem declaration; compiler exit 0; no candidate warnings, errors or `sorryAx`; only `propext`, `Classical.choice`, and `Quot.sound` allowed.
- No original source, canonical `main`, draft PR #25, previously accepted Lean theorem statement, or published scientific claim is changed by this candidate.

## First attempted workflow: preflight red, zero proof test

[Run #40425930452](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40425930452), first pushed workflow at commit `bf9f4d63172c50e0d496b887ac48311390917ea4`, **completed failure at YAML/display title preflight** before source Lean compilation. The copied workflow filename ended in `gate112.yml` but displayed an inherited `Gate 111` title; independent runner log records `ValueError: Workflow title/gate mismatch`. This is a **verification wrapper mistake, not a mathematical test**. No S4B24 root was accepted. The new parent report regex was also repaired statically to preserve single regex backslashes before launching the next run. The candidate theorem and proof body remained unchanged.

[Repair commit 414409d5](https://github.com/etblink/Foundational-Convergence-Program/commit/414409d55a1c6615fb6de9d9e3530a146e925580) repairs exactly the workflow title and S4B23 parent axiom-report matcher; it does not modify the Lean candidate. A new push launched [Gate112 run #40425991456](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40425991456), which **was in progress** at the audit checkpoint. Do not claim it passed before the actual compiler/axiom log completes.

## Stop/recovery decisions

If Gate112 fails before candidate compile, classify first causal failure as checkout, source SHA mismatch, workflow preflight, cache/provenance or parent failure; do not edit theorem based on a wrapper red. If it reaches Lean and fails, inspect `strict-candidate.log` and modify only the one failing interface; preserve the failed error in this audit. If it compiles strictly, accept **exactly 1** new principal root and advance scoped S4 from 48 to 49, without double-counting freshly compiled parents. The next bounded task is operator-valued finite-sum insertion of Gate111 into Gate109, not an unqualified manuscript `B(x)` theorem.

**Scientific boundary:** no equivalence with a full source closed physical fermionic operator, no spectral coercivity, and no positive normalizable eigenstate existence has been established by this step.
