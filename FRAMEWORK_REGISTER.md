# FCP Framework Register

## Purpose

This register identifies frameworks eligible for future comparison and tracks research status only. **It contains no framework-level numerical score.**

## Status vocabulary

- `ADMITTED_NOT_AUDITED`
- `SOURCE_INTAKE_OPEN`
- `SOURCE_BOUND_READY`
- `PAIRWISE_COMPARISON_COMPLETE`
- `SUPERSEDED_BY_FRAMEWORK_SPLIT`
- `DEFERRED`
- `REMOVED_WITH_REASON`

A framework may participate in multiple pairwise or multi-framework comparisons. `PAIRWISE_COMPARISON_COMPLETE` means only that at least one specifically identified comparison is complete; it does not mean the framework is globally or finally audited.

`SUPERSEDED_BY_FRAMEWORK_SPLIT` preserves a historical umbrella ID while preventing it from being used as a future scientific competitor after a principled subdivision.

## Framework set

| Framework ID | Working name | Role | Status | Latest bounded scientific status |
|---|---|---|---|---|
| `FW-NULL-GRQFTSM` | GR + QFT + Standard Model, no deeper ontology assumed | first-class null competitor | `PAIRWISE_COMPARISON_COMPLETE` | **FCP-3 comparison with Reduced NFC and FCP-5 AQFT reformulation/extension control complete; empirical strength remains scoped to tested component theories; no overall winner** |
| `FW-NFC-RED` | Reduced NFC | reduced comparative object only | `PAIRWISE_COMPARISON_COMPLETE` | **FCP-6: second controlled comparison complete; after AQFT subtraction, no strong/moderate NFC–AQFT convergence; Interface Sufficiency and Globalization retained as discovery questions, Realization/Dynamics as burden checks** |
| `FW-OAQ` | Operational / algebraic quantum approaches | historical umbrella | `SUPERSEDED_BY_FRAMEWORK_SPLIT` | **FCP-4: scientifically heterogeneous; replaced for future comparison by `FW-AQFT`, `FW-GPTOPT`, and `FW-CQM`** |
| `FW-AQFT` | Algebraic / locally covariant quantum field theory | source-bound comparator | `PAIRWISE_COMPARISON_COMPLETE` | **FCP-6: compared with Reduced NFC only after FCP-5 reformulation subtraction; no strong/moderate convergence found; AQFT-X residue remains useful for other independent comparisons** |
| `FW-GPTOPT` | Generalized probabilistic / operational-probabilistic theories | source-bound comparator family | `SOURCE_BOUND_READY` | **FCP-4 source intake complete; recommended next target for its own K1–K10 decomposition and null/reformulation control before any NFC comparison** |
| `FW-CQM` | Categorical quantum mechanics / quantum process theories | source-bound comparator | `SOURCE_BOUND_READY` | **FCP-4 source intake complete; narrower than `FW-CAT`; no cross-framework comparison yet** |
| `FW-CAUSAL` | Causal-set / order-theoretic approaches | comparator family | `ADMITTED_NOT_AUDITED` | **NONE** |
| `FW-LOOP` | Loop / spin-network / spinfoam approaches | comparator family | `ADMITTED_NOT_AUDITED` | **NONE** |
| `FW-TENSOR` | Tensor-network / information-theoretic approaches | comparator family | `ADMITTED_NOT_AUDITED` | **NONE** |
| `FW-AS` | Asymptotic safety | comparator family | `ADMITTED_NOT_AUDITED` | **NONE** |
| `FW-STRING` | String-theoretic / holographic approaches | comparator family | `ADMITTED_NOT_AUDITED` | **NONE** |
| `FW-CAT` | Broader categorical / process-theoretic / topos / related structural approaches | comparator family pending subdivision/source intake | `ADMITTED_NOT_AUDITED` | **FCP-4 explicitly leaves this broad family distinct from source-bound `FW-CQM`** |

## FCP-1 null-baseline state

`FW-NULL-GRQFTSM` completed a bounded source intake and ten-layer baseline audit under `FCP-1`.

Controlling document:

`frameworks/null_gr_qft_sm/FCP1_NULL_COMPETITOR_BASELINE_0_1_0.md`

FCP-1 established a high-authority source spine and separated assumptions, dynamics, observables, empirical successes, and open frontiers. It assigned no cross-framework score.

## FCP-2 structural-reference state

FCP-2 froze before first competitor exposure:

- `FCP_COMPARISON_KEYS_0_1_0`;
- `FCP_EQUIVALENCE_AND_CONVERGENCE_RULES_0_1_0`;
- null reference matrix `FCP2_NULL_STRUCTURAL_DECOMPOSITION_0_1_0.md`.

K1–K10, M1–M3, E1–E5, and convergence-credit rules remain controlling for later comparisons unless superseded through the explicit governance-revision procedure.

## FCP-3 first cross-framework state

FCP-3 source-bound `FW-NFC-RED` from the pre-existing noncanonical reduction continuity record and compared it against `FW-NULL-GRQFTSM` under the frozen FCP-2 coordinates.

FCP-3 result at current source scope:

- strong convergence candidates: `0`;
- moderate convergence candidates: `0`;
- weak/generic correspondences: `4`;
- functional analogies only: `3`;
- no-correspondence keys: `3`;
- material divergence entries: `9`;
- key-extension candidates: `0`.

Bounded verdict:

> **NO NONTRIVIAL NFC–NULL CONVERGENCE FOUND AT CURRENT SOURCE SCOPE.**

## FCP-4 operational/algebraic framework state

FCP-4 defines the framework-separation criterion before final taxonomy:

> **Separate frameworks when their primitive commitments, allowed model class, physical scope, or empirical burden differ materially under the FCP keys.**

Applying that criterion, `FW-OAQ` is `SUPERSEDED_BY_FRAMEWORK_SPLIT`, and FCP-4 source-binds `FW-AQFT`, `FW-GPTOPT`, and `FW-CQM` as distinct comparator entries. `FW-CAT` remains broader and separately unbound.

FCP-4 source-binds zero independent framework-level empirical discriminators for `FW-AQFT`, `FW-GPTOPT`, or `FW-CQM`. Concrete QM/QFT model success is treated as empirical inheritance unless a framework-specific prediction is independently established.

## FCP-5 AQFT/null reformulation-extension state

FCP-5 compares only `FW-AQFT` with the source-bound QFT/SM sector of `FW-NULL-GRQFTSM` under the frozen FCP-2 coordinates.

Primary K-key descriptors:

- reformulation: `2` (`K1`, `K9`);
- structural refinement: `3` (`K2`, `K4`, `K6`);
- model-class extension: `3` (`K3`, `K7`, `K8`);
- physical extension: `1` (`K5`);
- empirically distinct: `0`;
- open: `1` (`K10`).

Controlling verdict:

> **AQFT IS PRIMARILY A STRUCTURAL REFORMULATION/SHARPENING OF QFT AT CORE SCOPE, WITH SOURCE-QUALIFIED LCQFT/pAQFT MODEL-CLASS EXTENSIONS AND A LOCALIZED PHYSICAL MEASUREMENT EXTENSION, BUT NO INDEPENDENT FRAMEWORK-LEVEL EMPIRICAL DISCRIMINATOR AT CURRENT SOURCE SCOPE.**

Expected agreement between ordinary QFT and core AQFT is `REFORMULATION_RELATION`, not independent foundational convergence.

## FCP-6 Reduced-NFC/AQFT state

FCP-6 freezes an explicit AQFT provenance subtraction before comparison:

- `AQFT-R` reformulation;
- `AQFT-G` generic mathematics;
- `AQFT-A` supplied assumptions;
- `AQFT-I` empirical inheritance;
- `AQFT-X` additional source-qualified AQFT residue.

Only `AQFT-X` is eligible for AQFT-specific moderate/strong convergence credit.

FCP-6 result:

- strong convergence candidates: `0`;
- moderate convergence candidates: `0`;
- weak/generic correspondences: `3` (`K2`, `K5`, `K8`);
- functional analogies: `4` (`K1`, `K3`, `K6`, `K7`);
- no-correspondence keys: `3` (`K4`, `K9`, `K10`);
- material divergences: `8`;
- key-level apparent matches eliminated/downgraded by subtraction: `7`;
- key-extension candidates: `0`.

Bounded verdict:

> **NO NONTRIVIAL NFC–AQFT CONVERGENCE FOUND AFTER AQFT SUBTRACTION AT CURRENT SOURCE SCOPE.**

Specific negative controls:

- NFC observational indistinguishability is not AQFT physical/representation equivalence;
- NFC interface locality does not map to Lorentzian AQFT causality without a missing physical bridge;
- the bounded AQFT corpus supplies no theorem with the same logical role as Reduced-NFC Finite Interface Sufficiency;
- AQFT's natural-state obstruction is not the same obstruction as Reduced-NFC's generic globalization burden;
- no Reduced-NFC counterpart to the localized AQFT system–probe measurement architecture is source-bound;
- no pairwise empirical discriminator is identified.

Interface Sufficiency and Globalization remain discovery questions. Realization and Dynamics remain mandatory burden checks. Congruence/Viability remain useful generic controls.

## Admission rule

Admission means only that a framework is sufficiently relevant to preserve a comparison slot. Framework families may later need subdivision before source-bound analysis; subdivision must happen before scientific scoring, not after seeing a favorable result.

## No inherited credit

Reduced NFC receives no special status from having motivated the FCP. Established physics receives empirical credit only for evidence actually supporting it and no automatic credit for deeper ontological claims it does not make. Reformulations receive no independent empirical credit merely for reproducing an established model's predictions. Open problems in one framework provide no automatic credit to another.