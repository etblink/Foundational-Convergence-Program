# BFSS SU(2) S3L — Project Lead succession: proof engineering and truth boundary (0.1.0)

**Prepared:** 2026-10-11. **Status:** durable research-branch successor guidance, **NOT** canonical FCP scientific integration. **Purpose:** preserve observations, failures and governing decisions which are not safely reconstructed from a list of green CI gates. Supersede status fields with live Git/Actions inspection. The user explicitly wants these lessons preserved for future Project Leads.

## Immediate starting point and research boundary

- Repository: `etblink/Foundational-Convergence-Program`. Research branch: `research/openai-math-su2-s3l-combined-rotation`. Draft PR **#25** must retain base `research/openai-math-su2-s3k-physical-spin-flow`; no merge or change to `main` or upstream `openai/math` without independent authorization.
- Last verified head **before this handoff commit**: `b6054690ff39d6fbf24046a66e8eec15ad16bdd5`.
- Lean **4.34.1**, pinned `openai/math` **`adc7f1241b42e322a6451854ab7e4b4c146bf78a`**, pinned Mathlib **`d13f23b723b8a846827a245b89c10fc7d3f11612`**. Reuse the accepted **source-verified 26-module cache**, check exact sources and existing axiom root audit. Successful CI must compile `.olean` and reject `sorryAx`/unapproved axioms.
- Successful, independent original cubic results: **K3** genuine `gammaTwo` coefficient and finite sums; **K4** coefficient transport across six original source monomial indices and exact `sourceCubicCharge` bridge; **K5** real/complex negative free-spinor matrix contraction; **K6A** generic seven-index permutation and positive finite-sum transport; **K6B** negative finite-sum transport using **scalar-first negation**. On the present PR run **K6C1** has also been qualified.
- Exact latest supporting gate: [Cubic Source Response #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38181184654) (**RED**). **K6C1** passed its separate compilation and axiom check; **K6C2** timed out at **90 seconds**, without a Lean error. **K6C3 and final K6C did not run**. This is neither evidence against the desired equality nor proof that it holds. The earlier monolithic K6 and K2 gates are separately red/unqualified.
- `S3L5J9` already qualifies complete **source kinetic-charge free-spinor covariance**. The genuine **cubic source monomial commutator K2 remains UNQUALIFIED**; hence **full cubic charge covariance is not proved**. Even full source rotational covariance would not prove spectral positivity, positive eigenvalues, or the physical BFSS spectrum.

## Governing scientific principle

**Expose only the structure necessary for the next mathematical identity, but never abstract away an assumption required by the original physical source.** This is not license to weaken source-defined 48-Majorana operators, Clifford matrices, signs, original `gammaTwo`, structure constants, the original `-i` kinetic coefficient, composition order, finite sums, domain conditions, or gauge restrictions.

Success is **mathematical uncertainty actually removed**, not green-workflow count. A green generic algebra theorem is useful but does not establish an unqualified concrete specialization; a Lean timeout is a proof-engineering observation, **not** mathematical falsification or independent scientific validation. Maintain explicit tags: source definition, formally qualified unconditional claim, conditional statement, and unqualified obstruction.

## Empirical lessons from the actual failed and successful attempts

1. Directly elaborating large concrete BFSS operator expressions often hits Lean recursion, heartbeats, kernel or wall-clock limits. Separate abstract algebra, exact source coefficients, and concrete operator interfaces. **Do not** hide unproved physics in a generic hypothesis.
2. The successful J-series pattern was: name source sums/coefficients; qualify pointwise linearity or commutator identity; transport indices in a separate `.olean`; finally identify the original source charge. K3–K6B repeatedly confirm the value of this modularity.
3. Caching an accepted module avoids recreating the proof but **does not automatically make a huge concrete theorem application cheap**. K6C #1 timed out on one concrete theorem after all green dependencies. K6C #2 isolated C1 successfully, yet C2's apparently direct specialization of K6B still timed out. There are at least two separate costs: checking generic proof terms and elaborating their concrete interfaces.
4. **Negative transport breakthrough:** six nested `neg_smul` / `Finset.sum_neg_distrib` rewrites timed out. K6B became green by proving the **16-component complex scalar** negation first, specializing already-green K6A to `fun β => -d β`, then applying a **single** outer `Finset.sum_neg_distrib`. Keep this checked method, do not restore old monolithic rewrites.
5. Source indexing is exact: `originalCubicSourceMonomial k l γ A B C` takes `γ` **before** three color indices. The generic transport interface expects `T k l A B C γ`: pass `fun k l A B C γ => originalCubicSourceMonomial k l γ A B C`, never the bare source monomial.
6. `SourceEnd` lives in `FCP.BFSSSU2PhysicalDomainS3L4B`. Missing `open` caused dozens of cascading false-looking typeclass errors. `GammaMatrix` operations need matrix-specific entry lemmas; generic `Pi.smul_apply` and `Pi.neg_apply` failed in K5 #1. A red log must be inspected at its **first causal error** before editing.
7. Kernel timeouts and wall-clock timeouts are distinct. A gate returning exit **124** with no Lean diagnostic cannot establish which step or theorem tactic failed unless separately instrumented/isolated. Do not repeatedly raise timeouts or retry unchanged proof shapes.
8. GitHub default-branch **code search missed research-branch-only Lean source**. List the **exact branch Git tree** and fetch candidate files. At handoff time that research tree held ~179 `.lean` files; reuse the ones below instead of creating redundant identities.
9. Preserve negatives: K2 concrete cubic-monomial commutator repeatedly timed out; old K6 monolithic negative free-spinor transport had kernel deterministic timeouts. The legacy **K2** and **K6** GitHub Actions workflows are now **`workflow_dispatch` only**; deliberately restored manual diagnostics, **not accidentally absent work**. Do not re-enable on every PR update.
10. Prefer fewer, larger **well-reasoned** edits with source preflight (namespaces, exact parameter order, lemma statement, import closure, `#print axioms`, no `sorry`/`admit`) before burning CI. After each red, record a genuinely new distinction; otherwise stop the unproductive loop.
11. For test triggering on this branch, earlier runs temporarily retargeted draft PR #25 to `research/openai-math-su2-concrete-potential`, committed a change to a relevant proof path, confirmed desired workflows registered, then **immediately restored** base `research/openai-math-su2-s3k-physical-spin-flow`. Never leave the review branch retargeted, merge it or modify upstream/main merely to start CI.
12. Maintain separate **proof correctness**, **source fidelity**, **CI build engineering**, and **scientific significance** verdicts. Conflating them is a primary succession risk.

## Exact reusable modules on current research branch

Root for following files: `experiments/openai-math-su2-physical-domain/`; filename prefix `SU2BFSSPhysicalDomain`.

- `S3L4BOriginalSmoothCorePostcompCalculusProbe.lean` — exact `SourceEnd`, postcomposition calculus, source commutator interface.
- `S3L4CSourceAlgebraDataFermionActionInterfaceProbe.lean` and `S3L4DConcreteSourceFockSpinCovarianceProbe.lean` — actual fiber spin action to the original source.
- `S3L5HFiniteSumAndCoefficientEntryProbe.lean`: `sourceComm_smul`, `sourceComm_sum`, `sourceComm_weighted_sum`.
- `S3L5I1ExactTripleWeightedSumTransportProbe.lean`: `sourceComm_three_weighted_sums`.
- `S3L5J9ActualKineticFreeSpinorCovarianceProbe.lean`: `sourceFullNegativeFreeSpinorSum_transport`, full original kinetic charge covariance.
- `S3L5K1SourceCubicPositionPairProbe.lean`: `sourceComm_comp` and exact position-pair commutator (Leibniz).
- `S3L5K2AOriginalFermionActionCovarianceProbe.lean`: 48-Majorana concrete fermion-action response, accepted separately. `S3L5K2ActualCubicSourceMonomialProbe.lean` remains **not qualified**.
- `S3L5K3OriginalCubicGammaTwoCoefficientProbe.lean` through `S3L5K5OriginalCubicFreeSpinorCoefficientProbe.lean`: original coefficient response and monomial-weighted identities.
- `S3L5K6AGenericOriginalSixfoldTransportProbe.lean`, `S3L5K6BNegativeCubicCoefficientTransportProbe.lean`: qualified generic seven-index positive and negative transport. Never reprove them inside K6C.
- `S3L5K6C1OriginalCubicCoefficientContractionProbe.lean`: just qualified in Source Response #2; `S3L5K6C2OriginalCubicNegativeSpinorTransportProbe.lean`: wall-clock timeout on concrete K6B specialization; `S3L5K6C3OriginalCubicChargeBridgeProbe.lean`: not checked at #2 because C2 stopped the workflow; `S3L5K6COriginalCubicCoefficientResponseProbe.lean`: original final statement, currently NOT qualified.
- `S3L5K6OriginalCubicFullFreeSpinorTransportProbe.lean`: historical failed monolithic approach, not a substitute for qualified stages.

## Successor priorities and negative-knowledge checkpoint

1. **First inspect exact branch, PR #25, and newest run**; statuses here are a dated snapshot, not a perpetual live source.
2. **Immediate proof obstruction: concrete K6C2 Lean elaboration** despite green K6B and K6C1. Do not re-run unchanged C2 or whole K6. Look for inexpensive named/opaque source weight and monomial interfaces or a targeted non-unfolding `change`/`simpa only` that keeps `d/c/T` abstract before the concrete call. Confirm each substitution preserves the **original exact theorem statement**. Consider separately qualified parameterization before specialization if complexity persists.
3. Once C2 green: qualify C3 and K6C final independently, retaining original source charge bridge, signs, six indices, and strict axiom checks. Then return to K2 with K1's product Leibniz, K2A fermion covariance, and S3L5H finite weighted commutator transport. K2 is the genuine missing source operator step, not something coefficient proofs can bypass.
4. **Cache accepted new stages opportunistically**, source-check their exact `.lean` and audit approved axioms; do **not** consolidate cache layers merely for housekeeping or disturb the real mathematical target.
5. When actual research reaches a genuine stopping point, report it instead of manufacturing green gates. A formally verified source-sector result is valuable even if it cannot solve the BFSS spectral problem.

## Communication lesson preserved only from the Project Lead discussion

The user's explicit preference: think before changing proof code; learn from red CI; minimize needless runner wait; reuse existing sources and already-compiled modules; preserve the big picture and negative knowledge for successors. More important, the user is after **truth rather than avoiding falsification**. Always describe the concrete uncertainty each mathematical milestone resolves, and the one it leaves behind. Never equate elaborate green CI with physical discovery.

**Succession motto:** *Expose only the structure needed for the next identity, never abstract away a source-required assumption; make each red narrow uncertainty, and measure progress by mathematical truth rather than workflow color.*
