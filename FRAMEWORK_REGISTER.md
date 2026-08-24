# FCP Framework Register

## Purpose

This register identifies frameworks eligible for FCP comparison and tracks research status only. **It contains no framework-level numerical score.**

## Status vocabulary

- `ADMITTED_NOT_AUDITED`
- `SOURCE_INTAKE_OPEN`
- `SOURCE_BOUND_READY`
- `PAIRWISE_COMPARISON_COMPLETE`
- `SUPERSEDED_BY_FRAMEWORK_SPLIT`
- `DEFERRED`
- `REMOVED_WITH_REASON`

`PAIRWISE_COMPARISON_COMPLETE` means at least one explicitly identified bounded comparison/control is complete; it does not mean a framework has been globally or finally audited.

## Framework set

| Framework ID | Working name | Role | Status | Latest bounded scientific status |
|---|---|---|---|---|
| `FW-NULL-GRQFTSM` | GR + QFT + Standard Model, no deeper ontology assumed | first-class null competitor | `PAIRWISE_COMPARISON_COMPLETE` | FCP-3 Reduced-NFC comparison, FCP-5 AQFT control and FCP-7 GPTOPT/QM generalization control complete; empirical strength remains scoped to tested component theories |
| `FW-NFC-RED` | Reduced NFC | reduced comparative object only | `PAIRWISE_COMPARISON_COMPLETE` | FCP-6: no strong/moderate NFC–AQFT convergence after subtraction; Interface Sufficiency/Globalization remain discovery questions; Realization/Dynamics remain burden checks |
| `FW-OAQ` | Operational / algebraic quantum approaches | historical umbrella | `SUPERSEDED_BY_FRAMEWORK_SPLIT` | FCP-4 split into `FW-AQFT`, `FW-GPTOPT`, `FW-CQM` |
| `FW-AQFT` | Algebraic / locally covariant quantum field theory | source-bound comparator | `PAIRWISE_COMPARISON_COMPLETE` | FCP-5/6 controls complete; core mostly reformulation/sharpening of QFT plus named AQFT-X extensions; no framework-level empirical discriminator |
| `FW-GPTOPT` | Generalized probabilistic / operational-probabilistic theories | source-bound generalizing meta-framework | `PAIRWISE_COMPARISON_COMPLETE` | **FCP-7: G0–G6 decomposition complete; quantum theory is an embedded special case, not selected by base GPTOPT without additional reconstruction/selection principles; one bounded GPT experimental constraint family added; no framework-level empirical discriminator** |
| `FW-CQM` | Categorical quantum mechanics / quantum process theories | source-bound comparator | `SOURCE_BOUND_READY` | FCP-4 source intake complete; no cross-framework comparison yet |
| `FW-CAUSAL` | Causal-set / order-theoretic approaches | comparator family | `ADMITTED_NOT_AUDITED` | NONE |
| `FW-LOOP` | Loop / spin-network / spinfoam approaches | comparator family | `ADMITTED_NOT_AUDITED` | NONE |
| `FW-TENSOR` | Tensor-network / information-theoretic approaches | comparator family | `ADMITTED_NOT_AUDITED` | NONE |
| `FW-AS` | Asymptotic safety | comparator family | `ADMITTED_NOT_AUDITED` | NONE |
| `FW-STRING` | String-theoretic / holographic approaches | comparator family | `ADMITTED_NOT_AUDITED` | NONE |
| `FW-CAT` | Broader categorical / process-theoretic / topos / related structural approaches | comparator family pending subdivision/source intake | `ADMITTED_NOT_AUDITED` | FCP-4 leaves this broader family distinct from `FW-CQM` |

## FCP-1 through FCP-3 state

FCP-1 source-bound the modular GR+QFT+SM null baseline. FCP-2 froze K1–K10, M1–M3 and E1–E5 before first competitor exposure. FCP-3 performed the first cross-framework comparison and found no strong/moderate Reduced-NFC/null convergence at its source scope.

## FCP-4 framework taxonomy

FCP-4 froze the separation rule:

> **Separate frameworks when their primitive commitments, allowed model class, physical scope, or empirical burden differ materially under the FCP keys.**

`FW-OAQ` was therefore superseded by source-bound `FW-AQFT`, `FW-GPTOPT`, and `FW-CQM`.

## FCP-5 AQFT/null control

FCP-5 classified core AQFT/QFT agreement as a reformulation relation rather than independent convergence, while preserving LCQFT/pAQFT/measurement extensions separately.

## FCP-6 Reduced-NFC/AQFT control

FCP-6 compared Reduced NFC only after subtracting AQFT reformulation, generic mathematics, supplied axioms and inherited QFT empirical success. Result: zero strong/moderate convergence at current source scope.

## FCP-7 GPTOPT baseline

FCP-7 decomposes `FW-GPTOPT` into:

- `G0` operational skeleton;
- `G1` convex/probabilistic structure;
- `G2` composite-system structure;
- `G3` reconstruction axioms;
- `G4` quantum embedding;
- `G5` generalized/post-quantum theory space;
- `G6` empirical restriction.

The family remains coherent as one bounded FCP entry. No `FRAMEWORK_SPLIT_CANDIDATE` is opened.

Main FCP-7 results:

- base GPTOPT contains states/preparations, effects/measurements, transformations/processes and operational probabilities, with convex representation in standard GPT formulations;
- allowed transformations do not supply one universal actual-dynamics selector;
- local tomography is optional and does not uniquely select the global composite state space;
- quantum reconstruction requires named additional principles and is not independent prediction merely because it recovers the known target;
- GPTOPT has native operational semantics but incomplete framework-wide physical calibration;
- quantum theory is one admitted model inside a wider theory space, so the family-level relation is `GENERALIZATION_RELATION`, not independent convergence;
- one bounded empirical GPT-tomography source constrains deviations from the quantum description for single-photon polarization without selecting the full GPTOPT theory space or a unique reconstruction package;
- no framework-level GPTOPT empirical discriminator is identified.

Bounded verdict:

> **GPTOPT IS A GENERAL OPERATIONAL META-FRAMEWORK THAT CONTAINS QUANTUM THEORY AS A SPECIAL CASE BUT DOES NOT SELECT IT WITHOUT ADDITIONAL STRUCTURAL/RECONSTRUCTION PRINCIPLES OR EMPIRICAL RESTRICTION.**

## Admission and credit rules

Admission reserves a comparison slot; it is not endorsement. A framework may require later subdivision, but subdivision must precede favorable scoring.

Empirical success of an embedded theory is not automatically empirical evidence for the entire containing meta-framework. Open problems in one framework provide no automatic credit to another.
