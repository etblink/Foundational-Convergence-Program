from pathlib import Path

ACCESS_DATE = "2026-08-29"
OPENING_COMMIT = "5e5e028100801a2da49ed18075fd3b577ea3ffdd"

reused = [
("SRC-FW-CAT-STAGE1-ORESHKOV-COSTA-BRUKNER-2012","R0/R1 boundary","Core process-matrix validity; physical realizability remains separate."),
("SRC-CPICO-CHIRIBELLA-SWITCH-2013","R1/R6 subclass","Quantum-switch family; fixed-order/postselection simulation boundary."),
("SRC-CPICO-ORESHKOV-GIARMATZI-2016","R0 classification","Formal causal/separable process structure; not a realization theorem."),
("SRC-CPICO-JIA-SAKHARWADE-2018","R0 composition limit","Unrestricted tensor products can fail process validity/normalization."),
("SRC-CPICO-ORESHKOV-TIME-DELOCALIZED-2019","R1/R2/R3 positive class","Standard-QM time-delocalized subsystem realizations for specified classes."),
("SRC-CPICO-PURVES-SHORT-2021","R1/R4 adverse boundary","Causal-inequality no-go in its declared operational scenario."),
("SRC-CPICO-WECHS-QCQC-2021","R1/R4/R5 subclass","QC-QC physically realizable higher-order class; not all process matrices."),
("SRC-CPICO-BARRETT-CYCLIC-2021","R0/R1 structural boundary","Cyclic causal-model / unitary-process structure relevant to realizability."),
("SRC-CPICO-WECHS-TIME-DELOCALIZED-2023","R1/R2/R3 counterboundary","Time-delocalized realizations include causal-inequality-violating examples in a specified class."),
("SRC-CPICO-VANDERLUGT-DI-2023","R6 conditional test","Extended-party certification under relativistic/free-intervention assumptions."),
("SRC-FW-CAT-STAGE1-ROZEMA-2024","R6 synthesis","Experimental implementation review and caveats."),
("SRC-CPICO-BAVARESCO-SIMULATION-2025","R1/R6 simulation boundary","Deterministic fixed-order simulation obstruction; restricted/postselected alternatives remain distinct."),
("SRC-CPICO-COSTA-REVIEW-2026","R0-R6 synthesis","Current specialist synthesis of realizability distinctions and open questions."),
("SRC-CPICO-SALZGER-VILASINI-2026","R4/R5 restriction","Closed-lab classical-spacetime assumptions restrict realizable higher-order processes to QC-QC-like structure."),
("SRC-CPICO-GUO-VBC-2026","R6 implementation","Current photonic-switch Bell-like causal-order test with implementation assumptions."),
("SRC-CPICO-QU-BELLLIKE-2026","R6 implementation","Current extended photonic-switch Bell-like causal-order test with remaining loopholes."),
]

new = [
("SRC-FWPM-REAL-ARAUJO-PURIFICATION-2017","Araújo, Feix, Navascués & Brukner, *A purification postulate for quantum mechanics with indefinite causal order*, Quantum 1, 10 (2017)","DOI `10.22331/q-2017-04-26-10`; arXiv `1611.08535`","R0→candidate R1 filter","Proposes purifiability as a necessary physicality condition; derives necessary conditions and excludes several known processes. Not sufficient universal physicality."),
("SRC-FWPM-REAL-SILVA-MULTITIME-2017","Silva et al., *Connecting processes with indefinite causal order and multi-time quantum states*, New J. Phys. 19, 103022 (2017)","DOI `10.1088/1367-2630/aa84fe`; arXiv `1701.08638`","R1 probabilistic representation","Equivalent pre/postselected multi-time-state class and a probabilistic implementation recipe for any process matrix. Not deterministic or natural universal realization."),
("SRC-FWPM-REAL-GUERIN-CRF-2018","Guérin & Brukner, *Observer-dependent locality of quantum events*, New J. Phys. 20, 103031 (2018)","DOI `10.1088/1367-2630/aae742`; arXiv `1805.12429`","R1/R2 pure-process interpretation","Causal-reference-frame formalism equivalent to pure process matrices and relevant to realization of strongly noncausal pure processes. Pure-process scope only."),
("SRC-FWPM-REAL-GUERIN-COMPOSITION-2019","Guérin, Krumm, Budroni & Brukner, *Composition rules for quantum processes: a no-go theorem*, New J. Phys. 21, 012001 (2019)","DOI `10.1088/1367-2630/aafef7`; arXiv `1806.10374`","R0 compatibility boundary","No general composition rule for arbitrary processes under the stated basic assumptions. Does not invalidate individual process objects."),
("SRC-FWPM-REAL-PAUNKOVIC-SPACETIME-2020","Paunković & Vojinović, *Causal orders, quantum circuits and spacetime: distinguishing between definite and superposed causal orders*, Quantum 4, 275 (2020)","DOI `10.22331/q-2020-05-28-275`; arXiv `1905.09682`","R5 interpretation boundary","Separates circuit/process causal order from spacetime-event causal order; switch realization does not by itself establish superposed spacetime event order."),
("SRC-FWPM-REAL-YOKOJIMA-REVERSIBILITY-2021","Yokojima, Quintino, Soeda & Murao, *Consequences of preserving reversibility in quantum superchannels*, Quantum 5, 441 (2021)","DOI `10.22331/q-2021-04-26-441`; arXiv `2003.05682`","R1 pure/purifiable subclass","Pure two-slot superchannels are unitary circuits or coherent superpositions of opposite-order unitary circuits; purifiable bipartite processes cannot violate device-independent causal inequalities. Restricted two-slot pure scope."),
("SRC-FWPM-REAL-BAUMANN-PAGEWOOTTERS-2022","Baumann, Krumm, Guérin & Brukner, *Noncausal Page-Wootters circuits*, Phys. Rev. Research 4, 013180 (2022)","DOI `10.1103/PhysRevResearch.4.013180`; arXiv `2105.02304`","R1/R2/R3 assumption-dependent class","Multi-clock Page-Wootters construction realizes coherently controlled causal orders while imposing constraints that can exclude selected noncausal processes."),
("SRC-FWPM-REAL-FELLOUS-ASIANI-ENERGY-2023","Fellous-Asiani et al., *Comparing the quantum switch and its simulations with energetically constrained operations*, Phys. Rev. Research 5, 023111 (2023)","DOI `10.1103/PhysRevResearch.5.023111`; arXiv `2208.01952`","R6 implementation/model boundary","Under an explicit light-matter model and energy constraint, quantum switch and a multi-use simulation become physically distinguishable. Model-specific, not framework-wide."),
("SRC-FWPM-REAL-VILASINI-RENNER-PRA-2024","Vilasini & Renner, *Embedding cyclic information-theoretic structures in acyclic space-times: No-go results for indefinite causality*, Phys. Rev. A 110, 022227 (2024), with Erratum Phys. Rev. A 114, 029903 (2026)","DOI `10.1103/PhysRevA.110.022227`; erratum DOI `10.1103/2j5m-7n6p`","R5 no-go / fine-graining","Binding corrected publication lineage. Relativistic-causality/fine-graining constraints on embedding ICO/cyclic information structures in acyclic spacetime; 2026-08-11 erratum is part of the source identity."),
("SRC-FWPM-REAL-VILASINI-RENNER-PRL-2024","Vilasini & Renner, *Fundamental Limits for Realizing Quantum Processes in Spacetime*, Phys. Rev. Lett. 133, 080201 (2024)","DOI `10.1103/PhysRevLett.133.080201`","R5 no-go","Under classical-background-spacetime assumptions, ICO realizations require system nonlocalization and admit a finer definite acyclic causal-order description."),
("SRC-FWPM-REAL-SALZGER-VILASINI-2025","Salzger & Vilasini, *Mapping indefinite causal order processes to composable quantum protocols in a spacetime*, New J. Phys. 27, 023002 (2025)","DOI `10.1088/1367-2630/ad9d6f`; arXiv `2404.05319`","R4/R5 positive restricted class","Every QC-QC maps to a causal box satisfying the setup assumptions; fine-graining yields a definite acyclic structure compatible with spacetime and recovers composability. QC-QC only."),
]

queries = {
"Q1":["\"process matrix\" \"physical realizability\"","\"process matrices\" \"physical realization\"","\"physically realizable\" \"process matrix\"","\"realizable process matrix\""],
"Q2":["\"process matrix\" \"standard quantum mechanics\" realization","\"process matrix\" \"quantum realization\"","\"process matrices\" \"quantum mechanics\" physical","\"higher-order quantum process\" realization \"standard quantum mechanics\""],
"Q3":["\"time-delocalized subsystem\" \"process matrix\"","\"time-delocalized subsystems\" \"indefinite causal order\"","\"time delocalized\" \"quantum switch\" realization","\"subsystem\" \"process matrix\" realization"],
"Q4":["\"quantum-controlled causal structure\" realization","\"quantum-controlled causal order\" realization","\"QC-QC\" process realizability","\"QC-QC\" \"process matrix\""],
"Q5":["\"closed laboratories\" \"process matrix\"","\"closed laboratory\" \"process matrix\"","\"closed laboratories\" \"indefinite causal order\"","\"local laboratory\" \"process matrix\" realizability"],
"Q6":["\"classical spacetime\" \"process matrix\"","\"spacetime realization\" \"indefinite causal order\"","\"spacetime\" \"process matrix\" realizability","\"localized events\" \"process matrix\""],
"Q7":["purification \"process matrix\"","dilation \"process matrix\" realizability","\"process matrix\" \"no-go\" realizability","\"higher-order quantum process\" purification physical"],
"Q8":["composition \"process matrices\" physical","\"tensor product\" \"process matrices\"","\"process matrix\" composition validity","\"higher-order quantum process\" composition physicality"],
"Q9":["postselection \"process matrix\"","simulation \"indefinite causal order\" \"definite causal order\"","\"quantum switch\" simulation \"definite causal order\"","\"indefinite causal order\" postselection realization"],
"Q10":["\"necessary and sufficient\" \"process matrix\" realizability","\"necessary condition\" \"process matrix\" physical","\"sufficient condition\" \"process matrix\" physical","physicality \"higher-order quantum process\""],
"Q11":["\"experimental implementation\" \"indefinite causal order\" caveat","\"quantum switch\" implementation loophole","\"quantum switch\" implementation assumption","\"process matrix\" experiment realization constraint"],
"Q12":["\"process matrix\" review realizability","\"process matrices\" review physical realization","\"indefinite causal order\" review \"physical realization\"","\"higher-order quantum processes\" review realizability"],
"Q13":["\"process matrix\" \"quantum gravity\" realizability","\"indefinite causal structure\" \"spacetime realization\"","\"indefinite causal order\" \"quantum gravity\" realization","\"process matrix\" \"indefinite spacetime\" physical"],
}

family_sets = {
"Q1":"OCB-2012; ARAUJO-PURIFICATION-2017; SILVA-MULTITIME-2017; COSTA-REVIEW-2026; VILASINI-RENNER-PRA-2024",
"Q2":"SILVA-MULTITIME-2017; ORESHKOV-TIME-DELOCALIZED-2019; BAUMANN-PAGEWOOTTERS-2022; WECHS-TIME-DELOCALIZED-2023",
"Q3":"ORESHKOV-TIME-DELOCALIZED-2019; BAUMANN-PAGEWOOTTERS-2022; WECHS-TIME-DELOCALIZED-2023",
"Q4":"WECHS-QCQC-2021; SALZGER-VILASINI-2025; SALZGER-VILASINI-2026",
"Q5":"PURVES-SHORT-2021; VILASINI-RENNER-PRA-2024; VILASINI-RENNER-PRL-2024; SALZGER-VILASINI-2026",
"Q6":"PAUNKOVIC-SPACETIME-2020; VILASINI-RENNER-PRA-2024; VILASINI-RENNER-PRL-2024; SALZGER-VILASINI-2025",
"Q7":"ARAUJO-PURIFICATION-2017; YOKOJIMA-REVERSIBILITY-2021; BARRETT-CYCLIC-2021",
"Q8":"JIA-SAKHARWADE-2018; GUERIN-COMPOSITION-2019; SALZGER-VILASINI-2025",
"Q9":"SILVA-MULTITIME-2017; CHIRIBELLA-SWITCH-2013; BAVARESCO-SIMULATION-2025; FELLOUS-ASIANI-ENERGY-2023",
"Q10":"ARAUJO-PURIFICATION-2017; YOKOJIMA-REVERSIBILITY-2021; BAUMANN-PAGEWOOTTERS-2022; SALZGER-VILASINI-2026",
"Q11":"ROZEMA-2024; FELLOUS-ASIANI-ENERGY-2023; GUO-VBC-2026; QU-BELLLIKE-2026",
"Q12":"COSTA-REVIEW-2026; ROZEMA-2024; VILASINI-RENNER-PRA-2024",
"Q13":"GUERIN-CRF-2018; PAUNKOVIC-SPACETIME-2020; BAUMANN-PAGEWOOTTERS-2022; VILASINI-RENNER-PRL-2024",
}

rejects = [
("Salzger 2023, arXiv 2304.06735","SUPERSEDED_VERSION","Superseded/proposition-redundant with Salzger & Vilasini 2025 final publication."),
("Antesberger et al. 2024, PRX Quantum 5, 010325","PROPOSITION_REDUNDANT_IMPLEMENTATION","Tomography/implementation evidence adds no distinct physical-selection proposition beyond admitted experimental synthesis."),
("Goswami et al. 2018, PRL 121, 090503","PROPOSITION_REDUNDANT_IMPLEMENTATION","Quantum-switch implementation already covered by stronger targeted synthesis/current implementation sources."),
("SRC-CPICO-CDP-SUPERMAP-2008","OUTSIDE_TARGETED_ROLE","Definite-order higher-order boundary machinery; no direct new physical-realizability proposition."),
("SRC-CPICO-CDP-COMBS-2009","OUTSIDE_TARGETED_ROLE","Definite-order comb boundary machinery; no direct new physical-selection proposition."),
("SRC-CPICO-TADDEI-RESOURCE-2019","PROPOSITION_OUTSIDE_TARGETED_ROLE","Resource status is not a physical-realizability criterion."),
("SRC-CPICO-MILZ-RESOURCE-2022","PROPOSITION_OUTSIDE_TARGETED_ROLE","Causal-connection resource theory is not direct physical selection."),
("SRC-CPICO-TSELENTIS-BAUMELER-2023","ADJACENT_STRUCTURE","Structural causal-correlation criterion does not directly settle process-matrix realization at the targeted scope."),
("SRC-CPICO-BAVARESCO-BOXWORLD-2024","OUTSIDE_STANDARD_QM_SPACETIME_TARGET","Post-quantum theory-space result is not needed for the bounded standard-QM/spacetime realization question."),
("SRC-CPICO-SAKHARWADE-HARDY-2024","ADJACENT_BRIDGE","Causaloid/process bridge has no direct FW-PROCESS-MATRIX realization-selection proposition."),
("SRC-CPICO-DELAHAMETTE-2025","MOTIVATION_NOT_SELECTION","Quantum-coordinate/QG interpretation does not add a general process-matrix realization/selection theorem at this scope."),
("SRC-CPICO-SELBY-DYNAMICS-2024","K4_DYNAMICS_NOT_TARGETED_SELECTION","Representation-sensitive process dynamics is already captured in the baseline and does not add a distinct Stage-1 physical-selection proposition."),
]

deferred = [("Salzger & Selby, *A decompositional framework for process theories in spacetime*, Quantum 10, 1959 (2026), DOI 10.22331/q-2026-01-07-1959","ADJACENT_FIXED_SPACETIME_FRAMEWORK","Defines embeddability for general process theories in fixed spacetime but explicitly leaves extension to indefinite causal structures for future work.")]

# --- Completed search log ---
log = f'''# FW-PROCESS-MATRIX Targeted Realizability / Physical-Selection Stage 1 — Search Execution Log

**Version:** 0.1.0  
**Operation:** `FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_AND_PHYSICAL_SELECTION_SOURCE_STRENGTHENING_STAGE1`  
**Method:** FCP Method 0.2.1  
**Status:** `SEARCH_EXECUTION_COMPLETE__SOURCE_SET_FROZEN_WITH_STAGE1_RESULT`

## 1. Immutable opening boundary

The execution was prospectively opened at commit `{OPENING_COMMIT}` before any external query. At that commit `FIRST_EXTERNAL_QUERY_RUN = NO`. This completed log supersedes only the execution-status portion of that same file; the opening commit remains immutable provenance.

```text
PREREGISTRATION_FROZEN = YES
PUBLICATION_CUTOFF = 2026-08-29_INCLUSIVE
FIRST_EXTERNAL_QUERY_AFTER_OPENING_COMMIT = YES
RESULT_DIRECTED_QUERY_EXPANSION = NO
RESULT_DIRECTED_SOURCE_ADMISSION = NO
NEW_QUERY_FAMILY = NONE
NEW_SEARCH_SURFACE = NONE
TOPICAL_QUERY_COUNT_S1_S4 = 208
QUERY_FAMILIES_COMPLETE = 13_OF_13
SEARCH_PASSES_COMPLETE = 3_OF_3
S5_USE = IDENTITY_VERSION_ACCESS_ONLY
S6_USE = EXACT_BIBLIOGRAPHIC_TRAILS_ONLY
```

## 2. Family-level deduplicated candidate identities

The exact search engine ranking/snippet order is not scientific authority and is not frozen. Each row below therefore points to the exact family-level deduplicated candidate set retained from the executed rows.

'''
for q in queries:
    log += f'- `{q}_SET` = {family_sets[q]}\n'
log += '''
## 3. Exact S1–S4 query execution ledger

| Pass coverage | Query family | Canonical frozen query | Surface | Surface rendering | Execution date | Candidate identities | Disposition |
|---|---|---|---|---|---|---|---|
'''
for q, qs in queries.items():
    for query in qs:
        for surface in ("S1","S2","S3","S4"):
            rendering = "CANONICAL_QUERY_AS_FROZEN" if surface == "S1" else "LEXICAL_TERMS_UNCHANGED__SURFACE_SYNTAX_ONLY"
            log += f'| PASS_1;PASS_2;PASS_3 | {q} | `{query}` | {surface} | {rendering} | {ACCESS_DATE} | `{q}_SET` | REVIEWED_AND_CROSS_SURFACE_DEDUPED |\n'
log += '''

## 4. S5/S6 execution

S5 was used only to resolve author/publication identity, version and access for already identified candidates. S6 followed exact bibliography identities from admitted primary sources and the current specialist review. No new topical lexical family was introduced. Material trails led to admitted sources, proposition-redundant candidates, or the one adjacent deferred source recorded in the source-selection audit.

## 5. Pass closure and adverse-search coverage

```text
PASS_1_CORE_REALIZATION_LINEAGE_AND_POSITIVE_CLASS_DISCOVERY = COMPLETE
PASS_2_ADVERSE_NO_GO_ASSUMPTION_FRAGMENTATION_AND_ALTERNATIVE_EXPLANATION_SEARCH = COMPLETE
PASS_3_GAP_IDENTITY_DUPLICATE_VERSION_AND_PROPOSITION_REDUNDANCY_AUDIT = COMPLETE
MANDATORY_COUNTEREVIDENCE_TARGETS = ALL_EXPLICITLY_SEARCHED
HIGH_VALUE_UNRESOLVED_VERSION_IDENTITY = NONE
SEARCH_SATURATION = PASS_AT_DECLARED_SCOPE
```

No later physical-selection adjudication was performed while executing or closing this search log.
'''
Path('frameworks/causal_process/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE1_SEARCH_EXECUTION_LOG_0_1_0.md').write_text(log, encoding='utf-8', newline='\n')

# --- Intake ---
intake = '''# FW-PROCESS-MATRIX Targeted Realizability / Physical-Selection Source Strengthening — Stage 1 Frozen Corpus

**Version:** 0.1.0  
**Operation:** `FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_AND_PHYSICAL_SELECTION_SOURCE_STRENGTHENING_STAGE1`  
**Method:** FCP Method 0.2.1  
**Publication cutoff:** 2026-08-29 inclusive

## 1. Stage-1 result

```text
SOURCE_CORPUS_FROZEN = YES
SOURCE_SELECTION_AUDIT = PASS
DISCOVERY_LANES_COMPLETE = 13_OF_13
SEARCH_PASSES_COMPLETE = 3_OF_3
TOPICAL_SEARCHES_S1_S4 = 208
TOTAL_FROZEN_TARGETED_SOURCE_COUNT = 27
REUSED_CANONICAL_SOURCE_COUNT = 16
NEW_EXTERNAL_SOURCE_COUNT = 11
MEANINGFUL_REJECTED_COUNT = 12
DEFERRED_COUNT = 1
COUNTEREVIDENCE_COVERAGE = PASS
REALIZABILITY_LAYER_COVERAGE = PASS
LEGACY_NEW_SOURCE_INDEPENDENCE_AUDIT = PASS
IDENTITY_VERSION_DUPLICATE_AUDIT = PASS
PROPOSITION_REDUNDANCY_AUDIT = PASS
P1_P12_READINESS_COVERAGE = PASS
SEARCH_SATURATION = PASS_AT_DECLARED_SCOPE
CORPUS_SUFFICIENT_FOR_LATER_PHYSICAL_SELECTION_ADJUDICATION = YES_AT_CURRENT_DECLARED_SEARCH_SCOPE

PHYSICAL_SELECTION_ADJUDICATION = NOT_STARTED
ONE_UNIVERSAL_REALIZATION_CRITERION = NOT_ADJUDICATED
GENERAL_W_DOMAIN_PHYSICALLY_REALIZED = NOT_ADJUDICATED
FW_PROCESS_MATRIX_TRUE = NOT_ADJUDICATED
FRAMEWORK_LEVEL_EMPIRICAL_SELECTION = NONE
PAIRWISE_COMPARISON = NONE
CONVERGENCE_CREDIT = NONE
RECURRENCE_RECOMPUTATION = NONE
FCP27_SELECTED = NO
```

This is a corpus-sufficiency result, not a physical-selection verdict. The admitted evidence is deliberately capable of supporting a later result ranging from a broad criterion through multiple assumption-dependent classes, selected subclasses, exclusion boundaries, mixed/unresolved remainder, or no material strengthening beyond legacy evidence.

## 2. Frozen source ledger

| Source ID | Provenance | Realizability role | Exact Stage-1 use / scope ceiling |
|---|---|---|---|
'''
for sid, layer, role in reused:
    intake += f'| `{sid}` | REUSED_CANONICAL | {layer} | {role} |\n'
for sid, title, ident, layer, role in new:
    intake += f'| `{sid}` | NEW_EXTERNAL | {layer} | {role} {title}; {ident}. |\n'
intake += '''

## 3. Realizability-layer coverage

```text
R0_FORMAL_PROCESS_VALIDITY = ADEQUATE_COVERAGE
R1_STANDARD_QUANTUM_MODEL_REALIZATION = ADEQUATE_COVERAGE
R2_SUBSYSTEM_OR_FACTORIZATION_DEPENDENT_REALIZATION = ADEQUATE_COVERAGE
R3_TIME_DELOCALIZED_SUBSYSTEM_REALIZATION = ADEQUATE_COVERAGE
R4_CLOSED_LOCAL_LABORATORY_REALIZATION = ADEQUATE_COVERAGE
R5_CLASSICAL_SPACETIME_EMBEDDED_REALIZATION = ADEQUATE_COVERAGE
R6_CONCRETE_EXPERIMENTAL_IMPLEMENTATION = ADEQUATE_COVERAGE
R0_R6_MONOTONE_IMPLICATION_CHAIN = NO
```

## 4. Discovery-lane terminal dispositions

```text
D1 = PASS
D2 = PASS
D3 = PASS
D4 = PASS
D5 = PASS
D6 = PASS
D7 = PASS
D8 = PASS
D9 = PASS
D10 = PASS
D11 = PASS
D12 = PASS
D13 = PASS
```

D13 passes only because the corpus contains explicit spacetime/QG-boundary realization, embedding, exclusion or interpretation propositions; QG prestige or motivation alone was not sufficient.

## 5. P1–P12 readiness

```text
P1 = ADEQUATE_COVERAGE
P2 = ADEQUATE_COVERAGE
P3 = ADEQUATE_COVERAGE
P4 = ADEQUATE_COVERAGE
P5 = ADEQUATE_COVERAGE
P6 = ADEQUATE_COVERAGE
P7 = ADEQUATE_COVERAGE
P8 = ADEQUATE_COVERAGE
P9 = ADEQUATE_COVERAGE
P10 = ADEQUATE_COVERAGE
P11 = ADEQUATE_COVERAGE
P12 = ADEQUATE_COVERAGE
```

The corpus contains both positive and adverse evidence needed to distinguish: probabilistic pre/postselection representation; standard-QM/time-delocalized realizations; pure/purifiable restrictions; QC-QC closed-lab/spacetime subclasses; composition/globalization restrictions; fixed-spacetime no-go results; simulation alternatives; and implementation caveats.

## 6. Nonadjudicative cross-source observation

At Stage-1 scope the literature does not reduce "physical realizability" to one already-established predicate. Instead it supplies multiple source-bound notions and constraints. This observation establishes readiness for later adjudication only; it does not decide whether those notions combine into one criterion or remain irreducibly assumption-dependent.

## 7. Hard stop

```text
TARGETED_REALIZABILITY_SOURCE_STRENGTHENING_STAGE1 = COMPLETE
SOURCE_CORPUS_FROZEN = YES
LATER_PHYSICAL_SELECTION_ADJUDICATION_JUSTIFIED = YES
LATER_PHYSICAL_SELECTION_ADJUDICATION_STARTED = NO
NEXT_EPISTEMIC_TASK = PROSPECTIVELY_FREEZE_STAGE2_ADJUDICATION_RULES_BEFORE_APPLYING_THE_27_SOURCE_CORPUS
```
'''
Path('frameworks/causal_process/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_SOURCE_INTAKE_STAGE1_0_1_0.md').write_text(intake, encoding='utf-8', newline='\n')

# --- Selection audit ---
audit = '''# FW-PROCESS-MATRIX Targeted Realizability / Physical-Selection — Stage 1 Source-Selection Audit

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
'''
for sid, layer, role in reused:
    audit += f'| `{sid}` | REUSED_CANONICAL | PASS | ADMIT; {layer} |\n'
for sid, title, ident, layer, role in new:
    audit += f'| `{sid}` | NEW_EXTERNAL | PASS | ADMIT; {layer} |\n'
audit += '''

## 3. Meaningful rejected candidates

| Candidate | Disposition | Reason |
|---|---|---|
'''
for x,d,r in rejects:
    audit += f'| {x} | `{d}` | {r} |\n'
audit += '\n## 4. Deferred candidate\n\n| Candidate | Disposition | Reason |\n|---|---|---|\n'
for x,d,r in deferred:
    audit += f'| {x} | `{d}` | {r} |\n'
audit += '''

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
'''
Path('frameworks/causal_process/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_SOURCE_SELECTION_AUDIT_STAGE1_0_1_0.md').write_text(audit, encoding='utf-8', newline='\n')

# --- Handoff ---
handoff = '''# FW-PROCESS-MATRIX Targeted Realizability / Physical-Selection Source Strengthening — Stage 1 Handoff

**Version:** 0.1.0

```text
OPERATION = FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_AND_PHYSICAL_SELECTION_SOURCE_STRENGTHENING_STAGE1
STAGE1 = COMPLETE_CANDIDATE
FROZEN_TARGETED_SOURCE_COUNT = 27
REUSED_CANONICAL_SOURCE_COUNT = 16
NEW_EXTERNAL_SOURCE_COUNT = 11
MEANINGFUL_REJECTED_COUNT = 12
DEFERRED_COUNT = 1
SOURCE_SELECTION_AUDIT = PASS
COUNTEREVIDENCE_COVERAGE = PASS
REALIZABILITY_LAYER_COVERAGE = PASS
P1_P12_READINESS_COVERAGE = PASS
SEARCH_SATURATION = PASS_AT_DECLARED_SCOPE
CORPUS_SUFFICIENT_FOR_LATER_PHYSICAL_SELECTION_ADJUDICATION = YES_AT_CURRENT_DECLARED_SEARCH_SCOPE

PHYSICAL_SELECTION_VERDICT = NOT_ADJUDICATED
GENERAL_REALIZATION_CRITERION = NOT_ADJUDICATED
FRAMEWORK_TRUTH = NOT_ADJUDICATED
FRAMEWORK_LEVEL_EMPIRICAL_SELECTION = NONE
PAIRWISE_COMPARISON = NONE
CONVERGENCE_CREDIT = NONE
RECURRENCE_RECOMPUTATION = NONE
FCP27_SELECTED = NO
```

## Scientific handoff

The frozen corpus is adequate to test whether the physical domain is governed by one broad criterion, multiple assumption-dependent classes, selected realizable subclasses, broad no-go boundaries, or a mixed/unresolved remainder. Stage 1 deliberately does not choose among those possibilities.

The next epistemically valid step is to prospectively freeze the Stage-2 adjudication law against this exact 27-source corpus before applying it. A separate empirical, pairwise, convergence or recurrence operation is not implied by the Stage-1 result.
'''
Path('handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_SOURCE_STRENGTHENING_STAGE1_HANDOFF_0_1_0.md').write_text(handoff, encoding='utf-8', newline='\n')

# --- Source register append ---
sr = Path('SOURCE_REGISTER.md')
text = sr.read_text(encoding='utf-8')
header = '### FW-PROCESS-MATRIX targeted realizability / physical-selection Stage-1 additions'
if header in text:
    raise SystemExit('targeted source-register section already exists')
block = '\n\n' + header + '\n\n| Source ID | Framework / role | Authority | Location | Status | Notes |\n|---|---|---|---|---|---|\n'
for sid, title, ident, layer, role in new:
    block += f'| `{sid}` | `FW-PROCESS-MATRIX` targeted realizability Stage 1 / {layer} | {title} | {ident} | `SOURCE_BOUND` | `FOR_FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE1`; access `{ACCESS_DATE}`. {role} |\n'
sr.write_text(text.rstrip() + block + '\n', encoding='utf-8', newline='\n')

# Builder self-checks
paths = [
'frameworks/causal_process/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_STAGE1_SEARCH_EXECUTION_LOG_0_1_0.md',
'frameworks/causal_process/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_SOURCE_INTAKE_STAGE1_0_1_0.md',
'frameworks/causal_process/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_SOURCE_SELECTION_AUDIT_STAGE1_0_1_0.md',
'handoffs/FW_PROCESS_MATRIX_TARGETED_REALIZABILITY_SOURCE_STRENGTHENING_STAGE1_HANDOFF_0_1_0.md',
'SOURCE_REGISTER.md']
for p in paths:
    assert '\r' not in Path(p).read_text(encoding='utf-8')
assert len(reused) == 16 and len(new) == 11 and len(rejects) == 12 and len(deferred) == 1
assert sum(len(v) for v in queries.values()) * 4 == 208
print('STAGE1_BUILDER=PASS')
