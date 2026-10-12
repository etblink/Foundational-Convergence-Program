# BFSS Project Lead verification method: structure, specialization, discharge, composition

**Version:** 0.1.0 · **Recorded:** 2026-10-11 America/Los_Angeles · **Status:** durable methodology and negative-knowledge instruction, NOT a mathematical theorem.

**Scope:** `etblink/Foundational-Convergence-Program` BFSS SU(2) research on `research/openai-math-su2-s3l-combined-rotation`, draft PR #25. This file supplements—not replaces—`handoffs/BFSS_SU2_S3L_K2C_GATES_1_TO_10_NEGATIVE_KNOWLEDGE_AND_RESEARCH_REDIRECT_0_1_0.md`. Do not modify canonical `main`, merge staged BFSS PRs, or contact upstream without owner authorization.

## Governing insight: the proof architecture controls tractability

**The order in which a formal verifier encounters mathematical complexity can decide whether the actual theorem can be kernel-qualified within available resources.**

A successful architecture is:

1. **Structure:** First prove general algebra on the genuine source operator *type*, with its complicated physical implementations hidden but not replaced. Prefer reusable kernel-checked identities such as noncommutative composition Leibniz and exact finite-sum/weighted-sum transport.
2. **Specialization:** Instantiate the general statement on the **original source-defined operators** (here the genuine paired SU(2) BFSS 48-Majorana fermion action, genuine plane generator, original position multipliers, `SmoothCore 2`), leaving any source hypotheses **visible**.
3. **Physical discharge:** Discharge each hypothesis with an independently qualified source-level theorem, never by assertion, accidental typeclass instance, unauthorized extra axiom, toy representation, or a silently weakened statement.
4. **Composition:** Join accepted theorems using sealed compiled declarations, preserving the exact `-i`, structure constants, gammaTwo coefficients, signs, finite index domains, ordering, and physical restrictions. Separate the *last* literal-to-named definition interface from source-level science when Lean conversion becomes disproportionately expensive.

Each arrow is an **explicit Lean proof obligation**, not a license to assume a result. No general algebra theorem with an undischarged physical premise qualifies an unconditional BFSS claim.

## Observed evidence: what actually worked

- K1: qualified real source-level ordered position-pair commutator, including the original `i ≠ j` plane premise.
- K2A: qualified original paired fermionAction response from the genuine 48-Majorana Fock sector.
- K2C1: qualified abstract `SourceEnd` Leibniz by `noncomm_ring`; K2C2's literal direct bridge failed repeatedly, not because the algebra was shown false.
- **K2D1 GREEN:** `sourceCombined_comm_cubicFactor_of_fermionResponse` proved the source-parametric cubic-factor law with `M : AlgebraData 2`, `K : FockEnd`, and visible response hypothesis `hF`. [run #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38192360500).
- **K2D2 GREEN:** specialized the compiled parametric result to the **actual paired 48-Majorana generator**, still with the exact K2A hypothesis **explicit**. Initial attempt red only due to missing `open FCP.BFSSSU2PhysicalDomainS3D`; correction made the same theorem pass. [run #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38193619949).
- **K2D3 GREEN:** discharged `hF` using qualified K2A, producing the **unconditional literal original ordered cubic-factor covariance**. [run #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38194223555).
- **Named K2B remains RED:** separately named `pairedOriginalCubicMonomial` bridge used the already-qualified K2D3 theorem but `simpa only [pairedOriginalCubicMonomial] using h` exceeded `maxRecDepth`. No reason to reprove the complex Fock algebra simply to reconcile a new alias. [run #5](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38195024991).
- **K4, K6C:** separately qualified the genuine original source cubic-charge sixfold monomial definition/coefficients and exact gammaTwo/free-spinor coefficient contraction. **They do not by themselves prove the commutator transport or whole cubic-charge covariance.**
- **Sixfold #1 RED:** generic source sixfold commutator was attempted with five ordinary-sum rewrites and one weighted-sum rewrite in a single theorem; timed out at 65 seconds (exit 124), without a Lean error. [run #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38195732144).
- **Sixfold #2 partial GREEN, overall RED:** K2E1A's two compact general source sum lemmas compiled, with accepted axiom audit (`K2E1A_QUALIFIED`). K2E1B stopped at a **parser** error `unexpected token 'λ'; expected '}'` in its generic type binders (and an ensuing unknown-constant diagnostic). **K2E1B and full E1 not qualified.** [run #2](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38196665838). The bounded lexical fix substitutes ordinary usable binder `ξ` for reserved `λ` throughout K2E1B, without changing the theorem or increasing resources. That fix is not proven until the next exact pinned CI run.

## Sixfold #3: accepted E1A/E1B and isolated whnf failure

[Gate #3](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38197480767), SHA `d881a12f4e91d412ef2a84244a9c11b0f34573eb`, **RED**. All qualified K2D1–D3 passed; **E1A and E1B both compiled to .olean and passed allowed-axiom audits**. This resolved Gate #2's reserved `λ` parser issue with binder `ξ`. The old sixfold E1 theorem's proof constructed its typed `hFour` and emitted `K2E1_STAGE_A_FOUR_SUM_PARAMETRIC_RESPONSE`, then failed the deterministic `whnf` heartbeat budget (200000), at source declaration line 34:0. Since the trace came before the final `exact sourceComm_two_unweighted_sums_of`, it does **not** establish whether the final proof could close, nor give an exact internal expression. Treat `#print axioms` after that failure as **nonqualifying**, whatever it displays.

**Decision:** Keep E1A/E1B as accepted, leave original-index E1 theorem **UNQUALIFIED and unchanged**, and perform only one discriminating generic-sixfold trial `K2E1C` with **six abstract finite index types**, using already accepted E1A/E1B and with no intermediate concrete `hFour` declaration. If this also fails at `whnf`, stop the nested sixfold-expansion architecture rather than repeat variations or raise resource limits; investigate an alternative single-index/product-type interface only if a concrete physical discharge strategy is clear. A green generic E1C qualifies **only abstract sum algebra**, not the original K4/K6C cubic-charge covariance.

## Sixfold #4: generic six-index theorem accepted; next exact index specialization

[Sixfold #4](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38198284569), head `a0c2033b4267141ee074568e5492238f3ea37883`, **GREEN**. Accepted K2D1–D3, E1A and E1B requalified. Newly accepted `FCP.BFSSSU2PhysicalDomainS3L5K2E1C.sourceComm_sixfold_generic_of` compiled to `.olean` with **only** `propext, Classical.choice, Quot.sound` axioms. It transports an arbitrary scalar-weighted sixfold commutator on the REAL BFSS `SourceEnd`, while **all six finite index types remain abstract and the pointwise commutator remains a visible hypothesis**. This does NOT prove original cubic-source charge covariance.

**Causal learning:** E1A/E1B/E1C succeeded after structural parameterization and independently sealed composition, while original-index E1 #3 hit deterministic `whnf` heartbeat. The exact culprit could involve the old proof structure, the original concrete index-type elaboration, or both. Do NOT overclaim that index types alone caused the error.

**New discriminating target:** E1D contains the literal original six index types with still-abstract coefficient and source-operator families. The proof attempts only `exact sourceComm_sixfold_generic_of G c T R h` with no intermediate `hFour`, distinguishing the cost of specializing an accepted sixfold theorem from reconstructing sixfold algebra. One bounded Lean compilation; if `whnf` still fails, do not repeat variants of direct literal sixfold specialization. Next consider a separately justified product-index representation with an explicit theorem reducing to the original K4 six nested sums; never substitute a different physical source or hide any missing bridge.

## Sixfold #5: original index types qualified; source operator specialization next

[**Sixfold Commutator #5**](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38199016121), SHA `2b6c107c79eb09dcf395ee8cf4f54ad67ae826d0`, **GREEN**. Accepted K2D1–D3, E1A, E1B, and E1C all passed again. New `FCP.BFSSSU2PhysicalDomainS3L5K2E1D.sourceComm_originalSixfoldIndices_of` compiled into a .olean with axiom set only `propext`, `Classical.choice`, `Quot.sound`. It states commutator transport through the **literal six BFSS index types** with coefficients `c`, operator family `T`, response `R`, and their pointwise commutator `h` still explicit. Not yet actual cubic operator specialization or full cubic charge.

**Planned bounded staged operator specialization:** E2A substitutes the original 48-Majorana plane source generator and **literal** original ordered `fermionAction.comp (position.comp position)` factor and literal K2D3 response throughout the sixfold operator statement, **with visible pointwise h** and arbitrary coefficient c; E2B separately discharges h from already-qualified unconditional K2D3 for all original indices. Do **not** present E2A as unconditional source covariance. Even E2B green would establish weighted *operator-response* sum covariance for **arbitrary** scalar weights, **not** full charge covariance until the original `1/2 * structureConstant * gammaTwo` weight, K4 charge identity, and K6C coefficient contraction are separately discharged. No extra axioms, operator substitutions, different index families, or resource escalation.

K2D1–D3 and E1A–D remain preserved. Older sixfold CI is now manual-only; a dedicated new E2 workflow retains exact pin/cache checks and individual .olean + axiom qualification. Successor: if E2A/E2B fails, inspect the first exact diagnostic and avoid old K2B name bridge/K2C2 direct tactics.

## Original cubic sixfold operator #1 — negative knowledge and exact repair

[Original Cubic Sixfold Operator #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38199787332) at SHA `d33dd3d5f685c953701c8e51177ba1129576bec0` was RED only at E2A. All pinned cache, accepted K2D1–D3 and E1A–D source modules compiled and passed axiom audits, including `S3L5K2E1D_ORIGINAL_BFSS_SIX_INDEX_TYPES_PASS`. The E2A file had six first errors `Unknown identifier pairedAlgebraData.fermionAction` at lines 42, 44, 48, 57, 62 and 70. Unlike already-qualified K2D3 and K2D2, E2A and E2B omitted `open FCP.BFSSSU2GaugeG1A`, needed to resolve the physical pairedAlgebraData source expression with its fermionAction. E2A also reported `whnf` heartbeat (200000) at the final `exact sourceComm_originalSixfoldIndices_of`, but this happened *after source name resolution failed*, so the record does not isolate a valid original BFSS theorem conversion bottleneck. A final unknown declaration arose after E2A was rejected. E2B was never compiled. **Do not classify this red as disproof of sixfold physics or E1D.**

**Repair decision:** Add only the missing `open FCP.BFSSSU2GaugeG1A` to E2A and E2B, leaving exact original source operators, six indices, coefficient parameter `c`, pointwise h, theorem statement/proof bodies, original generator, pinned dependencies and strict axiom rules untouched. First independent requalification is needed to determine whether a real whnf issue remains. Stop and inspect first diagnostic before additional refactoring. E2A conditional and E2B unconditional are both UNQUALIFIED until exact successful Lean compilation and axiom audit.

## Failure taxonomy: a red gate is not a unit of mathematical information

Before editing source or launching a follow-up:

| Observation | Interpretation | Approved next move |
|---|---|---|
| Missing identifier / parser error / wrong namespace | Syntax or source-import problem | Repair exact identifier, preserve theorem and proof, recheck once |
| Wrong Lean generated `irreducible_def` wrapper | Source-definition equation mismatch | Use generated `*_def` equality; do not assume ordinary `unfold` leaves the original concrete expression |
| `maximum recursion depth` at final `exact` or `simpa` | Potential elaboration/conversion explosion; not physical contradiction | Inspect precise boundary, split proof before original-source expansion; stop repeated variants |
| Exit code 124 with no Lean error/checkpoint | Bounded compilation timed out; precise failing tactic unknown | Stage and isolate with smaller, independently compiled statements; do not fabricate a more exact root cause |
| Missing pinned cache due to PR base scoping | Infrastructure failure before theorem elaboration | Fail closed, retain exact pins, use previously verified cache-visible qualification route; do not broaden keys |
| Compiler returned `sorryAx` after a red theorem | An unproved declaration is not accepted | Disqualify; require successful `.olean`, exact theorem-name and allowed-axiom checks |
| Green generic or conditional lemma | Only stated implication/transport qualified | Identify and discharge concrete physical premise and final source bridge in new independently checked stages |

**A red is valuable when it eliminates an alternative or locates a smaller error.** Red gates that only restate a known elaborator/timeout limit should not proliferate. No automatic return to direct K2C2 Gate #11 etc. The known-red K2B and K2C workflows were made `workflow_dispatch` only, to avoid pointless PR-triggered replays.

## Research prioritization: scientific uncertainty resolved per unit of effort

- Prioritize the next theorem that changes our *mathematical knowledge*, not simply the next unqualified declaration or the highest total count of green CI runs.
- A naming/definition-equivalence bridge may be expensive despite adding little new mathematics. Keep it open and correctly labeled; if it is not on the indispensable source-dependency path, try a literal-source theorem and the already-qualified coefficient transport instead. **Never discard an actual indispensable source-equality obligation.**
- In the active sixfold route, qualify generic one-/two-/four-/six-sum transport in separate proof units; then specialize its **explicit pointwise commutator premise** using K2D3; preserve original `originalCubicSourceMonomial`, `sourceCubicCharge` and all coefficients; finally connect to independently qualified K4 and K6C. The generic sixfold lemma, even if green, does **not** prove cubic-source covariance by itself.
- Use compiled accepted `.olean` files and source SHA/pin verification opportunistically. Favor targeted reusable cache layers when the marginal CI benefit exceeds extra cache-maintenance complexity. Never certify acceptance from cache files whose exact producing source or pins are unverified.
- Preserve failures and successful causal workarounds as explicit handoffs. A successor must not rediscover ten nearly identical attempts merely because only the winning proof is visible in repository history.

## Scientific truth boundary

These successes are genuine source-operator identities, not trivial compiler bookkeeping. However, they are *not* evidence for an unproved full BFSS supercharge/Hamiltonian symmetry, its domains and self-adjointness, a positive physical spectral gap, or the target manuscript's eigenvalue claims.

Every report must distinguish (a) algebraic/source-level identity [U] or definition [D], (b) conditional identity with explicit hypotheses, (c) Lean-unqualified candidate, (d) full BFSS physical/Hamiltonian/spectrum theorem. Do not promote one class into another based on how many green CI jobs exist.

**Project Lead rule to successors:** *Separate structure, specialization, physical discharge, and composition. Keep every interface explicit. When a boundary repeatedly fails, ask whether new mathematics is missing or whether an already-proved identity is being re-expressed at high compiler cost. Optimize for scientific uncertainty resolved per unit of effort, and preserve negative knowledge as carefully as positive results.*

**Pinned environment:** Lean 4.34.1, `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Continue fail-closed exact source checks and allowed axiom subset `{propext, Classical.choice, Quot.sound}`. This methodology document is not a scientific acceptance certificate.
