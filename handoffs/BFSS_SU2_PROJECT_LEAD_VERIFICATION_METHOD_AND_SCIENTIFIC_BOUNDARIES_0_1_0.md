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
