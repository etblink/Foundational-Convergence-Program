# FCP Project Lead — S4B1 original fermionic-field coefficient bridge, source-first

**Research date:** October 25, 2026 Pacific / October 26 UTC.  
**Disposition:** exact source-derived ordinary algebraic derivation and a new small Lean candidate; **formal acceptance gated on separate Gate89 compiler/axiom evidence**. Do not count mathematical lemmas here before real kernel acceptance. No modifications to canonical main, source math, or draft PR #25.

## Source register and previously accepted bridge

Original mathematics pin: `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; pinned Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

- `lean/OAI/MathematicalPhysics/BFSS/Core.lean` blob `9882359ced78b0a3bd7e2f057974bd0a031b3e60`, `AlgebraData.charge`, `coreForm`, source `theta_CAR`, gamma matrices.
- `lean/OAI/MathematicalPhysics/BFSS/GammaWords.lean` blob `d12051e70de679f5458dbd456667a32c7b407ce4`, `BFSSGamma.gammaTwo_alt` and `gamma_sq`.
- `lean/OAI/MathematicalPhysics/BFSS/MixedEnergy.lean`, `remainderField` defined as `sum_alpha sum_p B_alpha,p * fderiv(V_alpha) x (single_p 1)`.
- `lean/OAI/MathematicalPhysics/BFSS/DeformedCharge.lean` blob `c27c913c44090100f0c714e3eb34e25205f4d2d3`, `kineticSkewSymbol`, `deformedRealField`, `deformedFermionField` **defined** as `(1/16:ℝ) • MixedEnergy.remainderField kineticSkewSymbol (deformedRealField h m) x`, `averaged_core_energy`.
- **Existing strict accepted** original source theorem `FCP.BFSSSU2GaugeG4K9D.sourcePotentialMultipliers_equal` states `M.deformedPotentialMultiplier 1 0 x α=M.bracketMultiplier α x` for ALL original admissible M and x. `sourceUnconditionalCoreCharge_equal` and `sourceUnconditionalCoreForm_equal` are also strict accepted by [Gate170 #38011995220](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38011995220). Crucially, the source proof there discharges coefficient typing already; do NOT repeat 6 sum rearrangements.
- Original manuscript `positive-eigenvalues-relative-su2-bfss.tex`, manuscript main source eq:form/eq:supercharges, defines `B(x)=(i/2)f_abc x_i^a gamma^i_(βδ) theta^b_β theta^c_δ` with `f_abc=sqrt2 ε_abc`.

## Differential coefficient derivation, preserving signs/order

Write `W_α(x)=M.bracketMultiplier α x` using the **accepted** original-source G4K9D equality. The original operator order (on its complex Fock module) is

```text
W_α(x)
 = (1/2) sum_(i,j,c,b,d,δ)
      f_(c b d) x_i^b x_j^d gamma^{ij}_{αδ} theta^c_δ.
```

Because gamma^{ij}=-gamma^{ji}, the derivative with respect to the exact original coordinate x_k^a is

```text
partial_(k,a) W_α(x)
 = sum_(j,c,d,δ) f_(c a d) x_j^d gamma^{k j}_{αδ} theta^c_δ.
```

The source kinetic skew symbol for the same original α and coordinate p=(k,a) is

```text
K_(α,k,a) = -i sum_β gamma^k_(αβ) theta^a_β.
```

Thus the literal source (h,m)=(1,0) remainder is

```text
F(x) = (1/16) sum_(α,k,a)
      K_(α,k,a) * partial_(k,a) W_α(x)

= (-i/16) sum_(j,d,a,c,β,δ) f_(c a d) x_j^d
      [sum_(k,α) gamma^k_(αβ) gamma^{k j}_(αδ)]
      theta^a_β theta^c_δ.
```

The source gamma matrices are **real symmetric**. Their Clifford identity implies for each j

```text
sum_(k=1)^9 gamma^k gamma^{k j}
    = (9-1) gamma^j = 8 gamma^j.
```

Taking the (β,δ)-matrix entry, symmetry yields the bracketed contraction =8 gamma^j_(βδ). Consequently

```text
F(x)
 = -(i/2) sum_(j,d,a,c,β,δ) f_(c a d) x_j^d
        gamma^j_(βδ) theta^a_β theta^c_δ
 = +(i/2) sum_(j,d,a,c,β,δ) f_(d a c) x_j^d
        gamma^j_(βδ) theta^a_β theta^c_δ
 = B_manuscript(x).
```

**The last sign uses exactly one interchange** `f_(c a d)=-f_(d a c)`; do not use the wrong orientation `f_(c a d)=f_(d a c)`. Each nonzero f has `a!=c`, hence the original ordered `theta^a theta^c` is anti-Hermitian and the `i` factor makes F Hermitian. No factor 2 may be dropped: the derivative of the antisymmetrized ordered (i,j) sum removes the original 1/2, while the nine spatial directions contribute 8 and the normalized charge average 1/16 yields the physical 1/2.

These equations establish the **ordinary source CAR/polynomial mathematical identity**. They have strong prior independent finite evidence from the historical `BFSS_FORM_AND_HIGH_WEIGHT_EXACT_CHECK_0_1_0.py` (62,208 original coefficient comparisons). They do **NOT** yet constitute a typed Lean proof that the original real-linear `M.deformedFermionField 1 0` equals an explicitly constructed manuscript B continuous operator. That conversion requires the original scalar/restrictScalars typings, matrix-entry contraction and color index reordering to be discharged without unbounded elaboration.

## New formal candidate and gate

- [S4B1 small Lean source](../experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS4B1OriginalGammaFermionContractionProbe.lean), exact commit `ff39f2afce28e39ce7edab3aae391ce75a70e335`; blob `aec9bb5415299cf8a0b13be238f7a8aa2a7cc324`.
- Two independent declarations: `sourceGammaTwo_contract` (9-dimensional BFSSGamma source matrices with its exact Clifford premise), and `originalSourceGammaTwo_contract` (the **same** theorem specialized into `AlgebraData N` actual source `M.gammaTwo` type). Both claim factor eight and do not claim complete B equality.
- [Gate89 strict workflow](../.github/workflows/bfss-form-source-gamma-contraction-strict-gate89.yml), creation commit `76e5efb21df7ad77f29ed3b498a9f3312e445b4a`, [run #40276967009](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40276967009) [status to be qualified upon completion]. Rebuilds exactly original Core and GammaWords modules, Lean 4.34.1, pinned Mathlib, unchanged source/Git blobs, warning-as-error and `#print axioms` for BOTH declarations, permits only `{propext, Classical.choice, Quot.sound}`. This deliberately avoids the stalled R4O/E3A 125-module ancestry.

## Next discriminating source theorem, if and ONLY if S4B1 qualifies

1. Build a small source lemma for `fderiv (M.deformedRealField 1 0 α)` at a single original coordinate. Use the **accepted** `M.deformedPotentialMultiplier=M.bracketMultiplier` identity to rewrite *before* differentiation; avoid expanding `M.deformedCoreCharge` or large nested finite sums.
2. Compose the original `MixedEnergy.remainderField` definition, one source matrix contraction, and source color antisymmetry into the explicitly typed original B continuous-linear operator. Keep `restrictScalars ℝ` visible. Check the operator statement FIRST on `Fermion N` vectors, then as continuous-linear maps.
3. Only thereafter use the original normalized form identity to prove an actual source physical smooth-core `Spin(9)` form invariance theorem, conditionally on the true global action being constructed. Import accepted source G4K9D, do not reprove it.

If Gate89 is red, record its **first actual compiler issue** rather than guessing a mathematics counterexample or raising recursion/heartbeat limits. The previous full 6-index E3B/E3C proof family remains paused. No new spectral claims or physical mass gap result follow from a green S4B1.


## Gate89 immutable negative evidence — separately classified failures

**Gate89 #1** [GitHub Actions #40276967009](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40276967009), job `121421646388`, completed failure. Frozen source Core and GammaWords both compiled FRESH (`Core.olean` size 1,281,224; `GammaWords.olean` size 738,648), toolchain and mathlib pins passed. Lean candidate line 42 failed `Ambiguous term gammaTwo` between `AlgebraData.gammaTwo` and `OAI.BFSSGamma.gammaTwo`; line 44 reported deprecated `if_neg` under warning-as-error; line 57 `module` failed on a non-normalized natural-smul vs real-smul goal (`1=0`). Both candidate theorem axiom reports included `sorryAx`. **0 roots accepted.** This was NOT an E3B/E3C recursion failure.

**Repair commit** `b6ce0f2f6ebe2bfb7694b5c3255d860b24b9e0c0` atomically updated the exact same theorem statements, using qualified `OAI.BFSSGamma.gammaTwo`, nondeprecated `ite_eq_right` and an explicit source-matrix-entry scalar normalization. Candidate new blob `bbeae5475fd4be6e9a587dafb67f28c552fd7df9`. No source gamma hypothesis, spatial dimension, or original mathematical repo changed.

**Gate89 #2** [GitHub Actions #40277712823](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40277712823) completed failure **BEFORE** Lean: new candidate commit-blob equality passed, but copied worktree hash-object pin still expected the original `aec9bb5…` blob. This is a proof-gate **infrastructure red** caused by incomplete pin update, not a proof counterexample or a Lean parser error. We preserve it as a lesson that immutable source checks must be updated *as an audited set*, not only one occurrence.

**Gate89 #3**: workflow-only fix in commit `944036e1efc69ea4453a1f69b0986e738a6b5935` changed the remaining worktree blob pin to `bbeae5475fd4be6e9a587dafb67f28c552fd7df9`; exact mathematical candidate unchanged from Gate89 #2. [GitHub Actions #40277856118](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40277856118) launched; record its terminal compiler verdict separately rather than assuming acceptance from a successful preflight. Scoped strict accepted-root count is unchanged until that verdict is independently verified.
