# FCP BFSS — Project Lead procedural operating standard and research succession

**Prepared:** 2026-10-22 (America/Los_Angeles).  
**Scope:** `etblink/Foundational-Convergence-Program`, isolated BFSS SU(2) research work.  
**Disposition:** Durable Project Lead operational handoff and dated state snapshot; **not** a formal Lean acceptance audit, workflow execution, manuscript proof, or change to canonical FCP comparative science.  
**Governing principle:** **Seek truth about reality. Preserve results, not theories.**

> This is a successor-facing operating procedure and a frozen state checkpoint, not a perpetually current source of truth. Reinspect the live branch, exact Git objects, original sources, Actions evidence, caches, and scientific issues before acting. Do not use an outdated handoff to override later accepted work.

## 1. Relationship to existing FCP records

Read [FCP Project Lead — Evergreen Research Guidance](./FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md) for cross-project epistemic and governance rules. That evergreen guide is **not** a CI diary and must not accumulate dated module status. The present handoff operationalizes it for the active BFSS SU(2) track.

Keep the three record types separate:

1. **Evergreen guidance:** general decision principles; changes only when a generalizable rule changes.
2. **Scoped audits/negative-knowledge records:** exact theorem, source, compiler, cache, failing diagnostic, and reproducible correction.
3. **Dated successor handoff:** the current research frontier, immediate next action, review boundaries, and links to authoritative evidence.

The canonical FCP Method 0.2.1 comparison program on `main` is distinct from isolated BFSS formal-verification experiments. Do **not** silently treat a BFSS research-branch theorem as a canonical comparative result or a physical discovery.

## 2. Project Lead mandate: one adaptive research cycle

**Research → Formalize → Verify → Diagnose → Preserve → Adapt → Advance.**

Each serious research cycle should yield a durable improvement: a source-faithful theorem, a necessary bridge, a sharpened scope limitation, a counterexample, an identified missing hypothesis, or a reproducible elimination of an unproductive approach. Green-workflow counts and lines of Lean code are not scientific objectives.

### Step 1 — Reconcile the live state

Inspect the branch HEAD; relevant PR/issue state; the original mathematical source revision; accepted theorem statements and hypotheses; scoped audit records; failed gates; exact qualified `.olean` imports and cache visibility. Separate **historically accepted theorem** from **currently restored compiled dependency**. Assume historical handoff pointers may be stale.

### Step 2 — Choose the highest-information mathematical target

Before coding, write down:
- precise statement and source-defined objects;
- hypotheses already proved versus hypotheses still conditional;
- why the result is a load-bearing scientific bridge;
- success, failure, and counterexample criteria;
- what **would not** follow even if the theorem passed.

Prioritize scientific significance, mathematical readiness, information gain, and bounded execution cost. Do not reduce this to an artificial score or preferentially pick easy green roots.

### Step 3 — Research the mathematics before implementation

Read the primary original source and the strongest applicable qualified lemmas. Examine dimensions, normalizations, signs, index orders, action conventions, and operator domains. Seek a short derivation, a reduction, or a counterexample before creating another gate. If the claim is false or underspecified, state this explicitly rather than hiding the missing premise inside a generic lemma.

### Step 4 — Formalize in the smallest correct modules

Prefer the proven architecture **structure → source-exact specialization → discharge premises → small composition**. For large BFSS finite sums, use named/typed identities and their exact source bridges rather than enormous definitional reductions. Reuse accepted modules and preserve a truly independent definition when an independent realization is the research objective. A theorem assuming the desired generator unitary or gauge covariance does not construct it.

### Step 5 — Preflight and run deliberately controlled strict gates

Before any CI-triggering commit, inspect trigger paths and expected impact; validate source names, namespaces, parameter order, complete import/compiled cache closure, candidate Git blobs, axiom report stems, root names, artifact paths, and process bounds. Freeze original Lean/Mathlib/source revisions. Use one narrowly scoped discriminating gate rather than speculative batches or automatic retries. Reject `sorry`, `admit`, `sorryAx`, unauthorized axioms, unexpected warnings, and unqualified caches. A compiler exit code of zero is **not** the whole acceptance contract.

Do not inadvertently trigger broad workflows. An audit/handoff-only commit should remain separate from exact-path workflow-triggering commits; independently check actual event/path filters, since a comment saying "no CI" is not sufficient evidence.

### Step 6 — Independently adjudicate the result

Read the *first causal diagnostic*, original job log, source declaration, reported axiom dependency set, and saved evidence where applicable. Distinguish:
- **mathematical obstruction:** incompatible premises, falsity, missing domain/assumption;
- **elaboration/normalization defect:** unknown namespace, coercion, definitional conversion, recursion;
- **compute/resource failure:** deterministic heartbeat, wall-clock timeout, SIGTERM with or without instrumentation;
- **infrastructure/provenance failure:** inaccessible cache, missing `.olean`, wrong validator stem, checkout mismatch;
- **valid but weaker theorem:** successful formal statement that does not close the intended physical bridge.

Never call a resource timeout a mathematical counterexample, and never credit an unqualified declaration because another declaration compiled.

### Step 7 — Preserve accepted and negative evidence

For each accepted principal root: exact theorem and all hypotheses, immutable original and candidate blobs, triggering source/workflow commit, toolchain pins, qualified cache, strict axiom report, original run/job/artifact, scope ceiling, and ledger delta. Supporting definitions and lemmas should not be double-counted as principal roots.

For every meaningful red: exact first failure, stage reached, what did *not* execute, whether mathematics was ever typechecked, original diagnostic, failed proof design, the smallest changed hypothesis/design for another attempt, and a stop condition. Preserve negatives after a later green.

### Step 8 — Adapt and move

Choose the next load-bearing uncertainty based on the newest evidence, not a stale plan. Repair trivial elaboration defects minimally; change proof architecture when repeated concrete expansions fail; recover compiled provenance when a theorem is historically green but not importable. Do not blindly extend timeouts, rerun identical failing gates, or spend disproportionate effort on housekeeping. At genuine stopping points, report the bounded result and the open problem.

## 3. Autonomous execution and governance

The Project Lead should independently select bounded problems, inspect sources, develop and diagnose Lean proof candidates, reuse accepted results, prepare scoped verification, and document evidence within the **authorized research scope**, without repeatedly delegating routine technical decisions to the owner.

**Boundaries:** no unilateral merge or modification of `main`; no silent change to original `etblink/math` mathematics, pinned source definitions, or accepted proof blobs; no PR base/status manipulation solely to trigger broad CI; no promotion of branch results into canonical FCP scientific status without explicit governance. Treat CI triggering as an intentional external effect, never an incidental byproduct of documentation.

Call on external mathematical collaborators to independently challenge genuinely hard obstacles; their output is a *candidate* until checked against original source and qualified formal evidence. Favor a rigorous negative finding over a plausible but unverified "solution."

## 4. Outcome-to-action policy

| Outcome | Required response |
|---|---|
| Strict green with scientifically meaningful theorem | Verify independently, formally accept, preserve exact scope and caches, advance frontier |
| Namespace/elaboration red | Repair the first causal issue minimally; new controlled gate |
| Recursion, `whnf`, reduction, or long runtime red | Restructure proof with named interfaces and separate source bridges; no blind resource increases |
| Missing/stale/invisible cache | Recover matching qualified compiled dependency closure; do not re-prove or reject valid historical mathematics |
| Validator or workflow bug | Correct the validation machinery while preserving the mathematical candidate; compiler success alone earns no root |
| Actual mathematical obstruction/counterexample | Preserve witness; narrow or reject claim and revise research direction |
| Repeated reds with no information gain | Stop the failing design; record negative knowledge; change approach |
| Green whose physical interpretation outruns its statement | Accept exact theorem only; keep the missing physical-realization bridge explicitly open |

## 5. Dated live BFSS checkpoint — 2026-10-22

**Repository:** https://github.com/etblink/Foundational-Convergence-Program  
**Isolated active research branch:** `research/openai-math-su2-s1v52-global-lift-scoping-20261019`  
**Observed branch HEAD before this handoff:** `d52dbee194a6abf5960d8e9cd057ec13d9fc4b89`  
**Canonical `main` HEAD observed:** `cf06212a57db0ceffad74bd78280a8a240856a17`  
**Draft PR #25:** https://github.com/etblink/Foundational-Convergence-Program/pull/25 — open/draft/unmerged; note its actual head is `research/openai-math-su2-s3l-combined-rotation`, **not** the isolated M4 research branch.  
**Source-bound issue #28:** https://github.com/etblink/Foundational-Convergence-Program/issues/28 — manuscript/source Hamiltonian identification remains open.

**Immutable mathematics/toolchain baseline:** `etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a`; Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Standard permitted axiom whitelist: `propext`, `Classical.choice`, `Quot.sound`; reject `sorryAx` and extra axioms.

**Formal principal-root accounting before M4F5:** 293, documented by the [M4F4 one-root acceptance audit](../audits/OPENAI_MATH_BFSS_SU2_M4F4_GATE1_EXACT_UNRESTRICTED_CORE_GRAPH_IMAGE_ONE_ROOT_STRICT_ACCEPTANCE_2026_10_22.md). Earlier M4E5 → M4F2 → M4F3 → M4F4 accepted successive exact-source bridges: independent smooth sixteen-charge intertwining, componentwise L² charge-column transport, unrestricted independent graph inclusion, then full raw smooth-core graph image equality.

**Newest strict gate:** [M4F5 Unrestricted Graph Closure Gate #1, run 39859269539](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39859269539), job `120105438610`, was `completed/success` at 2026-10-22 21:46 UTC. Independently inspected the source and workflow. Its two stages passed source-provenance pins, original Lean and Mathlib checks, qualified M4F4 parent cache restore, compilation, strict axiom validators, and cache save:
- `FCPIndependentGraphTransportHomeomorph.lean`, blob `8455a6c42f23b2d08f7945188fe5b8ca9e75ac4b`: genuine 17-component ambient L² homeomorphism induced by accepted fiber unitary;
- `FCPIndependentFullCoreGraphClosure.lean`, blob `a6aacf285206ba79f331bf2c6818fc0b7df1a6e4`: theorem `sourceFullCoreGraph_closure_eq_independent_image_closure`, which identifies the closure of the **unrestricted smooth-core 16-charge graph** with the image of the independent graph closure under the homeomorphism.

**Accounting caution:** this checkpoint records a *strict-gate success*, not a new completed standalone Project Lead acceptance audit. Until that audit is committed, preserve 293 as the **formally recorded** cumulative root count. M4F5's graph-closure theorem should add **one principal root** (prospective 294) if independently formally accepted; the homeomorphism definition is supporting and must not be counted as another principal theorem.

**Scope ceiling:** graph *set closure* does not automatically imply single-valued operator closability; unrestricted smooth-core graph transport does not automatically prove gauge-restricted physical-domain equivalence, dense invariant-domain closure, source/manuscript Hamiltonian equality, self-adjoint operator equivalence, Spin(9) reduction, spectral positivity, or positive eigenvalues. Preserve the exact `hColor`, `hGamma`, and generator-intertwining `hJ` hypotheses until they are discharged in the intended independently constructed model.

## 6. Immediate research decisions

1. **First:** independently complete a dedicated M4F5 acceptance audit with its two exact axiom reports, source/workflow hashes, qualification cache, run/job/artifact evidence and precise theorem scope. Accept at most one new principal root; avoid claiming 294 without the completed audit.
2. **Then:** unblock **M4F1** `FCPIndependentInvariantCharge.lean`. [M4F1 Gate #1](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/39847407712) failed **before Lean** because current cache lacked `SU2BFSSPhysicalDomainD3BFullChargeGaugePreservationProbe.olean`. D3A and D3B were **historically strictly accepted** in [Physical Domain Gate #5](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38015858191) and [Gate #6](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/38016254322); historical acceptance is not the same as current importable cache closure. Follow the [D3A/D3B recovery audit](../audits/OPENAI_MATH_BFSS_SU2_M4F1_D3A_D3B_HISTORICAL_ACCEPTANCE_AND_CACHE_RECOVERY_2026_10_22.md), including G4K9D/G4K10A. Reconstruct a **current pinned, importable** chain and only then rerun the unchanged M4F1 mathematical candidate.
3. **Next:** establish independently defined gauge-invariant smooth-core charge preservation; restricted physical graph and closure transport with correct domains; required operator closability and densely defined form hypotheses; equality of the associated original/manuscript self-adjoint Hamiltonians. Treat each as a separate proof obligation, not an automatic corollary of M4F5.
4. **Afterward:** only with necessary bridging proofs, address genuine Spin(9) action and form/spectral-sector reduction, then the manuscript's positive-eigenvalue assertions.

## 7. Negative knowledge that must survive succession

- [M4E5 final acceptance audit](../audits/OPENAI_MATH_BFSS_SU2_M4E5_FULL_SMOOTH_SIXTEEN_CHARGE_GATE5_ONE_ROOT_STRICT_ACCEPTANCE_2026_10_22.md): multiple failed whole-source reductions/long SIGTERM gates gave way to a roughly ten-second compilation by reusing named kinetic/cubic interfaces and exact source addition identity. **Reuse architecture; never re-expand giant finite sums by reflex.**
- [M4F2 Gate #1](../audits/OPENAI_MATH_BFSS_SU2_M4F2_GATE1_MISSING_MEASURETHEORY_NAMESPACE_RED_2026_10_22.md): `Measure`, `volume`, `Lp` failed because `MeasureTheory` was not opened; downstream `sorryAx` is cascade evidence, not an accepted root.
- [M4F2 Gate #2](../audits/OPENAI_MATH_BFSS_SU2_M4F2_GATE2_POST_COMPILE_WRONG_VALIDATOR_STEM_RED_2026_10_22.md): Lean compiled the intended module, but Python validated a stale filename and failed; **no root was accepted** until corrected Gate #3. Audit all stems, validators, exact declaration names and cache paths when cloning workflows.
- [M4F1 Gate #1](../audits/OPENAI_MATH_BFSS_SU2_M4F1_GATE1_MISSING_D3B_OLEAN_PRECOMPILATION_RED_2026_10_22.md): pre-Lean absent `.olean`, not a counterexample.
- [F17 branch-scoped cache miss](../audits/OPENAI_MATH_BFSS_SU2_S1V52L9E5F17_GATE1_BRANCH_SCOPED_F16_B0_CACHE_MISS_RED_2026_10_21.md): matching cache keys do not imply visibility across branch ancestry; avoid wasting CI on known-inaccessible cache sources.
- Separate "successful compilation," "source fidelity," "strict accepted proof," "physical-realization bridge," and "scientific interpretation" on every milestone. One status must never substitute for another.

## 8. Required Project Lead communication and stopping rule

For a consequential result report **disposition → exact evidence → mathematical content → scope/assumptions → missing bridge → next decision**. Distinguish the formal root ledger from the scientific progress ledger. Use direct original source and Actions links rather than relying on summaries.

Do not manufacture progress when a boundary is genuinely open. If further attempted proof designs produce no distinguishable information, record the stopping point and reroute to a meaningful alternative.

**Standing rule:** *Preserve the question, source definitions, evidence boundary, and negative knowledge. Change strategies freely when evidence demands it; never covertly change the mathematical claim or elevate a formal green into a physical theorem.*
