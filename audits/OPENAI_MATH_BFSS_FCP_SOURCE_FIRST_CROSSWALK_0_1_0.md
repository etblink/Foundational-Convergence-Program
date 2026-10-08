# BFSS formalization — FCP source-first crosswalk 0.1.0

**Date:** 2026-10-07 (US Pacific)
**Disposition:** `FCP_INTERNAL_SOURCE_REUSE_RECONCILED__NO_NEW_PROOF_GATE`
**Scope:** Supplement the preliminary Stage-F1 feasibility study. Do not amend any frozen FCP-24 corpus, adjudication, claims ledger, or FCP `main`. Research branch `research/openai-math-su2-concrete-potential` only.

## Motivation

The owner reminded Project Lead that FCP already contains a large source-bound scientific literature, review and artifact-provenance infrastructure. The prior `OPENAI_MATH_BFSS_FERMION24_FOCK_FEASIBILITY_0_1_0.md` searched OpenAI's pinned Lean code extensively, but failed to name relevant **FCP-held source and review records**. Future BFSS planning should start with both sets, maintaining clear separation among primary scientific sources, independent reviews, finite computational certificates, Lean kernel certificates, and historical framework taxonomies.

## Relevant FCP-held assets (main and current research branch)

| Asset | Precise location | Appropriate contribution | Does NOT supply |
|---|---|---|---|
| Source register | `SOURCE_REGISTER.md`, including `SRC-FCP24-NONPERT-BFSS-1997` and `SRC-OPENAI-MATH-F270B-BFSS-2026` | Authoritative FCP source identities and scientific-scope binding | A formal CAR/Fock constructor |
| Frozen FCP-24 literature intake | `frameworks/string/FCP24_STRING_SOURCE_INTAKE_0_1_0.md` | Original BFSS source setting, source roles, exclusions, frozen corpus | OpenAI's new 2026 theorem as a retroactive FCP-24 source |
| Frozen FCP-24 comparison framework | `frameworks/string/FCP24_STRING_K1_K10_BASELINE_0_1_0.md` | Separation of model-level matrix dynamics from a universal String/M formulation | Representation-theoretic or operator-theoretic proof |
| Family 270-B source-delta adjudication | `audits/OPENAI_MATH_FAMILY270B_BFSS_T6_SOURCE_DELTA_ADJUDICATION_0_1_0.md` | Independently adjudicated N=2/relative-operator claim, normalization, historical BFSS quotation, technical identity audits | Formal end-to-end spectral certificate |
| Family 270-B Project Lead acceptance | `audits/OPENAI_MATH_FAMILY270B_BFSS_T6_SOURCE_DELTA_PROJECT_LEAD_ACCEPTANCE_0_1_0.md` | Authoritative accepted effect: `T6 CONFIRMED`, model-level strengthening only, FCP K1–K10 unchanged | New Stage-F1 kernel verification |
| Preserved external mathematical review | `audits/external/GROK_OPENAI_MATH_FAMILY270B_INDEPENDENT_VERIFICATION_REPORT_2026_10_07.md` | Independent argument stress review, analysis of form/operator correspondence | Built gamma/theta/gauge instance; report itself states Lean was unavailable |
| FCP finite gamma cross-check | `audits/external/OPENAI_MATH_FAMILY270B_REAL_SYMMETRIC_GAMMA_CHECK_2026_10_07.py` | Exact integer real-symmetric 16x16 Clifford, traces, bivector contractions; a complementary check of manuscript normalization | The 48 Majorana CAR operators, Fock-space irreducibility, spectral theorem |
| FCP external Grok identity script | `audits/external/GROK_OPENAI_MATH_FAMILY270B_IDENTITY_CHECKS_2026_10_07.py` | Independent computational cross-check with known gamma-convention qualification | Authority to skip exact-real-gamma cross-check or claims of full formalization |
| Current BFSS accepted gamma theorem (research branch) | `audits/OPENAI_MATH_BFSS_GAMMA9_GATE_31_FORMAL_ACCEPTANCE_0_1_0.md` and `experiments/openai-math-su2-concrete-potential/SU2RealGammaProbe.lean` | Actual kernel-checked 9 real gamma matrices; CI #31 PASS, standard Lean axioms only | The distinct 48 Majorana/Fock/gauge obligations |
| Current Fock feasibility memo (research branch) | `audits/OPENAI_MATH_BFSS_FERMION24_FOCK_FEASIBILITY_0_1_0.md` | Pin-aligned plan to reuse existing upstream Fock and adjoint code | A completed F1 proof |

The FCP source register's other framework corpora can aid context or supply mathematical analogies, but are **not** automatically applicable to the pinned BFSS (\theta\) representation. Do not mistake registered sources or secondary formal-sounding reports for a reusable proof of the exact target.

## Complementary upstream code source inventory (not part of FCP main)

OpenAI pinned `openai/math@adc7f1241b42e322a6451854ab7e4b4c146bf78a` includes:
- `lean/OAI/MathematicalPhysics/BFSS/Core.lean`: exact `AlgebraData 2` 48-theta requirements and `Fermion 2 = EuclideanSpace ℂ (Fin (2^24))`.
- `lean/OAI/Analysis/Laughlin/Operators/CAR.lean`: `create`/`annihilate` as algebraic `Module.End` operators and already-proved CAR.
- `lean/OAI/Analysis/Laughlin/Fock/Adjoint.lean`, `Inner.lean`, `SpectralDistance.lean`: adjoint and occupation-norm/Euclidean coordinate results.
- `lean/OAI/MathematicalPhysics/ContinuumCoulomb/ManyBody/FockNorm.lean`: continuous `fockOperator`, inner-product and adjoint results; likely critical for the analytic map type.
- `lean/OAI/Analysis/Laughlin/Fock/SpinRepresentation.lean`: unitary-action construction precedent; not the BFSS gauge action.

## Consequence for next milestone

**Source-first rule, adopted prospectively for this BFSS research stream:**

1. Before any new formalization gate, consult the exact FCP source-register entries, frozen source-scope ledgers, prior technical audits/scripts, and the pinned upstream theorem/API files.
2. Search within those resources for actual reusable lemmas or source constraints; distinguish intellectual precedent from available proof code.
3. Maintain a source/claim correspondence table stating whether each fact is **scientifically source-bound**, **computationally tested**, **kernel-proven**, **conditionally stated**, or **not yet established**.
4. Reuse FCP or upstream code only when its proof assumptions, index universe, scalar field, operator norm/Hilbert type, and normalization match the required BFSS field.
5. Keep the FCP program-level accepted `T6=CONFIRMED`, `T2=NO`, `FCP24_STRING_002_EFFECT=STRENGTHEN`, K1–K10 unchanged separate from this experimental *formal-proof progress*. A Lean witness for gamma does not reopen the historical taxonomy.
6. Do not automatically trigger new CI merely because the source inventory is complete.

**F1 remains the recommended bounded next technical step**, contingent on a pinned source/API plan for (a) 24-mode occupation-index transport, (b) one normalized Majorana pair as `ContinuousLinearMap` on `Fermion 2`, (c) adjointness and CAR. Existing FCP-held scientific sources affect interpretation and proof priorities but currently do not replace the operator-implementation burden.

This note acknowledges a Project Lead omission and closes it at planning level, without claiming the FCP source library has been exhaustively searched or that hidden relevant materials cannot exist.

**Operating maxim:** Protect the quality threshold, not the opportunity.
