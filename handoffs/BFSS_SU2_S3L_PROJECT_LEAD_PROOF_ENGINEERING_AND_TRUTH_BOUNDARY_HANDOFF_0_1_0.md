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


## 2026-10-11 update: K6C Gate #3 exact diagnostic, and Gate #4 experiment

**Provenance:** [Cubic Source Response #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38182261252), HEAD `ec5074d5460db9dad956ed9b0bdaf2a29dcd7c05`, **red**. Accepted K3–K6B and K6C1 still compiled and passed source/axiom checks. K6C2 failed at **line 56**: `(deterministic) timeout at whnf, maximum number of heartbeats (200000) has been reached`. The first causal error was the `change` tactic attempting to convert the original sixfold source expression into a sixfold expression with named concrete `let d/c/T` functions. `#print axioms` then mentioned `sorryAx` only because Lean had not built a valid proof: it is **not** an authorized axiom or a green theorem. K6C3 and final K6C remained unchecked.

**Negative knowledge:** Introducing typed local aliases is **not enough** if a follow-on `change` must run costly definitional normalization over the fully instantiated BFSS operators. A compiled generic theorem may be cheap while exact concrete elaboration or conversion is expensive.

**Gate #4 experimental repair:** Commit `20696917417f8f98b382a889555c95c630d75e4a` constructs a named `have h` at the fully typed `d/c/T` source interface, then uses `simpa only [d, c, T] using h` instead of `change`. Qualification head `a05fbfbc4414cac8573d83256c19ba904ec081e7`; [Cubic Source Response #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38182729417) **started, not yet qualified at this update**. Original public statement, K3–K6C1 dependencies, accepted cache, physical source, and strict axiom policy unchanged. If #4 fails, use its *first* diagnostic to decide whether the aliases require a separately checked bridge; do not blindly increase budgets or repeat the same proof.

**Decision discipline:** Note the distinction between `timeout 90s` (Gate #2: wall-clock/exit 124, no Lean theorem diagnostic) and `whnf` heartbeat exhaustion (Gate #3: targeted definitional-conversion failure). These are different evidence and must never be summarized interchangeably.

## 2026-10-11 milestone: Gate #4 GREEN — full original cubic coefficient response accepted

**This section supersedes the earlier pending/red K6C snapshot above.** [Cubic Source Response #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38182729417), exact qualification head `a05fbfbc4414cac8573d83256c19ba904ec081e7`, **COMPLETED SUCCESS**. The CI log contains strict permitted-axiom and compiled-`.olean` checks, including:

```text
S3L5K6A_GENERIC_CUBIC_POSITIVE_SOURCE_TRANSPORT_PASS
S3L5K6B_NEGATIVE_CUBIC_FINITE_SOURCE_TRANSPORT_PASS
S3L5K6C1_CUBIC_SIXFOLD_COEFFICIENT_CONTRACTION_PASS
S3L5K6C2_CUBIC_NEGATIVE_SOURCE_TRANSPORT_PASS
S3L5K6C3_SOURCE_CHARGE_BRIDGE_PASS
S3L5K6C_ORIGINAL_CUBIC_COEFFICIENT_SOURCE_RESPONSE_PASS
```

**Qualified exact source theorem:** `FCP.BFSSSU2PhysicalDomainS3L5K6C.pairedOriginalCubicCoefficientResponse_freeSpinor`. It carries the original BFSS cubic `1/2` structure-constant weights, source `gammaTwo`, genuine paired plane spin generator, all six spatial/color/spinor monomial indices, and the negative free-spinor generator action on original `sourceCubicCharge pairedAlgebraData β`. Verified permitted axioms only (`propext`, `Classical.choice`, `Quot.sound`).

**What changed, exactly:** Gate #3 exhausted deterministic Lean heartbeats in `change`/weak-head normalization of concrete `d/c/T` aliases. Gate #4's corrective commit `20696917417f8f98b382a889555c95c630d75e4a` instead gave K6B's already-checked theorem an explicit typed `have h` followed by `simpa only [d, c, T] using h`. No statement, source-defined operator, assumption or compiler-resource increase was required. This is reusable proof-engineering evidence **not** a replacement for any physical assumption.

**NEXT substantive goal:** original, actual 48-Majorana combined-spin **source cubic-monomial operator commutator (K2)**. Legacy `S3L5K2ActualCubicSourceMonomialProbe.lean` repeatedly hit its 65-second wall-clock limit (exit 124) after K1 position-pair and K2A fermion-action covariance were qualified. Do not confuse this with K6's former coefficient transport. Inspect qualified `S3L5K1.sourceComm_comp`, `S3L5K1.pairedActualCombined_comm_positionPair`, and `S3L5K2.pairedActualCombined_comm_fermionAction`; use non-unfolding, explicitly typed interfaces to instantiate Leibniz once, then discharge the original monomial definition. Preserve original monomial factor order and no hidden K2 assumption. Do not rerun the old K2 or monolithic K6 workflow unchanged.

**Scientific limit unchanged:** Full source cubic **coefficient** response now **[U] qualified**. The actual source cubic **operator commutator** and full cubic-charge covariance remain **unqualified**. Positive spectral claims remain entirely distinct.

The successful proof and these negative lessons should inform all future Project Lead successors; never revert to an outdated red/pending status from the earlier handoff sections without checking this Gate #4 evidence.

## K2B #1 diagnostic — first source namespace failure (2026-10-11)

[Cubic Monomial Factored Proof #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38183300575) finished **red** at K2B; cached source prerequisites through K1 and K2A were green. First causal errors at K2B lines 57/71/77: unknown `sourceCubicFermionVariation` and `pairedActualCombined_comm_fermionAction`. **Although the file is named K2A, both symbols are declared in namespace `FCP.BFSSSU2PhysicalDomainS3L5K2`.** Import alone is insufficient for unqualified identifier resolution; K2B originally opened only K1. Later maximum recursion-depth errors may have cascaded from these missing names; no independent new obstruction has yet been established.

Minimal repair `6d04d89daa45c73d103077bff011b4d801a2f8d7`: added `open FCP.BFSSSU2PhysicalDomainS3L5K2` without changing the theorem statement or tactic proof. [Cubic Monomial Factored Proof #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38183910618) started at qualification commit `f854beddcba37c02c172741a017380358ee9bedb`. **Pending at time of note**; inspect actual Gate #2 rather than treating K2B as qualified. This K2B line of work is mathematically the original cubic monomial commutator, unlike now-qualified coefficient-only K6C.

Lesson: file stem (K2A) and Lean namespace (S3L5K2) are not interchangeable. Confirm exact namespace declarations and the *first* compiler error before allocating another CI run.

## K2B #2 diagnostic — remaining recursion in concrete interface simplification

[Cubic Monomial Factored Proof #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38183910618) at qualification head `f854beddcba37c02c172741a017380358ee9bedb` **RED**. The K2A namespace repair solved all missing identifiers, and J5–J9, K1 and K2A passed. The K2B proof then hit Lean's **maximum recursion depth** at source lines **79, 82 and 88**, precisely the three `simpa only` calls to rewrite the concrete source generator, fermion action, position pair and variations through local `SourceEnd` aliases. This is distinct from Gate #1's unknown identifiers and from the legacy 65-second wall-clock timeout; no falsification of the operator identity follows.

**Corrective K2B #3 experiment:** proof commit `0c74b02dc416daf5d2c1e8a1ba73e507b3b36152` replaces the three recursive simplifications with direct `have hF :=` qualified K2A, `have hP :=` qualified K1, and direct final `exact hLeibniz`. Same literal original theorem statement, no increased resource budget, no new axioms. Qualification head `99cd4ab8347db58c4316cb926ab211871d285ae4`; [Cubic Monomial Factored Proof #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38184381668) is **pending** at this note. Do not mark K2B accepted without explicit compiled `.olean` and allowed-axiom output.

If direct elaboration still fails, split the concrete K1/K2A-to-aliased-equation casts from the final Leibniz application into separately compiled lemmas, or use restricted top-level source definition rewriting. Do **not** repeat the exact failing `simpa only [G,F,...]` pattern, turn on `sorry`, blindly increase recursion limits, or claim that green K6C alone proves cubic operator covariance.

## K2B #3 diagnostic: direct named-interface coercion exhausts recursion depth (2026-10-11)

[Cubic Monomial Factored Proof #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38184381668), qualification SHA `99cd4ab8347db58c4316cb926ab211871d285ae4`, finished **RED**, after qualified J5–J9, K1 and K2A passed. Single first causal error: `SU2BFSSPhysicalDomainS3L5K2BFactoredCubicSourceMonomialProbe.lean:83:4: error: maximum recursion depth has been reached`. Line 83 was direct assignment of accepted `pairedActualCombined_comm_fermionAction i j γ A` to locally **typed** `hF : G.comp F - F.comp G = VF`, where `G`, `F`, and `VF` were aliases for the actual BFSS `SourceEnd` terms. Thus even without the simplifier, *coercing* a precompiled theorem into concrete named-interface equality can trigger excessively deep definitional unfolding. Do not mislabel this as a mathematical contradiction or as a timeout from the final Leibniz calculation; K2B #3 failed **before** the `hP` and `hLeibniz` steps could be validated.

**Next experiment:** `f35f6fa1d9a820f2141a9b2523a3d6bba127a0b7` removes all local aliases from the theorem application and instead preserves the inferred types of `have hF := pairedActualCombined_comm_fermionAction i j γ A` and `have hP := pairedActualCombined_comm_positionPair i j k l B C hij`. It invokes qualified `sourceComm_comp` with exact concrete source expressions and only `simpa only [pairedOriginalCubicMonomial]` to identify the original source monomial name. The public theorem statement is unchanged. Qualification head `5fc4a2028c66db491729578205aea29773d36d55`, [Cubic Monomial Factored Proof #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38185012963), **NOT qualified at the time of this record**.

If this still recurses or times out, do not blindly retest; introduce separately compiled source-faithful lemma(s) for concrete operator-to-Leibniz interface with exact inferred theorem types, or investigate a dedicated opaque bridge which does not reduce the concrete Fock construction. K6C's all-green coefficient response remains accepted and independent of the still-unqualified K2 operator covariance.

## K2B Gate #4 → K2C isolated Leibniz boundary (2026-10-11)

[Cubic Monomial Factored Proof #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38185012963) at source head `5fc4a2028c66db491729578205aea29773d36d55` **FAILED**, but **all** J5–J9, K1 and K2A prerequisites passed. K2B retained direct inferred `have hF := pairedActualCombined_comm_fermionAction ...` and `have hP := pairedActualCombined_comm_positionPair ...`; its **sole** error was `maximum recursion depth has been reached` at **line 82**, passing **`hF hP`** as evidence arguments to the *concrete* application of `sourceComm_comp`. This isolates the expensive interface at the **joint composition** boundary, not a missing lemma or failure of individual source identities. Later `sorryAx` printed only from a failed proof and is not an accepted axiom.

**Decision:** avoid replaying K2B aliases or turning up recursion limits. Isolate the raw Leibniz structure in two separately compiled modules:
- `S3L5K2C1AbstractSourceLeibnizProbe.lean`: purely abstract `SourceEnd` composition law, directly proved by already-accepted K1 `sourceComm_comp`.
- `S3L5K2C2ActualSourceRawLeibnizProbe.lean`: exact original generator, fermion action and ordered source positions, but **only** the raw Leibniz identity, without substituting K1/K2A variations. Proof uses `rw [sourceComm_comp_raw]`.
- Dedicated new [BFSS S3L Cubic Raw Leibniz Boundary #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38185623100) independently checks each `.olean` and accepted axioms. Qualification source head `01aaf76a4a09572235145dfb53db3c30ef30f8a5`. **Gate #1 was not complete when written; do not call it qualified.**
- Obsolete red K2B workflow `bfss-s3l-cubic-monomial-factored.yml` is now **manual-only** to prevent the PR diff from relaunching known-red full K2B proof. A #5 run was inadvertently registered by the trigger before quarantine; do not misread it as K2C qualification.

If K2C2 qualifies, split the *remaining* application of qualified K1/K2A variations into one or two shallow separately checked operators' congruences, followed by the original `pairedOriginalCubicMonomial` identification. If K2C2 itself fails, inspect its **first error** to distinguish raw rewrite matching from concrete theorem application costs. K6C final coefficient response remains fully qualified; **full cubic-charge covariance still requires source monomial/operator commutator K2**.

## K2B #5 redundant red; K2C #1 genuine abstract green and namespace red (2026-10-11)

- [Cubic Monomial Factored Proof #5](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38185623051) was **triggered before** the K2B workflow was made manual-only, despite no new K2B proof change. Its failure repeats K2B #4 exactly: `maximum recursion depth has been reached` at line 82 in application of qualified `sourceComm_comp` to concrete source (hF,hP). It contributes **no new evidence**; never count it as a failed K2C experiment or relaunch this old workflow unchanged.
- [Cubic Raw Leibniz Boundary #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38185623100) compiled **K2C1 successfully**, including `S3L5K2C1_ABSTRACT_SOURCE_LEIBNIZ_PASS`, under the pinned math environment, source-checked prerequisites and axiom policy. This is only **abstract `SourceEnd` commutator Leibniz**, not concrete BFSS covariance.
- K2C2's initial gate failed quickly because `pairedAlgebraData.fermionAction` was unknown (lines 31/33/39/40/44), followed by an unknown theorem name. K2C2 omitted `open FCP.BFSSSU2GaugeG1A`, which provides the original source gauge/algebra data names and is already opened by qualified K2A/K4. These are missing-source-name diagnostics, **not** evidence of failure of the raw Leibniz identity.
- Minimal K2C2 source fix commit `7725a55c2d7ac068d88be39665b6cbbf4e79ed61`: adds the original gauge namespace; theorem statement and `rw [sourceComm_comp_raw]` are byte-for-byte preserved. [Cubic Raw Leibniz Boundary #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38186050671) launched with head `2aae2f82b8f98072a937390bb322cef730c23cf8`. **Pending at this note**. Review its actual first error before any further edits.
- K2B legacy workflow is now `workflow_dispatch` only. Original K1/K2A and K6C remain accepted. The concrete original cubic source monomial response and full cubic-charge covariance remain unqualified.

Succession rule: a complete workflow red may conceal a successful independently audited prefix (K2C1), and a repeated legacy run may convey zero new mathematical information (K2B #5). Keep both distinctions visible.

## 2026-10-11 K2C #2 red: pinned Mathlib endomorphism-ring strategy opened

**Exact observed gate:** [Cubic Raw Leibniz Boundary #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38186050671), original qualification head `2aae2f82b8f98072a937390bb322cef730c23cf8`, **RED** at **K2C2**, while **K2C1 successfully passed**. K2C2 compiler was terminated by `timeout 65s` **exit 124 without a Lean diagnostic** during `rw [sourceComm_comp_raw]`. Missing `pairedAlgebraData.fermionAction` identifier from K2C #1 was successfully resolved by `open FCP.BFSSSU2GaugeG1A`. This is an unqualified concrete source specialization, **not** a contradiction or K2 covariance proof.

**Pinned Mathlib evidence, not inferred from current docs:** At the project's exact Mathlib SHA `d13f23b723b8a846827a245b89c10fc7d3f11612`, `Mathlib/Algebra/Module/LinearMap/End.lean` defines `Module.End R M` as the endomorphism type and `Module.End.mul_eq_comp` with endomorphism multiplication definitionally equal to composition; it has a noncommutative ring instance. `Mathlib/Tactic/NoncommRing.lean` exports `noncomm_ring`, which normalizes **noncommutative** ring identities. Since `SourceEnd := SmoothCore 2 →ₗ[ℂ] SmoothCore 2`, those resources apply directly to **abstract** SourceEnd commutator algebra; no physically false assumption of operator commutativity is introduced.

**Qualification experiment #3, two-stage one gate:** Commit `82f18c13755a1627a75e6ee8638d30d781262ef3` replaces the proof of the *same exact* K2C1 theorem with a Mathlib-backed `change G*(F*P) - (F*P)*G = ...` followed by `noncomm_ring` at the **abstract** operator type; earlier green K1 remains intact. Commit `f1468a6c95cac89bf8e15d3aac695ec6566a7aac` replaces K2C2's expensive concrete `rw` with explicit `exact sourceComm_comp_raw G F P` using the original 48-Majorana source generator, original fermionAction, and **ordered** two-position operator. Both theorem statements are unchanged and no axiom/physics changes or increased resource limits are introduced. [Cubic Raw Leibniz Boundary #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38186731877) qualification head `49ac1e02913ca1d833fc05614e1580401cf54b43` **RUNNING at time of this note**; never mark these changed proof bodies accepted without checking their separate compiler and strict axiom audits.

**Important limitation:** Mathlib can remove hand-written abstract algebra and repeated rewriting; it does **not** automatically make concrete BFSS definalitional matching inexpensive. If K2C1 succeeds but K2C2 still fails, the remaining issue is the literal source term's elaboration/normalization boundary. Prefer a new genuinely different concrete interface/explicit `Module.End` proof architecture, not blind timeout increments or retries of equivalent `rw`/typed aliases. Keep full cubic-charge covariance **unqualified** until K2's actual source commutator and finite sum are kernel checked.


## Update for successors (2026-10-12) — newer handoff takes precedence

**This is a historical 2026-10-11 engineering handoff; its gate counts, active proof status, and head SHA are superseded.** Before taking any action, read [the newer Project Lead chat-context and spectral-refocus handoff](FCP_BFSS_S3L_SPECTRAL_PROJECT_LEAD_CHAT_CONTEXT_SUCCESSION_2026_10_12.md), then the current source-first mathematical audit at `../experiments/openai-math-su2-physical-domain/BFSS_SPECTRAL_SOURCE_FIRST_ROTATION_AND_SLICE_AUDIT_0_1_0.md`. The newer record preserves R4C1/R4C2 acceptance, R4D recursion+kernel failure, CI cache-scope lessons, and the explicit move to adversarially testing the original manuscript's form expansion and high-weight physical sectors. **Do not revive stale recommended monolithic S3L gates from this document as if they were the current priority.** Verify live branch/PR status independently.
