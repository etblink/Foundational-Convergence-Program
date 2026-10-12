# FCP BFSS SU(2) — Project Lead successor handoff: scientific refocus and chat-only decisions

**Prepared:** 2026-10-12. **Status:** successor context, not a mathematics proof, not an acceptance report, not permission to merge or amend upstream. **Source:** direct predecessor–owner conversation and live repository verification. **Read the linked current scientific audit before acting.**

> **Successor's governing instruction:** seek truth, not confirmation, green CI, or continuity of a favored hypothesis. The best next step is one that could materially change the manuscript's credibility. Respect the exact source operators and distinguish Lean compilation, analytic proof, exploratory testing, and physical claims. The owner entrusts Project Lead technical choices to you, but retains authorization for significant integration/upstream effects.

## 1. Verified handoff state — live repository as of this record

- FCP: https://github.com/etblink/Foundational-Convergence-Program
- Active scientific branch: `research/openai-math-su2-s3l-combined-rotation`
- **Pre-handoff latest branch commit:** `b3f8e2c7d23f5c1182d4c7a562432c26e9e2c44b` — “discharge smooth-core slice equivariance analytically; sharpen domain and spectral priorities.”
- **Draft PR #25:** https://github.com/etblink/Foundational-Convergence-Program/pull/25 ; base `research/openai-math-su2-s3k-physical-spin-flow`; **unmerged**.
- FCP `main`: `cf06212a57db0ceffad74bd78280a8a240856a17` at this checkpoint, **unchanged**.
- Genuine mathematical primary source is the **pinned fork** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, which is downstream of `openai/math`; **do not conflate three repositories**. Primary manuscript file:
  `preprints/Positive-eigenvalues-of-the-relative-SU-2-BFSS-Hamiltonian-October-5-2026/build/positive-eigenvalues-relative-su2-bfss.tex`.
- Lean **4.34.1**; Mathlib **`d13f23b723b8a846827a245b89c10fc7d3f11612`**. Existing qualified Lean source objects, exact source SHA checks and axiom audit reject `sorryAx` and unapproved axioms. Current reuse of **26 accepted source modules** makes CI feasible.
- Treat all SHAs as a *snapshot*, not a forever-live status. Read branch HEAD, PR base, and Actions before editing. A previous participant/agent occasionally added commits during active work: preserve concurrent contributions and never overwrite based on stale blob SHA.

## 2. The actual science so far: precise success boundaries

**Kernel-qualified source-algebra modules exist**, including kinetic free-spinor covariance `S3L5J9`, actual cubic monomial commutator `K2D3`, original cubic monomial/charge equality `K4`, cubic coefficient `K6C`, fixed-index fermionic response `R1D`, fixed-index position response `R3C`, and generic finite triple-sum transport `R4A`. They are useful genuine mathematical results **on their exact definitions**, not proofs of the complete Hamiltonian spectrum.

**New accepted advance from this chat:** [BFSS S3L Cubic Named Response Interfaces #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38229562739) was **GREEN**. Its independently compiled/axiom-audited source-faithful theorems are:
- `R4C1.pairedOriginalCubicFixedColor_fermionSum` — lifts accepted R1D over both *original* nine-dimensional spatial sums, fixed genuine SU(2) colors.
- `R4C2.pairedOriginalCubicFixedColor_spatialSum` — lifts accepted R3C over the original sixteen-component spinor sum.
These took ~10 seconds each to compile once their pinned dependencies were restored. **Do not roll them back simply because later combined assembly failed.**

**Unqualified:** full literal fixed-color cubic response `R4B` / named-composition `R4D`; full sixfold original cubic source-charge covariance; all 16 source supercharges under the *true combined global* `Spin(9)` action on the exact gauge core; any Lean proof of closed Hamiltonian invariance, positive eigenvalues, or spectral theorem. Never infer one from smaller accepted statements.

## 3. Critical chat-only negative knowledge: compiler gates and why we STOPPED

This is worth more to a successor than a green/red tally.

- **R4B Gate #1:** missing namespace `sourcePositionVariation` and unclosed coefficient lambda. Both repaired; no mathematical issue.
- [R4B #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38224291799): **maximum recursion depth** at one giant concrete `hsplit` generic-sum lemma application. Earlier prerequisites passed.
- [R4B #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38226008029): switched to explicit pointwise `Finset.sum_congr`, `smul_add`, reindex then R1D/R3C. **65-second timeout code 124**, no Lean diagnostic.
- [R4B #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38227468548): added five staged `trace` commands. Again code 124 at **65 seconds**, **no traces visible**. Do **not** claim the first tactic stalled: buffering or processing before output cannot be ruled out.
- [R4B #5](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38229562605): an incidental legacy workflow triggered with the new R4C gate; again 65-second timeout. **Thirteen other legacy workflows green and the new named interface green**.
- [R4D Named Assembly #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38231155721): **environment failure before Lean**. The known warm cache `family270b-bridge-ubuntu-lean4341-openai-adc7f124-deformedcharge-v2` was unavailable to a PR workflow on its normal **S3K PR base**, because of GitHub Actions cache scoping. The exact-cache guard correctly refused to proceed. **Do not report as theorem failure.**
- [R4D Named Assembly #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38231823772): warm-cache route fixed and all **36 previous steps passed**, including R4C1/R4C2. Dedicated R4D compilation with a **180-second** wall budget emitted:
  `SU2BFSSPhysicalDomainS3L5K2R4DNamedSourceAssemblyProbe.lean:81:12: error: maximum recursion depth has been reached` at `exact sourceThreeSum_weightedResponse_split` instantiated on literal source operators;
  **and** `...lean:39:8: error: (kernel) deterministic timeout` on the complete theorem declaration.
  A subsequent `#print axioms ... does not depend on any axioms` line after compiler errors **does not qualify** the theorem. No accepted R4D `.olean` / theorem object. No counterexample to the mathematical equality.

**What this taught us:** the 65-second wall cap became *counterproductive* when every trial expired before evidence appeared. Extending a **single scientifically justified larger proof** to 180 seconds was worthwhile: it exposed recursion AND a kernel deterministic timeout; the root is **not merely needing more wall time**. Do not interpret `maxRecDepth`/kernel timeouts as physical falsification; do not just increase limits or reshape the same massive term to get green. Another R4D gate would require a truly distinct *source-faithful compression boundary*, with separately checked recovery of the literal theorem and proof that the kernel will not expand it. Presently **do not relaunch R4B/R4D**.

**CI infrastructure lesson:** temporarily changing draft PR #25's base from normal `research/openai-math-su2-s3k-physical-spin-flow` to `research/openai-math-su2-concrete-potential` granted access to the pinned warm cache, but triggered **14–16 redundant PR workflows** each time. Base was promptly restored each time. A newly added dedicated workflow targeting the normal S3K base triggered just **one** workflow but could not access that existing scoped cache. **Do not repeat base-retargets mindlessly**. Prefer a properly qualified stable cache-access design (e.g., legitimate branch-scoped cache migration or independent pin-verifying cache bootstrap), then targeted CI only. Preserve pinned source and allowed-axiom audit.

**Context-only design lesson from Grok consultation:** owner suggested independent model critique after repeated reds. Grok's suggested four-stage architecture (generic split + fixed-color fermion + fixed-color spatial + tiny final proof) was useful **as a falsifiable proposal**, not a compiled guarantee. After independent source-signature review, its middle two interfaces passed and the large final specialization still failed. Never label external-model code as qualified without pinned compiler+axiom checks. The review helped isolate where *genuine reuse* works; it did not resolve R4D.

## 4. The deliberate scientific refocus: latest source evidence and its limits

The owner explicitly endorsed moving out of repeated Lean compilation and **toward the mathematical truth of the manuscript**. This is not permission to claim the original OpenAI manuscript is right. The owner wants us willing to discover it is wrong.

Read first:
- `experiments/openai-math-su2-physical-domain/BFSS_SPECTRAL_SOURCE_FIRST_ROTATION_AND_SLICE_AUDIT_0_1_0.md` (latest amended at `b3f8e2c7`). Full prose audit of the pinned paper's `lem:rotations`, `lem:branching`, `lem:slice`, `lem:oscillator`, `prop:confinement`, `lem:large-sectors`; explains *core-level* versus full-domain conclusions.
- `experiments/openai-math-su2-physical-domain/BFSS_SPIN9_FINITE_COVARIANCE_AND_BRANCHING_CHECK_0_1_0.py` (added `a0ada354`). **Reproducible diagnostics**, not Lean certification: 36 two-planes at 2 nonzero angles (72 finite gamma/rotation tests with error around 1.11e-16), the 48-label gauge/rotation commutation, 2π spin sign, and 12 integral/half-integral B4→D4 branching cases with exact Weyl dimension arithmetic, no violation of `ν₁≥λ₂`.
- Pinned manuscript: original source, not a verified theorem merely by being in `openai/math` lineage.
- Other accepted live research audit records (2026-10-12 commits `dd29408b` and `b3f8e2c7`) refine lifted group homomorphisms, gauge commutation, form closure and smooth slice equivariance.

**Reasoned outcomes at this point, with scope labels:**
- Finite-plane Clifford/Gamma covariance and 48-generator-label commutation checks passed; the paper's `Spin(9)` lift has a strong conventional covering-group argument, but the exact original-source global combined spatial/Fock action has **not** been constructed and certified end-to-end in Lean.
- The branching `Spin(9)→Spin(8)` interlacing inequality `ν₁≥λ₂` survived 12 targeted integer/half-integer tests. Twelve tests are **not** the general representation-theoretic theorem.
- The manuscript's fixed `u,s` slice is a potential L² trap, but **the actual proof avoids general L² point evaluation**: for a smooth core vector in a fixed `Spin(9)` isotype, its orbit lies in a finite-dimensional representation span; restriction is a well-defined `K_u`-intertwiner there. Orthogonal changes in the other colors have unit Jacobian; no `u` derivative is taken for transverse gradients. Core-level argument has been strengthened; passage to the full closed domain still needs the closed-form core property.
- The sixteen-dimensional oscillator `-¼Δ_z+r²|z|²` has energies `r(n+8)`; exclusion of levels `n≤m` then gives `r(m+9)`, **conditional on** the branching/slice bounds.
- Standard analytic machinery plausibly carries exact core-level form covariance to form closure and isotypic Hamiltonian reduction *if* the full original all-spinor global covariance really holds on the exact gauge smooth core.
- **No mathematical counterexample found in these audits**. None amounts to independent end-to-end certification of the claimed infinitely many positive eigenvalues; neither is the manuscript falsified.

### Immediate **scientific** next task (already chosen by predecessor and in user's screenshot)

**Adversarially audit the full quadratic-form expansion (`lem:form`, original source lines 236–325) and the infinite-dimensional high-weight physical sector construction (`lem:large-sectors`, lines 731–803).** These are the two remaining particularly decisive bridges from local source algebra and representation tests to the positive-eigenvalue claim. Suggested bounded route:

1. Starting from the **literal original** 16 operators
   `Q_α=-i γ^i_{αβ} θ^a_β ∂_{ia} + ½ f_{abc} x_i^b x_j^c γ^{ij}_{αβ} θ^a_β`,
   with `f_{abc}=√2 ε_{abc}` and `{θ,θ}=δ`, independently derive `q=(1/16)∑‖Q_αψ‖²`. Check kinetic coefficient `½‖∇ψ‖²`, quartic `V=∑_{a<b}|x^a∧x^b|²`, fermionic `B=(i/2)f_{abc}x_i^a γ^i_{βδ}θ^b_βθ^c_δ`, all signs, anti/symmetries, and original domain. **Try to falsify with a small explicit coefficient counterexample** before merely explaining the paper's algebra. The paper claims `‖B(x)‖≤C|x|`.
2. Independently stress the gauge-invariant polynomial `P(x)=∑_{a<b}(ζ_aη_b−ζ_bη_a)^2` built using `w₁=e₁+i e₂,\ w₂=e₃+i e₄`. Check nonzero highest-weight `2(ε₁+ε₂)`, SU(2) color invariance, `P^k`, spinor invariant vector `v∈𝔽^{SU(2)}`, radial core functions `χ(|x|)P^kv`, their genuine `Spin(9)` type `λ=(2k+μ₁,2k+μ₂,μ₃,μ₄)`, and infinitely many **same-sector** linearly independent compactly supported radial bumps. Be alert to weight sign convention, Fock vacuum gauge action, possible zero polynomial or type contamination.
3. Independently connect to `prop:confinement` (paper lines 615–685): if the fiber level-exclusion estimate holds, averaging all 3 color choices and retaining a kinetic quarter gives coercivity `c_m=(m+9)/3-C>0`. Check Rellich + tails + domain closeness, rather than assuming they follow from a pointwise numerical check.
4. If a decisive error or missing hypothesis is found, report exact source lines, an independently reproducible counterexample, and its effect on the headline theorem; if none, give an uncertainty map distinguishing checked finite algebra, general mathematical proof, source-argued implications, and unformalized bridges.

**Do not prematurely open a new Lean gate for these checks.** A small reproducible *non-Lean* falsification script is legitimate where it can adjudicate a concrete formula; compare against existing scripts and sources before reinventing. Do not bury the real mathematical task in endless sourcing either.

## 5. Non-reconstructible interaction-level policy and human preferences

These user instructions were established conversationally and may not all be obvious from the repo:
- The owner appointed us **Project Lead** and often says “You may proceed accordingly.” That permits bounded research-branch edits, source audits, reproducible tests, and necessary CI when justified; **not** autonomous merging, modifying canonical `main`, altering `etblink/math` or `openai/math`, or opening upstream PRs. An upstream PR is an interesting eventual possibility, **only after explicit authorization**.
- The owner repeatedly cautioned: **“Think before you act. It'll save us precious time waiting for the CI”; “Failure is feedback”; “We are after the truth.”** Translate every red into specific negative knowledge and choose a discriminating next experiment. Avoid repeated #N runs with the same tactics and no predicted information.
- The owner wants meaningful progress reported in plain English: what new mathematics was actually proved, what uncertainty it resolves, and what remains about physical spectra. Do **not** dismiss valid source proofs as “only compiler bookkeeping” and do **not** mislabel them as spectral breakthroughs.
- The owner explicitly insisted we leverage the many papers/scripts in FCP and `etblink/math`, and Mathlib's existing abstract lemmas, **without getting lost in literature searches or deferring action**. The successful method was to separate mathematical coefficient/sum algebra from immense concrete `SourceEnd` expressions, then rejoin source-faithfully.
- The owner prefers **fewer, larger but bounded steps**, preserving accepted `.olean` caches opportunistically. Avoid distracting cache-layer mergers and CI-system redesigns when they do not advance mathematics. But address infrastructural bottlenecks that actively destroy information.
- The owner correctly challenged blanket 65s timeouts: “Trying to get the shortest possible execution time becomes counter productive when every run times [out] before we receive any evidence to assess.” Adopt a **tiered time/diagnostic budget** by proof complexity (65s for small vetted interfaces; an intentionally longer measured run for challenging new composition, e.g. 180s). Increasing time alone is not a substitute for diagnosis; the longer R4D run provided the specific recursion/kernel findings.
- The owner was receptive to asking **Grok** for independent architectural criticism; the predecessor reviewed its advice against actual theorem signatures and verified the accepted R4C1/R4C2 modules personally. External models are useful critics and source-finders, not authorities; their uncompiled snippets do not count as Lean results.
- Treat the screenshot reporting latest `b3f8e2c7` as the owner's desired **continuity checkpoint**. The immediate next priority was explicitly *quadratic-form expansion and infinite-dimensional high-weight sectors*, not renewed R4D Lean traffic. Preserve work already completed by concurrent successors/agents.

## 6. Recommended cold start / non-goals

1. Read this handoff, `handoffs/FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md`, and the *current* `BFSS_SPECTRAL_SOURCE_FIRST_ROTATION_AND_SLICE_AUDIT_0_1_0.md`; verify live HEAD and draft PR base.
2. Obtain the pinned manuscript from `etblink/math`. Inspect its actual lines 236–325 and 731–803, plus dependent `lem:rotations` and `prop:confinement`; use finite explicit checks when they could falsify a sign/normalization/weight claim.
3. Produce a **source-bound, adversarial mathematical audit**, cite original equations and specific source lines, and distinguish found errors from unverified assumptions. Commit a carefully scoped research-only record if useful.
4. Do **not** change FCP main or math repos; do not re-run old monolithic fixed-color CI; do not conflate a green partial source identity, a source-level plausibility argument, and a theorem about positive energy eigenstates.

> **Predecessor-to-successor message (chat-only intent):** The most costly mistake would be to spend another hundred gate numbers assembling already certified finite sums while the headline theorem's analytic bridges go unscrutinized. The user cares more about discovering that the manuscript is correct *or* incorrect than about protecting a desired result. Preserve real progress, know when to stop a sterile tactic family, and aim each experiment at an uncertainty a physicist or mathematician would actually care about.
