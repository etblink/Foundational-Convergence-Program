# S1V52L9E5F17 — source-exact unscaled original Fermion2 pairedTheta conjugation, Gate #3 ACCEPTED

**Project Lead independently verified:** `L9E5F17_GATE3_PASS__ONE_NEW_ORIGINAL_UNSCALED_PAIRED_THETA_COVARIANCE_ROOT__F16_DEPENDENCY_REAUDITED__THREE_PERMITTED_AXIOMS__239_CUMULATIVE_S1V52_ROOTS`.

## Strict immutable evidence

- [GitHub Actions run #39607114155](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39607114155), job `119246061219`: **SUCCESS** at research source/workflow commit `2fbcfcd2f89a68114e2f8237e13cac67095ab43a`. All 15 job steps, including fresh Lean compilation and cache save, succeeded.
- Exact actual original-source candidate `experiments/openai-math-su2-physical-domain/SU2BFSSPhysicalDomainS1V52L9E5F17OriginalNativeFockUnscaledPairedThetaColorCovarianceProbe.lean`, immutable Git blob **`93940c487283e4ffa82c154fa934c9e9cd438baa`**, unchanged from Gate #1 and #2. Four-way source SHA preflight matched.
- Original upstream `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Lean `4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; full original source/Spin48 dependency closure and pinned Pauli checks passed.
- Exact F16 and B0 caches restored, all import objects checked. **No** stale imported definition or new axiom substituted.
- `#print axioms`:
  - imported `FCP.BFSSS1V52L9E5F16.originalNativeSixteenFock_normalizedMajorana_color_covariance`: exactly `[propext, Classical.choice, Quot.sound]`;
  - **new** `FCP.BFSSS1V52L9E5F17.originalNativeSixteenFock_pairedTheta_conjugation`: exactly `[propext, Classical.choice, Quot.sound]`.
- Fresh F17 `.olean` emitted. No `sorryAx`, compiler errors, unresolved symbol, or unauthorized axioms. Independent corrected validator marker:
  `S1V52L9E5F17_ORIGINAL_NATIVE_FOCK_UNSCALED_PAIRED_THETA_COVARIANCE_1_ROOT_1_DEPENDENCY_AXIOM_KERNEL_PASS`.
- Qualified F17 cache saved under actual key `bfss-s1v52l9e5f17-original-native-fock-normalized-majorana-color-covariance-v1-adc7f124-lean4341-d13f23b-Linux-X64`. The cache-key descriptive suffix retains inherited `normalized-majorana-color-covariance` text, but belongs to the F17 Gate #3 successful output; future gates must use the **literal actual key** or intentionally publish a newly qualified alias, never infer one from the theorem title.
- **Ledger: 238 + 1 = 239 distinct newly qualified S1V52 roots.** Imported F16 root is not recounted.

## What was actually proved

Define `U(g)` as the actual native sixteen-block Spin(48) image on the genuine `Fermion 2` complex continuous-linear operator algebra. For every original `g : GaugeGroup 2`, spin block `α : RealSpinBlock` and original color `A : Fin 3`:

```lean
U(g) * pairedTheta (spinPairEquiv.symm α) A * star U(g) =
  ∑ B : Fin 3, (adjointColorMatrix g B A) •
    pairedTheta (spinPairEquiv.symm α) B
```

Here `adjointColorMatrix g B A = pairedAlgebraData.adjointCoefficient g A B` uses the original source input/output orientation. F17 invokes the qualified F16 original **normalized** Majorana covariance, expands `originalNormalizedFockMajorana = (Real.sqrt 2 : ℂ) • pairedTheta`, moves only central scalars across the genuine operator products, and applies multiplication by the complex inverse of the **nonzero positive** `Real.sqrt 2`. Original source spin labels and real coefficient smul are retained. There is **no** operator commutation, reversed group action, surrogate module, or new physical postulate.

## Red-to-green learning

- [Gate #1 run #39605082896](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39605082896): **RED, 0/1**. Fresh isolated push branch did not have access to qualified F16/B0 GitHub Actions caches. Source SHA and pinned toolchain checks passed, but candidate Lean was never compiled. Preserved in the independent Gate #1 infrastructure audit on the exploratory branch.
- [Gate #2 run #39606004369](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39606004369): **RED, 0/1**. Correct existing cache-qualified branch restored dependencies and **compiled** the unchanged F17 theorem with permitted axioms, but a copied Python validator required the stale F16 name. The independent gate correctly refused promotion. Preserved in the Gate #2 stale-theorem-name audit.
- **Gate #3:** only the workflow's expected theorem-name literal was repaired; exact theorem **source blob unchanged**; full corrected validator passed, and saved a qualified cache. Never rerun the first two failures or weaken the axiom whitelist.

## Strict nonclaims and next action

F17 does not yet prove vector-level `U(g)(pairedTheta α A v)=∑ B ...`, equality to `fermionGaugeLinearHom`, independent 2026 manuscript module identification, continuity of the Spin(48) lift, exact 16-charge closed graph/physical Hamiltonian transport, Spin(9) spectral confinement, positive point spectrum or full BFSS mass gap.

Next target **F18A**: use already accepted F11 `star U(g)*U(g)=1` to multiply this exact equation by `U(g)` on the right, obtaining `U(g)*theta_A=∑_B R_BA • (theta_B*U(g))`. The F18A source is prospectively staged only; do not count it or start unrelated workflows. Subsequent gates handle source complex-valued vector covariance and the independent S1H conditional uniqueness theorem.

**Governance:** research branch only. Canonical `main`, pinned `etblink/math`, draft PR #25 unchanged; audit-only commit does not rerun the workflow.
