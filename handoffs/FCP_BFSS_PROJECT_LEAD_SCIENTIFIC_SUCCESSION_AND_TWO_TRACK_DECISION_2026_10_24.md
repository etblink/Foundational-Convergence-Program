# FCP BFSS — Project Lead scientific succession and two-track decision

**Dated:** 2026-10-24. **Repository:** https://github.com/etblink/Foundational-Convergence-Program. **Scope:** isolated relative SU(2) BFSS research; this is a successor-facing synthesis and *not* a new Lean theorem, acceptance audit, or canonical FCP science result.

**Governing principle:** Seek truth about reality. Preserve results, not theories. A rigorous obstruction or counterexample is progress; a green CI result proving an irrelevant or conditional statement is not sufficient.

## 1. Authority and frozen snapshot

- Canonical FCP branch: **main**, observed SHA **cf06212a57db0ceffad74bd78280a8a240856a17**. Do not merge into or change main without independent governance.
- BFSS research branch: **research/openai-math-su2-s1v52-global-lift-scoping-20261019**, read-only inspection baseline **e1ce21767d31cfdcd7c8754fc2730f197f14dd44**. **Always recheck live HEAD** before implementing; this snapshot expires when the branch advances.
- Original mathematics: **etblink/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a**; Lean **4.34.1**; Mathlib **d13f23b723b8a846827a245b89c10fc7d3f11612**.
- Standard strict axiom whitelist: **propext, Classical.choice, Quot.sound**. Disallow sorry, admit, sorryAx, unauthorized axioms, unauthorized warnings and unqualified cached dependencies.
- Draft [PR #25](https://github.com/etblink/Foundational-Convergence-Program/pull/25) belongs to older S3L rotation branches, not the M4F research head. [Issue #28](https://github.com/etblink/Foundational-Convergence-Program/issues/28) remains open but its older body must not override newer strict evidence.
- Authoritative records have distinct roles: [evergreen research guidance](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/handoffs/FCP_PROJECT_LEAD_EVERGREEN_RESEARCH_GUIDANCE_0_1_0.md), [BFSS procedural standard](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/handoffs/FCP_BFSS_PROJECT_LEAD_PROCEDURAL_OPERATING_STANDARD_AND_CURRENT_RESEARCH_HANDOFF_2026_10_22.md), dated strict audits, and this successor decision. Do not retrospectively modify historical reds or pretend a dated handoff is a live CI status.

## 2. Actual scientific question

The pinned October 5, 2026 manuscript proposes infinitely many positive, normalizable energy eigenstates tending to infinity for the relative SU(2) BFSS Hamiltonian. The model uses 27 bosonic real coordinates, 48 real Majorana generators, a complex Fock representation of dimension 2^24, sixteen charges and a gauge-invariant physical Hilbert space. The physical energy is normalized by q(Ψ) = (1/16) ∑α ||Qα Ψ||² and the source Hamiltonian by H = (1/16) T†T on its *natural* domain.

**This is not a proved mass gap for the full model.** Positive point spectrum can coexist with continuous spectrum beginning at zero; sector confinement must not be mistaken for global confinement.

Keep these three layers disjoint:
1. **Formal theorem validity** under exact source, import, axiom and CI qualifications.
2. **Physical-model identification**: genuinely independent representation and closed charge must match the literal original source, with matching hypotheses and domains.
3. **Spectral conclusion**: global Spin(9) representation, reducing form sectors, quantitative confinement, compactness, nonzero infinite sectors and eigenvalue production must all be demonstrated.

## 3. Qualified achievement and open ceiling

The source-specific algebra/Clifford/Fock/Spin(48)/SU(2) gauge and original smooth-supercharge work is extensive. M3J built an independent generator-preserving unitary under Hermitian CAR/irreducibility conditions. M4C3B constructed the physical Hilbert unitary; M4D3 supplied pointwise gauge smooth-core identification; M4E5 proved all sixteen independent smooth-charge intertwinings. Subsequent M4F work moved from smooth-core graph to closed physical graphs.

**M4F8 DE4 Gate #5** ([run 40058344041](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40058344041)) strictly identified the original source-named gauge-restricted 17-slot closed charge graph with the image of the actual independently defined J-free E2 physical operator graph, *under explicit representation-matching hypotheses*. This was one **principal** root; the audit's working cumulative principal total became **309**, not independently exhaustively reconciled.

**M4F9 H1** requalified the original AY–BH physical Hamiltonian ancestry. **H2A/H2B/H2C/H2D1/H2D2A** established genuine physical output Hilbert coordinates, graph, partial charge, natural-domain identification, and continuity/density, as recorded in their gates/audits. **H2D2B Gate #1** ([run 40066841158](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40066841158)) strictly proved the independent true native-Hilbert E2 physical charge has a closed graph; density follows from H2D2A under stated assumptions. **H3A Gate #3** ([run 40068825093](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40068825093)) proved the original AY outputs satisfy physical constraints under the matching assumptions. **H3B1 Gate #1** ([run 40069524528](https://github.com/etblink/Foundational-Convergence-Program/actions/runs/40069524528)) proved five source native-PiLp graph/support results.

**H3B2 is NOT accepted** in the observed snapshot. Gate #1 and Gate #2 both red at deterministic Lean definitional-normalization heartbeats. The first three declarations were individually axiom-clean in Gate #1, but the strict *four-root module* failed and no complete qualifying H3B2 cache was saved. Do not count H3B2 as 4/4 or assume the final source native natural-domain equality.

Even with DE4 and H2D2B, **exact source–independent native Hilbert charge conjugacy and equality of self-adjoint normalized Hamiltonians remain open**. The Spin(9) reducing-sector confinement and infinitely many positive eigenvalues remain further open; no full mass-gap conclusion is supported.

Theorem premises such as **hCAR, hHermitian, hColor, hGamma, hJ** and existence/realization of the intended J may not silently disappear. Distinguish source-specific existence from universal arbitrary representation statements. Also preserve the distinction between ambient FullL2 sixteen-fold products and native physical PiLp 2 outputs; it matters to adjoints.

## 4. New strategic decision: two concurrent research tracks

### Track A — finish the native Hamiltonian bridge (primary short critical path)

**P0 H3B2:** prove actual original AY native physical charge and *exact* natural-domain iff via small, type-stable membership lemmas; do not unfold huge source objects by broad rewrite.

**P1 native charge conjugacy:** with physical-input unitary U and genuine sixteen-output physical Hilbert unitary V, establish BOTH:
- U(D(T_ind)) = D(T_src);
- T_src(Ux) = V(T_ind x) for all x in D(T_ind).

This is a full closed unbounded-operator statement, not smooth-core equality. Use accepted DE4, M4C3B, H2A, H2D2B, H3A/H3B1, and finally H3B2 with exact types and no changed AY operator.

**P2 normalized Hamiltonian identification:** show H_src = U H_ind U⁻¹ and equality of full operator domains, where H = (1/16)T†T. Compare (a) direct adjoint transport with (b) equality of closed nonnegative forms and uniqueness of associated self-adjoint operators. Favor the shortest qualified route, but verify the actual library lemmas and source-domain interfaces before asserting either route works. Transport output V and its adjoint correctly. This milestone does NOT prove spectral positivity.

### Track B — adversarial Spin(9) spectral scrutiny (begin NOW, in parallel)

Do not defer mathematical falsification attempts until Track A is completely formalized. Challenge the branching-to-transverse-oscillator coercivity interface first. Independently check the fermionic representation bound M, all relevant oscillator modes, gauge constraints, uniformity, integral extension and form-domain closure. Separately test whether nonzero infinite-dimensional gauge-physical reducing sectors actually exist. Detailed test protocol: [spectral research mandate](https://github.com/etblink/Foundational-Convergence-Program/blob/research/openai-math-su2-s1v52-global-lift-scoping-20261019/handoffs/FCP_BFSS_SPIN9_SPECTRAL_ADVERSARIAL_RESEARCH_MANDATE_2026_10_24.md).

**Integration condition:** do not promote spectral claims through the independent physical Hamiltonian until the corresponding exact operator identification and each spectral analytic hypothesis are both qualified.

## 5. How to prioritize

Ask **“Which consequential fact is unknown, and what is the least expensive rigorous test that could establish or refute it?”** rather than “Which root could turn green next?” Sequence each cycle: **Research → Formalize → Verify → Diagnose → Preserve → Adapt → Advance**. Every new gate must carry exact target, hypotheses, immutable dependencies, first causal failure classification, acceptance ceiling, information gained, and stop condition.

Maintain a compact load-bearing ledger with four independent fields: **exact theorem/hypotheses; historical strict acceptance; currently importable qualified ancestry; scientific consequence**. Distinguish support roots from principal roots. Reconcile 309 only from immutable audits; it is a working figure, not a freshly recounted invariant.

Successor starting instructions: inspect live HEAD, latest H3B2 workflows/logs/audits, historical strict caches, and manuscript source; then pursue P0 and the independent spectral challenge. Do not trigger CI merely by writing handoff notes. Preserve every past red even when a later gate is green. No main/etblink/math/PR #25 mutation authorized by this handoff.

**Scientific success criterion:** exact mathematics on genuine source-defined objects, with explicit scopes, regardless of whether it confirms or falsifies the manuscript.