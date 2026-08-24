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
| `FW-NULL-GRQFTSM` | GR + QFT + Standard Model, no deeper ontology assumed | first-class null competitor | `PAIRWISE_COMPARISON_COMPLETE` | **FCP-3 pairwise comparison with Reduced NFC complete; empirically strong in tested regimes, foundationally incomplete, no overall winner** |
| `FW-NFC-RED` | Reduced NFC | reduced comparative object only | `PAIRWISE_COMPARISON_COMPLETE` | **FCP-3: no strong/moderate convergence with null at current source scope; no current foundational discriminator** |
| `FW-OAQ` | Operational / algebraic quantum approaches | historical umbrella | `SUPERSEDED_BY_FRAMEWORK_SPLIT` | **FCP-4: scientifically heterogeneous; replaced for future comparison by `FW-AQFT`, `FW-GPTOPT`, and `FW-CQM`** |
| `FW-AQFT` | Algebraic / locally covariant quantum field theory | source-bound comparator | `SOURCE_BOUND_READY` | **FCP-4 taxonomy/source intake complete; no cross-framework comparison yet** |
| `FW-GPTOPT` | Generalized probabilistic / operational-probabilistic theories | source-bound comparator family | `SOURCE_BOUND_READY` | **FCP-4 combines GPT and OPT at current intake scope while preserving subtraditions; no cross-framework comparison yet** |
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

Controlling FCP-3 artifacts:

- `frameworks/nfc_reduced/FCP3_NFC_REDUCED_SOURCE_BINDING_0_1_0.md`;
- `comparisons/FCP3_NFC_REDUCED_VS_NULL_K1_K10_0_1_0.md`;
- `convergence/FCP3_NFC_NULL_CONVERGENCE_LEDGER_0_1_0.md`;
- `convergence/FCP3_NFC_NULL_DIVERGENCE_LEDGER_0_1_0.md`;
- `handoffs/FCP3_NFC_VS_NULL_HANDOFF_0_1_0.md`.

FCP-3 result at current source scope:

- strong convergence candidates: `0`;
- moderate convergence candidates: `0`;
- weak/generic correspondences: `4`;
- functional analogies only: `3`;
- no-correspondence keys: `3`;
- material divergence entries: `9`;
- key-extension candidates: `0`;
- no overall numerical score or winner.

Bounded verdict:

> **NO NONTRIVIAL NFC–NULL CONVERGENCE FOUND AT CURRENT SOURCE SCOPE.**

This does not imply that a future successor framework or newly source-qualified physical bridge cannot produce a stronger result.

## FCP-4 operational/algebraic framework state

FCP-4 defines the framework-separation criterion before final taxonomy:

> **Separate frameworks when their primitive commitments, allowed model class, physical scope, or empirical burden differ materially under the FCP keys.**

Applying that criterion:

### `FW-OAQ`

Status: `SUPERSEDED_BY_FRAMEWORK_SPLIT`.

Reason: it improperly combines at least three materially different traditions.

### `FW-AQFT`

Status: `SOURCE_BOUND_READY`.

Core role: algebraic/local formulation of relativistic QFT with spacetime-indexed observable algebras, locality/causality conditions and state/representation structure. Locally covariant and perturbative AQFT are explicit extensions rather than silently merged core assumptions.

Framework type at FCP-4 scope: primarily `REFORMULATION_OF_ESTABLISHED_THEORY`, with mixed extension/model-construction roles.

### `FW-GPTOPT`

Status: `SOURCE_BOUND_READY`.

FCP-4 retains GPT and OPT as one bounded family because their broad operational theory space and empirical burden substantially overlap, while preserving convex/GPT and compositional/OPT subtraditions explicitly.

Framework type: `GENERALIZATION_OF_ESTABLISHED_THEORY + RECONSTRUCTION_PROGRAM` (`MIXED`).

### `FW-CQM`

Status: `SOURCE_BOUND_READY`.

Narrow quantum/process categorical tradition with systems/processes and monoidal composition as central primitives. This does not supersede `FW-CAT`, which remains a broader unbound category for other categorical foundational programs.

Framework type: `FOUNDATIONAL_META_FRAMEWORK + REFORMULATION_OF_ESTABLISHED_THEORY` (`MIXED`).

### Empirical status

FCP-4 source-binds zero independent framework-level empirical discriminators for `FW-AQFT`, `FW-GPTOPT`, or `FW-CQM`. Concrete QM/QFT model success is treated as empirical inheritance unless a framework-specific prediction is independently established.

### Adjacent-family disposition

Effectus and topos approaches remain deferred to later `FW-CAT` intake. Process-matrix/indefinite-causal-order frameworks may warrant later causal-quantum intake but are not required for this split.

No `KEY_EXTENSION_CANDIDATE` is opened by FCP-4.

## Admission rule

Admission means only that a framework is sufficiently relevant to preserve a comparison slot. Framework families may later need subdivision before source-bound analysis; subdivision must happen before scientific scoring, not after seeing a favorable result.

## No inherited credit

Reduced NFC receives no special status from having motivated the FCP. Established physics receives empirical credit only for evidence actually supporting it and no automatic credit for deeper ontological claims it does not make. Reformulations receive no independent empirical credit merely for reproducing an established model's predictions. Open problems in one framework provide no automatic credit to another.
