# FCP BFSS Project Lead — S3E2 Gate16 original pointwise CAR selectors strict RED; Gate17 exact two scalar-zero leaves

**October 24 Pacific / October 25 UTC, 2026.** Repository `etblink/Foundational-Convergence-Program`, branch `research/openai-math-su2-s1v52-global-lift-scoping-20261019`. Immutable original mathematics `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; permitted axioms exactly `propext, Classical.choice, Quot.sound`. Main, PR #25 and original physical math not modified. Truth over CI green counts.

## Independent Gate16 root cause — now only two `smul_zero` leaves

[Gate16 #40156795058](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40156795058), job `121059784731`, workflow commit `8ef492239139f5aaa3befd3cbe4c7cab1b7220d5`: **completed/failure 0/3 accepted**. Frozen source/toolchain restored, original S3C/D/E1 real source proof ancestor [Gate13](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40155001241) exact 117-path cache HIT, original S3E2/adapter SHA and identical-three-declaration checks PASS. Compiled exact V3 file `experiments/openai-math-su2-physical-domain/recovery/SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbeV3.lean`, Git blob `18d6beeb68e8db36fbeccbcf0b195816ce8a7aa7`, with actual Lean `-DwarningAsError=true`.

The `by_cases` + positive-branch substitution completely resolved the previous implicit matrix application `J α` transparency issue. The two remaining errors in negative-index equality cases are exactly:

```text
S3E2...lean:47:8: error: unsolved goals
  h : ¬β = γ
  ⊢ ↑(J α β) • 0 = 0

S3E2...lean:78:12: error: unsolved goals
  h : ¬α = γ
  ⊢ ↑(J α β) • 0 = 0
```

These are ordinary module zero scalar-action lemmas, not missing CAR, gamma, gauge or source Fock ancestry, not a change of the intended `J(α,γ)-J(γ,α)` coefficient. Original final coefficient lemma generated no separate diagnostic. All three axiom reports showed `sorryAx` from the two incomplete source proofs; zero newly accepted roots and no qualified S3E2 compiled-object child cache saved. Preserved original artifact `bfss-s3l-s3e2-pointwise-gate16-40156795058`, ID `12585061608`, ZIP SHA256 `9ee6a89af150fe844ad451510e32a0745d74e58b9087fecee21416f440cf43ec`.

[Full original compiler audit](../audits/FCP_BFSS_S3E2_GATE16_POINTWISE_SELECTORS_ZERO_SMUL_REDS_2026_10_24.md), audit commit `6dc66df1dc97c1beafe095fca98ca451a6e97c1a`. Preserve earlier [Gate14](../audits/FCP_BFSS_S3L_S3E2_GATE14_THREE_SOURCE_FINITE_SUM_PROOF_RESIDUALS_RED_2026_10_24.md), [Gate15 run1](../audits/FCP_BFSS_S3L_S3E2_GATE15_RUN1_DOUBLE_ESCAPED_DIFF_VALIDATOR_RED_2026_10_24.md), and [Gate15 run2](../audits/FCP_BFSS_S3L_S3E2_GATE15_RUN2_IMPLICIT_TRANSPARENCY_SIMP_NO_PROGRESS_RED_2026_10_24.md) as separately classified negatives.

## New narrow correction, Gate17

V4 source new exact file `experiments/openai-math-su2-physical-domain/recovery/SU2BFSSPhysicalDomainS3E2SameColorActualGammaCoefficientContractionProbeV4.lean`, Git blob `cccca70f645548958f60337fef36cc1a44b3c521`, source creation commit `f66866ce2fdd69242a34290a54c501b709950dac`. It differs from V3 in EXACTLY TWO proof-only insertions, one for each delta-selector negative branch:

```lean
· simp [h]
  exact smul_zero _
```

All THREE original S3E2 theorem statements and complete source operator Fock definition, CAR `delta=1`, gamma indices, matrix coefficient and skewness status are unchanged. No `sorry`, axiom or warning suppression. The pointwise tactic now retains successful positive-branch index substitution, and explicit `smul_zero` handles only the remaining `J α β • 0 = 0` negative branch.

New workflow `.github/workflows/bfss-s3l-s3e2-explicit-smul-zero-strict-gate17.yml` at commit `1447aaa991dfbe47da761881f03d1a9a42318f86`, [Gate17 #40157374612](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40157374612), job `121061525906`, **launched and UNACCEPTED** at initial handoff. Preflight checks immutable original math/Lean/Mathlib, actual S3C/D/E1/source S3E2 original/V2/V3/V4 Git SHA and identical three theorem declarations, mechanically reconstructs V4 from the two exact `smul_zero` insertions. Restores the exact previously strictly accepted 117-path Gate13 ancestry, fresh warning-as-error Lean 4.34.1 compile of V4 under the actual S3E2 module basename, three expected declaration #print axiom reports allow ONLY standard axioms, bans errors/sorryAx and source warnings. Qualified **118-path child cache only if** all strict stages and save succeed:
```text
bfss-fcp-s3l-s3e2-smulzero-cccca70f-gate17-v1-adc7f124-lean4341-d13f23b-Linux-X64
```
No root accepted from Gate17 yet; successor must independently inspect actual completed job, original Lean reports and cache save.

## Math/proof scope

Gates #7/#8/#9/#11 requalified **28 historical declarations** without counting them as new discoveries. Gate #13 separately accepted one genuinely **new source-defined actual Fermion2 48-Majorana same-color raw commutator root**. Gates #14–#16 strictly accepted ZERO new S3E2 roots. Gate17 tries to qualify two genuine source-index delta-contraction lemmas and one genuinely source-defined coefficient theorem for arbitrary real matrix J:
```text
[Q_{J,A}, θ_{γ,A}] = ∑_α (J(α,γ) - J(γ,α)) θ_{α,A}.
```
This claim is only the raw original bounded fermionic **one color** source operator; no skew-source gamma orientation or 1/2 spin factor has yet been applied. After accepted S3E2, specialize to S3A true source skew `pairedPlaneSpinGenerator i j`, prove source half-factor and other-color commutator for the full three-color generator and genuine bounded original Fock spin generator skew-adjointness; only then consider global Spin(9) representation, original R4A/C1/C2/D fixed-color cubic covariance, all-16 closed physical q invariance and high-angular-momentum spectral compactness/existence. Positive normalizable eigenvector existence is still unproved. Accepted H4E3D4C4 operator graph equality and H4G1B **conditional** eigenpair iff do NOT prove existence. No global mass-gap claim. Issue #29 open.
