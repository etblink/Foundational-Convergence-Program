# FW-PROCESS-MATRIX Targeted Realizability / Physical-Selection — Stage 1 Source-Selection Audit

**Version:** 0.1.0  
**Method:** FCP Method 0.2.1

## 1. Controlling finding

```text
SOURCE_SELECTION_AUDIT = PASS
RESULT_DIRECTED_SOURCE_SELECTION = NO
SOURCE_COUNT_QUOTA = NONE
LEGACY_WEIGHTING_ADVANTAGE = NO
NEW_SOURCE_VALENCE_PREFERENCE = NO
COUNTEREVIDENCE_COVERAGE = PASS
IDENTITY_VERSION_DUPLICATE_AUDIT = PASS
PROPOSITION_REDUNDANCY_AUDIT = PASS
SEARCH_SATURATION = PASS_AT_DECLARED_SCOPE
```

## 2. Admission A–I audit

Every admitted source passed the applicable frozen tests: identity/version resolved; cutoff satisfied; adequate technical text/record inspected; material D1–D13 proposition; explicit targeted role; proposition scope bounded to source; duplication status recorded; R0–R6 relation recorded where applicable; and positive/negative/boundary role retained without valence preference.

| Source ID | Provenance | A–I | Targeted-role disposition |
|---|---|---|---|
| `SRC-FW-CAT-STAGE1-ORESHKOV-COSTA-BRUKNER-2012` | REUSED_CANONICAL | PASS | ADMIT; R0/R1 boundary |
| `SRC-CPICO-CHIRIBELLA-SWITCH-2013` | REUSED_CANONICAL | PASS | ADMIT; R1 process-family boundary |
| `SRC-CPICO-ORESHKOV-GIARMATZI-2016` | REUSED_CANONICAL | PASS | ADMIT; R0 classification |
| `SRC-CPICO-JIA-SAKHARWADE-2018` | REUSED_CANONICAL | PASS | ADMIT; R0 composition limit |
| `SRC-CPICO-ORESHKOV-TIME-DELOCALIZED-2019` | REUSED_CANONICAL | PASS | ADMIT; R1/R2/R3 positive class |
| `SRC-CPICO-PURVES-SHORT-2021` | REUSED_CANONICAL | PASS | ADMIT; R1 no-go boundary |
| `SRC-CPICO-WECHS-QCQC-2021` | REUSED_CANONICAL | PASS | ADMIT; R1 realizable higher-order subclass |
| `SRC-CPICO-BARRETT-CYCLIC-2021` | REUSED_CANONICAL | PASS | ADMIT; R0/R1 structural boundary |
| `SRC-CPICO-WECHS-TIME-DELOCALIZED-2023` | REUSED_CANONICAL | PASS | ADMIT; R1/R2/R3 counterboundary |
| `SRC-CPICO-VANDERLUGT-DI-2023` | REUSED_CANONICAL | PASS | ADMIT; R5-assumption certification boundary |
| `SRC-FW-CAT-STAGE1-ROZEMA-2024` | REUSED_CANONICAL | PASS | ADMIT; R6 synthesis |
| `SRC-CPICO-BAVARESCO-SIMULATION-2025` | REUSED_CANONICAL | PASS | ADMIT; R1 simulation boundary |
| `SRC-CPICO-COSTA-REVIEW-2026` | REUSED_CANONICAL | PASS | ADMIT; R0-R6 synthesis |
| `SRC-CPICO-SALZGER-VILASINI-2026` | REUSED_CANONICAL | PASS | ADMIT; R4/R5 restriction |
| `SRC-CPICO-GUO-VBC-2026` | REUSED_CANONICAL | PASS | ADMIT; R6 implementation |
| `SRC-CPICO-QU-BELLLIKE-2026` | REUSED_CANONICAL | PASS | ADMIT; R6 implementation |
| `SRC-FWPM-REAL-ARAUJO-PURIFICATION-2017` | NEW_EXTERNAL | PASS | ADMIT; R0→candidate R1 filter |
| `SRC-FWPM-REAL-SILVA-MULTITIME-2017` | NEW_EXTERNAL | PASS | ADMIT; R1 probabilistic representation |
| `SRC-FWPM-REAL-GUERIN-CRF-2018` | NEW_EXTERNAL | PASS | ADMIT; R0 pure-process realizability interpretation |
| `SRC-FWPM-REAL-GUERIN-COMPOSITION-2019` | NEW_EXTERNAL | PASS | ADMIT; R0 compatibility boundary |
| `SRC-FWPM-REAL-PAUNKOVIC-SPACETIME-2020` | NEW_EXTERNAL | PASS | ADMIT; R5 interpretation boundary |
| `SRC-FWPM-REAL-YOKOJIMA-REVERSIBILITY-2021` | NEW_EXTERNAL | PASS | ADMIT; R1 pure/purifiable subclass |
| `SRC-FWPM-REAL-BAUMANN-PAGEWOOTTERS-2022` | NEW_EXTERNAL | PASS | ADMIT; R1/R2/R3 assumption-dependent class |
| `SRC-FWPM-REAL-FELLOUS-ASIANI-ENERGY-2023` | NEW_EXTERNAL | PASS | ADMIT; R1→R6 implementation-model constraint |
| `SRC-FWPM-REAL-VILASINI-RENNER-PRA-2024` | NEW_EXTERNAL | PASS | ADMIT; R5 no-go / fine-graining |
| `SRC-FWPM-REAL-VILASINI-RENNER-PRL-2024` | NEW_EXTERNAL | PASS | ADMIT; R5 no-go |
| `SRC-FWPM-REAL-SALZGER-VILASINI-2025` | NEW_EXTERNAL | PASS | ADMIT; R4/R5 positive restricted class |


## 3. Meaningful rejected candidates

| Candidate | Disposition | Reason |
|---|---|---|
| Salzger 2023, arXiv 2304.06735 | `SUPERSEDED_VERSION` | Superseded/proposition-redundant with Salzger & Vilasini 2025 final publication. |
| Antesberger et al. 2024, PRX Quantum 5, 010325 | `PROPOSITION_REDUNDANT_IMPLEMENTATION` | Tomography/implementation evidence adds no distinct physical-selection proposition beyond admitted experimental synthesis. |
| Goswami et al. 2018, PRL 121, 090503 | `PROPOSITION_REDUNDANT_IMPLEMENTATION` | Quantum-switch implementation already covered by stronger targeted synthesis/current implementation sources. |
| SRC-CPICO-CDP-SUPERMAP-2008 | `OUTSIDE_TARGETED_ROLE` | Definite-order higher-order boundary machinery; no direct new physical-realizability proposition. |
| SRC-CPICO-CDP-COMBS-2009 | `OUTSIDE_TARGETED_ROLE` | Definite-order comb boundary machinery; no direct new physical-selection proposition. |
| SRC-CPICO-TADDEI-RESOURCE-2019 | `PROPOSITION_OUTSIDE_TARGETED_ROLE` | Resource status is not a physical-realizability criterion. |
| SRC-CPICO-MILZ-RESOURCE-2022 | `PROPOSITION_OUTSIDE_TARGETED_ROLE` | Causal-connection resource theory is not direct physical selection. |
| SRC-CPICO-TSELENTIS-BAUMELER-2023 | `ADJACENT_STRUCTURE` | Structural causal-correlation criterion does not directly settle process-matrix realization at the targeted scope. |
| SRC-CPICO-BAVARESCO-BOXWORLD-2024 | `OUTSIDE_STANDARD_QM_SPACETIME_TARGET` | Post-quantum theory-space result is not needed for the bounded standard-QM/spacetime realization question. |
| SRC-CPICO-SAKHARWADE-HARDY-2024 | `ADJACENT_BRIDGE` | Causaloid/process bridge has no direct FW-PROCESS-MATRIX realization-selection proposition. |
| SRC-CPICO-DELAHAMETTE-2025 | `MOTIVATION_NOT_SELECTION` | Quantum-coordinate/QG interpretation does not add a general process-matrix realization/selection theorem at this scope. |
| SRC-CPICO-SELBY-DYNAMICS-2024 | `K4_DYNAMICS_NOT_TARGETED_SELECTION` | Representation-sensitive process dynamics is already captured in the baseline and does not add a distinct Stage-1 physical-selection proposition. |

## 4. Deferred candidate

| Candidate | Disposition | Reason |
|---|---|---|
| Salzger & Selby, *A decompositional framework for process theories in spacetime*, Quantum 10, 1959 (2026), DOI 10.22331/q-2026-01-07-1959 | `ADJACENT_FIXED_SPACETIME_FRAMEWORK` | Defines embeddability for general process theories in fixed spacetime but explicitly leaves extension to indefinite causal structures for future work. |


## 5. Version / correction custody

The Vilasini–Renner PRA source is bound to the published 2024 article together with the erratum published 2026-08-11, before the frozen cutoff. An obsolete intermediate preprint theorem is not separately frozen or used. Salzger 2023 is not separately counted because its material proposition is superseded by the 2025 Salzger–Vilasini publication.

## 6. Counterevidence audit

The corpus explicitly includes adverse or narrowing evidence for formal-validity/physicality separation; purifiability restrictions; standard-QM and subsystem assumptions; closed-lab assumptions; classical-spacetime embedding limits; composition/globalization failures; postselection dependence; definite-order simulation alternatives; restricted QC-QC classes; causal-inequality no-go results; necessary-versus-sufficient gaps; and implementation caveats.

```text
FORMAL_VALIDITY_WITHOUT_PHYSICAL_REALIZABILITY = COVERED
STANDARD_QM_REALIZATION_LIMITS = COVERED
TIME_DELOCALIZED_SUBSYSTEM_ASSUMPTIONS = COVERED
SUBSYSTEM_OR_FACTORIZATION_DEPENDENCE = COVERED
CLOSED_LOCAL_LABORATORY_ASSUMPTIONS = COVERED
CLASSICAL_SPACETIME_EMBEDDING_LIMITS = COVERED
PURIFICATION_OR_DILATION_FAILURES = COVERED
COMPOSITION_OR_GLOBALIZATION_RESTRICTIONS = COVERED
POSTSELECTION_DEPENDENCE = COVERED
SIMULATION_BY_DEFINITE_ORDER_OR_CAUSALLY_ORDERED_RESOURCES = COVERED
QC_QC_OR_OTHER_RESTRICTED_REALIZATION_CLASSES = COVERED
NO_GO_RESULTS_FOR_GENERAL_NONCAUSAL_OR_HIGHER_ORDER_PROCESSES = COVERED
NECESSARY_VS_SUFFICIENT_REALIZABILITY_GAPS = COVERED
COUNTEREXAMPLES_TO_PROPOSED_GENERAL_SELECTION_RULES = COVERED_AT_DECLARED_SCOPE
EXPERIMENTAL_IMPLEMENTATION_CAVEATS = COVERED
QUANTUM_GRAVITY_EMBEDDING_GAPS = COVERED
```

## 7. Saturation finding

All D1–D13 lanes have terminal dispositions; all Q1–Q13 families were executed on S1–S4; S5 stayed identity/access-only; S6 bibliographic trails were checked; no unresolved high-value identity/version issue remains; and remaining candidates were proposition-redundant, superseded, adjacent, or outside frozen scope rather than merely inconvenient.

No source-selection conclusion in this audit decides the later physical-selection result.
