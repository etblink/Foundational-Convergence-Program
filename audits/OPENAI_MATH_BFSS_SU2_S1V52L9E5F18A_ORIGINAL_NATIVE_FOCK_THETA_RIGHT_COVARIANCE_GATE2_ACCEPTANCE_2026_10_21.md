# S1V52L9E5F18A — exact native original Fock pairedTheta right covariance: Gate #2 ACCEPTED

**Status:** `STRICT_KERNEL_PASS__ONE_NEW_F18A_SOURCE_THETA_RIGHT_COVARIANCE_ROOT__THREE_IMPORTED_AXIOM_CHECKS__F18A_CACHE_SAVED__240_CUMULATIVE_S1V52_ROOTS`.

## Frozen strict evidence
- [GitHub Actions run #39637345490](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39637345490), job `119351365365`, workflow/source checkout commit `97461c3e4c22d3b8f3c9160f0385850da5d02587`: **SUCCESS**.
- Original source candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5F18AOriginalNativeFockPairedThetaRightCovarianceProbe.lean` actual Git blob `d031c67c04a1fcfeb598970750219501b6fea248`.
- Pinned upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Original source SHA, compiler and .olean dependency preflight passed; existing F17 and B0 qualified caches restored.
- Exact import audits: `FCP.BFSSS1V52L9E5F17.originalNativeSixteenFock_pairedTheta_conjugation`, `FCP.BFSSS1V52L9E5F11.originalNativeSixteenSpin48Fock_adjoint_mul`, and `FCP.BFSSS1V52L9E5B0.originalFockOperator_real_smul_eq_complex_smul`: each only `[propext, Classical.choice, Quot.sound]`.
- **New** `FCP.BFSSS1V52L9E5F18A.originalNativeSixteenFock_pairedTheta_right_covariance`: exactly the same three permitted axioms, without `sorryAx`.
- Strict marker `S1V52L9E5F18A_ORIGINAL_NATIVE_FOCK_PAIRED_THETA_RIGHT_COVARIANCE_1_ROOT_3_DEPENDENCY_AXIOMS_KERNEL_PASS`; fresh `.olean`; qualified cache saved under actual key `bfss-s1v52l9e5f18a-original-native-fock-paired-theta-right-covariance-v2-adc7f124-lean4341-d13f23b-Linux-X64`.
- **Ledger:** 239 previous roots + **1 F18A** = **240 distinct S1V52 accepted roots**. Imported roots are not recounted.

## Exactly qualified theorem

For original `g : GaugeGroup 2`, `α : RealSpinBlock`, `A : Fin 3`, set `U(g)` equal to the original genuine 16-block native Spin48 Fock continuous complex-linear image; `theta_A = pairedTheta (spinPairEquiv.symm α) A`. Then:
```lean
U(g) * theta_A =
  ∑ B : Fin 3, (adjointColorMatrix g B A) • (theta_B * U(g))
```
This follows from the accepted F17 **unscaled** theta conjugation, the accepted F11 `star U(g) * U(g) = 1`, noncommutative associativity, and scalar transport. The real coefficient is converted using exact source B0 `originalFockOperator_real_smul_eq_complex_smul`, then the complex operator `smul_mul_assoc`, and finally converted back to real. No commuting `U` through a Majorana, transpose, sign change or extra physical hypothesis.

## Failed Gate #1 and causal correction
Two GitHub push runs executed the exact same original Gate #1 commit `475ef1cc3844182cf5e5d99d958089ef13c46e6a`: [#39608296418](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39608296418) and [#39608308259](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39608308259). Both stopped with the same finite-sum scalar multiplication goal at line 79 and `sorryAx`; **0/1 accepted**. The two are duplicate executions, not two independent mathematical results. Preserved in `audits/OPENAI_MATH_BFSS_SU2_S1V52L9E5F18A_GATE1_DOUBLE_RUN_REAL_COMPLEX_FOCK_SMUL_RED_2026_10_21.md`.

Gate #2 repaired only the actual real-to-complex Fock scalar proof interface and its exact B0 axiom audit, without altering the theorem statement or the scientific model. No unrelated gates were launched.

## Next source frontier and nonclaims

Prospective F18B attempts to evaluate this operator equation at original Fermion vectors and convert source real coefficients into the complex covariance hypothesis of accepted S1H. F18C then proposes invoking S1H to identify the native Spin48 Fock gauge representation with `fermionGaugeLinearHom`; its historical S1G/S1H import DAG requires explicit co-staging before any strict qualification.

This accepted F18A result **does not** identify an independent manuscript Clifford module or prove closed physical charge/Hamiltonian domain transport, continuous global Spin48 lift, Spin9 covariance, positive eigenvalues, or BFSS spectral gap. Main, pinned upstream and PR #25 remain untouched.
